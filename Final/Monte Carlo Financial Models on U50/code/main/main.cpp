/* 
	 ======================================================
	 Copyright 2016 Liang Ma

	 Licensed under the Apache License, Version 2.0 (the "License");
	 you may not use this file except in compliance with the License.
	 You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
======================================================
 *
 * Author:   Liang Ma (liang-ma@polito.it)
 *
 * Host code defining all the parameters and launching the kernel. 
 *
 * Exception handling is enabled (CL_HPP_ENABLE_EXCEPTIONS) to make host code simpler.
 *
 * The global and local size are set to 1 since the kernel is written in C/C++ instead of OpenCL.
 *
 * Several input parameters for the simulation are defined in namespace Params
 * and can be changed by using command line options. Only the kernel name must
 * be defined.
 *
 * S0:		-s stock price at time 0
 * K:		-k strike price
 * rate:		-r interest rate
 * volatility:	-v volatility of stock
 * T:		-t time period of the option
 *
 *
 * callR:	-c reference value for call price
 * putR:		-p reference value for put price
 * binary_name:  -a the .xclbin binary name
 * kernel_name:  -n the kernel name
 *----------------------------------------------------------------------------
 */

#define CL_HPP_ENABLE_EXCEPTIONS

#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <unistd.h>
#include <ctime>
// #include "xcl2.hpp"
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#include <CL/cl.h>
#include "help_functions.h"

using namespace std;
//
//namespace Params
//{
//	float initprice = 100;		    // -s
//	float strikeprice = 110;			    // -k
//	float rate = 0.05;   		// -r
//	float volatility = 0.2;	// -v
//	float time = 1.0;			    // -t
//	const char *KERNEL="blackEuro";
//	const char *kernel_name="blackEuro";     // -n
//	const char *binary_name="binary_container_1.xclbin";     // -a
//}
//void usage(char* name)
//{
//	cerr<<"Usage: "<<name <<" [-b binary_file_name]" <<" [-c call_price]" <<" [-p put_price]" <<endl;
//}
//int main(int argc, char** argv)
//{
//	int num_runs=16;
//	int opt, sims = 1024, steps=1024;
//	float callR=-1, putR=-1;
//	bool flagc=false,flagp=false;
//	while((opt=getopt(argc,argv,"b:c:p:n:s:k:"))!=-1){
//		switch(opt){
//			case 'b':
//				Params::binary_name=optarg;
//				break;
//			case 'c':
//				callR=atof(optarg);
//				flagc=true;
//				break;
//			case 'p':
//				putR=atof(optarg);
//				flagp=true;
//				break;
//			case 'n':
//				num_runs=atoi(optarg);
//				break;
//			case 's':
//				sims=atoi(optarg);
//				break;
//			case 'k':
//				steps=atoi(optarg);
//				break;
//			default:
//				usage(argv[0]);
//				return -1;
//		}
//	}
//
//	fstream is(KERNEL ".parameters", ios::in);
//	if(!is){
//		cerr << "Cannot open parameter file: " KERNEL ".parameters" <<endl;
//		return -1;
//	}
//	string line;
//	while (getline (is, line)) {
//		if (line.substr(0, strlen("initprice:")) == "initprice:") {
//			Params::initprice = stod(line.substr(strlen("initprice:")+1));
//		} else if (line.substr(0, strlen("strikeprice:")) == "strikeprice:") {
//			Params::strikeprice = stod(line.substr(strlen("strikeprice:")+1));
//		} else if (line.substr(0, strlen("rate:")) == "rate:") {
//			Params::rate = stod(line.substr(strlen("rate:")+1));
//		} else if (line.substr(0, strlen("volatility:")) == "volatility:") {
//			Params::volatility = stod(line.substr(strlen("volatility:")+1));
//		} else if (line.substr(0, strlen("time:")) == "time:") {
//			Params::time = stod(line.substr(strlen("time:")+1));
//		} else if (line.substr(0, strlen("kernel_name:")) == "kernel_name:") {
//			//			Params::kernel_name = line.substr(strlen("kernel_name:")+1).c_str();
//		} else {
//			cerr << "Unknown parameter: " << line << endl;
//		}
//	}
//	try {
//		ifstream ifstr(Params::binary_name);
//		if(!ifstr){
//			cerr << "Cannot open binary file: " << Params::binary_name<<endl;
//			return -1;
//		}
//		const string programString(istreambuf_iterator<char>(ifstr),
//				(istreambuf_iterator<char>()));
//		vector<float,aligned_allocator<float>> h_call(num_runs), h_put(num_runs);
//		vector<cl::Platform> platforms;
//		cl::Platform::get(&platforms);
//
//		cl::Context context(CL_DEVICE_TYPE_ACCELERATOR);
//		vector<cl::Device> devices=context.getInfo<CL_CONTEXT_DEVICES>();
//
//		cl::Program::Binaries binaries(1, make_pair(programString.c_str(), programString.length()));
//		cl::Program program(context,devices,binaries);
//		try {
//			program.build(devices);
//		} catch (cl::Error err) {
//			if (err.err() == CL_BUILD_PROGRAM_FAILURE)
//			{
//				string info;
//				program.getBuildInfo(devices[0],CL_PROGRAM_BUILD_LOG, &info);
//				cerr << info << endl;
//				return EXIT_FAILURE;
//			}
//			else throw err;
//		}
//
//		cl_command_queue commandQueue(context, devices[0], CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE);
//
//		cl::Kernel kernel(program,Params::kernel_name);
//
//		cl::Buffer d_call(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
//				sizeof(float)*num_runs, h_call.data());
//		cl::Buffer d_put(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
//				sizeof(float)*num_runs, h_put.data());
//		std::vector<cl::Memory> outBufVec;
//		outBufVec.push_back(d_call);
//		outBufVec.push_back(d_put);
//		cout << "Starting execution. Time=" << Params::time
//			<< " rate=" << Params::rate
//			<< " volatility =" << Params::volatility
//			<< " initprice=" << Params::initprice
//			<< " strikeprice=" << Params::strikeprice
//			<< " No. simulations="<<sims
//			<< " No. partitions="<<steps
//			<< endl;
//
//
//		auto kernelFunctor = cl::KernelFunctor<cl::Buffer,cl::Buffer,float, float,float,float,float,int, int, int>(kernel);
//
//		cl::EnqueueArgs enqueueArgs(commandQueue,cl::NDRange(1),cl::NDRange(1));
//
//		clock_t start = clock();
//		for(int i=0;i<num_runs;i++){
//			kernelFunctor(enqueueArgs, d_call,d_put, Params::time, Params::rate, Params::volatility, Params::initprice, Params::strikeprice, steps, sims, i);
//		}
//		/*
//		string info;
//
//		for(int i=0;i<10;i++){
//			kernel.getArgInfo(i, CL_KERNEL_ARG_NAME, &info);
//			cout << "info of arg["<<i<<"] is " << info <<endl;
//			kernel.getArgInfo(i, CL_KERNEL_ARG_TYPE_NAME, &info);
//			cout << "type of arg["<<i<<"] is " << info <<endl;
//		}
//		int i_args=2;
//
//		kernel.setArg(i_args++, Params::time);
//
//		kernel.setArg(i_args++, Params::rate);
//
//		kernel.setArg(i_args++, Params::volatility);
//
//		kernel.setArg(i_args++, Params::initprice);
//
//		kernel.setArg(i_args++, Params::strikeprice);
//
//		kernel.setArg(i_args++, (float)sims);
//
//		kernel.setArg(i_args++, (float)steps);
//
//		kernel.setArg(0, d_call);
//
//		kernel.setArg(1, d_put);
//
//		for(int i=0;i<num_runs;i++){
//			kernel.setArg(i_args, (float)i);
//			commandQueue.enqueueTask(kernel);
//		}
//		*/
//
//		commandQueue.finish();
//
//
//		commandQueue.enqueueMigrateMemObjects(outBufVec,CL_MIGRATE_MEM_OBJECT_HOST);
//		commandQueue.finish();
//		//		event.wait();
//		clock_t t = clock() - start;
//		cout << "Execution completed"<<endl;
//		cout << "Execution time "<< (float)t /CLOCKS_PER_SEC <<" s"<<endl;
//
//		float pCall=0, pPut=0;
//		for(int i=0;i<num_runs;i++){
//			pCall+= h_call[i];
//			pPut += h_put[i];
//		}
//		pCall/=num_runs*expf(Params::rate*Params::time);
//		pPut/=num_runs*expf(Params::rate*Params::time);
//		cout<<"the call price is: "<<pCall<<'\t';
//		if(flagc) {
//			cout<<"the difference with the reference value is "<<fabs(pCall/callR-1)*100<<'%';
//		}
//		cout<<endl;
//		cout<<"the put price is: "<<pPut<<'\t';
//		if(flagp) {
//			cout<<"the difference with the reference value is "<<fabs(h_put[0]/putR-1)*100<<'%';
//		}
//		cout<<endl;
//	} catch (cl::Error err) {
//		cerr << "Error:\t" << err.what() << "\nCode:\t" << err.err() << endl;
//		return EXIT_FAILURE;
//	}
//	return EXIT_SUCCESS;
//}


// main from lab3, only part of main function
int main(int argc, char* argv[])
{
	cout << endl;


	// ============================================================================
	// Step 1: Check Command Line Arguments
	// ============================================================================
	//    o) argv[1] Platfrom Vendor
	//    o) argv[2] Device Name
	//    o) argv[3] XCLBIN file
	// ============================================================================
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 1) Check Command Line Arguments                      " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif

	if (argc != 4)
	{
		cout << "HOST-Error: Incorrect command line syntax " << endl;
		cout << "HOST-Info:  Usage: " << argv[0] << " <Platform_Vendor> <Device_Name> <XCLBIN_File>  <Test Vectors Size>" << endl << endl;
		return EXIT_FAILURE;
	}

	const char* Target_Platform_Vendor   = argv[1];
	const char* Target_Device_Name       = argv[2];
	const char* xclbinFilename           = argv[3];
	cout << "HOST-Info: Platform_Vendor   : " << Target_Platform_Vendor << endl;
	cout << "HOST-Info: Device_Name       : " << Target_Device_Name << endl;
	cout << "HOST-Info: XCLBIN_file       : " << xclbinFilename << endl;


	// ============================================================================
	// Step 2: Detect Target Platform and Target Device in a system.
	//         Create Context and Command Queue.
	// ============================================================================
	// Variables:
	//   o) Target_Platform_Vendor[] - defined as main() input argument
	//   o) Target_Device_Name[]     - defined as main() input argument
	//
	// After that
	//   o) Create a Context
	//   o) Create a Command Queue
	// ============================================================================
	cout << endl;
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 2) Detect Target Platform and Target Device in a system " << endl;
	cout << "HOST-Info:          Create Context and Command Queue                     " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif

	cl_uint         ui;

	cl_platform_id      *Platform_IDs;
	cl_uint             Nb_Of_Platforms;
	cl_platform_id      Target_Platform_ID;
	bool                Platform_Detected;
	char                *platform_info;

	cl_device_id        *Device_IDs;
	cl_uint             Nb_Of_Devices;
	cl_device_id        Target_Device_ID;
	bool                Device_Detected;
	char                *device_info;

	cl_context          Context;
	cl_command_queue    Command_Queue;

	cl_int              errCode;
	size_t              size;

	// ------------------------------------------------------------------------------------
	// Step 2.1: Get All PLATFORMS, then search for Target_Platform_Vendor (CL_PLATFORM_VENDOR)
	// ------------------------------------------------------------------------------------

	// Get the number of platforms
	// ..................................................
	errCode = clGetPlatformIDs(0, NULL, &Nb_Of_Platforms);
	if (errCode != CL_SUCCESS || Nb_Of_Platforms <= 0) {
		cout << endl << "HOST-Error: Failed to get the number of available platforms" << endl << endl;
		return EXIT_FAILURE;
	}

	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Number of detected platforms : " << Nb_Of_Platforms << endl;
	#endif

	// Allocate memory to store platforms
	// ..................................................
	Platform_IDs = new cl_platform_id[Nb_Of_Platforms];
	if (!Platform_IDs) {
		cout << endl << "HOST-Error: Out of Memory during memory allocation for Platform_IDs" << endl << endl;
		return EXIT_FAILURE;
	}

	// Get and store all PLATFORMS
	// ..................................................
	errCode = clGetPlatformIDs(Nb_Of_Platforms, Platform_IDs, NULL);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to get the available platforms" << endl << endl;
		return EXIT_FAILURE;
	}

	// Search for Platform (ex: Xilinx) using: CL_PLATFORM_VENDOR = Target_Platform_Vendor
	// ....................................................................................
	Platform_Detected = false;
	for (ui = 0; ui < Nb_Of_Platforms; ui++) {

		errCode = clGetPlatformInfo(Platform_IDs[ui], CL_PLATFORM_VENDOR, 0, NULL, &size);
		if (errCode != CL_SUCCESS) {
			cout << endl << "HOST-Error: Failed to get the size of the Platofrm parameter " << "CL_PLATFORM_VENDOR" << " value " << endl << endl;
			return EXIT_FAILURE;
		}

		platform_info = new char[size];
		if (!platform_info) {
			cout << endl << "HOST-Error: Out of Memory during memory allocation for Platform Parameter " << "CL_PLATFORM_VENDOR" << endl << endl;
			return EXIT_FAILURE;
		}

		errCode = clGetPlatformInfo(Platform_IDs[ui], CL_PLATFORM_VENDOR, size, platform_info , NULL);
		if (errCode != CL_SUCCESS) {
			cout << endl << "HOST-Error: Failed to get the " << "CL_PLATFORM_VENDOR" << " platform info" << endl << endl;
			return EXIT_FAILURE;
		}

		// Check if the current platform matches Target_Platform_Vendor
		// .............................................................
		if (strcmp(platform_info, Target_Platform_Vendor) == 0) {
			Platform_Detected        = true;
			Target_Platform_ID       = Platform_IDs[ui];
			#ifdef ALL_MESSAGES
			cout << "HOST-Info: Selected platform            : " << Target_Platform_Vendor << endl << endl;
			#endif
		}
	}

	if (Platform_Detected == false) {
		cout << endl << "HOST-Error: Failed to get detect " << Target_Platform_Vendor << " platform" << endl << endl;
		return EXIT_FAILURE;
	}


	// ------------------------------------------------------------------------------------
	// Step 2.2:  Get All Devices for selected platform Target_Platform_ID
	//            then search for Xilinx platform (CL_DEVICE_NAME = Target_Device_Name)
	// ------------------------------------------------------------------------------------

	// Get the Number of Devices
	// ............................................................................
	errCode = clGetDeviceIDs(Target_Platform_ID, CL_DEVICE_TYPE_ALL, 0, NULL, &Nb_Of_Devices);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to get the number of available Devices" << endl << endl;
		return EXIT_FAILURE;
	}
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Number of available devices  : " << Nb_Of_Devices << endl;
	#endif

	Device_IDs = new cl_device_id[Nb_Of_Devices];
	if (!Device_IDs) {
		cout << endl << "HOST-Error: Out of Memory during memory allocation for Device_IDs" << endl << endl;
		return EXIT_FAILURE;
	}

	errCode = clGetDeviceIDs(Target_Platform_ID, CL_DEVICE_TYPE_ALL, Nb_Of_Devices, Device_IDs, NULL);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to get available Devices" << endl << endl;
		return EXIT_FAILURE;
	}

	// Search for CL_DEVICE_NAME = Target_Device_Name
	// ............................................................................
	Device_Detected = false;
	for (ui = 0; ui < Nb_Of_Devices; ui++) {
		errCode = clGetDeviceInfo(Device_IDs[ui], CL_DEVICE_NAME, 0, NULL, &size);
		if (errCode != CL_SUCCESS) {
			cout << endl << "HOST-Error: Failed to get the size of the Device parameter value " << "CL_DEVICE_NAME" << endl << endl;
			return EXIT_FAILURE;
		}

		device_info = new char[size];
		if (!device_info) {
			cout << endl << "HOST-Error: Out of Memory during memory allocation for Device parameter " << "CL_DEVICE_NAME" << " value " << endl << endl;
			return EXIT_FAILURE;
		}

		errCode = clGetDeviceInfo(Device_IDs[ui], CL_DEVICE_NAME, size, device_info, NULL);
		if (errCode != CL_SUCCESS) {
			cout << endl << "HOST-Error: Failed to get the " << "CL_DEVICE_NAME" << " device info" << endl << endl;
			return EXIT_FAILURE;
		}

		// Check if the current device matches Target_Device_Name
		// ............................................................................
		if (strcmp(device_info, Target_Device_Name) == 0) {
			Device_Detected        = true;
			Target_Device_ID       = Device_IDs[ui];
		}
	}

	if (Device_Detected == false) {
		cout << endl << "HOST-Error: Failed to get detect " << Target_Device_Name << " device" << endl << endl;
		return EXIT_FAILURE;
	} else {
		#ifdef ALL_MESSAGES
		cout << "HOST-Info: Selected device              : " << Target_Device_Name << endl << endl;
		#endif
	}

	// ------------------------------------------------------------------------------------
	// Step 2.3: Create Context
	// ------------------------------------------------------------------------------------
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Creating Context ... " << endl;
	#endif
	Context = clCreateContext(0, 1, &Target_Device_ID, NULL, NULL, &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to create a Context" << endl << endl;
		return EXIT_FAILURE;
	}

	// ------------------------------------------------------------------------------------
	// Step 2.4: Create Command Queue (commands are executed in-order)
	// ------------------------------------------------------------------------------------
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Creating Command Queue ... " << endl;
	#endif
	Command_Queue = clCreateCommandQueue(Context, Target_Device_ID, CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE, &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to create a Command Queue" << endl << endl;
		return EXIT_FAILURE;
	}

	// ============================================================================
	// Step 3: Create Program and Kernel
	// ============================================================================
	//   o) Create a Program from a Binary File and Build it
	//   o) Create a Kernel
	// ============================================================================
	#ifdef ALL_MESSAGES
	cout << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 3) Create Program and Kernels                           " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif


	// ------------------------------------------------------------------
	// Step 3.1: Load Binary File from a disk to Memory
	// ------------------------------------------------------------------
	unsigned char *xclbin_Memory;
	int program_length;

	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Loading " << xclbinFilename << " binary file to memory ..." << endl;
	#endif

	program_length = loadFile2Memory(xclbinFilename, (char **) &xclbin_Memory);
	if (program_length < 0) {
		cout << endl << "HOST-Error: Failed to load " << xclbinFilename << " binary file to memory" << endl << endl;
		return EXIT_FAILURE;
	}

	// ------------------------------------------------------------
	// Step 3.2: Create a program using a Binary File
	// ------------------------------------------------------------
	size_t     Program_Length_in_Bytes;
	cl_program Program;
	cl_int     Binary_Status;

	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Creating Program with Binary ..." << endl;
	#endif
	Program_Length_in_Bytes = program_length;
	Program = clCreateProgramWithBinary(Context, 1, &Target_Device_ID, &Program_Length_in_Bytes,
                                        (const unsigned char **) &xclbin_Memory, &Binary_Status, &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to create a Program from a Binary" << endl << endl;
		return EXIT_FAILURE;
	}

	// ----------------------------------------------------------------------
	// Step 3.3: Build (compiles and links) a program executable from binary
	// ----------------------------------------------------------------------
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Building the Program ..." << endl;
	#endif

	errCode = clBuildProgram(Program, 1, &Target_Device_ID, NULL, NULL, NULL);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to build a Program Executable" << endl << endl;
		return EXIT_FAILURE;
	}

	// -------------------------------------------------------------
	// Step 3.4: Create a Kernels
	// -------------------------------------------------------------
	cl_kernel K_blackEuro;

	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Creating a Kernel: K_blackEuro ..." << endl;
	#endif
	K_blackEuro = clCreateKernel(Program, "blackEuro", &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to create K_blackEuro" << endl << endl;
		return EXIT_FAILURE;
	}

	// ================================================================
	// Step 4: Prepare Data to Run Kernel
	// ================================================================
	//   o) Generate data for initprice, strikeprice, rate, volatility,
	//      time, num_runs, sims, steps
	//   o) Allocate Memory to store the results: h_call, h_put
	//   o) Create Buffers in Global Memory to store data
	// ================================================================
	#ifdef ALL_MESSAGES
	cout << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 4) Prepare Data to Run Kernels                           " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif

	// ------------------------------------------------------------------
	// Step 4.1: Generate data for initprice, strikeprice, rate, volatility,
	//      	 time, num_runs, sims, steps
	//           Allocate Memory to store the results: h_call, h_put
	// ------------------------------------------------------------------

	cout << "HOST-Info: generate parameters    ... ";
	cl_float initprice = 100;		    // -s
	cl_float strikeprice = 110;			    // -k
	cl_float rate = 0.05;   		// -r
	cl_float volatility = 0.2;	// -v
	cl_float time = 1.0;			    // -t
	int num_runs=16;
	cl_uint sims = 1024, steps=1024;
	float *h_call, *h_put;

	cout << "All parameters are successfully generated. ";

	cout << "HOST-Info: Allocating memory for h_call    ... ";
	void *ptr=nullptr;
	if (posix_memalign(&ptr,4096,num_runs*sizeof(float))) {
		cout << endl << "HOST-Error: Out of Memory during memory allocation for h_call" << endl << endl;
		return EXIT_FAILURE;
	}
	cout << "h_call Allocated" << endl;
	h_call = reinterpret_cast<float*>(ptr);

	cout << endl;

	cout << "HOST-Info: Allocating memory for h_put    ... ";
	if (posix_memalign(&ptr,4096,num_runs*sizeof(float))) {
		cout << endl << "HOST-Error: Out of Memory during memory allocation for h_put" << endl << endl;
		return EXIT_FAILURE;
	}
	cout << "h_put Allocated" << endl;
	h_put = reinterpret_cast<float*>(ptr);

	// ------------------------------------------------------------------
	// Step 4.2: Create Buffers in Global Memory to store data
	//             o) d_call     - stores h_call (W)
	//             o) d_put      - stores h_put (W)
	// ------------------------------------------------------------------
	cl_mem d_call, d_put;

	d_call = clCreateBuffer(Context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, num_runs * sizeof(float),\
							h_call, &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed to allocate Global Memory for d_call" << endl << endl;
		return EXIT_FAILURE;
	}

	d_put = clCreateBuffer(Context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, num_runs * sizeof(float), \
						   h_put, &errCode);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed to allocate Global Memory for d_put" << endl << endl;
		return EXIT_FAILURE;
	}


	// ============================================================================
	// Step 5: Set Kernel Arguments and Run the Application
	//         o) Set Kernel Arguments
	// 				----------------------------------------------------
	// 				 Kernel	  		Argument Nb		Description
	// 				----------------------------------------------------
	//				 K_blackEuro    0				d_call
	//				 K_blackEuro    1				d_put
	//				 K_blackEuro    2				time
	//				 K_blackEuro    3				rate
	//				 K_blackEuro    4				volatility
	//				 K_blackEuro    5				initprice
	//				 K_blackEuro    6				strikeprice
	//				 K_blackEuro    7				steps
	//				 K_blackEuro    8				sims
	//				 K_blackEuro    9				i <<-- NEED Modified
	// 				----------------------------------------------------
	//         o) Copy Input Data from Host to Global Memory
	//         o) Submit Kernels for Execution
	//         o) Copy Results from Global Memory to Host
	// ============================================================================
	int Nb_Of_Mem_Events = 4,
		Nb_Of_Exe_Events = num_runs;

	cl_event Mem_op_event[Nb_Of_Mem_Events],
	          K_exe_event[Nb_Of_Exe_Events];

	#ifdef ALL_MESSAGES
	cout << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 5) Run Application                                      " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif

	// ----------------------------------------
	// Step 5.1: Set Kernel Arguments
	// ----------------------------------------
	#ifdef ALL_MESSAGES
	cout << "HOST-Info: Setting Kernel arguments ..." << endl;
	#endif
	errCode  = false;

	errCode |= clSetKernelArg(K_blackEuro,  0, sizeof(cl_mem), &d_call);
	errCode |= clSetKernelArg(K_blackEuro,  1, sizeof(cl_mem), &d_put);
	errCode |= clSetKernelArg(K_blackEuro,  2, sizeof(cl_float), &time);
	errCode |= clSetKernelArg(K_blackEuro,  3, sizeof(cl_float), &rate);
	errCode |= clSetKernelArg(K_blackEuro,  4, sizeof(cl_float), &volatility);
	errCode |= clSetKernelArg(K_blackEuro,  5, sizeof(cl_float), &initprice);
	errCode |= clSetKernelArg(K_blackEuro,  6, sizeof(cl_float), &strikeprice);
	errCode |= clSetKernelArg(K_blackEuro,  7, sizeof(cl_uint), &steps);
	errCode |= clSetKernelArg(K_blackEuro,  8, sizeof(cl_uint), &sims);

	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-ERROR: Failed to set Kernel arguments from 0 to 8" << endl << endl;
		return EXIT_FAILURE;
	}

	errCode = clEnqueueMigrateMemObjects(Command_Queue, 1, &d_call, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED, \
	0, NULL, &Mem_op_event[0]);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed Migrate d_call without migrating content" << endl << endl;
		return EXIT_FAILURE;
	}

	// --------------------------------------------------------

	errCode = clEnqueueMigrateMemObjects(Command_Queue, 1, &d_put, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED, \
	0, NULL, &Mem_op_event[1]);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed Migrate d_put without migrating content" << endl << endl;
		return EXIT_FAILURE;
	}

	// --------------------------------------------------------

	errCode = clEnqueueBarrierWithWaitList (Command_Queue, 0, NULL, NULL);
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to Submit BarrierWithWaitList" << endl << endl;
		return EXIT_FAILURE;
	}

	// ----------------------------------------
	// Step 5.3: Submit Kernels for Execution
	// ----------------------------------------

	cout << "HOST-Info: Submitting Kernel K_blackEuro ..." << endl;
	errCode  = false;
	for (int i=0; i < num_runs; i++) {
		errCode |= clSetKernelArg(K_blackEuro,  9, sizeof(int), &i);
		errCode |= clEnqueueTask(Command_Queue, K_blackEuro, 0, NULL, &K_exe_event[i]);
	}
	if (errCode != CL_SUCCESS) {
		cout << endl << "HOST-Error: Failed to submit K_blackEuro" << endl << endl;
		return EXIT_FAILURE;
	}

	// ---------------------------------------------------------
	// Step 5.4: Submit Copy Results from Global Memory to Host
	// ---------------------------------------------------------
	#ifdef ALL_MESSAGES
	cout << "HOST_Info: Submitting Copy Results data from Global Memory to Host ..." << endl;
	#endif


	errCode = clEnqueueMigrateMemObjects(Command_Queue, 1, &d_call, CL_MIGRATE_MEM_OBJECT_HOST, 1, &K_exe_event[num_runs-1], &Mem_op_event[2]);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed to submit Copy Results from d_call to h_call" << endl << endl;
		return EXIT_FAILURE;
	}

	errCode = clEnqueueMigrateMemObjects(Command_Queue, 1, &d_put, CL_MIGRATE_MEM_OBJECT_HOST, 1, &K_exe_event[num_runs-1], &Mem_op_event[3]);
	if (errCode != CL_SUCCESS) {
		cout << endl << "Host-Error: Failed to submit Copy Results from d_put to h_put" << endl << endl;
		return EXIT_FAILURE;
	}

	cout << endl << "HOST_Info: Waiting for application to be completed ..." << endl;
	clFinish(Command_Queue);

	// ============================================================================
	// Step 6: Processing Output Results
	//         o) Store output results to a RES.txt file
	//         o) Check correctness of the output results
	// ============================================================================
	#ifdef ALL_MESSAGES
	cout << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	cout << "HOST-Info: (Step 6) Store and Check the Output Results                   " << endl;
	cout << "HOST-Info: ============================================================= " << endl;
	#endif
	float pCall=0, pPut=0;
	for(int i=0;i<num_runs;i++){

		cout << "The " << i+1;
		if (i+1 == 1) cout << "st ";
		else if (i+1 ==2) cout << "nd ";
		else cout << "th ";
		cout << "call price is " << h_call[i] << endl;

		cout << "The " << i+1;
		if (i+1 == 1) cout << "st ";
		else if (i+1 ==2) cout << "nd ";
		else cout << "th ";
		cout << "put price is " << h_put[i] << endl;

		pCall+= h_call[i];
		pPut += h_put[i];
	}
	cout << "the sum of call price is: " << pCall << endl;
	cout << "the sum of put price is: " << pPut << endl;

	pCall/=num_runs*expf(rate*time);
	pPut/=num_runs*expf(rate*time);
	float callR=-1, putR=-1;
	cout<<"the call price is: "<<pCall<<'\t';
	cout<<"the difference with the reference value is "<<fabs(pCall/callR-1)*100<<'%';
	cout<<endl;


	cout<<"the put price is: "<<pPut<<'\t';
	cout<<"the difference with the reference value is "<<fabs(h_put[0]/putR-1)*100<<'%';
	cout<<endl;
	return EXIT_SUCCESS;
}


