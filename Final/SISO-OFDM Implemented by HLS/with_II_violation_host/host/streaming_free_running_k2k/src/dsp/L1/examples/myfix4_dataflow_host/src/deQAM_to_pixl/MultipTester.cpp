#define DATA_LENGTH 1024
#define IN_WL 16
#define IN_IL 4

#include "data2pic.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <complex>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

using namespace std;

int main(int argc, char *argv[])
{
	int i;
	ap_fixed<IN_WL,IN_IL> real_part;
  ap_fixed<IN_WL,IN_IL> imag_part;
	hls::stream<ap_uint<pixl_bit>> pic_out;
	hls::stream<ap_fixed<IN_WL,IN_IL>> data_input_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_input_imag;

	cout << ">> Start test!" << endl;
	cout << "16QAM" << endl;
	cout << "------------------------" << endl;

	for(i = 0; i < 10; i++) {
		real_part = (ap_fixed<IN_WL,IN_IL>)(8*(rand()/(RAND_MAX+ 1.0))- 4);
		imag_part = (ap_fixed<IN_WL,IN_IL>)(8*(rand()/(RAND_MAX+ 1.0))- 4);
    cout << "real = " << real_part << endl;
    cout << "imag = " << imag_part << endl;
		data_input_real.write(real_part);
		data_input_imag.write(imag_part);		
		data_out_main(data_input_real, data_input_imag, pic_out);
	}
	for(i=0;i<5;i++){
		cout << pic_out.read() <<endl;
	}
	cout << "------------------------" << endl;
	cout << endl;
/*
	cout << "64QAM" << endl;
	cout << "------------------------" << endl;
	for(i = 1; i < 30; i++) {
			real_part = (float)10*(rand()/(RAND_MAX+ 1.0))- 5;
			imag_part = (float)10*(rand()/(RAND_MAX+ 1.0))- 5;
			data_input_real.write(real_part);
			data_input_imag.write(imag_part);
			printf("r=%f, i=%f \n", real_part, imag_part);
			data_out_main(data_input_real, data_input_imag, pic_out);
		}
		for(i=1;i<10;i++){
			cout << pic_out.read() <<endl;
		}
		cout << "------------------------" << endl;
*/
	return 0;
}
