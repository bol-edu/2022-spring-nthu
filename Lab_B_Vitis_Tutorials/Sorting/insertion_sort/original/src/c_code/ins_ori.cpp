#define SIZE 16
void ins_ori(int in[SIZE], int out[SIZE]) {

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=in
#pragma HLS INTERFACE s_axilite register port=out

	int A [SIZE];
	data_in:
		for(int i = 0; i < SIZE; i++)
		{
			A [i] = in [i];
		}

	sort:
		for(int i = 1; i < SIZE; i++)
		{
			int item = A[i];
			int j = i;
			int t = A[j-1];
			//#pragma HLS UNROLL
			while(j > 0 && A[j-1] > item )
			{

				A[j] = A[j-1];
				j--;
			}
			A[j] = item;

		}

	data_out:
	for(int i = 0; i < SIZE; i++)
	{
		out[i] = A[i];
	}
}
//#pragma HLS UNROLL factor=8
				//#pragma HLS UNROLL
				//#pragma HLS pipeline II=1
