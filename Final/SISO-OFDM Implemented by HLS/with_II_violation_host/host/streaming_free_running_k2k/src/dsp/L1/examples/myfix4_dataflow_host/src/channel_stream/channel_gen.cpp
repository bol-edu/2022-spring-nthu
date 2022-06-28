//#include "channel_gen.h"
#include "rand.cpp"
void channel_gen(hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_r, hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_i, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_imag)
{
#pragma HLS INTERFACE ap_fifo port=in_x_r
#pragma HLS INTERFACE ap_fifo port=in_x_i
#pragma HLS INTERFACE ap_fifo port=channel_out_real
#pragma HLS INTERFACE ap_fifo port=channel_out_imag
//#pragma HLS INTERFACE ap_ctrl_none port=return

	static int index_count = 0;
  ap_uint<4> i;
	static ap_fixed<IN_WL,IN_IL> x_real[TAPS_NUM] = {0.0};
	static ap_fixed<IN_WL,IN_IL> x_imag[TAPS_NUM] = {0.0};
	static ap_fixed<IN_WL,IN_IL> n[TAPS_NUM];
	ap_fixed<IN_WL,IN_IL> x_out_r = 0.0;
	ap_fixed<IN_WL,IN_IL> x_out_i = 0.0;
  ap_fixed<IN_WL,IN_IL> weight_2taps[2] = {0.5, 0.31};
	ap_fixed<IN_WL,IN_IL> weight_3taps[3] = {0.5, 0.31, 0.19};
  ap_fixed<IN_WL,IN_IL> weight_6taps[6] = {0.7943, 0.3981, 0.3162, 0.2512, 0.1778, 0.1259};
	ap_fixed<IN_WL,IN_IL> weight_9taps[9] = {0.5, 0.31, 0.19, 0.06, 0.03, 0.02, 0.008, 0.004, 0.002};
	hls::stream<ap_fixed<IN_WL,IN_IL>> random_num;
  
  
  
	for (i = TAPS_NUM-1 ;i > 0; i--){
	  x_real[i] = x_real[i-1];
	  x_imag[i] = x_imag[i-1];
	}		

  //load in new data
	x_real[0] = in_x_r.read();
	x_imag[0] = in_x_i.read();

  if(index_count==0){
	  for(i = 0; i < TAPS_NUM; i++){
		//randomness of channel
      rand(random_num);
		  n[i] = random_num.read();
	  }
  }
  if(TAPS_NUM==3){
		for(i = 0; i < TAPS_NUM; i++){
      //x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*x_real[i]);
			//x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*x_imag[i]);
			x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)((weight_3taps[i]*n[i])*x_real[i]);
			x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)((weight_3taps[i]*n[i])*x_imag[i]);
		}
	}
  //printf("------index_count = %d  n0 = %f  n1 = %f n2 = %f\n",index_count,(float)n[0],(float)n[1],(float)n[2]);
  /*
  if(TAPS_NUM==1){
    for(i = 0; i < TAPS_NUM; i++){
      x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)x_real[i];
		  x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)x_imag[i];
    }
  }
  if(TAPS_NUM==2){
    for(i = 0; i < TAPS_NUM; i++){
      x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_2taps[i]*n[i])*x_real[i];
		  x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_2taps[i]*n[i])*x_imag[i];
    }
  }
	else if(TAPS_NUM==3){
		for(i = 0; i < TAPS_NUM; i++){
      //x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*x_real[i]);
			//x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*x_imag[i]);
			x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)((weight_3taps[i]*n[i])*x_real[i]);
			x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)((weight_3taps[i]*n[i])*x_imag[i]);
		}
	}
  else if(TAPS_NUM==6){
		for(i = 0; i < TAPS_NUM; i++){
      //x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*x_real[i]);
			//x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*x_imag[i]);
			x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*n[i])*x_real[i];
			x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*n[i])*x_imag[i];
		}
	}
  else{
		for(i = 0; i < TAPS_NUM; i++){
			x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_9taps[i]+n[i])*x_real[i];
			x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_9taps[i]+n[i])*x_imag[i];
		}
	}
 *///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
	//AWGN generation
  rand(random_num);
  rand(random_num);
	//rand_func(0, random_num);
	//rand_func(0, random_num);
	n_real= random_num.read();
  n_imag= random_num.read();

	x_out_r = x_out_r + n_real*sqrt_No/sqrt_2;
	x_out_i = x_out_i + n_imag*sqrt_No/sqrt_2;
*/
	//sum of multi-path
	channel_out_real.write(x_out_r);
	channel_out_imag.write(x_out_i);
 
  index_count++;
  if(index_count==80){
    index_count = 0;
  }


	return;
}
