#define SIZE 128
void prefixsum(int in[SIZE], int out[SIZE]) {
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=in
#pragma HLS INTERFACE s_axilite register port=out

    int A=in[0];
    out[0] = A;
    for(int i=1; i < SIZE; i++) {
	#pragma HLS UNROLL
    	A = A +in[i];
        out[i] = A;
  }
}
