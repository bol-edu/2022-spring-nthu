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

//#include "qam.hpp"

void QAM(hls::stream<ap_uint<QAM_unsigned_bit>>& in, hls::stream<T_in_int>& out){

#pragma HLS INTERFACE ap_fifo port=in
#pragma HLS INTERFACE ap_fifo port=out
//#pragma HLS interface ap_ctrl_none port = return

  T_in_int out_temp;
  ap_uint<QAM_unsigned_bit> in_temp;
  
  /*
  if(in.read()==0){
    a.real(0);
    a.imag(0);
    //out_temp.write(T_in_int);
  }
  else{
    a.real(1);
    a.imag(1);
    //out_temp.write(T_in_int(1,1));
  }
  out_temp.write(a);
  */

  in_temp = in.read();
  //printf("%d", (int)in_temp);
	switch(qam_num){
		case 4:
       if((in_temp%2)){
         out_temp.imag((ap_int<QAM_signed_bit>)1);
       }
       else{
         out_temp.imag((ap_int<QAM_signed_bit>)-1);
       }
       if((in_temp/2)){
         out_temp.real((ap_int<QAM_signed_bit>)1);
       }
       else{
         out_temp.real((ap_int<QAM_signed_bit>)-1);
       }
			break;
      
		case 16:
      if((in_temp%4)==0){
        out_temp.imag((ap_int<QAM_signed_bit>)-3);
      }
      else if((in_temp%4)==1){
        out_temp.imag((ap_int<QAM_signed_bit>)-1);
      }
      else if((in_temp%4)==2){
        out_temp.imag((ap_int<QAM_signed_bit>)3);
      }
      else{
        out_temp.imag((ap_int<QAM_signed_bit>)1);
      }
      
      if((in_temp/4)==0){
        out_temp.real((ap_int<QAM_signed_bit>)-3);
      }
      else if((in_temp/4)==1){
        out_temp.real((ap_int<QAM_signed_bit>)-1);
      }
      else if((in_temp/4)==2){
        out_temp.real((ap_int<QAM_signed_bit>)3);
      }
      else{
        out_temp.real((ap_int<QAM_signed_bit>)1);
      }      
			break;
      
		case 64:
      if((in_temp%8)==0){
        out_temp.imag((ap_int<QAM_signed_bit>)-7);
      }
      else if((in_temp%8)==1){
        out_temp.imag((ap_int<QAM_signed_bit>)-5);
      }
      else if((in_temp%8)==2){
        out_temp.imag((ap_int<QAM_signed_bit>)-1);
      }
      else if((in_temp%8)==3){
        out_temp.imag((ap_int<QAM_signed_bit>)-3);
      }
      else if((in_temp%8)==4){
        out_temp.imag((ap_int<QAM_signed_bit>)7);
      }
      else if((in_temp%8)==5){
        out_temp.imag((ap_int<QAM_signed_bit>)5);
      }
      else if((in_temp%8)==6){
        out_temp.imag((ap_int<QAM_signed_bit>)1);
      }
      else{
        out_temp.imag((ap_int<QAM_signed_bit>)3);
      }
      
      if((in_temp/8)==0){
        out_temp.real((ap_int<QAM_signed_bit>)-7);
      }
      else if((in_temp/8)==1){
        out_temp.real((ap_int<QAM_signed_bit>)-5);
      }
      else if((in_temp/8)==2){
        out_temp.real((ap_int<QAM_signed_bit>)-1);
      }
      else if((in_temp/8)==3){
        out_temp.real((ap_int<QAM_signed_bit>)-3);
      }
      else if((in_temp/8)==4){
        out_temp.real((ap_int<QAM_signed_bit>)7);
      }
      else if((in_temp/8)==5){
        out_temp.real((ap_int<QAM_signed_bit>)5);
      }
      else if((in_temp/8)==6){
        out_temp.real((ap_int<QAM_signed_bit>)1);
      }
      else{
        out_temp.real((ap_int<QAM_signed_bit>)3);
      }      
			break;
		default:
			break;

	}
  //printf("data = %d\n", (int)in_temp);
  //printf("r = %d\n", (int)out_temp.real());
  //printf("i = %d\n", (int)out_temp.imag());
  out.write(out_temp);
	return;
}
