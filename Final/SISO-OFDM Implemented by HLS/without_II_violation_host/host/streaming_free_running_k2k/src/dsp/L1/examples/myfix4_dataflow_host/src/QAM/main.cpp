#include <iostream>
#include "qam.hpp"
#include <math.h>

using namespace std;

int main(int argc, char *argv[]){
  //int i;
	int j;
  //int incrememt = 0;
  hls::stream<ap_uint<QAM_unsigned_bit>> i;
  hls::stream<T_in_int> out_test;  
	//T_in_int out_test;
 
	//char buffer[8] = {0};
  
  cout << ">> Start test!" << endl;
  /*
  cout << ">> input load!" << endl;
  
  cout << ">> Read picture data" << endl;
	FILE * pFile;
	char path[] = "pic_data.txt";
	pFile = fopen( path,"r");
	int data;
	//i=0;
	while(fscanf (pFile, "%d", &data) != EOF){
		//i++;
    cout << data<< "\n";
	}
  */
  
	for(j=0; j<16; j++){
    i.write((ap_int<QAM_unsigned_bit>)j);
		QAM(i, out_test);
		cout << j << "  " << out_test.read() << endl;
	}  
	cout << ">> Test Finished!" << endl;
	return 0;
}
