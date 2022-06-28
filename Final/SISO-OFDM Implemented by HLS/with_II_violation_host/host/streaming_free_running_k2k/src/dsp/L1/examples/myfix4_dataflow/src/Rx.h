#include "data_path.hpp"

void Rx(hls::stream<T_in> FFT_in[SSR], hls::stream<ap_uint<pixl_bit>>& pic_out);
//,(FFT_LEN+CP_length)/SSR>& FFT_in, hls::stream<ap_uint<pixl_bit>>& pic_out);