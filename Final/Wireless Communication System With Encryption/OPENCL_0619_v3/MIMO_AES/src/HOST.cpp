#define OCL_CHECK(error, call)                                                                   \
    call;                                                                                        \
    if (error != CL_SUCCESS) {                                                                   \
        printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__, error); \
        exit(EXIT_FAILURE);                                                                      \
    }

#include <stdlib.h>
#include <fstream>
#include <iostream>
#include "HOST.h"
#include <ap_int.h>
#include <ap_fixed.h>
#include <math.h>



# define PATTERN_NUM 0
# define SNR_dB 0
# define SNR pow(10, SNR_dB/10) * 2



# define word_len 16
typedef ap_fixed<word_len,8> FIXED_LEN;

static const int DATA_SIZE = 16;

static const std::string error_message =
    "Error: Result mismatch:\n"
    "i = %d CPU result = %d Device result = %d\n";


using namespace std;

int main(int argc, char* argv[]) {
	srand(10);
	/////////////////////////////////////////// PATH FOR OUTPUT DATA ///////////////////////////////////////////
	string PATH_DIR = "../../../PATTERN/pic";
	auto SNR_NUM = std::to_string(SNR_dB);
	auto PAT_NUM = std::to_string(PATTERN_NUM);
	string PATH_INPUT = PATH_DIR + PAT_NUM + "/pic_" + PAT_NUM + ".txt";
	//string PATH_OUTPUT = PATH_DIR + PAT_NUM + "/pic_" + PAT_NUM + "/output/pic" + PAT_NUM + "/SNR" + SNR_NUM + ".txt";
	string PATH_OUTPUT = PATH_DIR + PAT_NUM + "/output/pic" + PAT_NUM + "_SNR" + SNR_NUM + ".txt";
	/////////////////////////////////////////// PATH FOR OUTPUT DATA ///////////////////////////////////////////


    //TARGET_DEVICE macro needs to be passed from gcc command line
    if(argc != 2) {
		std::cout << "Usage: " << argv[0] <<" <xclbin>" << std::endl;
		return EXIT_FAILURE;
	}

    std::string xclbinFilename = argv[1];
    
    // Compute the size of array in bytes
    size_t size_in_bytes = DATA_SIZE * sizeof(int);
    size_t CHANNEL_size_in_bytes = 16 * sizeof(FIXED_LEN);
    size_t NOISE_size_in_bytes = 128 * sizeof(FIXED_LEN);

    // Creates a vector of DATA_SIZE elements with an initial value of 10 and 32
    // using customized allocator for getting buffer alignment to 4k boundary
    
    std::vector<cl::Device> devices;
    cl::Device device;
    cl_int err;
    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel krnl_vector_add;
    cl::Program program;
    std::vector<cl::Platform> platforms;
    bool found_device = false;

    //traversing all Platforms To find Xilinx Platform and targeted
    //Device in Xilinx Platform
    cl::Platform::get(&platforms);
    for(size_t i = 0; (i < platforms.size() ) & (found_device == false) ;i++){
        cl::Platform platform = platforms[i];
        std::string platformName = platform.getInfo<CL_PLATFORM_NAME>();
        if ( platformName == "Xilinx"){
            devices.clear();
            platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
	    if (devices.size()){
		    device = devices[0];
		    found_device = true;
		    break;
	    }
        }
    }
    if (found_device == false){
       std::cout << "Error: Unable to find Target Device " 
           << device.getInfo<CL_DEVICE_NAME>() << std::endl;
       return EXIT_FAILURE; 
    }

    // Creating Context and Command Queue for selected device
    OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
    OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

    std::cout << "INFO: Reading " << xclbinFilename << std::endl;
    FILE* fp;
    if ((fp = fopen(xclbinFilename.c_str(), "r")) == nullptr) {
        printf("ERROR: %s xclbin not available please build\n", xclbinFilename.c_str());
        exit(EXIT_FAILURE);
    }
    // Load xclbin 
    std::cout << "Loading: '" << xclbinFilename << "'\n";
    std::ifstream bin_file(xclbinFilename, std::ifstream::binary);
    bin_file.seekg (0, bin_file.end);
    unsigned nb = bin_file.tellg();
    bin_file.seekg (0, bin_file.beg);
    char *buf = new char [nb];
    bin_file.read(buf, nb);
    
    // Creating Program from Binary File
    cl::Program::Binaries bins;
    bins.push_back({buf,nb});
    devices.resize(1);
    OCL_CHECK(err, program = cl::Program(context, devices, bins, NULL, &err));
    
    // This call will get the kernel object from program. A kernel is an 
    // OpenCL function that is executed on the FPGA. 
    OCL_CHECK(err, krnl_vector_add = cl::Kernel(program,"TOP", &err));

    // These commands will allocate memory on the Device. The cl::Buffer objects can
    // be used to reference the memory locations on the device. 
    OCL_CHECK(err, cl::Buffer buffer_a(context, CL_MEM_READ_ONLY, size_in_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer buffer_result(context, CL_MEM_WRITE_ONLY, size_in_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer buffer_CHR(context, CL_MEM_READ_ONLY, CHANNEL_size_in_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer buffer_CHI(context, CL_MEM_READ_ONLY, CHANNEL_size_in_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer buffer_NOISE(context, CL_MEM_READ_ONLY, NOISE_size_in_bytes, NULL, &err));
    //set the kernel Arguments
    int narg=0;
    OCL_CHECK(err, err = krnl_vector_add.setArg(narg++,buffer_a));
    OCL_CHECK(err, err = krnl_vector_add.setArg(narg++,buffer_result));
    OCL_CHECK(err, err = krnl_vector_add.setArg(narg++,buffer_CHR));
    OCL_CHECK(err, err = krnl_vector_add.setArg(narg++,buffer_CHI));
    OCL_CHECK(err, err = krnl_vector_add.setArg(narg++,buffer_NOISE));


    // READ FILE DATA
	int file_temp[32];
	double std_NOISE = sqrt(1 / (pow(10, 0.1*SNR_dB) * 2 * 2));
	double std_CHEANNEL = 0.5;

	double u1, v1, x1;

    FILE *fpp;
	fpp = fopen(PATH_INPUT.c_str(), "r");
    fstream fo;
	fo.open(PATH_OUTPUT, ios::out);


	int idx;
    for(idx=0; idx<33750; idx++){
    	ap_uint<8>  *ptr_a;
    	ap_uint<8>  *ptr_result;
    	FIXED_LEN *ptr_CHR;
    	FIXED_LEN *ptr_CHI;
    	FIXED_LEN *ptr_NOISE;



        OCL_CHECK(err, ptr_a      = (ap_uint<8> *)q.enqueueMapBuffer (buffer_a , CL_TRUE , CL_MAP_WRITE , 0, size_in_bytes, NULL, NULL, &err));
    	OCL_CHECK(err, ptr_result = (ap_uint<8> *)q.enqueueMapBuffer (buffer_result , CL_TRUE , CL_MAP_READ , 0, size_in_bytes, NULL, NULL, &err));
    	OCL_CHECK(err, ptr_CHR    = (FIXED_LEN *)q.enqueueMapBuffer (buffer_CHR , CL_TRUE , CL_MAP_READ , 0, CHANNEL_size_in_bytes, NULL, NULL, &err));
    	OCL_CHECK(err, ptr_CHI    = (FIXED_LEN *)q.enqueueMapBuffer (buffer_CHI , CL_TRUE , CL_MAP_READ , 0, CHANNEL_size_in_bytes, NULL, NULL, &err));
    	OCL_CHECK(err, ptr_NOISE  = (FIXED_LEN *)q.enqueueMapBuffer (buffer_NOISE , CL_TRUE , CL_MAP_READ , 0, NOISE_size_in_bytes, NULL, NULL, &err));

///////////////////////////////////////////////////////////////////////////HERE//////////////////////////////////////////////////////////////////////////////////
    	for(int i=0; i<128; i++){ //FOR NOISE
			u1 = rand() / (double)RAND_MAX;
			while (u1 == 0){
				u1 = rand() / (double)RAND_MAX;
			}
			v1 = rand() / (double)RAND_MAX;
			x1 = sqrt(-2 * log(u1)) * cos(2 * 3.14 * v1) * std_NOISE;
			ptr_NOISE[i] = x1;
		}

		for(int i=0; i<16; i++){ //FOR CHANNEL
			u1 = rand() / (double)RAND_MAX;
			while (u1 == 0){
				u1 = rand() / (double)RAND_MAX;
			}
			v1 = rand() / (double)RAND_MAX;
			x1 = sqrt(-2 * log(u1)) * cos(2 * 3.14 * v1) * std_CHEANNEL;
			ptr_CHR[i] =x1;
		}

		for(int i=0; i<16; i++){ //FOR CHANNEL
			u1 = rand() / (double)RAND_MAX;
			while (u1 == 0){
				u1 = rand() / (double)RAND_MAX;
			}
			v1 = rand() / (double)RAND_MAX;
			x1 = sqrt(-2 * log(u1)) * cos(2 * 3.14 * v1) * std_CHEANNEL;
			ptr_CHI[i] =x1;
		}



///////////////////////////////////////////////////////////////////////////HERE//////////////////////////////////////////////////////////////////////////////////




		for(int i=0; i<32; i++){
			fscanf(fpp, "%d", &file_temp[i]);
		}

		for(int i=0; i<16; i++){
			ptr_a[i] = file_temp[i*2] + 16 * file_temp[i*2+1];
		}

		// Data will be migrated to kernel space
		OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_a, buffer_CHR,  buffer_CHI, buffer_NOISE},0/* 0 means from host*/));
		//Launch the Kernel
		OCL_CHECK(err, err = q.enqueueTask(krnl_vector_add));

		// The result of the previous kernel execution will need to be retrieved in
		// order to view the results. This call will transfer the data from FPGA to
		// source_results vector
		OCL_CHECK(err, q.enqueueMigrateMemObjects({buffer_result},CL_MIGRATE_MEM_OBJECT_HOST));
		OCL_CHECK(err, q.finish());

		OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_a , ptr_a));
		OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_result , ptr_result));
		OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_CHR , ptr_CHR));
		OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_CHI , ptr_CHI));
		OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_NOISE , ptr_NOISE));
		OCL_CHECK(err, err = q.finish());

		for (int i = 0; i < DATA_SIZE; i++) {
			fo << (ptr_result[i] % 16) << "\n";
			fo << (ptr_result[i] / 16) << "\n";
		}
		cout << idx << "\n";

    }

    fclose(fpp);
    fo.close();
    return 0;

}
