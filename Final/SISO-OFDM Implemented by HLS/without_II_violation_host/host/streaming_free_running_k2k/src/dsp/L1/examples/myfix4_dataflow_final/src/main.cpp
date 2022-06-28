#include "top_module.hpp"

using namespace std;

int main(int argc, char *argv[]){
  int i;
	int j;
  ap_uint<pixl_bit> out;
  hls::stream<ap_uint<pixl_bit>> data_in;
  hls::stream<ap_uint<pixl_bit>> out_test;  
  //int incrememt = 0;
	//T_in_int out_test;
  
  
  cout << ">> Test Start" << endl;
  cout << ">> Load Input" << endl; 
  cout << ">> Read Data" << endl;
	FILE * pFile;
	char path[] = "pic_data.txt";
	pFile = fopen( path,"r");
	ap_uint<pixl_bit> data[7168];
	i=0;
	while(fscanf (pFile, "%d", &data[i]) != EOF){
		i++;
	}
  FILE * outfp;
  outfp=fopen("../../../../src/output_result/out.txt","w");
  int data_count=0;
  cout << ">> Start Calculation" << endl;
  for(j=0; j<(DATA_LENGTH/((FFT_LEN-(FFT_LEN/pilot_width))/SSR)); j++){
	//for(j=0; j<(DATA_LENGTH/(FFT_LEN/SSR)); j++){
    //for(int k=0;k<(FFT_LEN/SSR);k++){
    for(int k=0;k<((FFT_LEN-(FFT_LEN/pilot_width))/SSR);k++){
    //printf("%d\t", j*(FFT_LEN-(FFT_LEN/pilot_width))+k);
      data_in.write((ap_uint<pixl_bit>)data[data_count]);
      data_count++;
    }
    top_module(data_in, out_test);    
	}  
  int pixl_out[DATA_LENGTH];
  for(int t=0;t<DATA_LENGTH;t++){
    out = out_test.read();
    //cout << t+1 << "  " << out << endl;
    pixl_out[t] = (int)out;
    //fprintf(outfp,"%d\n",(int)out);
  }
  //for(j=0; j<DATA_LENGTH*2; j++){
  //  cout << j << "  " << out_test.read() << endl;
	//}  	
  fclose (pFile);
	fclose (outfp); 
  cout << ">> Calculation Finished!" << endl;
  
  cout << ">> Pixl_Error_Rate" << endl;
 
  int Pixl_ERROR = 0;
  int PixlER;
  for (PixlER = 0 ; PixlER < DATA_LENGTH ; PixlER++){
    if(data[PixlER] != pixl_out[PixlER]){
        Pixl_ERROR++;
    }
  }
  cout << (float)Pixl_ERROR*100.0/(float)DATA_LENGTH << "%" <<endl;
  
  cout << ">> Symbol_Error_Rate" << endl;
  int Symbol_ERROR = 0;
  int SER;
  for (SER = 0 ; SER < DATA_LENGTH ; SER++){
    if((data[SER]/16) != (pixl_out[SER]/16)){
        Symbol_ERROR++;
    }
    if((data[SER]%16) != (pixl_out[SER]%16)){
        Symbol_ERROR++;
    }
  }
  cout << (float)Symbol_ERROR*100.0/(float)(DATA_LENGTH*2) << "%" <<endl;
  
  cout << ">> Bit_Error_Rate" << endl;
  int Bit_ERROR = 0;
  int BER;
  for (BER = 0 ; BER < DATA_LENGTH ; BER++){
    if((data[BER]/128) != (pixl_out[BER]/128)){
        Bit_ERROR++;
    }
    if(((data[BER]/64)%2) != ((pixl_out[BER]/64)%2)){
        Bit_ERROR++;
    }
    if(((data[BER]/32)%2) != ((pixl_out[BER]/32)%2)){
        Bit_ERROR++;
    }
    if(((data[BER]/16)%2) != ((pixl_out[BER]/16)%2)){
        Bit_ERROR++;
    }
    if(((data[BER]/8)%2) != ((pixl_out[BER]/8)%2)){
        Bit_ERROR++;
    }
    if(((data[BER]/4)%2) != ((pixl_out[BER]/4)%2)){
        Bit_ERROR++;
    }
    if(((data[BER]/2)%2) != ((pixl_out[BER]/2)%2)){
        Bit_ERROR++;
    }
    if((data[BER]%2) != (pixl_out[BER]%2)){
        Bit_ERROR++;
    }
  }
  cout << (float)Bit_ERROR*100.0/(float)(DATA_LENGTH*8) << "%" <<endl; 
  return 0;
}
