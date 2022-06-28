#include "data_path.hpp"

void Tx(hls::stream<ap_uint<pixl_bit>>& pic_in, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_out_imag);