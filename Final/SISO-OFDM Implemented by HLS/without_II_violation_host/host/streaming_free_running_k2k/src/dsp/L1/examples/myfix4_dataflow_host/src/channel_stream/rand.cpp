
//#include "../data_path.hpp"
//#include "channel_gen.h"
#include "xf_fintech/rng.hpp"
#include <hls_stream.h>
#include <iostream>
#include <stdlib.h> 
#include<stdio.h>
#include<math.h>


xf::fintech::MT19937IcnRng<float> rngMT19937ICN;
void rand(hls::stream<ap_fixed<IN_WL,IN_IL>>& pic_out){
#pragma HLS INTERFACE ap_fifo port=pic_out
  ap_fixed<IN_WL,IN_IL> random_num_value;
  static int t = 0;
  hls::stream<float> random_num;

  if(t==0){
    rngMT19937ICN.seedInitialization(3);
    t=1;
  }
  random_num_value = rngMT19937ICN.next();
  pic_out.write(random_num_value);
  
}