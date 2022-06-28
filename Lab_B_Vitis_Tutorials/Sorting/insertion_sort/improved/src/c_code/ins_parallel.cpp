#define SIZE 16
void ins_parallel(int in[SIZE], int out[SIZE]) {

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=in
#pragma HLS INTERFACE s_axilite register port=out

	int A [SIZE];
	int B [SIZE];
	data_in:
		for(int i = 0; i < SIZE; i++)
		{
			A [i] = in [i];
		}

	sort:
	#pragma HLS array_partition variable=B complete
	L1:
	    for(int i = 0; i < SIZE; i++) {
		#pragma HLS pipeline II=1
	        int item = A[i];
	    L2:
	        for(int j = SIZE-1; j >= 0; j--) {
	            int t;
	            if(j > i) {
	                t = B[j];
	            } else if(j > 0 && B[j-1] > item) {
	                t = B[j-1];
	            } else {
	                t = item;
	                if (j > 0)
	                    item = B[j-1];
	            }
	            B[j] = t;
	        }
	    }

	data_out:
	for(int i = 0; i < SIZE; i++)
	{
		out[i] = B[i];
	}
}
