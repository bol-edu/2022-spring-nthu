#define SIZE 128
void prefixsum(int in[SIZE], int out[SIZE]) {

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=in
#pragma HLS INTERFACE s_axilite register port=out

  out[0]=in[0];
  for(int i=1; i < SIZE; i++) {
		  out[i] = out[i-1] + in[i];
  }
}
