#include <ap_int.h>
#include <math.h>
#include <iostream>
#include "normal_rng.hpp"

//#include <ap_fixed.h>


//who is dc.h???

extern "C"{
#include "dc.h"
}



#define SAMPLE_NUM (1 << 4)

extern "C" void normal_rng(const int num,
                    //const int preRun,
                    ap_uint<32> SEED,
                    double result_randn_Re[SAMPLE_NUM],
                    double result_randn_Im[SAMPLE_NUM]
                    );

                    //ap_fixed<16,8>  output_randn[SAMPLE_NUM]);
                    //ap_uint<16>  output_randn[SAMPLE_NUM]);

int main() {

    const int sampleNum = SAMPLE_NUM;
    //const int preRun = 0;

    // Get rng init parameters
    /*
     * mt_struct* mts[1];
    init_dc(4172);
    mts[0] = get_mt_parameter_id(32, 2203, 0);

    sgenrand_mt(1234, mts[0]);
    */
    ap_uint<32> SEED;
    SEED = 10;
    
    //result_randn_Re 和 result_randn_Im 是這裡的scope的參數
    //output_randn_Re 和 output_randn_Im 是原本function中的名稱
    double result_randn_Re[sampleNum];
    double result_randn_Im[sampleNum];
  

   normal_rng(sampleNum, SEED, result_randn_Re,result_randn_Im);
    std::cout<<"Real\n"<<std::endl;
    for (int i = 0; i < sampleNum; i++) {
	std::cout<<" output_randn["<< i <<"]: "<<result_randn_Re[i]<<std::endl;
    }

    std::cout<<"\n"<<std::endl;
    std::cout<<"Imag\n"<<std::endl;
    for (int i = 0; i < sampleNum; i++) {
    std::cout<<" output_randn["<< i <<"]: "<<result_randn_Im[i]<<std::endl;
    }


	return 0;
        // std::cout << i << " : " << resultMT19937BoxMuller[i] << " ,sum: " << avgMT19937BoxMuller << std::endl;
    }
























