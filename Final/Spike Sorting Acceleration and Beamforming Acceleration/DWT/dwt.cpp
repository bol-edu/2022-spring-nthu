#define N 		64
#define W 		55
#define FIRST 	35
#define SECOND 	21
#define THIRD 	14
#define FORTH	10

// @brief top of kernel
extern "C" void dwtkernel(double* spk, double* dwtcoef) {
// clang-format off
// #pragma HLS INTERFACE m_axi offset = slave latency = 64 \
// 	num_write_outstanding = 4 num_read_outstanding = 32 \
// 	max_write_burst_length = 4 max_read_burst_length = 64 \
// 	bundle = gmem0_0 port = inputData 

// #pragma HLS INTERFACE m_axi offset = slave latency = 64 \
// 	num_write_outstanding = 16 num_read_outstanding = 16 \
// 	max_write_burst_length = 64 max_read_burst_length = 64 \
// 	bundle = gmem0_1 port = centers 
#pragma HLS INTERFACE m_axi port=spk offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=dwtcoef offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port = spk bundle = control
#pragma HLS INTERFACE s_axilite port = dwtcoef bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    // clang-format on
	double HiD[8] = {-0.0322, -0.0126, 0.0992, 0.2979, -0.8037, 0.4976, 0.0296, -0.0758};
	double LoD[8] = {-0.0758, -0.0296, 0.4976, 0.8037, 0.2979, -0.0992, -0.0126, 0.0322};

	// double spk[N+14];

	double prepad[7];	double postpad[7];
	double cA1[FIRST];	double cD1[FIRST];
	double cA2[SECOND]; double cD2[SECOND];
	double cA3[THIRD];	double cD3[THIRD];
	double cA4[FORTH];	double cD4[FORTH];

	// int idx;
	int i, j, k;

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
