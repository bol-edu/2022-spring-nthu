#include "data2pic.h"

void data2pic(hls::stream<ap_uint<QAM_unsigned_bit>>& data_in, hls::stream<ap_uint<pixl_bit>>& data_out)
{
#pragma HLS INTERFACE ap_fifo port=data_in
#pragma HLS INTERFACE ap_fifo port=data_out
//#pragma HLS INTERFACE ap_ctrl_none port=return

	static ap_uint<QAM_unsigned_bit> out1_16QAM;
	ap_uint<QAM_unsigned_bit> out2_16QAM;
	ap_uint<pixl_bit> out3_16QAM;
	static ap_uint<QAM_unsigned_bit> out1_64QAM;
	static ap_uint<QAM_unsigned_bit> out2_64QAM;
	static ap_uint<QAM_unsigned_bit> out3_64QAM;
	ap_uint<QAM_unsigned_bit> out4_64QAM;
	ap_uint<pixl_bit> out5_64QAM;
	ap_uint<pixl_bit> out6_64QAM;
	ap_uint<pixl_bit> out7_64QAM;
	static ap_uint<2> t = 0;

	if(qam_num==16){
		if(t==0){
			out1_16QAM = data_in.read();
			t = 1;
		}
		else{
			out2_16QAM = data_in.read();
			out3_16QAM = (ap_uint<pixl_bit>)out1_16QAM*16+(ap_uint<pixl_bit>)out2_16QAM;
			data_out.write(out3_16QAM);
			t = 0;
		}
	}
	else{
		if(t==0){
			out1_64QAM = data_in.read();
			t = 1;
		}
		else if(t==1){
			out2_64QAM = data_in.read();
			out5_64QAM = ap_uint<pixl_bit>(out1_64QAM*4+out2_64QAM/16);
			data_out.write(out5_64QAM);
			t = 2;
		}
		else if(t==2){
			out3_64QAM = data_in.read();
			out6_64QAM = (out2_64QAM%16)*16+out3_64QAM/4;
			data_out.write(out6_64QAM);
			t = 3;
		}
		else{
			out4_64QAM = data_in.read();
			out7_64QAM = (out3_64QAM%4)*64+out4_64QAM;
			data_out.write(out7_64QAM);
			t = 0;
		}
	}


	return;
}
