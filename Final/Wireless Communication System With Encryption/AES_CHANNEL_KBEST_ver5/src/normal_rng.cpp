#include <ap_int.h>
#include "rng.hpp"
#include "normal_rng.hpp" //dut.hpp


extern "C" void normal_rng(const int num,

			   ap_uint<32> SEED,
			   double output_randn_Re[SAMPLE_NUM],
			   double output_randn_Im[SAMPLE_NUM]
			   
			   //ap_fixed<16,8> output_randn[SAMPLE_NUM]

			   //ap_uint<16> output_randn[SAMPLE_NUM]

			   ){

	xf::fintech::MT19937IcnRng<double> rngMT19937ICN;
	rngMT19937ICN.seedInitialization(SEED);

	//double output_randn_Re[SAMPLE_NUM];
	//double output_randn_Im[SAMPLE_NUM];

	for (int i=0; i<num; i++){
	#pragma HLS pipeline II=1
		output_randn_Re[i] = rngMT19937ICN.next();
		output_randn_Im[i] = rngMT19937ICN.next();

	}


}

