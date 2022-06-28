#include <iostream>
#include <math.h>
#include "MIMO.h"
#include "ap_fixed.h"

using namespace std;
R2 CORDIC_R (FIXED_LEN x_in, FIXED_LEN y_in, FIXED_LEN z_in)
{
	FIXED_LEN pi_div = 1.5708;
	FIXED_LEN x, y, z;

	if(z_in < 0){
		x =  y_in;
        y = -x_in;
        z = z_in + pi_div;
	}

    else{
    	x = -y_in;
        y =  x_in;
        z = z_in - pi_div;
	}

    FIXED_LEN An = 0.607253;
    FIXED_LEN temp_x = 0;
    FIXED_LEN temp_y = 0;

    int k, i;
    for(k=0; k<10; k++){
    	temp_x = x;
    	temp_y = y;
    	for(i=0; i < k; i++){
    		temp_x.range(word_len - 2, 0) = temp_x.range() >> 1;
    		temp_y.range(word_len - 2, 0) = temp_y.range() >> 1;
    	}

    	if(z < 0) {
    		x = x + temp_y;
    		y = y - temp_x;
    		z = z + cordic_phase[k];
    	}
        else {
        	x = x - temp_y;
        	y = y + temp_x;
        	z = z - cordic_phase[k];
        }
	}
    R2 output;
	output.o1 = x * An;
	output.o2 = y * An;

    return output;
}


R2 CORDIC_V (FIXED_LEN x_in, FIXED_LEN y_in, FIXED_LEN z_in)
{
	FIXED_LEN pi_div = 1.5708;
	FIXED_LEN pi = 3.1416;
	FIXED_LEN x, y, z;

	if(y_in < 0){
		x = -y_in;
        y =  x_in;
        z =  z_in - pi_div;
	}
    else{
    	x =  y_in;
        y = -x_in;
        z =  z_in + pi_div;
	}

    if(x < 0){
    	x = -x;
        y = -y;
        z =  z - pi;
	}
    else{
    	x = x;
        y = y;
        z = z;
	}


    FIXED_LEN An = 0.607253;
    FIXED_LEN temp_x = 0;
    FIXED_LEN temp_y = 0;

    //FIXED_LEN x_temp;
    int k, i;
    for(k=0; k<10; k++){
    	temp_x = x;
    	temp_y = y;
    	for(i=0; i < k; i++){
    		temp_x.range(word_len - 2, 0) = temp_x.range() >> 1;
    	    temp_y.range(word_len - 2, 0) = temp_y.range() >> 1;
    	}
    	if(y < 0) {
    		x = x - temp_y;
    		y = y + temp_x;
    		z = z - cordic_phase[k];
    	}
        else {
        	x = x + temp_y;
        	y = y - temp_x;
        	z = z + cordic_phase[k];
        }
	}
	R2 output;
	output.o1 = x * An;
	output.o2 = z - z_in;

    return output;
}


void QRD(hls::stream<FIXED_LEN> &H_real, hls::stream<FIXED_LEN> &H_imag, hls::stream<FIXED_LEN> &Q, hls::stream<FIXED_LEN> &R){
	int i, j, k;
	FIXED_LEN TEMP0, TEMP1;
	FIXED_LEN Y[8][8], HH[8][4];
	FIXED_LEN H[8][8];
	R2 temp_c1, temp_c2, temp_c3, temp_c4, temp_c5, temp_c6, temp_c7;

	CHANNEL2REAL:for(i=0; i<16; i++){
		TEMP0 = H_real.read();
		TEMP1 = H_imag.read();
		Y[2*(i/4)][2*(i%4)]       =  TEMP0;
		Y[2*(i/4)+1][(2*(i%4))+1] =  TEMP0;
		Y[2*(i/4)][2*(i%4)+1]     = -TEMP1;
		Y[2*(i/4)+1][2*(i%4)]     =  TEMP1;

		HH[2*(i/4)][i%4]   = TEMP0;
		HH[2*(i/4)+1][i%4] = TEMP1;
	}



	// FOR COLUMN 1
	for(i=0; i<8; i=i+2){

		temp_c1 = CORDIC_V(HH[i][0], HH[i+1][0], 0);
		temp_c2 = CORDIC_R(HH[i][1], HH[i+1][1], -temp_c1.o2);
		temp_c3 = CORDIC_R(HH[i][2], HH[i+1][2], -temp_c1.o2);
		temp_c4 = CORDIC_R(HH[i][3], HH[i+1][3], -temp_c1.o2);
		HH[i][0] = temp_c1.o1; HH[i+1][0] = 0;
		HH[i][1] = temp_c2.o1; HH[i+1][1] = temp_c2.o2;
		HH[i][2] = temp_c3.o1; HH[i+1][2] = temp_c3.o2;
		HH[i][3] = temp_c4.o1; HH[i+1][3] = temp_c4.o2;
	}


	for(i=0; i<2; i++){
		temp_c1 = CORDIC_V(HH[i*4][0], HH[i*4+2][0], 0);
		temp_c2 = CORDIC_R(HH[i*4][1], HH[i*4+2][1], -temp_c1.o2);
		temp_c3 = CORDIC_R(HH[i*4][2], HH[i*4+2][2], -temp_c1.o2);
		temp_c4 = CORDIC_R(HH[i*4][3], HH[i*4+2][3], -temp_c1.o2);
		temp_c5 = CORDIC_R(HH[i*4+1][1], HH[i*4+3][1], -temp_c1.o2);
		temp_c6 = CORDIC_R(HH[i*4+1][2], HH[i*4+3][2], -temp_c1.o2);
		temp_c7 = CORDIC_R(HH[i*4+1][3], HH[i*4+3][3], -temp_c1.o2);
		HH[i*4][0] = temp_c1.o1; HH[i*4+2][0] = 0;
		HH[i*4][1] = temp_c2.o1; HH[i*4+2][1] = temp_c2.o2;
		HH[i*4][2] = temp_c3.o1; HH[i*4+2][2] = temp_c3.o2;
		HH[i*4][3] = temp_c4.o1; HH[i*4+2][3] = temp_c4.o2;
		HH[i*4+1][1] = temp_c5.o1; HH[i*4+3][1] = temp_c5.o2;
		HH[i*4+1][2] = temp_c6.o1; HH[i*4+3][2] = temp_c6.o2;
		HH[i*4+1][3] = temp_c7.o1; HH[i*4+3][3] = temp_c7.o2;
	}

	temp_c1 = CORDIC_V(HH[0][0], HH[4][0], 0);
	temp_c2 = CORDIC_R(HH[0][1], HH[4][1], -temp_c1.o2);
	temp_c3 = CORDIC_R(HH[0][2], HH[4][2], -temp_c1.o2);
	temp_c4 = CORDIC_R(HH[0][3], HH[4][3], -temp_c1.o2);
	temp_c5 = CORDIC_R(HH[1][1], HH[5][1], -temp_c1.o2);
	temp_c6 = CORDIC_R(HH[1][2], HH[5][2], -temp_c1.o2);
	temp_c7 = CORDIC_R(HH[1][3], HH[5][3], -temp_c1.o2);
	HH[0][0] = temp_c1.o1; HH[4][0] = 0;
	HH[0][1] = temp_c2.o1; HH[4][1] = temp_c2.o2;
	HH[0][2] = temp_c3.o1; HH[4][2] = temp_c3.o2;
	HH[0][3] = temp_c4.o1; HH[4][3] = temp_c4.o2;
	HH[1][1] = temp_c5.o1; HH[5][1] = temp_c5.o2;
	HH[1][2] = temp_c6.o1; HH[5][2] = temp_c6.o2;
	HH[1][3] = temp_c7.o1; HH[5][3] = temp_c7.o2;


	// FOR COLUMN 3

	for(i=2; i<8; i=i+2){
		temp_c1 = CORDIC_V(HH[i][1], HH[i+1][1], 0);
		temp_c2 = CORDIC_R(HH[i][2], HH[i+1][2], -temp_c1.o2);
		temp_c3 = CORDIC_R(HH[i][3], HH[i+1][3], -temp_c1.o2);
		HH[i][1] = temp_c1.o1; HH[i+1][1] = 0;
		HH[i][2] = temp_c2.o1; HH[i+1][2] = temp_c2.o2;
		HH[i][3] = temp_c3.o1; HH[i+1][3] = temp_c3.o2;
	}

	temp_c1 = CORDIC_V(HH[2][1], HH[4][1], 0);
	temp_c2 = CORDIC_R(HH[2][2], HH[4][2], -temp_c1.o2);
	temp_c3 = CORDIC_R(HH[2][3], HH[4][3], -temp_c1.o2);
	temp_c4 = CORDIC_R(HH[3][2], HH[5][2], -temp_c1.o2);
	temp_c5 = CORDIC_R(HH[3][3], HH[5][3], -temp_c1.o2);
	HH[2][1] = temp_c1.o1; HH[4][1] = 0;
	HH[2][2] = temp_c2.o1; HH[4][2] = temp_c2.o2;
	HH[2][3] = temp_c3.o1; HH[4][3] = temp_c3.o2;
	HH[3][2] = temp_c4.o1; HH[5][2] = temp_c4.o2;
	HH[3][3] = temp_c5.o1; HH[5][3] = temp_c5.o2;

	temp_c1 = CORDIC_V(HH[2][1], HH[6][1], 0);
	temp_c2 = CORDIC_R(HH[2][2], HH[6][2], -temp_c1.o2);
	temp_c3 = CORDIC_R(HH[2][3], HH[6][3], -temp_c1.o2);
	temp_c4 = CORDIC_R(HH[3][2], HH[7][2], -temp_c1.o2);
	temp_c5 = CORDIC_R(HH[3][3], HH[7][3], -temp_c1.o2);
	HH[2][1] = temp_c1.o1; HH[6][1] = 0;
	HH[2][2] = temp_c2.o1; HH[6][2] = temp_c2.o2;
	HH[2][3] = temp_c3.o1; HH[6][3] = temp_c3.o2;
	HH[3][2] = temp_c4.o1; HH[7][2] = temp_c4.o2;
	HH[3][3] = temp_c5.o1; HH[7][3] = temp_c5.o2;


	// FOR COLUMN 5

	for(i=4; i<8; i=i+2){
		temp_c1 = CORDIC_V(HH[i][2], HH[i+1][2], 0);
		temp_c2 = CORDIC_R(HH[i][3], HH[i+1][3], -temp_c1.o2);
		HH[i][2] = temp_c1.o1; HH[i+1][2] = 0;
		HH[i][3] = temp_c2.o1; HH[i+1][3] = temp_c2.o2;
	}

	temp_c1 = CORDIC_V(HH[4][2], HH[6][2], 0);
	temp_c2 = CORDIC_R(HH[4][3], HH[6][3], -temp_c1.o2);
	temp_c3 = CORDIC_R(HH[5][3], HH[7][3], -temp_c1.o2);
	HH[4][2] = temp_c1.o1; HH[6][2] = 0;
	HH[4][3] = temp_c2.o1; HH[6][3] = temp_c2.o2;
	HH[5][3] = temp_c3.o1; HH[7][3] = temp_c3.o2;


	// FOR COLUMN 7
	temp_c1 = CORDIC_V(HH[6][3], HH[7][3], 0);
	HH[6][3] = temp_c1.o1; HH[7][3] = 0;



	// matrix inverse
#pragma HLS ARRAY_PARTITION variable=HH type=complete dim=0
#pragma HLS ARRAY_PARTITION variable=H type=complete dim=0

LOOP_01:
	for(i=0; i<8; i=i+2){
		for(j=0; j<8; j=j+2){
			H[j][i] = HH[j][i/2];
			H[j+1][i] = HH[j+1][i/2];
			H[j][i+1] = -HH[j+1][i/2];
			H[j+1][i+1] = HH[j][i/2];
		}
	}



LOOP_02:
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			R << H[i][j];
		}
	}

	FIXED_LEN R_I[8][8] = { 1, 0, 0, 0, 0, 0, 0, 0,
						    0, 1, 0, 0, 0, 0, 0, 0,
						    0, 0, 1, 0, 0, 0, 0, 0,
						    0, 0, 0, 1, 0, 0, 0, 0,
						    0, 0, 0, 0, 1, 0, 0, 0,
					   	    0, 0, 0, 0, 0, 1, 0, 0,
					   	    0, 0, 0, 0, 0, 0, 1, 0,
						    0, 0, 0, 0, 0, 0, 0, 1 };

#pragma HLS ARRAY_PARTITION variable=R_I type=complete dim=0
	FIXED_LEN temp;
 	for(i=0; i<8; i++){
		for(j=i; j>=0; j--){
			if(j==i){

				R_I[j][0] = R_I[j][0] / H[j][i];
				R_I[j][1] = R_I[j][1] / H[j][i];
				R_I[j][2] = R_I[j][2] / H[j][i];
				R_I[j][3] = R_I[j][3] / H[j][i];
				R_I[j][4] = R_I[j][4] / H[j][i];
				R_I[j][5] = R_I[j][5] / H[j][i];
				R_I[j][6] = R_I[j][6] / H[j][i];
				R_I[j][7] = R_I[j][7] / H[j][i];

				temp = H[j][i];
				H[j][0] = H[j][0] / temp;
				H[j][1] = H[j][1] / temp;
				H[j][2] = H[j][2] / temp;
				H[j][3] = H[j][3] / temp;
				H[j][4] = H[j][4] / temp;
				H[j][5] = H[j][5] / temp;
				H[j][6] = H[j][6] / temp;
				H[j][7] = H[j][7] / temp;
			}
			else{
				R_I[j][0] = R_I[j][0] - R_I[i][0] * H[j][i];
				R_I[j][1] = R_I[j][1] - R_I[i][1] * H[j][i];
				R_I[j][2] = R_I[j][2] - R_I[i][2] * H[j][i];
				R_I[j][3] = R_I[j][3] - R_I[i][3] * H[j][i];
				R_I[j][4] = R_I[j][4] - R_I[i][4] * H[j][i];
				R_I[j][5] = R_I[j][5] - R_I[i][5] * H[j][i];
				R_I[j][6] = R_I[j][6] - R_I[i][6] * H[j][i];
				R_I[j][7] = R_I[j][7] - R_I[i][7] * H[j][i];

				temp = H[j][i];
				H[j][0] = H[j][0] - H[i][0] * temp;
				H[j][1] = H[j][1] - H[i][1] * temp;
				H[j][2] = H[j][2] - H[i][2] * temp;
				H[j][3] = H[j][3] - H[i][3] * temp;
				H[j][4] = H[j][4] - H[i][4] * temp;
				H[j][5] = H[j][5] - H[i][5] * temp;
				H[j][6] = H[j][6] - H[i][6] * temp;
				H[j][7] = H[j][7] - H[i][7] * temp;
			}
		}
	}


	#pragma HLS ARRAY_PARTITION variable = Y dim=1
	// Calculate Q matrix
	for(i=0; i<8; i++){
		for(j=0; j<8; j++){
			for(k=0; k<8; k++){
				if(k==0){
					temp = 0;
				}
				temp = temp + Y[i][k] * R_I[k][j];
				if(k==7){
					Q << temp;
				}
			}
		}
	}



}
