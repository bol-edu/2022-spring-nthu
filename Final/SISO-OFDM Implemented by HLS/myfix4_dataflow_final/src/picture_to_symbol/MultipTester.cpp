#define DATA_LENGTH 1024
#include <iostream>
#include "pixl_to_symbol.h"

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;
	hls::stream<ap_uint<QAM_unsigned_bit>> n32Multip;
  hls::stream<ap_uint<pixl_bit>> data_in;

	cout << ">> Read picture data" << endl;
	FILE * pFile;
	char path[] = "pic_data.txt";
	pFile = fopen( path,"r");
	//int16 data[DATA_LENGTH];
  ap_uint<pixl_bit> data[DATA_LENGTH];
	i=0;
	while(fscanf (pFile, "%d", &data[i]) != EOF){
		i++;
	}

	cout << ">> Start test!" << endl;
	cout << "16QAM" << endl;
	cout << "------------------------" << endl;
	for(i = 0; i < DATA_LENGTH; i++) {
    data_in.write((ap_uint<pixl_bit>)data[i]);
		pixl_to_symbol(data_in, n32Multip);
	}
	for(i = 0; i < DATA_LENGTH*2; i++) {
		cout <<  n32Multip.read() << endl;
	}
	cout << "------------------------" << endl;
/*
	cout << "64QAM" << endl;
	cout << "------------------------" << endl;
	for(i = 0; i < DATA_LENGTH; i++) {
   data_in.write(data[i]);
		pixl_to_symbol(data_in, n32Multip);
	}
	for(i = 0; i < DATA_LENGTH; i++) {
		cout <<  n32Multip.read() << endl;
	}
	cout << "------------------------" << endl;
*/
	return 0;
}
