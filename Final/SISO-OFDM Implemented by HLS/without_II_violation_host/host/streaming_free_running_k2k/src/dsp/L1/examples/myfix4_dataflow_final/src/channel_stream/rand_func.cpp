#include "channel_gen.h"

void rand_func(ap_uint<1> load, hls::stream<ap_fixed<IN_WL,IN_IL>>& r)
{
#pragma HLS INTERFACE ap_none port=load
#pragma HLS INTERFACE axis port=r
//#pragma HLS INTERFACE ap_ctrl_none port=return

	//random [0,4294967296]
	ap_uint<32> out;
  ap_uint<32> out_2;

	//1st random number generation
	static ap_uint<32> lfsr;
	if (load == 1){
		lfsr = 32;
	}
	bool b_32 = lfsr.get_bit(32-32);
	bool b_22 = lfsr.get_bit(32-22);
	bool b_2 = lfsr.get_bit(32-2);
	bool b_1 = lfsr.get_bit(32-1);
	bool new_bit = b_32^b_22^b_2^b_1;
	lfsr = lfsr >> 1;
	lfsr.set_bit(31, new_bit);
	out = lfsr.to_uint();
 
	//2nd random number generation
	static ap_uint<32> lfsr_2;
	if (load == 1){
		lfsr_2 = 32;
	}
	bool b_32_2 = lfsr_2.get_bit(32-32);
	bool b_21_2 = lfsr_2.get_bit(32-21);
	bool b_8_2 = lfsr_2.get_bit(32-8);
	bool b_1_2 = lfsr_2.get_bit(32-1);
	bool new_bit_2 = b_32_2^b_21_2^b_8_2^b_1_2;
	lfsr_2 = lfsr_2 >> 1;
	lfsr_2.set_bit(31, new_bit_2);
	out_2 = lfsr_2.to_uint();

	//Gaussian random generation
	float U, V;
  static ap_uint<1> phase;
  ap_fixed<IN_WL,IN_IL> Z;

  if(load == 1){
  	phase = 0;
  }

  U = ((float)out/(4294967294.0));
  V = ((float)out_2/(4294967294.0));
  if(phase == 0){
     Z = (ap_fixed<IN_WL,IN_IL>)(sqrt(-2.0*log(U))*sin(2.0*3.14159*V));
     phase = 1;
  }
  else{
     Z = (ap_fixed<IN_WL,IN_IL>)(sqrt(-2.0*log(U))*cos(2.0*3.14159*V));
     phase = 0;
  }    
  r.write(Z);

	return;
}
