#include "hls_macc.h"

void hls_macc(int a, int b, int *accum, bool accum_clr)
{
#pragma HLS INTERFACE s_axilite port=return bundle=HLS_MACC_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=a bundle=HLS_MACC_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=b bundle=HLS_MACC_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=accum bundle=HLS_MACC_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=accum_clr bundle=HLS_MACC_PERIPH_BUS

   //static mult;


   static acc_reg = 0;
#pragma HLS bind_op variable=acc_reg op=mul impl=fabric
#pragma HLS bind_op variable=acc_reg op=add impl=fabric
   if (accum_clr)
      acc_reg = 0;

   acc_reg += a * b;
   *accum = acc_reg;

}
