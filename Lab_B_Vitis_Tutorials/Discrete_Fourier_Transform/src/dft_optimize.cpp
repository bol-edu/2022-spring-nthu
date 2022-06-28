#include <math.h>					//Required for cos and sin functions
typedef float IN_TYPE;		// Data type for the input signal
typedef float TEMP_TYPE; // Data type for the temporary variables
typedef float OUT_TYPE;
typedef unsigned long SCALAR_TYPE;
#define N 256							// DFT Size

void dft(IN_TYPE sample_real[N], IN_TYPE sample_imag[N], OUT_TYPE out_r[N], OUT_TYPE out_i[N]) {
	int i, j;
	TEMP_TYPE w;
	TEMP_TYPE c, s;
	SCALAR_TYPE pi_2 = (3.141592653589 * 536870912 ) * 2;
	// 2^29
	// Temporary arrays to hold the intermediate frequency domain results

	// Calculate each frequency domain sample iteratively
	for (i = 0; i < N; i += 1) {
		// Calculate the jth frequency sample sequentially
		for (j = 0; j < N; j += 1) {
#pragma HLS PIPELINE II = 1
			//if(j == 0){
//				w = (2.0 * 3.141592653589  / N) * (TEMP_TYPE)i;
				w = (pi_2  / (SCALAR_TYPE)N) * (SCALAR_TYPE)j;
			//}
			//else{
				//;
			//}
			// (2 * pi * i)/N
			// Utilize HLS tool to calculate sine and cosine values
			c = cos((TEMP_TYPE)(((SCALAR_TYPE)i * w)/536870912));
			s = -sin((TEMP_TYPE)(((SCALAR_TYPE)i * w)/536870912));

			// Multiply the current phasor with the appropriate input sample and keep
			// running sum
			out_r[j] += (sample_real[i] * c - sample_imag[i] * s);
			out_i[j] += (sample_real[i] * s + sample_imag[i] * c);
		}
	}

	// Perform an inplace DFT, i.e., copy result into the input arrays
//	for (i = 0; i < N; i += 1) {

//	}
}
