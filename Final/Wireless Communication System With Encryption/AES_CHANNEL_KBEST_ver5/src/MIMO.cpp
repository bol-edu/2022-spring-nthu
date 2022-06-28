#include <iostream>
#include <math.h>
#include "MIMO.h"
#include "ap_fixed.h"

using namespace std;



void read_input(ap_uint<8> *in, hls::stream<ap_uint<8>> &in_stream){
	int i;
	mem_rd:for(i=0; i<16; i++){
	#pragma PIPELINE II=1
		in_stream << in[i];
	}
}

void write_result(hls::stream<ap_uint<8>> &out_stream, ap_uint<8> *out_data){
	int i;
	mem_wr:for(i=0; i<16; i++){
	#pragma PIPELINE II=1
		out_data[i] = out_stream.read();
	}
}



void split(hls::stream<FIXED_LEN> &in, hls::stream<FIXED_LEN> &out_0, hls::stream<FIXED_LEN> &out_1){

	int i;
	FIXED_LEN TEMP;

	SPL:for(i=0; i<16; i++){
	#pragma HLS PIPELINE II=1
		TEMP = in.read();
		out_0 << TEMP;
		out_1 << TEMP;
	}
}


void channel_mult(hls::stream<FIXED_LEN> &H_real, hls::stream<FIXED_LEN> &H_imag,
				  hls::stream<FIXED_LEN> &x_real, hls::stream<FIXED_LEN> &x_imag,
				  hls::stream<FIXED_LEN> &out){
	FIXED_LEN DATA_TEMP[8];
	FIXED_LEN CHANNEL[8][8];
	FIXED_LEN TEMP0, TEMP1;
	FIXED_LEN MULT_TEMP;

	int i, j, data_idx;

#pragma HLS ARRAY_PARTITION variable=CHANNEL type=complete dim=0 /////////////////////////////NEW ADD
	CHANNEL2REAL:for(i=0; i<16; i++){
		TEMP0 = H_real.read();
		TEMP1 = H_imag.read();
		CHANNEL[2*(i/4)][2*(i%4)]       =  TEMP0;
		CHANNEL[2*(i/4)+1][(2*(i%4))+1] =  TEMP0;
		CHANNEL[2*(i/4)][2*(i%4)+1]     = -TEMP1;
		CHANNEL[2*(i/4)+1][2*(i%4)]     =  TEMP1;

	}

	for(data_idx=0; data_idx<16; data_idx++){
		DATA2REAL:
		for(i=0; i<4; i++){
			DATA_TEMP[2*i]   = x_real.read();
			DATA_TEMP[2*i+1] = x_imag.read();
		}

		CHANNEL_MULT_LOOP:
		for(i=0; i<8; i++){
			for(j=0; j<8; j++){
				if(j==0) MULT_TEMP = 0;
				MULT_TEMP = MULT_TEMP + CHANNEL[i][j] * DATA_TEMP[j];
				if(j==7) out << MULT_TEMP;
			}
		}
	}
}


void matrix_mult(hls::stream<FIXED_LEN> &Q, hls::stream<FIXED_LEN> &in_data, hls::stream<FIXED_LEN> &out_data){
	int i, j, k, data_idx;
	FIXED_LEN Q_TEMP[8][8];
	FIXED_LEN DATA_TEMP[8];
	FIXED_LEN MULT_TEMP;
#pragma HLS ARRAY_PARTITION variable=DATA_TEMP type=complete dim=0 /////////////////////////////NEW ADD
	for(i=0; i<64; i++){
		Q_TEMP[i/8][i%8] = Q.read();
	}



	for(data_idx=0; data_idx<16; data_idx++){
		for(i=0; i<8; i++){
			DATA_TEMP[i] = in_data.read();
		}

		for(j=0; j<8; j++){
			MULT_TEMP = 0;
			for(k=0; k<8; k++){
				MULT_TEMP = MULT_TEMP + Q_TEMP[k][j] * DATA_TEMP[k];
			}
			out_data << MULT_TEMP;
		}

	}
}



void TOP(hls::stream<ap_uint<8>> &in_data, hls::stream<ap_uint<8>> &out_data, FIXED_LEN SNR){
	static hls::stream<ap_uint<8>> in_stream("in_stream");
	static hls::stream<ap_uint<8>> AES_EN_out("AES_EN_out");

	static hls::stream<FIXED_LEN> xr("xr");
#pragma HLS STREAM variable= xr  depth=128
	static hls::stream<FIXED_LEN> xi("xi");
#pragma HLS STREAM variable= xi  depth=128
	static hls::stream<FIXED_LEN> H_real("H_real");
	static hls::stream<FIXED_LEN> H_imag("H_imag");
	static hls::stream<FIXED_LEN> Q("Q");
#pragma HLS STREAM variable= Q  depth=4
	static hls::stream<FIXED_LEN> R("R");
#pragma HLS STREAM variable= R  depth=4

	static hls::stream<FIXED_LEN> H_real_spl0("H_real_spl0");
	static hls::stream<FIXED_LEN> H_real_spl1("H_real_spl1");
	static hls::stream<FIXED_LEN> H_imag_spl0("H_imag_spl0");
	static hls::stream<FIXED_LEN> H_imag_spl1("H_imag_spl1");

	static hls::stream<FIXED_LEN> channel_out("channel_out");
	static hls::stream<FIXED_LEN> noise_out("noise_out");

	static hls::stream<FIXED_LEN> MULQ_out("MULQ_out");
	static hls::stream<FIXED_LEN> KB_out("KB_out");

	static hls::stream<ap_uint<8>> demod_out("demod_out");

	static hls::stream<ap_uint<8>> AES_DE_out("AES_DE_out");

	static ap_uint<8> key[16] = { 0x87, 0x13, 0x11, 0x30,
								  0x51, 0x87, 0x09, 0xad,
								  0xcf, 0x1b, 0x66, 0xca,
								  0xaa, 0xc5, 0x15, 0xb0 };


#pragma HLS STREAM variable= in_data  depth=64
#pragma HLS STREAM variable= out_data depth=64
#pragma HLS dataflow

	//read_input(in_data, in_stream);

	AES_En_De(in_data, AES_EN_out, 0, key);
	Modulation(AES_EN_out, xr, xi);
	Rayleigh(H_real, H_imag);
	split(H_real, H_real_spl0, H_real_spl1);
	split(H_imag, H_imag_spl0, H_imag_spl1);
	QRD(H_real_spl1, H_imag_spl1, Q, R);
	channel_mult(H_real_spl0, H_imag_spl0, xr, xi, channel_out);
	AWGN(channel_out, noise_out, SNR);
	matrix_mult(Q, noise_out, MULQ_out);
	KBEST(R, MULQ_out, KB_out);
	DeModulation(KB_out, demod_out);
	AES_En_De(demod_out, out_data, 1, key);


	//write_result(demod_out, out_data);

}
