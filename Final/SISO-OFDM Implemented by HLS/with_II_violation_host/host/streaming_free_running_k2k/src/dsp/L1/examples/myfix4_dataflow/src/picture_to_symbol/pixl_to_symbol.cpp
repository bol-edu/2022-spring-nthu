#include "pixl_to_symbol.h"

void pixl_to_symbol(hls::stream<ap_uint<pixl_bit>>& data_in, hls::stream<ap_uint<QAM_unsigned_bit>>& data_out)
{
#pragma HLS INTERFACE ap_fifo port=data_in
#pragma HLS INTERFACE ap_fifo port=data_out
//#pragma HLS INTERFACE ap_ctrl_none port=return

  //state control
  static ap_uint<2> t=0; 
  //16QAm
	ap_uint<QAM_unsigned_bit> out1_16QAM;
	ap_uint<QAM_unsigned_bit> out2_16QAM;
	//64QAM
	static ap_uint<QAM_unsigned_bit> out1_64QAM;
	static ap_uint<QAM_unsigned_bit> out2_64QAM;
	static ap_uint<QAM_unsigned_bit> out3_64QAM;
	static ap_uint<QAM_unsigned_bit> out4_64QAM;
	static ap_uint<QAM_unsigned_bit> out5_64QAM;
	static ap_uint<QAM_unsigned_bit> out6_64QAM;
	static ap_uint<QAM_unsigned_bit> out7_64QAM;
	static ap_uint<QAM_unsigned_bit> out8_64QAM;
 
  ap_uint<pixl_bit> data_in_temp;
  data_in_temp = data_in.read();
  
	if(qam_num==16){
		out1_16QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp/qam_num);
		data_out.write(out1_16QAM);
		out2_16QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp%qam_num);
		data_out.write(out2_16QAM);
	}
	else{
		if(t==0){
			out1_64QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp/4);
			data_out.write(out1_64QAM);
			out2_64QAM = (ap_uint<QAM_unsigned_bit>)((data_in_temp%4)*16);
			t = t+1;
		}
		else if(t==1){
			out3_64QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp/16);
			out4_64QAM = out2_64QAM+out3_64QAM;
			data_out.write(out4_64QAM);
			out5_64QAM = (ap_uint<QAM_unsigned_bit>)((data_in_temp%16)*4);
			t = t+1;
		}
		else{
			out6_64QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp/64);
			out7_64QAM = out5_64QAM+out6_64QAM;
			data_out.write(out7_64QAM);
			out8_64QAM = (ap_uint<QAM_unsigned_bit>)(data_in_temp%64);
			data_out.write(out8_64QAM);
			t = 0;
		}
	}

	return;
}
