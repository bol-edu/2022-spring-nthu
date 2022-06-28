#ifndef __SYNCHRONIZATION_H__
#define __SYNCHRONIZATION_H__
#include "../data_path.hpp"

void synchronization(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<ap_uint<8>>& index);

#endif
