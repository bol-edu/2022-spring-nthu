//#include "pilot_insertion.h"

void pilot_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag)
{
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
#pragma HLS INTERFACE ap_fifo port=data_out_real
#pragma HLS INTERFACE ap_fifo port=data_out_imag
//#pragma HLS INTERFACE ap_ctrl_none port=return

	static int i = 0;
	ap_fixed<IN_WL, IN_IL> pilot_real = 1.0;
	ap_fixed<IN_WL, IN_IL> pilot_imag = 0.0;
	ap_fixed<IN_WL, IN_IL> out_real;
	ap_fixed<IN_WL, IN_IL> out_imag;

	if((i%8)==0){
    data_out_real.write(pilot_real);
		data_out_imag.write(pilot_imag);
		out_real = data_in_real.read()/sqrt_QAM_norm;
		out_imag = data_in_imag.read()/sqrt_QAM_norm;
    data_out_real.write(out_real);
		data_out_imag.write(out_imag);
		i = i+2;
   			
	}
	else{
 
		out_real = data_in_real.read()/sqrt_QAM_norm;
		out_imag = data_in_imag.read()/sqrt_QAM_norm;
    /*data_out_real.write(out_real);
		data_out_imag.write(out_imag);
   */
    data_out_real.write(out_real);
		data_out_imag.write(out_imag);
		i = i+1;
	}

	return;
}
