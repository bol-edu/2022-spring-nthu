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
#include "fft.hpp"
#include "../data_path.hpp"
/*
void ifft_m(hls::stream<T_in> p_inData[SSR], hls::stream<T_out> p_outData[SSR]) {
    
    hls::stream<T_in> tempData[SSR];
    
    fft_top1(p_inData,tempData);    ////////////  IFFT
    //fft_top0(tempData,p_outData);    ////////////  FFT
}

void fft_m(hls::stream<T_in> p_inData[SSR], hls::stream<T_out> p_outData[SSR]) {
    
    hls::stream<T_in> tempData[SSR];
    
    //fft_top1(p_inData,tempData);    ////////////  IFFT
    fft_top0(p_inData,p_outData);    ////////////  FFT
}

*/
//IFFT
void fft_top0(hls::stream<T_in> p_inData[SSR], hls::stream<T_out0> p_outData[SSR]) {
    xf::dsp::fft::fft<fftParams0, IID0>(p_inData, p_outData);
}

//FFT
void fft_top1(hls::stream<T_in> p_inData[SSR], hls::stream<T_out1> p_outData[SSR]) {
    xf::dsp::fft::fft<fftParams1, IID1>(p_inData, p_outData);
}