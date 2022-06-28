/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#include <iostream>
#include <stdlib.h> 
#include<stdio.h>


#include <ap_fixed.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>

#include "dsp/L1/examples/myfix4_dataflow_host/src/top_module.hpp"
#include "dsp/L1/examples/myfix4_dataflow_host/src/data_path.hpp"

extern "C" {
void increment(hls::stream<ap_axiu<8, 0, 0, 0>>& input, hls::stream<ap_axiu<8, 0, 0, 0>>& output, int size) {
// For free running kernel, user needs to specify ap_ctrl_none for return port.
// This will create the kernel without AXI lite interface. Kernel will always be
// in running states.
//#pragma HLS interface ap_ctrl_none port = return

/*
increment:
    for (int i = 0; i < 32; i++) {
      ap_axiu<32, 0, 0, 0> v = input.read();
      v.data = v.data + 1;
      output.write(v);
    }
*/

hls::stream<int32_t,64> symbol,in,deout;
hls::stream<T_in_int,64> out;
T_in_int data_temp_int;
T_in data_temp;
hls::stream<T_in,64> IFFT_in[SSR];
hls::stream<T_in,64> IFFT_out[SSR];
hls::stream<T_in,64> FFT_out[SSR];
hls::stream<float,64> data_real,data_imag;
ap_axiu<8, 0, 0, 0> v,x,y;
hls::stream<ap_uint<8>> in1,pic_out;
ap_uint<8> a;
#pragma HLS dataflow
for(int i=0 ; i<size ; i++){
  v = input.read();/////(ap_uint<8>)
  in1.write(v.data);
}
/////////////////////
for(int k=0 ; k<(size/28) ; k++){
  top_module(in1,pic_out);
}
/////////////////////
for(int i=0 ; i<size ; i++){
  x.data = pic_out.read();/////(ap_uint<8>)
  output.write(x);
}

/*
for (int i = 0; i < 32; i++) {
    v = input.read();
    in.write(v.data);
    
    pixl_to_symbol(in, symbol);
    ///////////////////////////////////////////////////////////////////
    //test(in,symbol);
   /////////////////////////////////////////////////////////////////////////
    
    y.data = symbol.read();
    x.data = symbol.read();
    output.write(x);
  }
*/
/*
increment1:
  for (int i = 0; i < 32; i++) {
    v = input.read();
    in.write(v.data);
    
    pixl_to_symbol(in, symbol);
    for(int j=0;j<SSR;j++){
      QAM(symbol, out);
      data_temp_int = out.read();
      IFFT_in[j].write(T_in((float)data_temp_int.real()/sqrt_10,(float)data_temp_int.imag()/sqrt_10));
    }
  }
  ///////////////////////////////////////////////////////////////////
  fft_top1(IFFT_in,IFFT_out);
  
  fft_top0(IFFT_out,FFT_out);
  ///////////////////////////////////////////////////////////////////
increment2:
  for (int m = 0; m < 32; m++) {
    for(int k=0;k<SSR;k++){
      data_temp = FFT_out[k].read();
      
      //data_real.write((float)data_temp.real()/sqrt_FFT_LEN*sqrt_10);
      //data_imag.write((float)data_temp.imag()/sqrt_FFT_LEN*sqrt_10);
      
      data_real.write((float)data_temp.real()*sqrt_10);
      data_imag.write((float)data_temp.imag()*sqrt_10);
      data_out_main(data_real,data_imag,deout);
    }
    x.data = deout.read();
    output.write(x);
  }
*/
}
}
