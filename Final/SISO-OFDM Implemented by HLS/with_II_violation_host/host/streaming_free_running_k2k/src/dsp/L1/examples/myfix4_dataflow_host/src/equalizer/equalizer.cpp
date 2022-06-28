//#include "equalizer.hpp"


void equalizer(hls::stream<ap_fixed<IN_WL, IN_IL>> in[SSR], hls::stream<ap_fixed<IN_WL, IN_IL>> out[SSR]) {

  ap_fixed<IN_WL, IN_IL> data[pilot_width][SSR] ;
	ap_fixed<IN_WL, IN_IL> last_pilot_re;
  ap_fixed<IN_WL, IN_IL> last_pilot_im;
  ap_fixed<IN_WL, IN_IL> last_data_re;
  ap_fixed<IN_WL, IN_IL> last_data_im;
  ap_fixed<IN_WL, IN_IL> alpha;
  ap_fixed<IN_WL, IN_IL> in_re;
  ap_fixed<IN_WL, IN_IL> in_im;
  ap_fixed<IN_WL, IN_IL> now_pilot_re;
  ap_fixed<IN_WL, IN_IL> now_pilot_im;
  ap_fixed<IN_WL, IN_IL> zero_re;
  ap_fixed<IN_WL, IN_IL> zero_im ;
	ap_fixed<IN_WL, IN_IL> left_ratio;
  ap_fixed<IN_WL, IN_IL> right_ratio ;
	ap_fixed<IN_WL, IN_IL> in_h_re, in_h_im ;
	int i_minus_D ;
 
	//#pragma HLS DATAFLOW
	for(int i = 0; i < FFT_LEN + pilot_width; i++) {
		// pragma
		//#pragma HLS PIPELINE II=1 rewind
		// parameter
		i_minus_D = i - pilot_width ;
		// read data
		if(i >= pilot_width) {
			if(i % pilot_width == 0) {
				last_pilot_re = data[i % pilot_width][0] ;
				last_pilot_im = data[i % pilot_width][1] ;
			} else {
				last_data_re = data[i % pilot_width][0] ;
				last_data_im = data[i % pilot_width][1] ;
			}
		}
   if(i < FFT_LEN){
		in_re = in[0].read() ;
		in_im = in[1].read() ;
		if(i < FFT_LEN) {
			data[i % pilot_width][0] = in_re ;
			data[i % pilot_width][1] = in_im ;
		}
		if(i == FFT_LEN-2*pilot_width) {
			zero_re = in_re ;
			zero_im = in_im ;      
		}
		if(i % pilot_width == 0) {
			now_pilot_re = in_re ;
			now_pilot_im = in_im ;
		}
   }
		// output data
		if(i >= pilot_width) {
			  if(i_minus_D % pilot_width == 0) {
				out[0].write(last_pilot_re) ;
				out[1].write(last_pilot_im) ;
	    	} else {
				left_ratio = (ap_fixed<IN_WL,IN_IL>)(pilot_width - i_minus_D % pilot_width) / (ap_fixed<IN_WL,IN_IL>)(pilot_width) ;
        right_ratio = (ap_fixed<IN_WL,IN_IL>)(i_minus_D % pilot_width) / (ap_fixed<IN_WL,IN_IL>)(pilot_width) ;
	        	if(i < FFT_LEN) {
	            	in_h_re = left_ratio * last_pilot_re + right_ratio * now_pilot_re ;
	            	in_h_im = left_ratio * last_pilot_im + right_ratio * now_pilot_im ;
	        	} else {
                alpha = (i-(FFT_LEN-pilot_width))/pilot_width;
	            	//in_h_re = left_ratio * last_pilot_re + right_ratio * zero_re ;
	            	//in_h_im = left_ratio * last_pilot_im + right_ratio * zero_im ;
                in_h_re = zero_re + alpha*(now_pilot_re-zero_re) ;
	            	in_h_im = zero_im + alpha*(now_pilot_im-zero_im) ;
				    }
				    out[0].write((last_data_re * in_h_re + last_data_im * in_h_im) / (in_h_re * in_h_re + in_h_im * in_h_im)) ;
	          out[1].write((last_data_im * in_h_re - last_data_re * in_h_im) / (in_h_re * in_h_re + in_h_im * in_h_im)) ;
	    	}
		}    
	}
}
