//#include "data2pic.h"
#include "data2pic.cpp"
#include "deQAM.cpp"
void data_out_main(hls::stream<ap_fixed<IN_WL,IN_IL>>& data_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_imag, hls::stream<ap_uint<pixl_bit>>& data_out)
{
#pragma HLS INTERFACE ap_fifo port=data_out
#pragma HLS INTERFACE ap_fifo port=data_real
#pragma HLS INTERFACE ap_fifo port=data_imag
//#pragma HLS INTERFACE ap_ctrl_none port=return

	hls::stream<ap_uint<QAM_unsigned_bit>> QAM_out;

	deQAM(data_real, data_imag, QAM_out);
	data2pic(QAM_out, data_out);

	return;
}
