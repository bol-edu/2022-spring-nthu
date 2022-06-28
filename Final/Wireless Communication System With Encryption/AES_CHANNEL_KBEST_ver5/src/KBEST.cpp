#include <iostream>
#include <math.h>
#include "MIMO.h"
#include "ap_fixed.h"

using namespace std;

void KBEST(hls::stream<FIXED_LEN> &R_IN, hls::stream<FIXED_LEN> &in_data, hls::stream<FIXED_LEN> &out_data){
	int i, j, k, data_idx, layer;
	FIXED_LEN sqr_2 = 1.4142;
	FIXED_LEN yy[8]; // in_data * SQRT(2)
	FIXED_LEN PED[4] = {0, 0, 0, 0};

	int x_guess[4][8] = {0, 0, 0, 0};
	int survival_path [2][8];
	FIXED_LEN survival_PED[2] = {0, 0};
	FIXED_LEN dist;
	FIXED_LEN bubble_temp;

	FIXED_LEN R[8][8];
	for(i=0; i<64; i++){
		R[i/8][i%8] = R_IN.read();
	}

#pragma HLS ARRAY_PARTITION variable=x_guess type=complete dim=0

	for(data_idx=0; data_idx<16; data_idx++){



		for(i=0; i<8; i++){
			yy[i] = in_data.read() * sqr_2;
		}


		for(layer=7; layer>=0; layer--){
			PED[0] = 0;
			PED[1] = 0;
			PED[2] = 0;
			PED[3] = 0;

			x_guess[0][layer] =  1;
			x_guess[1][layer] = -1;
			x_guess[2][layer] =  1;
			x_guess[3][layer] = -1;


			for(i = 7; i > layer; i--){
				x_guess[0][i] = survival_path[0][i];
				x_guess[1][i] = survival_path[0][i];
				x_guess[2][i] = survival_path[1][i];
				x_guess[3][i] = survival_path[1][i];
			}

			for(i = 0; i<4; i++){
				dist = 0;
				for(j = layer; j < 8; j++){
					if(x_guess[i][j] == 1) {
						dist = dist + R[layer][j];
					}
					else {
						dist = dist - R[layer][j];
					}
				}
				PED[i] = (yy[layer] - dist) * (yy[layer] - dist);
				if(i <= 1){
					PED[i] = PED[i] + survival_PED[0];
				}
				else{
					PED[i] = PED[i] + survival_PED[1];
				}
			}

			if(layer != 7){
				for(int i = 0; i < 2 ; i++){ //bubble sort
					for(int j = 0; j < 3 ; j++){
						if(PED[j] < PED[j+1]){
							bubble_temp = PED[j];
							PED[j] = PED[j+1];
							PED[j+1] = bubble_temp;

							for(int k = 0; k < 8 ; k++){
								bubble_temp = x_guess[j][k];
								x_guess[j][k] = x_guess[j+1][k];
								x_guess[j+1][k] = bubble_temp;
							}
						}
					}
				}

			}


			for (i = 0; i < 8; i++) //Update survival path
			{
				survival_path[0][i] = x_guess[2][i];
				survival_path[1][i] = x_guess[3][i];
			}

			survival_PED[0] = PED[2];
			survival_PED[1] = PED[3];
		}

		for (i = 0; i <8; i++){
			out_data << survival_path[1][i];
		}

	}
}
