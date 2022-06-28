#include "synchronization.h"

void synchronization(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<ap_uint<8>>& index)
{
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
#pragma HLS INTERFACE ap_fifo port=data_out_real
#pragma HLS INTERFACE ap_fifo port=data_out_imag
#pragma HLS INTERFACE ap_fifo port=index
//#pragma HLS INTERFACE ap_ctrl_none port=return
  
  static ap_fixed<IN_WL, IN_IL> in_real[FFT_LEN+1] = {0.0};
  static ap_fixed<IN_WL, IN_IL> in_imag[FFT_LEN+1] = {0.0};
  static ap_fixed<25, 10> real_auto[CP_length+1] = {0.0};
  static ap_fixed<25, 10> imag_auto[CP_length+1] = {0.0};
  static ap_fixed<25, 10> power[CP_length+1] = {0.0};
  static ap_fixed<25, 10> total_real = 0;
  static ap_fixed<25, 10> total_imag = 0;
  static ap_fixed<25, 10> total_power = 0;
  static ap_fixed<25, 10> gamma;
  static ap_fixed<25, 10> max_gamma;
  static ap_uint<8> initial_count = 0;
  static ap_uint<8> initial_index = 0;
  static ap_uint<8> max_index = 0;

  //input data shift
  for(int i = FFT_LEN-1; i>=0;i--){ 
    in_real[i+1] = in_real[i];
    in_imag[i+1] = in_imag[i];
  }
  //read in new data
  in_real[0] = data_in_real.read(); 
  in_imag[0] = data_in_imag.read();
  
  if(initial_count > FFT_LEN-1){
    //autocorrelation value shift
    for(int i = CP_length-1; i>=0;i--){ 
      real_auto[i+1] = real_auto[i];
      imag_auto[i+1] = imag_auto[i];
      power[i+1] = power[i];
    }  
    //new autocorrelation value calculation
    real_auto[0] = in_real[0]*in_real[FFT_LEN]+in_imag[0]*in_imag[FFT_LEN]; 
    imag_auto[0] = -in_real[0]*in_imag[FFT_LEN]+in_imag[0]*in_real[FFT_LEN];
    power[0] = in_real[FFT_LEN]*in_real[FFT_LEN]+in_imag[FFT_LEN]*in_imag[FFT_LEN];
    //add new autocorrelation value
    if( initial_count > CP_length-1){
      total_real = total_real+real_auto[0]-real_auto[CP_length]; 
      total_imag = total_imag+imag_auto[0]-imag_auto[CP_length];
      total_power = (total_power+power[0]-power[CP_length])*(total_power+power[0]-power[CP_length]);
    }
    else{
      total_real = total_real+real_auto[0]; 
      total_imag = total_imag+imag_auto[0];
      total_power = (total_power+power[0])*(total_power+power[0]);
    }
    //gamma value calculation
    gamma = (total_real*total_real+total_imag*total_imag)/total_power*total_power;
    //gamma value camparison
    if(max_gamma<gamma){
      max_gamma = gamma;
      max_index = initial_index;
    }
    //write out peak index
    index.write(max_index);
    //transfer data to next kernel
    data_out_real.write(in_real[FFT_LEN]);
    data_out_imag.write(in_imag[FFT_LEN]);
    initial_index = initial_index+1;
  }
  //update
  initial_count = initial_count+1;
  
	return;
}
