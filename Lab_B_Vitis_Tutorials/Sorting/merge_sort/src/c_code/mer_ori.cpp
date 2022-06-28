#define SIZE 16
#include "assert.h"

void merge(int in[SIZE], int i1, int i2, int i3, int out[SIZE]) {
    int f1 = i1, f2 = i2;
    // Foreach element that needs to be sorted...
    for(int index = i1; index < i3; index++) {
        // Select the smallest available element.
        if(f2 == i3 || (f1 < i2 && in[f1] <= in[f2])) {
            out[index] = in[f1];
            f1++;
        } else {
            assert(f2 < i3);
        	//if(f2 < i3);
            out[index] = in[f2];
            f2++;
        }
    }
}



void mer_ori(int in[SIZE], int out[SIZE]) {

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite register port=in
#pragma HLS INTERFACE s_axilite register port=out

	int temp[SIZE];
	int A [SIZE];

	data_in:
		for(int i = 0; i < SIZE; i++)
		{
			A [i] = in [i];
		}


	stage:
	    for (int width = 1; width < SIZE; width = 2 * width) {
	    merge_arrays:
	        for (int i1 = 0; i1 < SIZE; i1 = i1 + 2 * width) {
	            // Try to merge two sorted subarrays:
	            // A[i1..i1+width-1] and A[i1+width..i1+2*width-1] to temp[i1..2*width-1]
				#pragma HLS UNROLL
	        	int i2 = i1 + width;
	            int i3 = i1 + 2*width;
	            if(i2 >= SIZE) i2 = SIZE;
	            if(i3 >= SIZE) i3 = SIZE;
	            merge(A, i1, i2, i3, temp);
	        }

	        // Copy temp[] back to A[] for next iteration
	    copy:
	        for(int i = 0; i < SIZE; i++) {
	            A[i] = temp[i];
	        }
	    }

	data_out:
		for(int i = 0; i < SIZE; i++)
		{
			out[i] = A[i];
		}
}








