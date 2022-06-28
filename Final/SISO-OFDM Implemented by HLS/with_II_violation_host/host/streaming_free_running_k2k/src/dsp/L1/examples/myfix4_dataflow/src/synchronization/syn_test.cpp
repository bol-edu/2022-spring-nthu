#include "synchronization.h"

using namespace std;

int main(int argc, char *argv[])
{

  int i;
	ap_fixed<IN_WL,IN_IL> real_part;
  ap_fixed<IN_WL,IN_IL> imag_part;
	hls::stream<ap_fixed<IN_WL,IN_IL>> data_input_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_input_imag;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_output_real;
  hls::stream<ap_fixed<IN_WL,IN_IL>> data_output_imag;
  hls::stream<ap_uint<8>> out_index;

	cout << ">> Start test!" << endl;
	cout << "------------------------" << endl;

	for(i = 0; i < 160; i++) {
		real_part = (ap_fixed<IN_WL,IN_IL>)(8*(rand()/(RAND_MAX+ 1.0))- 4);
		imag_part = (ap_fixed<IN_WL,IN_IL>)(8*(rand()/(RAND_MAX+ 1.0))- 4);
    cout << "real = " << real_part << " imag = " << imag_part << endl;
		data_input_real.write(real_part);
		data_input_imag.write(imag_part);		
		synchronization(data_input_real, data_input_imag, data_output_real, data_output_imag, out_index);
	}
	for(i = 0; i < 80; i++){
		cout << "r = " << data_output_real.read() << " i = " << data_output_imag.read() <<endl;
    cout << "peak index" << (int)out_index.read() << endl;
	}  
	cout << "------------------------" << endl;
	return 0;
}
