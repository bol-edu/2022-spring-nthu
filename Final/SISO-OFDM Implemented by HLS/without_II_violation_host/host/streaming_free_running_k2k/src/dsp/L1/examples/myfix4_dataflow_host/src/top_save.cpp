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
//#pragma HLS dataflow
//#pragma HLS INTERFACE mode= ap_ctrl_chain bundle=control
//#pragma HLS interface ap_ctrl_none port = return  

  int i,j;
  static int w=0;
  hls::stream<ap_uint<QAM_unsigned_bit>> symbol;
  hls::stream<T_in_int> out;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>> random_num;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_in_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_in_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_temp_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> pilot_temp_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> cp_in_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>,FFT_LEN> cp_in_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN+CP_length)> cp_out_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>,(FFT_LEN+CP_length)> cp_out_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>> channel_in_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> channel_in_imag;
  
  T_in_int data_temp_int;
  T_in data_temp;
  T_in IFFT_in_temp;
  T_in FFT_in_temp;
  T_in CP_remove;
  ap_fixed<IN_WL,IN_IL> random_num_value;
  ap_fixed<IN_WL,IN_IL> temp;
  ap_fixed<IN_WL,IN_IL> cp_imag;
  ap_fixed<IN_WL,IN_IL> cp_real;
  static int t = 0;
  const ap_fixed<IN_WL,IN_IL> sqrt_No = (ap_fixed<IN_WL,IN_IL>)(1/sqrt(pow(10.0,SNR/10.0)));
  const ap_fixed<IN_WL,IN_IL> sqrt_FFT_LENGTH = (ap_fixed<IN_WL,IN_IL>)sqrt(FFT_LEN);
  const ap_fixed<IN_WL,IN_IL> sqrt_QAM_norm = (ap_fixed<IN_WL,IN_IL>)sqrt(QAM_normalization);
  const ap_fixed<IN_WL,IN_IL> sqrt_2 = (ap_fixed<IN_WL,IN_IL>)sqrt(2);
  
  hls::stream<T_in,FFT_LEN/SSR> IFFT_in[SSR];
  hls::stream<T_out0,FFT_LEN/SSR> IFFT_out[SSR];
  hls::stream<T_in,(FFT_LEN+CP_length)/SSR> FFT_in[SSR];
  hls::stream<T_out1,FFT_LEN/SSR> FFT_out[SSR];
  
  ap_fixed<IN_WL,IN_IL> ifft_in_real;
  ap_fixed<IN_WL,IN_IL> ifft_in_imag;
  ap_fixed<IN_WL,IN_IL> fft_in_real;
  ap_fixed<IN_WL,IN_IL> fft_in_imag;
  
  //============================ Random initial ============================
  if(t==0){
    rand_func(1, random_num);
    random_num_value = random_num.read();
    t=1;
  }
  //========================== Random initial end ==========================
  
  //================================== Tx ==================================  
  for (int t = 0; t < ((FFT_LEN-(FFT_LEN/pilot_width)) / SSR); ++t) {
    pixl_to_symbol(in, symbol);
    for(i=0;i<SSR;i++){
      QAM(symbol, out);
      data_temp_int = out.read();
      pilot_in_real.write((ap_fixed<IN_WL,IN_IL>)data_temp_int.real());
      pilot_in_imag.write((ap_fixed<IN_WL,IN_IL>)data_temp_int.imag());
      pilot_insertion(pilot_in_real, pilot_in_imag, pilot_temp_real, pilot_temp_imag);
    }
  } 
  for (int t = 0; t < (FFT_LEN / SSR); ++t) {
    for(i=0;i<SSR;i++){
        ifft_in_real = (pilot_temp_real.read()/sqrt_QAM_norm);
        ifft_in_imag = (pilot_temp_imag.read()/sqrt_QAM_norm);
        IFFT_in[i].write(T_in(ifft_in_real,ifft_in_imag));
    }
  } 
  
  fft_top0(IFFT_in, IFFT_out);
  
  for (int t = 0; t < (FFT_LEN / SSR); ++t) {
    for(i=0;i<SSR;i++){
      IFFT_in_temp = (T_in)(IFFT_out[i].read());
      cp_in_real.write(IFFT_in_temp.real());
      cp_in_imag.write(IFFT_in_temp.imag());
      Cp_insertion(cp_in_real, cp_in_imag, cp_out_real, cp_out_imag);
    }
  } 
  
  for (int t=0;t<(FFT_LEN+CP_length);t++){
    channel_in_real.write(cp_out_real.read());
    channel_in_imag.write(cp_out_imag.read());
  }
  
  //================================ Tx end ================================
  
  //================================= AWGN =================================
  for (int t = 0; t < ((FFT_LEN+CP_length) / SSR); ++t) {
    for(int p=0;p<SSR;p++){
      
      rand_func(0, random_num);
      random_num_value = random_num.read()*sqrt_No/sqrt_2;
      temp = channel_in_real.read()*sqrt_FFT_LENGTH+random_num_value;
      FFT_in_temp.real(temp);
      
      rand_func(0, random_num);
      random_num_value = random_num.read()*sqrt_No/sqrt_2;
      temp = channel_in_imag.read()*sqrt_FFT_LENGTH+random_num_value;
      FFT_in_temp.imag(temp);
      
      fft_in_real = FFT_in_temp.real();
      fft_in_imag = FFT_in_temp.imag();   

      FFT_in[p].write(T_in(fft_in_real,fft_in_imag)); 
    }
  }
  //=============================== AWGN end ===============================
  
  //================================== Rx ==================================
  
  for (int t = 0; t < (CP_length/SSR); ++t) {
    for(int p = 0; p < SSR; p++){
      CP_remove = FFT_in[p].read();
      cp_real = CP_remove.real();
      cp_imag = CP_remove.imag();
    }
  }
  
  fft_top1(FFT_in,FFT_out);  
  
  for (int k = 0; k < (FFT_LEN / SSR); ++k) {
    for(j=0;j<SSR;j++){
      data_temp = FFT_out[j].read();
      if(((k*2+j)%8)!=0){
        data_real.write(data_temp.real()/sqrt_FFT_LENGTH*sqrt_QAM_norm);
        data_imag.write(data_temp.imag()/sqrt_FFT_LENGTH*sqrt_QAM_norm);
        data_out_main(data_real,data_imag,pic_out);
      }
    }
  }    
  //================================ Rx end ================================
	return;
}

/*
///////////////////////////pixl to symbol and QAM &&  depixl to symbol and deQAM
void top_module(hls::stream<int32_t>& in,hls::stream<int>& pic_out){

#pragma HLS INTERFACE ap_fifo port=in
#pragma HLS INTERFACE ap_fifo port=pic_out

//#pragma HLS interface ap_ctrl_none port = return
  hls::stream<int> symbol;
  hls::stream<T_in_int> out;
  hls::stream<float> data_real,data_imag;
  T_in_int data_temp;
  
  
  pixl_to_symbol(in, symbol);
  QAM(symbol, out);
  QAM(symbol, out);
  
  data_temp = out.read();
  data_real.write((float)data_temp.real());
  data_imag.write((float)data_temp.imag());
  data_out_main(data_real,data_imag,pic_out);
  data_temp = out.read();
  data_real.write((float)data_temp.real());
  data_imag.write((float)data_temp.imag());
  data_out_main(data_real,data_imag,pic_out);
  
  
	return;
}
*/
/*
//////////////////////pixl to symbol and QAM
void top_module(hls::stream<int32_t>& in,hls::stream<T_in_int>& out){

#pragma HLS INTERFACE ap_fifo port=out
#pragma HLS INTERFACE ap_fifo port=in
//#pragma HLS interface ap_ctrl_none port = return
  hls::stream<int> symbol;
  
  pixl_to_symbol(in, symbol);
  QAM(symbol, out);
  QAM(symbol, out);
  
  
	return;
}
*/