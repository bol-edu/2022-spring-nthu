#include <ap_int.h>
#include <math.h>
#include <iostream>
#include "normal_rng.hpp"
#include "MIMO.h"

using namespace std;
void Modulation(hls::stream<ap_uint<8>> &in_stream, hls::stream<FIXED_LEN> &xr, hls::stream<FIXED_LEN> &xi){
	int i, data_idx;
	ap_uint<1> temp[8];
	ap_uint<8> data_temp;

#pragma HLS dependence variable = xr inter false
#pragma HLS dependence variable = xi inter false
#pragma HLS dependence variable = xr intra false
#pragma HLS dependence variable = xi intra false

	for(data_idx=0; data_idx<16; data_idx++){
		data_temp = in_stream.read();

		for(i=0; i<8; i++){
			temp[i] = data_temp % 2;
			data_temp = data_temp / 2;
		}


		for(i=0; i<4; i++){
			if(temp[i*2] == 1) xr << 0.7071;
			else xr << -0.7071;

			if(temp[i*2+1] == 1) xi << 0.7071;
			else xi << -0.7071;
		}


	}



}
