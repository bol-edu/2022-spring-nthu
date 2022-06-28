#include "data2pic.h"

void deQAM(hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_imag, hls::stream<ap_uint<QAM_unsigned_bit>>& QAM_out)
{
#pragma HLS INTERFACE ap_fifo port=QAM_out
#pragma HLS INTERFACE ap_fifo port=data_in_real
#pragma HLS INTERFACE ap_fifo port=data_in_imag
//#pragma HLS INTERFACE ap_ctrl_none port=return

	ap_int<2> sign_r; //+1 and -1
  ap_int<2> sign_i; //+1 and -1
	ap_uint<4> i; //max=sqrt(QAM)=8
  ap_uint<4> r; //max=8
	ap_int<4> v[2]; //max=7 and -7
	ap_int<QAM_unsigned_bit> v_out = 0;
	T_in read_in;

	read_in.real(data_in_real.read());
	read_in.imag(data_in_imag.read());

	if (read_in.real()>=(ap_fixed<IN_WL,IN_IL>)0){
		sign_r = 1;
    read_in.real(read_in.real());
	}
	else{
		sign_r = -1;
    read_in.real((read_in.real())*(ap_fixed<IN_WL,IN_IL>)(-1));
	}
 
	v[0] = (ap_int<4>)sign_r;
 
	for(i=2;i<sqrt(qam_num);i=i+2){
		if(read_in.real()>=(ap_fixed<IN_WL,IN_IL>)i){
			v[0] = v[0] + (ap_int<4>)(sign_r*2);
		}
		else{
			v[0] = v[0];
		}
	}
	if (read_in.imag()>=(ap_fixed<IN_WL,IN_IL>)0){
		sign_i = 1.0;  
    read_in.imag(read_in.imag());
	}
	else{
		sign_i = (ap_fixed<IN_WL,IN_IL>)-1;
    read_in.imag((read_in.imag())*(ap_fixed<IN_WL,IN_IL>)(-1));
	}
 
	v[1] = (ap_int<4>)sign_i;
  
	for(i=2;i<sqrt(qam_num);i=i+2){
		if(read_in.imag()>=(ap_fixed<IN_WL,IN_IL>)i){
			v[1] = v[1] + (ap_int<4>)(sign_i*2);
		}
		else{
			v[1] = v[1];
		}
	}

	if(qam_num==16){
		for(i=0;i<2;i++){
			if(i==0){
				r = 4;
			}
			else{
				r = 1;
			}
			switch(v[i]){
			case -3:
				v_out = v_out;
				break;
			case -1:
				v_out = v_out+r*1;
				break;
			case 1:
				v_out = v_out+r*3;
				break;
			default:
				v_out = v_out+r*2;
				break;
			}
		}
	}
	else{
		for(i=0;i<2;i++){
			if(i==0){
				r = 8;
			}
			else{
				r = 1;
			}
			switch(v[i]){
			case -7:
				v_out = v_out;
				break;
			case -5:
				v_out = v_out+r*1;
				break;
			case -3:
				v_out = v_out+r*3;
				break;
			case -1:
				v_out = v_out+r*2;
				break;
			case 1:
				v_out = v_out+r*6;
				break;
			case 3:
				v_out = v_out+r*7;
				break;
			case 5:
				v_out = v_out+r*5;
				break;
			default:
				v_out = v_out+r*4;
				break;
			}
		}
	}

	QAM_out.write(v_out);

	return;
}
