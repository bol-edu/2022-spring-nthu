
//OpenCL utility layer include
#include "xcl2.hpp"
#include <vector>

//Array Size to access
#define DATA_SIZE_SPK   100
#define DATA_SIZE_COEF  100
#define DATA_SIZE_SPT    64
#define DATA_SIZE_WPT    55

//Maximum Array Size
#define MAX_SIZE 1000

#define N 		64
#define W 		55
#define FIRST 	35
#define SECOND 	21
#define THIRD 	14
#define FORTH	10

void Software_dwtkernel(
    std::vector<double, aligned_allocator<double>> &spk, 
    std::vector<double, aligned_allocator<double>> &dwtcoef
) {
    // clang-format on
	double HiD[8] = {-0.0322, -0.0126, 0.0992, 0.2979, -0.8037, 0.4976, 0.0296, -0.0758};
	double LoD[8] = {-0.0758, -0.0296, 0.4976, 0.8037, 0.2979, -0.0992, -0.0126, 0.0322};

	// double spk[N+14];

	double prepad[7];	double postpad[7];
	double cA1[FIRST];
	double cA2[SECOND]; double cD2[SECOND];
	double cA3[THIRD];	double cD3[THIRD];
	double cA4[FORTH];	double cD4[FORTH];

	// int idx;
	int j;

	// Level1: padding and conv
	for(j = 0; j < 7; j++) {
		prepad[j] = spk[6-j];
		postpad[j] = spk[N-1-j];
	}
	cA1[0] = prepad[1]*LoD[7] + prepad[2]*LoD[6] + prepad[3]*LoD[5] + prepad[4]*LoD[4] + 
			 prepad[5]*LoD[3] + prepad[6]*LoD[2] + prepad[6]*LoD[1] + prepad[5]*LoD[0];
	cA1[1] = prepad[3]*LoD[7] + prepad[4]*LoD[6] + prepad[5]*LoD[5] + prepad[6]*LoD[4] + 
			 prepad[6]*LoD[3] + prepad[5]*LoD[2] + prepad[4]*LoD[1] + prepad[3]*LoD[0];
	cA1[2] = prepad[5]*LoD[7] + prepad[6]*LoD[6] + prepad[6]*LoD[5] + prepad[5]*LoD[4] + 
			 prepad[4]*LoD[3] + prepad[3]*LoD[2] + prepad[2]*LoD[1] + prepad[1]*LoD[0];
	// cD1[0] = prepad[1]*HiD[7] + prepad[2]*HiD[6] + prepad[3]*HiD[5] + prepad[4]*HiD[4] + 
	// 		 prepad[5]*HiD[3] + prepad[6]*HiD[2] + prepad[6]*HiD[1] + prepad[5]*HiD[0];
	// cD1[1] = prepad[3]*HiD[7] + prepad[4]*HiD[6] + prepad[5]*HiD[5] + prepad[6]*HiD[4] + 
	// 		 prepad[6]*HiD[3] + prepad[5]*HiD[2] + prepad[4]*HiD[1] + prepad[3]*HiD[0];
	// cD1[2] = prepad[5]*HiD[7] + prepad[6]*HiD[6] + prepad[6]*HiD[5] + prepad[5]*HiD[4] + 
	// 		 prepad[4]*HiD[3] + prepad[3]*HiD[2] + prepad[2]*HiD[1] + prepad[1]*HiD[0];
	for(j = 0; j+7 < N; j+=2) {
		cA1[j/2+3] = spk[j]*LoD[7] + spk[j+1]*LoD[6] + spk[j+2]*LoD[5] + spk[j+3]*LoD[4] + 
				 	spk[j+4]*LoD[3] + spk[j+5]*LoD[2] + spk[j+6]*LoD[1] + spk[j+7]*LoD[0];
		// cD1[j/2+3] = spk[j]*HiD[7] + spk[j+1]*HiD[6] + spk[j+2]*HiD[5] + spk[j+3]*HiD[4] + 
		// 			spk[j+4]*HiD[3] + spk[j+5]*HiD[2] + spk[j+6]*HiD[1] + spk[j+7]*HiD[0];
	}
	
	cA1[32] = postpad[5]*LoD[7] + postpad[4]*LoD[6] + postpad[3]*LoD[5] + postpad[2]*LoD[4] + 
			  postpad[1]*LoD[3] + postpad[0]*LoD[2] + postpad[0]*LoD[1] + postpad[1]*LoD[0];
	// cD1[32] = postpad[5]*HiD[7] + postpad[4]*HiD[6] + postpad[3]*HiD[5] + postpad[2]*HiD[4] + 
	// 		  postpad[1]*HiD[3] + postpad[0]*HiD[2] + postpad[0]*HiD[1] + postpad[1]*HiD[0];
	cA1[33] = postpad[3]*LoD[7] + postpad[2]*LoD[6] + postpad[1]*LoD[5] + postpad[0]*LoD[4] + 
			  postpad[0]*LoD[3] + postpad[0]*LoD[2] + postpad[0]*LoD[1] + postpad[1]*LoD[0];
	// cD1[33] = postpad[3]*HiD[7] + postpad[2]*HiD[6] + postpad[1]*HiD[5] + postpad[0]*HiD[4] + 
	// 		  postpad[0]*HiD[3] + postpad[3]*HiD[2] + postpad[4]*HiD[1] + postpad[5]*HiD[0];
	cA1[34] = postpad[1]*LoD[7] + postpad[0]*LoD[6] + postpad[0]*LoD[5] + postpad[1]*LoD[4] + 
			  postpad[2]*LoD[3] + postpad[3]*LoD[2] + postpad[4]*LoD[1] + postpad[5]*LoD[0];
	// cD1[34] = postpad[1]*HiD[7] + postpad[0]*HiD[6] + postpad[0]*HiD[5] + postpad[1]*HiD[4] + 
	// 		  postpad[2]*HiD[3] + postpad[3]*HiD[2] + postpad[4]*HiD[1] + postpad[5]*HiD[0];

	// Level2: padding and conv
	for(j = 0; j < 7; j++) {
		prepad[j] = cA1[6-j];
		postpad[j] = cA1[FIRST-1-j];
// printf("pre[%d] = spk[%d] = %.4lf\npost[%d] = spk[%d] = %.4lf\n", j, 6-j, prepad[j], j, FIRST-1-j, postpad[j]);
	}
	cA2[0] = prepad[1]*LoD[7] + prepad[2]*LoD[6] + prepad[3]*LoD[5] + prepad[4]*LoD[4] + 
			 prepad[5]*LoD[3] + prepad[6]*LoD[2] + prepad[6]*LoD[1] + prepad[5]*LoD[0];
	cA2[1] = prepad[3]*LoD[7] + prepad[4]*LoD[6] + prepad[5]*LoD[5] + prepad[6]*LoD[4] + 
			 prepad[6]*LoD[3] + prepad[5]*LoD[2] + prepad[4]*LoD[1] + prepad[3]*LoD[0];
	cA2[2] = prepad[5]*LoD[7] + prepad[6]*LoD[6] + prepad[6]*LoD[5] + prepad[5]*LoD[4] + 
			 prepad[4]*LoD[3] + prepad[3]*LoD[2] + prepad[2]*LoD[1] + prepad[1]*LoD[0];
	cD2[0] = prepad[1]*HiD[7] + prepad[2]*HiD[6] + prepad[3]*HiD[5] + prepad[4]*HiD[4] + 
			 prepad[5]*HiD[3] + prepad[6]*HiD[2] + prepad[6]*HiD[1] + prepad[5]*HiD[0];
	cD2[1] = prepad[3]*HiD[7] + prepad[4]*HiD[6] + prepad[5]*HiD[5] + prepad[6]*HiD[4] + 
			 prepad[6]*HiD[3] + prepad[5]*HiD[2] + prepad[4]*HiD[1] + prepad[3]*HiD[0];
	cD2[2] = prepad[5]*HiD[7] + prepad[6]*HiD[6] + prepad[6]*HiD[5] + prepad[5]*HiD[4] + 
			 prepad[4]*HiD[3] + prepad[3]*HiD[2] + prepad[2]*HiD[1] + prepad[1]*HiD[0];
	for(j = 0; j+7 < FIRST; j+=2) {
//			printf("[%d] = spk[%d] ~ spk[%d]\n", j/2+3, j, j+7);
		cA2[j/2+3] = cA1[j]*LoD[7] + cA1[j+1]*LoD[6] + cA1[j+2]*LoD[5] + cA1[j+3]*LoD[4] + 
				 	cA1[j+4]*LoD[3] + cA1[j+5]*LoD[2] + cA1[j+6]*LoD[1] + cA1[j+7]*LoD[0];
		cD2[j/2+3] = cA1[j]*HiD[7] + cA1[j+1]*HiD[6] + cA1[j+2]*HiD[5] + cA1[j+3]*HiD[4] + 
					cA1[j+4]*HiD[3] + cA1[j+5]*HiD[2] + cA1[j+6]*HiD[1] + cA1[j+7]*HiD[0];
	}
	cA2[17] = postpad[6]*LoD[7] + postpad[5]*LoD[6] + postpad[4]*LoD[5] + postpad[3]*LoD[4] + 
			  postpad[2]*LoD[3] + postpad[1]*LoD[2] + postpad[0]*LoD[1] + postpad[0]*LoD[0];
	cD2[17] = postpad[6]*HiD[7] + postpad[5]*HiD[6] + postpad[4]*HiD[5] + postpad[3]*HiD[4] + 
			  postpad[2]*HiD[3] + postpad[1]*HiD[2] + postpad[0]*HiD[1] + postpad[0]*HiD[0];
	cA2[18] = postpad[4]*LoD[7] + postpad[3]*LoD[6] + postpad[2]*LoD[5] + postpad[1]*LoD[4] + 
			  postpad[0]*LoD[3] + postpad[0]*LoD[2] + postpad[1]*LoD[1] + postpad[2]*LoD[0];
	cD2[18] = postpad[4]*HiD[7] + postpad[3]*HiD[6] + postpad[2]*HiD[5] + postpad[1]*HiD[4] + 
			  postpad[0]*HiD[3] + postpad[0]*HiD[2] + postpad[1]*HiD[1] + postpad[2]*HiD[0];
	cA2[19] = postpad[2]*LoD[7] + postpad[1]*LoD[6] + postpad[0]*LoD[5] + postpad[0]*LoD[4] + 
			  postpad[1]*LoD[3] + postpad[2]*LoD[2] + postpad[3]*LoD[1] + postpad[4]*LoD[0];
	cD2[19] = postpad[2]*HiD[7] + postpad[1]*HiD[6] + postpad[0]*HiD[5] + postpad[0]*HiD[4] + 
			  postpad[1]*HiD[3] + postpad[2]*HiD[2] + postpad[3]*HiD[1] + postpad[4]*HiD[0];
	cA2[20] = postpad[0]*LoD[7] + postpad[0]*LoD[6] + postpad[1]*LoD[5] + postpad[2]*LoD[4] + 
			  postpad[3]*LoD[3] + postpad[4]*LoD[2] + postpad[5]*LoD[1] + postpad[6]*LoD[0];
	cD2[20] = postpad[0]*HiD[7] + postpad[0]*HiD[6] + postpad[1]*HiD[5] + postpad[2]*HiD[4] + 
			  postpad[3]*HiD[3] + postpad[4]*HiD[2] + postpad[5]*HiD[1] + postpad[6]*HiD[0];

	// Level3: padding and conv
	for(j = 0; j < 7; j++) {
		prepad[j] = cA2[6-j];
		postpad[j] = cA2[SECOND-1-j];
	}
	cA3[0] = prepad[1]*LoD[7] + prepad[2]*LoD[6] + prepad[3]*LoD[5] + prepad[4]*LoD[4] + 
			 prepad[5]*LoD[3] + prepad[6]*LoD[2] + prepad[6]*LoD[1] + prepad[5]*LoD[0];
	cA3[1] = prepad[3]*LoD[7] + prepad[4]*LoD[6] + prepad[5]*LoD[5] + prepad[6]*LoD[4] + 
			 prepad[6]*LoD[3] + prepad[5]*LoD[2] + prepad[4]*LoD[1] + prepad[3]*LoD[0];
	cA3[2] = prepad[5]*LoD[7] + prepad[6]*LoD[6] + prepad[6]*LoD[5] + prepad[5]*LoD[4] + 
			 prepad[4]*LoD[3] + prepad[3]*LoD[2] + prepad[2]*LoD[1] + prepad[1]*LoD[0];
	cD3[0] = prepad[1]*HiD[7] + prepad[2]*HiD[6] + prepad[3]*HiD[5] + prepad[4]*HiD[4] + 
			 prepad[5]*HiD[3] + prepad[6]*HiD[2] + prepad[6]*HiD[1] + prepad[5]*HiD[0];
	cD3[1] = prepad[3]*HiD[7] + prepad[4]*HiD[6] + prepad[5]*HiD[5] + prepad[6]*HiD[4] + 
			 prepad[6]*HiD[3] + prepad[5]*HiD[2] + prepad[4]*HiD[1] + prepad[3]*HiD[0];
	cD3[2] = prepad[5]*HiD[7] + prepad[6]*HiD[6] + prepad[6]*HiD[5] + prepad[5]*HiD[4] + 
			 prepad[4]*HiD[3] + prepad[3]*HiD[2] + prepad[2]*HiD[1] + prepad[1]*HiD[0];		
	for(j = 0; j+7 < SECOND; j+=2) {
//			printf("[%d] = spk[%d] ~ spk[%d]\n", j/2+3, j, j+7);
		cA3[j/2+3] = cA2[j]*LoD[7] + cA2[j+1]*LoD[6] + cA2[j+2]*LoD[5] + cA2[j+3]*LoD[4] + 
				 	cA2[j+4]*LoD[3] + cA2[j+5]*LoD[2] + cA2[j+6]*LoD[1] + cA2[j+7]*LoD[0];
		cD3[j/2+3] = cA2[j]*HiD[7] + cA2[j+1]*HiD[6] + cA2[j+2]*HiD[5] + cA2[j+3]*HiD[4] + 
					cA2[j+4]*HiD[3] + cA2[j+5]*HiD[2] + cA2[j+6]*HiD[1] + cA2[j+7]*HiD[0];
	}
	cA3[10] = postpad[6]*LoD[7] + postpad[5]*LoD[6] + postpad[4]*LoD[5] + postpad[3]*LoD[4] + 
			  postpad[2]*LoD[3] + postpad[1]*LoD[2] + postpad[0]*LoD[1] + postpad[0]*LoD[0];
	cD3[10] = postpad[6]*HiD[7] + postpad[5]*HiD[6] + postpad[4]*HiD[5] + postpad[3]*HiD[4] + 
			  postpad[2]*HiD[3] + postpad[1]*HiD[2] + postpad[0]*HiD[1] + postpad[0]*HiD[0];
	cA3[11] = postpad[4]*LoD[7] + postpad[3]*LoD[6] + postpad[2]*LoD[5] + postpad[1]*LoD[4] + 
			  postpad[0]*LoD[3] + postpad[0]*LoD[2] + postpad[1]*LoD[1] + postpad[2]*LoD[0];
	cD3[11] = postpad[4]*HiD[7] + postpad[3]*HiD[6] + postpad[2]*HiD[5] + postpad[1]*HiD[4] + 
			  postpad[0]*HiD[3] + postpad[0]*HiD[2] + postpad[1]*HiD[1] + postpad[2]*HiD[0];
	cA3[12] = postpad[2]*LoD[7] + postpad[1]*LoD[6] + postpad[0]*LoD[5] + postpad[0]*LoD[4] + 
			  postpad[1]*LoD[3] + postpad[2]*LoD[2] + postpad[3]*LoD[1] + postpad[4]*LoD[0];
	cD3[12] = postpad[2]*HiD[7] + postpad[1]*HiD[6] + postpad[0]*HiD[5] + postpad[0]*HiD[4] + 
			  postpad[1]*HiD[3] + postpad[2]*HiD[2] + postpad[3]*HiD[1] + postpad[4]*HiD[0];
	cA3[13] = postpad[0]*LoD[7] + postpad[0]*LoD[6] + postpad[1]*LoD[5] + postpad[2]*LoD[4] + 
			  postpad[3]*LoD[3] + postpad[4]*LoD[2] + postpad[5]*LoD[1] + postpad[6]*LoD[0];
	cD3[13] = postpad[0]*HiD[7] + postpad[0]*HiD[6] + postpad[1]*HiD[5] + postpad[2]*HiD[4] + 
			  postpad[3]*HiD[3] + postpad[4]*HiD[2] + postpad[5]*HiD[1] + postpad[6]*HiD[0];

	// Level4: padding and conv
	for(j = 0; j < 7; j++) {
		prepad[j] = cA3[6-j];
		postpad[j] = cA3[THIRD-1-j];
	}
	cA4[0] = prepad[1]*LoD[7] + prepad[2]*LoD[6] + prepad[3]*LoD[5] + prepad[4]*LoD[4] + 
			 prepad[5]*LoD[3] + prepad[6]*LoD[2] + prepad[6]*LoD[1] + prepad[5]*LoD[0];
	cA4[1] = prepad[3]*LoD[7] + prepad[4]*LoD[6] + prepad[5]*LoD[5] + prepad[6]*LoD[4] + 
			 prepad[6]*LoD[3] + prepad[5]*LoD[2] + prepad[4]*LoD[1] + prepad[3]*LoD[0];
	cA4[2] = prepad[5]*LoD[7] + prepad[6]*LoD[6] + prepad[6]*LoD[5] + prepad[5]*LoD[4] + 
			 prepad[4]*LoD[3] + prepad[3]*LoD[2] + prepad[2]*LoD[1] + prepad[1]*LoD[0];
	cD4[0] = prepad[1]*HiD[7] + prepad[2]*HiD[6] + prepad[3]*HiD[5] + prepad[4]*HiD[4] + 
			 prepad[5]*HiD[3] + prepad[6]*HiD[2] + prepad[6]*HiD[1] + prepad[5]*HiD[0];
	cD4[1] = prepad[3]*HiD[7] + prepad[4]*HiD[6] + prepad[5]*HiD[5] + prepad[6]*HiD[4] + 
			 prepad[6]*HiD[3] + prepad[5]*HiD[2] + prepad[4]*HiD[1] + prepad[3]*HiD[0];
	cD4[2] = prepad[5]*HiD[7] + prepad[6]*HiD[6] + prepad[6]*HiD[5] + prepad[5]*HiD[4] + 
			 prepad[4]*HiD[3] + prepad[3]*HiD[2] + prepad[2]*HiD[1] + prepad[1]*HiD[0];			
	for(j = 0; j+7 < THIRD; j+=2) {
//			printf("[%d] = spk[%d] ~ spk[%d]\n", j/2+3, j, j+7);
		cA4[j/2+3] = cA3[j]*LoD[7] + cA3[j+1]*LoD[6] + cA3[j+2]*LoD[5] + cA3[j+3]*LoD[4] + 
				 	cA3[j+4]*LoD[3] + cA3[j+5]*LoD[2] + cA3[j+6]*LoD[1] + cA3[j+7]*LoD[0];
		cD4[j/2+3] = cA3[j]*HiD[7] + cA3[j+1]*HiD[6] + cA3[j+2]*HiD[5] + cA3[j+3]*HiD[4] + 
					cA3[j+4]*HiD[3] + cA3[j+5]*HiD[2] + cA3[j+6]*HiD[1] + cA3[j+7]*HiD[0];
	}
	cA4[7] = postpad[5]*LoD[7] + postpad[4]*LoD[6] + postpad[3]*LoD[5] + postpad[2]*LoD[4] + 
			 postpad[1]*LoD[3] + postpad[0]*LoD[2] + postpad[0]*LoD[1] + postpad[1]*LoD[0];
	cD4[7] = postpad[5]*HiD[7] + postpad[4]*HiD[6] + postpad[3]*HiD[5] + postpad[2]*HiD[4] + 
			 postpad[1]*HiD[3] + postpad[0]*HiD[2] + postpad[0]*HiD[1] + postpad[1]*HiD[0];
	cA4[8] = postpad[3]*LoD[7] + postpad[2]*LoD[6] + postpad[1]*LoD[5] + postpad[0]*LoD[4] + 
			 postpad[0]*LoD[3] + postpad[0]*LoD[2] + postpad[0]*LoD[1] + postpad[1]*LoD[0];
	cD4[8] = postpad[3]*HiD[7] + postpad[2]*HiD[6] + postpad[1]*HiD[5] + postpad[0]*HiD[4] + 
			 postpad[0]*HiD[3] + postpad[3]*HiD[2] + postpad[4]*HiD[1] + postpad[5]*HiD[0];
	cA4[9] = postpad[1]*LoD[7] + postpad[0]*LoD[6] + postpad[0]*LoD[5] + postpad[1]*LoD[4] + 
			 postpad[2]*LoD[3] + postpad[3]*LoD[2] + postpad[4]*LoD[1] + postpad[5]*LoD[0];
	cD4[9] = postpad[1]*HiD[7] + postpad[0]*HiD[6] + postpad[0]*HiD[5] + postpad[1]*HiD[4] + 
			 postpad[2]*HiD[3] + postpad[3]*HiD[2] + postpad[4]*HiD[1] + postpad[5]*HiD[0];

	for (j = 0; j < SECOND; j++) dwtcoef[j] = cD2[j];
	for (j = 0; j < THIRD; j++) dwtcoef[j+SECOND] = cD3[j];
	for (j = 0; j < FORTH; j++) dwtcoef[j+SECOND+THIRD] = cD4[j];
	for (j = 0; j < FORTH; j++) dwtcoef[j+SECOND+THIRD+FORTH] = cA4[j];
}


int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    //Allocate Memory in Host Memory
    if (DATA_SIZE_SPK > MAX_SIZE) {
        std::cout << "Size is bigger than internal buffer size,"
                  << " please use a size smaller than " << MAX_SIZE << "!"
                  << std::endl;
        return EXIT_FAILURE;
    }

    size_t Spk_size_bytes = sizeof(double) * DATA_SIZE_SPK * DATA_SIZE_SPT;
    size_t Coef_size_bytes = sizeof(double) * DATA_SIZE_WPT * DATA_SIZE_COEF;
    // size_t B_matrix_size_bytes = sizeof(double) * DATA_SIZE_BEAMS * DATA_SIZE_SAMPLES;
    cl_int err;

    std::vector<double, aligned_allocator<double>> source_spk(Spk_size_bytes);
    std::vector<double, aligned_allocator<double>> source_hw_results(Coef_size_bytes);
    std::vector<double, aligned_allocator<double>> source_sw_results(Coef_size_bytes);


    // Create the RX test data and Software Result
    for (int i = 0; i < DATA_SIZE_SPK * DATA_SIZE_SPT; i++) {
        source_spk[i] = i;
    }

    // Create the BEAM Software Result
    for (int i = 0; i < DATA_SIZE_WPT * DATA_SIZE_COEF; i++) {
        source_sw_results[i] = 0;
        source_hw_results[i] = 0;
    }

    //OPENCL HOST CODE AREA START
    auto devices = xcl::get_xil_devices();
    auto device = devices[0];

    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
    OCL_CHECK(
        err,
        cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
    OCL_CHECK(err,
              std::string device_name = device.getInfo<CL_DEVICE_NAME>(&err));

   auto fileBuf = xcl::read_binary_file(binaryFile);
   cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    devices.resize(1);
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
    OCL_CHECK(err, cl::Kernel krnl_dwt(program, "dwtkernel", &err));

    //Allocate Buffer in Global Memory
    OCL_CHECK(err,
              cl::Buffer buffer_spk_in(context,
                                    CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                    Spk_size_bytes,
                                    source_spk.data(),
                                    &err));
    OCL_CHECK(err,
              cl::Buffer buffer_coef_output(context,
                                       CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                       Coef_size_bytes,
                                       source_hw_results.data(),
                                       &err));


    // int size_SPK  = DATA_SIZE_SPK;
    // int size_COEF = DATA_SIZE_COEF;
    // int size_SPT    = DATA_SIZE_SPT;

    OCL_CHECK(err, err = krnl_dwt.setArg(0, buffer_spk_in));
    OCL_CHECK(err, err = krnl_dwt.setArg(1, buffer_coef_output));

    //Copy input data to device global memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_spk_in}, 0 /* 0 means from host*/));

    //Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_dwt));
    q.finish();

    //Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err,
              err = q.enqueueMigrateMemObjects({buffer_coef_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    //OPENCL HOST CODE AREA END

    // Compute Software Results
    Software_dwtkernel(source_spk, source_sw_results);

    int match = 0;
    for (int i = 0; i < DATA_SIZE_WPT * DATA_SIZE_COEF; i++) {
        if (source_hw_results[i] != source_sw_results[i]) {
            std::cout << "Error: Result_i mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                      << " Device result = " << source_hw_results[i]
                      << std::endl;
            match = 1;
            break;
        }
    }

    std::cout << "done" << std::endl;
    // std::cout << "TEST_i " << (match_i ? "FAILED" : "PASSED") << std::endl;
    // std::cout << "TEST_q " << (match_q ? "FAILED" : "PASSED") << std::endl;
    return 0;//(match_i && match_q ? EXIT_FAILURE : EXIT_SUCCESS);
}
