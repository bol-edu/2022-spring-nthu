#ifndef __QRD_H__
#define __QRD_H__
#include "ap_fixed.h"
#include <hls_stream.h>
#include "normal_rng.hpp"
#include <ap_int.h>
typedef struct Return_2{
	double o1;
	double o2;
}R2;

# define RAND_SEED 37
# define word_len 16
typedef ap_fixed<word_len,8> FIXED_LEN;


static FIXED_LEN cordic_phase[11]={ 0.78539816339744828000,
									0.46364760900080609000,
									0.24497866312686414000,
									0.12435499454676144000,
									0.06241880999595735000,
									0.03123983343026827700,
									0.01562372862047683100,
									0.00781234106010111110,
									0.00390623013196697180,
									0.00195312251647881880,
									0.00097656218955931946
								  };



void aes_return(char *p, int plen, char *key);
void deAes_return(char *c, int clen, char *key);
void AES_En_De(hls::stream<ap_uint<8>> &in_data, hls::stream<ap_uint<8>> &out_data, ap_uint<1> op, ap_uint<8> *key);
void Modulation(hls::stream<ap_uint<8>> &in_stream, hls::stream<FIXED_LEN> &xr, hls::stream<FIXED_LEN> &xi);
extern "C" void Rayleigh(hls::stream<FIXED_LEN> &H_real, hls::stream<FIXED_LEN> &H_imag);
void QRD(hls::stream<FIXED_LEN> &H_real, hls::stream<FIXED_LEN> &H_imag, hls::stream<FIXED_LEN> &Q, hls::stream<FIXED_LEN> &R);
extern "C" void AWGN(hls::stream<FIXED_LEN> &din, hls::stream<FIXED_LEN> &dout, FIXED_LEN SNR);
void KBEST(hls::stream<FIXED_LEN> &R_IN, hls::stream<FIXED_LEN> &in_data, hls::stream<FIXED_LEN> &out_data);
void DeModulation(hls::stream<FIXED_LEN> &in_data, hls::stream<ap_uint<8>> &out_data);

//void TOP(ap_uint<8> *in_data, ap_uint<8> *out_data);
void TOP(hls::stream<ap_uint<8>> &in_data, hls::stream<ap_uint<8>> &out_data, FIXED_LEN SNR);
#endif
