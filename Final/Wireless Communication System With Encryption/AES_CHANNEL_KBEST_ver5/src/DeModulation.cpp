#include <ap_int.h>
#include <math.h>
#include <iostream>
#include "MIMO.h"

using namespace std;
void DeModulation(hls::stream<FIXED_LEN> &in_data, hls::stream<ap_uint<8>> &out_data){
	int i, data_idx;
	static ap_uint<8> BIN_TB[8]={1, 2, 4, 8, 16, 32, 64, 128};
	ap_uint<1> temp[8];
	FIXED_LEN in[8];
	ap_uint<8> MULT_TEMP;

	for(data_idx=0; data_idx<16; data_idx++){
		for(i=0; i<8; i++){
			in[i] = in_data.read();
		}


		for (i=0; i<4; i++){
			if(in[i*2] > 0){
				temp[i*2] = 1;
			}
			else {
				temp[i*2] = 0;
			}

			if(in[i*2+1] > 0){
				temp[i*2+1] = 1;
			}
			else {
				temp[i*2+1] = 0;
			}

		}

		MULT_TEMP = 0;
		for(i=0; i<8; i++){
			if(temp[i]==1) MULT_TEMP = MULT_TEMP + BIN_TB[i];
		}
		out_data << MULT_TEMP;


	}
}
