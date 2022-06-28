#include "histogram.h"
void histogram(int in[INPUT_SIZE], int hist[VALUE_SIZE]) {
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite register port=in
	#pragma HLS INTERFACE s_axilite register port=hist
	int val;

	for(int i = 0; i < INPUT_SIZE; i++) {
	#pragma HLS PIPELINE II=2
	val = in[i];
	hist[val] = hist[val] + 1;

  }
}
