#include "Rx.h"
#include "top_module.hpp"

void Rx(hls::stream<T_in> FFT_in[SSR], hls::stream<ap_uint<pixl_bit>>& pic_out){
#pragma HLS dataflow
	//#pragma HLS interface ap_ctrl_none port = return

	hls::stream<T_in> FFT_in_temp[SSR];
	hls::stream<T_out1,FFT_LEN/SSR> FFT_out[SSR];
	hls::stream<ap_fixed<IN_WL,IN_IL>> data_real;
	hls::stream<ap_fixed<IN_WL,IN_IL>> data_imag;
	hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN/SSR)> Equal_in[SSR];
	hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN/SSR)> Equal_out[SSR];
	ap_fixed<IN_WL,IN_IL> cp_imag;
	ap_fixed<IN_WL,IN_IL> cp_real;
	T_in CP_remove;
	T_in data_temp;
	T_out1 equal_temp;

	for(int t=0 ; t<((FFT_LEN+CP_length)/SSR) ; t++){
		for(int p=0 ; p<SSR ; p++){
			if(t<(CP_length/SSR)){
				CP_remove = FFT_in[p].read();
				cp_real = CP_remove.real();
				cp_imag = CP_remove.imag();
			}
			else{
				FFT_in_temp[p].write(FFT_in[p].read());
			}
		}
	}
	fft_top1(FFT_in_temp,FFT_out);

	for (int t = 0; t < (FFT_LEN/2); t++) {
		for(int s = 0; s < SSR; s++){
			equal_temp = FFT_out[s].read();
			Equal_in[0].write((ap_fixed<IN_WL,IN_IL>)equal_temp.real()/sqrt_FFT_LENGTH);
			Equal_in[1].write((ap_fixed<IN_WL,IN_IL>)equal_temp.imag()/sqrt_FFT_LENGTH);
		}
	}

	equalizer(Equal_in, Equal_out) ;

	for (int k = 0; k < FFT_LEN ; k++) {
#pragma HLS array_partition variable=Equal_out type=complete
		data_temp.real(Equal_out[0].read());
		data_temp.imag(Equal_out[1].read());
		if((k%8)!=0){
			data_real.write(data_temp.real()*sqrt_QAM_norm);
			data_imag.write(data_temp.imag()*sqrt_QAM_norm);
			data_out_main(data_real,data_imag,pic_out);
		}
	}

	return;
}
