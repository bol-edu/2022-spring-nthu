#include <ap_int.h>
#include <math.h>
#include <iostream>
#include "rng.hpp"
#include "normal_rng.hpp"
#include "MIMO.h"

extern "C" void AWGN(hls::stream<FIXED_LEN> &din, hls::stream<FIXED_LEN> &dout, FIXED_LEN SNR){

	xf::fintech::MT19937IcnRng<double> rngMT19937ICN;
	rngMT19937ICN.seedInitialization(20); //SEED =20
	//FIXED_LEN SNR = 0.158113; // 1 / SQRT(2.0*SNR)
	FIXED_LEN TEMP;

    for(int j=0; j< 128; j++){
    	TEMP = rngMT19937ICN.next();
    	dout << din.read() + TEMP * SNR;
    }
}
