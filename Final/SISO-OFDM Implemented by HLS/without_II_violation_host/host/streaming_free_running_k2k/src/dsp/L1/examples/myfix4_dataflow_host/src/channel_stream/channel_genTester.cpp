#include "channel_gen.h"

using namespace std;

int main(int argc, char *argv[])
{
	int t;
	hls::stream<ap_fixed<IN_WL,IN_IL>> in_r;
	hls::stream<ap_fixed<IN_WL,IN_IL>> in_i;
	hls::stream<ap_fixed<IN_WL,IN_IL>> out_r;
	hls::stream<ap_fixed<IN_WL,IN_IL>> out_i;

	srand(time(NULL));

	cout << ">> Start test!" << endl;
	cout << "------------------------" << endl;

	for(t = 0; t < 20; t++) {
		in_r.write((ap_fixed<IN_WL,IN_IL>)(2*((float)rand()/(RAND_MAX + 1.0)) - 1.0));
		in_i.write((ap_fixed<IN_WL,IN_IL>)(2*((float)rand()/(RAND_MAX + 1.0)) - 1.0)); 
  }
	for(t = 0; t < 20; t++) {    
    channel_gen(in_r, in_i, out_r, out_i);
		//out_r.write(in_r.read());
    //out_i.write(in_i.read());
    cout << "ans = " << out_r.read() << " + " << out_i.read() << "j" << endl;
	}
	cout << "------------------------" << endl;

	return 0;
}
