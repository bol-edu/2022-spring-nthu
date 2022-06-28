//#include "Cp_insertion.h"

void Cp_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_imag)
{
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
#pragma HLS INTERFACE ap_fifo port=data_out_real
#pragma HLS INTERFACE ap_fifo port=data_out_imag
	//#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS dataflow

	ap_fixed<IN_WL, IN_IL> in_r[FFT_LEN];
	ap_fixed<IN_WL, IN_IL> in_i[FFT_LEN];

	for(int t = 0; t < (2*FFT_LEN); t++){
		if(t < FFT_LEN){
			in_r[t] = data_in_real.read();
			in_i[t] = data_in_imag.read();
		}
		if((t >= FFT_LEN)){ //64
			data_out_real.write(in_r[t-FFT_LEN]);
			data_out_imag.write(in_i[t-FFT_LEN]);
		}
		else if(t >= FFT_LEN-CP_length){ //48
			data_out_real.write(in_r[t]);
			data_out_imag.write(in_i[t]);
		}
	}


	return;
}
