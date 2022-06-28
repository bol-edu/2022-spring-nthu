#ifndef __DATA2PIC_H__
#define __DATA2PIC_H__
//#include "../data_path.hpp"

#include "data_out_main.cpp"

void data_out_main(hls::stream<ap_fixed<IN_WL,IN_IL>>& data_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_imag, hls::stream<ap_uint<pixl_bit>>& data_out);
void deQAM(hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_imag, hls::stream<ap_uint<QAM_unsigned_bit>>& QAM_out);
void data2pic(hls::stream<ap_uint<QAM_unsigned_bit>>& data_in, hls::stream<ap_uint<pixl_bit>>& data_out);

#endif
