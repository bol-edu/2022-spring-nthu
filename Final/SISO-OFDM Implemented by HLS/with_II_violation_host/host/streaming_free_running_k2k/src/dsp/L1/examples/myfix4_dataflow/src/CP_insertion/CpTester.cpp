#include "Cp_insertion.h"
#define times 2

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;	
	ap_fixed<IN_WL, IN_IL> in_r;
	ap_fixed<IN_WL, IN_IL> in_i;
  ap_fixed<IN_WL, IN_IL> out_r;
	ap_fixed<IN_WL, IN_IL> out_i;
	hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN> data_input_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>, FFT_LEN> data_input_imag;
	hls::stream<ap_fixed<IN_WL, IN_IL>, (FFT_LEN+CP_length)> data_output_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>, (FFT_LEN+CP_length)> data_output_imag;

	srand(time(NULL));

	cout << ">> Start test!" << endl;
	cout << "CP Insertion" << endl;
	cout << "------------------------" << endl;
 for(int count=0;count<times;count++){
 cout << count << endl;
	for(i = 0; i < FFT_LEN; i++){
		in_r = rand()/(RAND_MAX+1.0);
		in_i = rand()/(RAND_MAX+1.0);
    data_input_real.write(in_r);
	  data_input_imag.write(in_i);
    Cp_insertion(data_input_real, data_input_imag, data_output_real, data_output_imag);
	}
	
	for(i = 0; i < (FFT_LEN+CP_length); i++){
		out_r = data_output_real.read();
		out_i = data_output_imag.read();
		cout << "i = " << i << ", out_r = " << out_r << ", out_i = " << out_i <<endl;
	}
}
	cout << "------------------------" << endl;
	return 0;
}
