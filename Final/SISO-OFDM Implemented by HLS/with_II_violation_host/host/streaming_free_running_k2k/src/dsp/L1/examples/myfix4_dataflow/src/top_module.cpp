/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.

*/
//================================== End Lic =================================================

#include "top_module.hpp"
#include "data_path.hpp"

void top_module(hls::stream<ap_uint<pixl_bit>>& in,hls::stream<ap_uint<pixl_bit>>& pic_out){

#pragma HLS INTERFACE ap_fifo port=in
#pragma HLS INTERFACE ap_fifo port=pic_out
#pragma HLS dataflow
//#pragma HLS INTERFACE mode= ap_ctrl_chain bundle=control
#pragma HLS interface ap_ctrl_none port = return  

  int i,j;
  static int w=0;
  //hls::stream<ap_uint<QAM_unsigned_bit>> symbol;
  //hls::stream<T_in_int> out;
  //hls::stream<ap_fixed<IN_WL,IN_IL>> data_real;
  //hls::stream<ap_fixed<IN_WL,IN_IL>> data_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>> random_num;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_in_real;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_in_imag;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_temp_real;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_temp_imag;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> cp_in_real;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> cp_in_imag;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN+CP_length)> cp_out_real;
  //hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN+CP_length)> cp_out_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>> channel_in_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> channel_in_imag;
  
  //T_in_int data_temp_int;
  //T_in data_temp;
  //T_in IFFT_in_temp;
  //T_in FFT_in_temp;
  //T_in CP_remove;
  ap_fixed<IN_WL,IN_IL> random_num_value;
  //ap_fixed<IN_WL,IN_IL> temp;
  //ap_fixed<IN_WL,IN_IL> cp_imag;
  //ap_fixed<IN_WL,IN_IL> cp_real;
  static int t = 0;
  //const ap_fixed<IN_WL,IN_IL> sqrt_No = (ap_fixed<IN_WL,IN_IL>)(1/sqrt(pow(10.0,SNR/10.0)));
  //const ap_fixed<IN_WL,IN_IL> sqrt_FFT_LENGTH = (ap_fixed<IN_WL,IN_IL>)sqrt(FFT_LEN);
  //const ap_fixed<IN_WL,IN_IL> sqrt_QAM_norm = (ap_fixed<IN_WL,IN_IL>)sqrt(QAM_normalization);
  //const ap_fixed<IN_WL,IN_IL> sqrt_2 = (ap_fixed<IN_WL,IN_IL>)sqrt(2);
  
  //hls::stream<T_in,FFT_LEN/SSR> IFFT_in[SSR];
  //hls::stream<T_out0,FFT_LEN/SSR> IFFT_out[SSR];
  hls::stream<T_in> FFT_in[SSR];
  //hls::stream<T_out1,FFT_LEN/SSR> FFT_out[SSR];
  
  //ap_fixed<IN_WL,IN_IL> ifft_in_real;
  //ap_fixed<IN_WL,IN_IL> ifft_in_imag;
  //ap_fixed<IN_WL,IN_IL> fft_in_real;
  //ap_fixed<IN_WL,IN_IL> fft_in_imag;
  
  //============================ Random initial ============================

  //========================== Random initial end ==========================
  
  //================================== Tx ==================================  
  Tx(in, channel_in_real, channel_in_imag);
  //================================ Tx end ================================
  
  //================================= AWGN =================================
  AWGN(channel_in_real, channel_in_imag, FFT_in);
  //=============================== AWGN end ===============================
  
  //================================== Rx ==================================
  Rx(FFT_in, pic_out);
  //================================ Rx end ================================
	return;
}
