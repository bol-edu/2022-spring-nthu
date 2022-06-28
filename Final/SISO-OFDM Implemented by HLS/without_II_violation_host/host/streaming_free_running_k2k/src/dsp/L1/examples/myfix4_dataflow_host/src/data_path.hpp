#ifndef _DATA_PATH_H_
#define _DATA_PATH_H_

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <cstdlib>
#include <ctime>
#include <time.h>
#include <cmath>

#include <complex>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <hls_vector.h>
#include "vt_fft.hpp"

//#define DATA_LENGTH 1024
#define DATA_LENGTH 224
#define qam_num 16 
#define pixl_bit 8 //(unsigned)
#define QAM_unsigned_bit 4
#define QAM_signed_bit 3
#define QAM_normalization 10
#define TAPS_NUM 3
#define pilot_width 8
#define CP_length 16

/*
#define qam_num 64 
#define pixl_bit 8 //(unsigned)
#define QAM_unsigned_bit 6
#define QAM_signed_bit 4
#define QAM_normalization 42
*/

// Define FFT Size and Super Sample Rate
#define FFT_LEN 64
#define SSR 2

#define IN_WL 20
#define IN_IL 5

#define TW_WL 16
#define TW_IL 2

//#define seed 31
#define SNR 30
using namespace xf::dsp::fft;

typedef signed int int32_t;
typedef std::complex<ap_int<QAM_signed_bit>> T_in_int;
typedef std::complex<ap_fixed<IN_WL,IN_IL>> T_in;

const ap_fixed<IN_WL,IN_IL> sqrt_No = (ap_fixed<IN_WL,IN_IL>)(1/sqrt(pow(10.0,SNR/10.0)));
const ap_fixed<IN_WL,IN_IL> sqrt_FFT_LENGTH = (ap_fixed<IN_WL,IN_IL>)sqrt(FFT_LEN);
const ap_fixed<IN_WL,IN_IL> sqrt_QAM_norm = (ap_fixed<IN_WL,IN_IL>)sqrt(QAM_normalization);
const ap_fixed<IN_WL,IN_IL> sqrt_2 = (ap_fixed<IN_WL,IN_IL>)sqrt(2);

// Define parameter structure for FFT
//-------------------------------- IFFT ----------------------------------
#define IID0 0   //IFFT
struct fftParams0 : ssr_fft_default_params {
    static const int N = FFT_LEN;
    static const int R = SSR;
    static const fft_output_order_enum output_data_order = SSR_FFT_NATURAL; 
    static const transform_direction_enum transform_direction = REVERSE_TRANSFORM; //IFFT
    static const scaling_mode_enum scaling_mode = SSR_FFT_GROW_TO_MAX_WIDTH;
    static const int twiddle_table_word_length = TW_WL;
    static const int twiddle_table_intger_part_length = TW_IL;
};
typedef ssr_fft_output_type<fftParams0,T_in>::t_ssr_fft_out T_out0;
//------------------------------ IFFT end --------------------------------

//--------------------------------- FFT ----------------------------------
#define IID1 1   //FFT
struct fftParams1 : ssr_fft_default_params {
    static const int N = FFT_LEN;
    static const int R = SSR;
    static const fft_output_order_enum output_data_order = SSR_FFT_NATURAL;
    static const transform_direction_enum transform_direction = FORWARD_TRANSFORM; //FFT
    static const scaling_mode_enum scaling_mode = SSR_FFT_GROW_TO_MAX_WIDTH;
    static const int twiddle_table_word_length = TW_WL;
    static const int twiddle_table_intger_part_length = TW_IL;
};
typedef ssr_fft_output_type<fftParams1,T_in>::t_ssr_fft_out T_out1;
//------------------------------- FFT end --------------------------------



#endif
