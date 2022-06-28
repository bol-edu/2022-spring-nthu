#include <ap_int.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include "normal_rng.hpp"
#include "MIMO.h"
#include "dc.h"

using namespace std;

int main(){

char plain[17] = "hello_world_aes_";
int i, j;


int SNR = 20;
FIXED_LEN SNR_IN = 1 / sqrt(2 * SNR);


FILE *fp;
fp = fopen("/home/willy/HLS_AES_MIMO/AES_CHANNEL_KBEST_ver5/PATTERN/RGB.txt", "r");
fstream fo;
fo.open("/home/willy/HLS_AES_MIMO/AES_CHANNEL_KBEST_ver5/PATTERN/RGB_output.txt", ios::out);

int file_temp[32];
//ap_uint<8> in_data[16];
//ap_uint<8> out_data[16];
hls::stream<ap_uint<8>> in_data;
hls::stream<ap_uint<8>> out_data;



for(i=0; i<32; i++){
	fscanf(fp, "%d", &file_temp[i]);
}

for(i=0; i<16; i++){
	in_data << file_temp[i*2] + 16 * file_temp[i*2+1];
}


TOP(in_data, out_data, SNR_IN);
ap_uint<8> out_temp;
for(i=0; i<16; i++){
	out_temp = out_data.read();
	fo << out_temp % 16 << endl;
	fo << out_temp / 16 << endl;

}




fclose(fp);
fo.close();

}
