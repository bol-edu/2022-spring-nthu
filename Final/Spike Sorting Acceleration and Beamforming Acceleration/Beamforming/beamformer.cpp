/**********
Copyright (c) 2018, Xilinx, Inc.
All rights reserved.
Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/

/*******************************************************************************
Vitis Key Concept :
    

*******************************************************************************/

/*
Kernel Description :
   
    Matrix multiply for matrices upto sizes (MAX_SIZE x MAX_SIZE) [MAX_SIZE defined below].
    This example showcases how reordering the loops helps achieve a better
    pipeline initiation interval (II) and better performance.
    
    Arguments :
    
        int *in1   (input)     --> Input  Matrix 1
        int *in2   (input)     --> Input  Matrix 2
        int *out_r   (output)    --> Output Matrix
        int  size  (input)     --> Size of one dimension of the matrices
    Kernel Configuration :
        
        Matrices of upto size (MAX_SIZE x MAX_SIZE) [MAX_SIZE = 64 defined below]
*/

#include <stdio.h>
#include <string.h>

//Maximum Array Size
#define MAX_SIZE_CHANNELS 16
#define MAX_SIZE_SAMPLES  2500
#define MAX_SIZE_BEAMS    3

//TRIPCOUNT indentifier
const unsigned int size_CHANNELS = MAX_SIZE_CHANNELS;
const unsigned int size_SAMPLES  = MAX_SIZE_SAMPLES;
const unsigned int size_BEAMS    = MAX_SIZE_BEAMS;
/*
int RXi_in1[MAX_SIZE_SAMPLES * MAX_SIZE_CHANNELS];
int RXq_in1[MAX_SIZE_SAMPLES * MAX_SIZE_CHANNELS];
int Wi_in2[MAX_SIZE_BEAMS * MAX_SIZE_CHANNELS] ;
int Wq_in2[MAX_SIZE_BEAMS * MAX_SIZE_CHANNELS] ;
int Bi_out_r[MAX_SIZE_SAMPLES * MAX_SIZE_BEAMS] ;
int Bq_out_r[MAX_SIZE_SAMPLES * MAX_SIZE_BEAMS] ;
*/

// Computes matrix multiply
// C = AxB, where A, B and C are square matrices of dimension (sizexsize)
extern "C" {
void beamformer(
		const  int *RXi_in1,      // Read-Only Matrix 1
		const  int *RXq_in1,      // Read-Only Matrix 1
		const  int *Wi_in2,      // Read-Only Matrix 2
		const  int *Wq_in2,      // Read-Only Matrix 2
		int       *Bi_out_r,          // Output Result
		int       *Bq_out_r/*,          // Output Result
        const int size_SAMPLES,
        const int size_CHANNELS,
        const int size_BEAMS*/
        )

{

   #pragma HLS INTERFACE m_axi port=RXi_in1  offset=slave bundle=gmem
   #pragma HLS INTERFACE m_axi port=RXq_in1  offset=slave bundle=gmem
   #pragma HLS INTERFACE m_axi port=Wi_in2   offset=slave bundle=gmem
   #pragma HLS INTERFACE m_axi port=Wq_in2   offset=slave bundle=gmem
   #pragma HLS INTERFACE m_axi port=Bi_out_r offset=slave bundle=gmem
   #pragma HLS INTERFACE m_axi port=Bq_out_r offset=slave bundle=gmem

   //#pragma HLS INTERFACE s_axilite port=RXi_in1  bundle=control
   //#pragma HLS INTERFACE s_axilite port=RXq_in1  bundle=control
   //#pragma HLS INTERFACE s_axilite port=Wi_in2   bundle=control
   //#pragma HLS INTERFACE s_axilite port=Wq_in2   bundle=control
   //#pragma HLS INTERFACE s_axilite port=Bi_out_r bundle=control
   //#pragma HLS INTERFACE s_axilite port=Bq_out_r bundle=control
//   #pragma HLS INTERFACE s_axilite port=size     bundle=control
//   #pragma HLS INTERFACE s_axilite port=return   bundle=control


    // Local memory to store input and output matrices
    // Local memory is implemented as BRAM memory blocks
    int RXi_A[MAX_SIZE_SAMPLES][MAX_SIZE_CHANNELS];
    int RXq_A[MAX_SIZE_SAMPLES][MAX_SIZE_CHANNELS];
    int Wi_B[MAX_SIZE_BEAMS][MAX_SIZE_CHANNELS] ;
    int Wq_B[MAX_SIZE_BEAMS][MAX_SIZE_CHANNELS] ;
    int Bi_C[MAX_SIZE_SAMPLES][MAX_SIZE_BEAMS] ;
    int Bq_C[MAX_SIZE_SAMPLES][MAX_SIZE_BEAMS] ;


	#pragma HLS ARRAY_PARTITION variable = RXi_A dim = 2 complete
	#pragma HLS ARRAY_PARTITION variable = RXq_A dim = 2 complete
    #pragma HLS ARRAY_PARTITION variable = Wi_B dim = 2 complete
    #pragma HLS ARRAY_PARTITION variable = Wq_B dim = 2 complete
    //#pragma HLS ARRAY_PARTITION variable = Bi_C dim = 2 complete
    //#pragma HLS ARRAY_PARTITION variable = Bq_C dim = 2 complete
    //#pragma HLS ARRAY_PARTITION variable = temp_sum_i dim = 1 complete
    //#pragma HLS ARRAY_PARTITION variable = temp_sum_q dim = 1 complete

// Burst reads on input matrices from global memory
// Burst read for matrix A
readA: for(int itr = 0, i = 0, j = 0 ; itr < size_SAMPLES * size_CHANNELS; itr++, j++){
       #pragma HLS PIPELINE II=1
       //#pragma HLS LOOP_TRIPCOUNT min=c_size * c_size max=c_size * c_size
        if(j == size_CHANNELS) { j = 0 ; i++; }
        RXi_A[i][j] = RXi_in1[itr];
        RXq_A[i][j] = RXq_in1[itr];
    }

// Burst read for matrix B
readB: for(int itr = 0, i = 0, j = 0; itr < size_CHANNELS * size_BEAMS; itr++, j++) {
       #pragma HLS PIPELINE II=1
       //#pragma HLS LOOP_TRIPCOUNT min=c_size*c_size max=c_size*c_size
        if(j == size_CHANNELS) { j = 0 ; i++; }
        Wi_B[i][j] = Wi_in2[itr];
        Wq_B[i][j] = Wq_in2[itr];
    }

// Performs matrix multiply over matrices A and B and stores the result
// in C.


    loop1: for (int i = 0; i < size_SAMPLES; i++) {
       //#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size

        loop2: for (int j = 0; j < size_BEAMS; j++) {
           //#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
           #pragma HLS PIPELINE II=1
        	int result_i = 0;
        	int result_q = 0;

            loop3: for (int k = 0; k < MAX_SIZE_CHANNELS; k++) {
                result_i += RXi_A[i][k] * Wi_B[j][k] - RXq_A[i][k] * Wq_B[j][k];
                result_q += RXi_A[i][k] * Wq_B[j][k] + RXq_A[i][k] * Wi_B[j][k];
            }
                	Bi_C[i][j] = result_i;
                	Bq_C[i][j] = result_q;

        }
    }

// Burst write from output matrices to global memory
// Burst write from matrix C
        writeC: for(int itr = 0, i = 0, j = 0; itr < size_SAMPLES * size_BEAMS; itr++, j++) {
			#pragma HLS PIPELINE II=1
            if(j == size_BEAMS) { j = 0 ; i++; }
            Bi_out_r[itr] = Bi_C[i][j];
            Bq_out_r[itr] = Bq_C[i][j];
        }


}
}
