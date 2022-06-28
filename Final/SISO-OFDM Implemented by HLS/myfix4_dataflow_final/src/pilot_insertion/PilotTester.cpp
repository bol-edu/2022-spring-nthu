#define times 2
#include "pilot_insertion.h"

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;
	ap_fixed<IN_WL, IN_IL> in_r, in_i;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_input_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_input_imag;
	ap_fixed<IN_WL, IN_IL> out_r;
	ap_fixed<IN_WL, IN_IL> out_i;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_output_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_output_imag;

	srand(time(NULL));

	cout << ">> Start test!" << endl;
	cout << "Pilot Insertion" << endl;
	cout << "------------------------" << endl;

	for(i = 0; i < 56*times; i++) {
		in_r = rand()/(RAND_MAX+1.0);
		in_i = rand()/(RAND_MAX+1.0);
		cout << "in_r = " << in_r << ", in_i = " << in_i <<endl;
		data_input_real.write(in_r);
		data_input_imag.write(in_i);
	}
	cout << "------------------------" << endl;
	cout << endl;	
	for(i = 0; i < 56*times; i++){
		pilot_insertion(data_input_real, data_input_imag, data_output_real, data_output_imag);
	}
  cout << "Output Check" << endl;
	cout << "------------------------" << endl;
	for(j = 0; j < 64*times; j++) {
		out_r = data_output_real.read();
		out_i = data_output_imag.read();
		cout << "out_r = " << out_r << ", out_i = " << out_i <<endl;
	}
	cout << "------------------------" << endl;
	return 0;
}
