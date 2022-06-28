#ifndef __PIXL_TO_SYMBOL_H__
#define __PIXL_TO_SYMBOL_H__

#include "../data_path.hpp"

void pixl_to_symbol(hls::stream<ap_uint<pixl_bit>>& data_in, hls::stream<ap_uint<QAM_unsigned_bit>>& data_out);

#endif
