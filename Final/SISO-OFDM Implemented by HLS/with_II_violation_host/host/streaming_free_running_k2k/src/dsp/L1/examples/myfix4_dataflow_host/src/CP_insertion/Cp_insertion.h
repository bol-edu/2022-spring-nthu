#ifndef __CP_INSERTION_H__
#define __CP_INSERTION_H__

//#include "../data_path.hpp"
#include "Cp_insertion.cpp"
void Cp_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN+CP_length>& data_out_imag);

#endif
