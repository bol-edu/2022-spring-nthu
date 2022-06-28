//#include "Cp_insertion.h"

void Cp_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_imag)
{
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
#pragma HLS INTERFACE ap_fifo port=data_out_real
#pragma HLS INTERFACE ap_fifo port=data_out_imag
//#pragma HLS INTERFACE ap_ctrl_none port=return
//#pragma HLS PIPELINE

	int i;
  static int j = 0;
  
	static ap_fixed<IN_WL, IN_IL> in_r[FFT_LEN];
	static ap_fixed<IN_WL, IN_IL> in_i[FFT_LEN];

	in_r[j] = data_in_real.read();
	in_i[j] = data_in_imag.read();
  j++;
  if(j==FFT_LEN){
  	for(i = CP_length; i > 0 ; i--){
	  	data_out_real.write(in_r[FFT_LEN-i]);
		  data_out_imag.write(in_i[FFT_LEN-i]);
	  }
	  for(i = 0; i < FFT_LEN; i++){
		  data_out_real.write(in_r[i]);
			data_out_imag.write(in_i[i]);
	  }
    j=0;  
  }


	return;
}
