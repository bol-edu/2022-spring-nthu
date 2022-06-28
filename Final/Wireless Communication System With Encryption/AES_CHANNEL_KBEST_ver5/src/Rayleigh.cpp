#include <ap_int.h>
#include "rng.hpp"
#include <math.h>
#include <iostream>
#include "normal_rng.hpp"
#include "MIMO.h"
//using std::fixed;
//using std::right;


extern "C" void Rayleigh(hls::stream<FIXED_LEN> &H_real, hls::stream<FIXED_LEN> &H_imag){

	xf::fintech::MT19937IcnRng<double> rngMT19937ICN;
	rngMT19937ICN.seedInitialization(RAND_SEED);

    int i;
    FIXED_LEN DIVB_SQRT2 = 0.707;
    FIXED_LEN TEMP0;
    FIXED_LEN TEMP1;

    for(i=0; i<16; i++){
    	TEMP0 = rngMT19937ICN.next();
    	TEMP1 = rngMT19937ICN.next();
    	H_real << TEMP0 * DIVB_SQRT2;
    	H_imag << TEMP1 * DIVB_SQRT2;
    }


    // THE OUPUT DATA //
    //   1  2  3  4   //
    //   5  6  7  8   //
    //   9 10 11 12   //
    //  13 14 15 16   //
}
