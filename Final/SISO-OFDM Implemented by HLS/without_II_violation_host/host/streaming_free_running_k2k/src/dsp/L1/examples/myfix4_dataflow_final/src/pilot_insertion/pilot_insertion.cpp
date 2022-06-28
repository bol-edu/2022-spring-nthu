//#include "pilot_insertion.h"

void pilot_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag)
{
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
#pragma HLS INTERFACE ap_fifo port=data_out_real
#pragma HLS INTERFACE ap_fifo port=data_out_imag
#pragma HLS dataflow
	//#pragma HLS INTERFACE ap_ctrl_none port=return

	ap_fixed<IN_WL, IN_IL> out_real;
	ap_fixed<IN_WL, IN_IL> out_imag;

	for (int t = 0; t < FFT_LEN; t++) {

	     if((t%8)==0){
	        data_out_real.write((ap_fixed<IN_WL,IN_IL>)pilot_real);
       		data_out_imag.write((ap_fixed<IN_WL,IN_IL>)pilot_imag);
	     }
	     else{
	    	 out_real = (ap_fixed<IN_WL,IN_IL>)data_in_real.read();
			 out_imag = (ap_fixed<IN_WL,IN_IL>)data_in_imag.read();
	    	 data_out_real.write(out_real/sqrt_QAM_norm);
	    	 data_out_imag.write(out_imag/sqrt_QAM_norm);
	     }
	}

	return;
}
