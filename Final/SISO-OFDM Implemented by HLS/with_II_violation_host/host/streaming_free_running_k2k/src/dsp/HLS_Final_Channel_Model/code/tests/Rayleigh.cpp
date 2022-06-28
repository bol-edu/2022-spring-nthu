#include <ap_int.h>
#include "xf_fintech/rng.hpp"
#include <math.h>
#include <iostream>
#include "normal_rng.hpp"
using std::fixed;
using std::right; 
//using std::setw;


extern "C" void Rayleigh(
 			    ap_uint<32> SEED,
                double xr[size_H],
                double xi[size_H],
                double H_rvd [size_H*2][size_H*2],
                double H_mul_x[2*size_H]
			   ){

/*
int main(){
*/
    //int SEED =15;
	xf::fintech::MT19937IcnRng<double> rngMT19937ICN;
	rngMT19937ICN.seedInitialization(SEED);

    int i,j;
    //int size_H = sqrt(SAMPLE_NUM);

    //05/21 以前的版本，如要測試需使用v47以前的版本
    /*
    for(j=0; j<num; j++){
        Hr[j] = rngMT19937ICN.next() / sqrt(2);
        Hi[j] = rngMT19937ICN.next() / sqrt(2);
    }
    */
    double Hr[size_H][size_H];
    double Hi[size_H][size_H];

    for(i=0; i<size_H; i++){
        for(j=0; j<size_H; j++){
            Hr[i][j] = rngMT19937ICN.next() / sqrt(2);
            Hi[i][j] = rngMT19937ICN.next() / sqrt(2);

        }
    }
/*
//print Hr & Hi---------------------------
        std::cout<< "---Hr---" <<std::endl;
        for(i=0; i<size_H; i++){
            for(j=0; j<size_H; j++){
            std::cout<<right<< setw(10) <<fixed<< Hr[i][j]<<" ";
            }
            std::cout<<std::endl;
        }
        std::cout<< "---Hi---" <<std::endl;
        for(i=0; i<size_H; i++){
            for(j=0; j<size_H; j++){
            std::cout<<right<< setw(10) <<fixed<< Hi[i][j]<<" ";
            }
            std::cout<<std::endl;
        }
//print end------------------------------
*/


//***************變成實數對稱擺放**************
    //double H_rvd [size_H*2][size_H*2]; //8x8

    for(i=0; i<size_H; i++){
        for(j=0; j<size_H; j++){
            // 
            // | R -I |
            // | I  R |
            // 

            H_rvd[2*i][2*j]     =  Hr[i][j];
            H_rvd[2*i][2*j+1]   = -Hi[i][j];
            H_rvd[2*i+1][2*j]   =  Hi[i][j];
            H_rvd[2*i+1][2*j+1] =  Hr[i][j];

        }
    }
//************************END******************
/*
//print H_rvd

    std::cout<< "---H_rvd---" <<std::endl;
    for(i=0; i<size_H*2; i++){
        for(j=0; j<size_H*2; j++){
            std::cout<<right<< setw(10) <<fixed<< H_rvd[i][j]<<" ";
        }
        std::cout<<std::endl;
    } 
*/
////////////////////////////////////////////////////////
//排x => [xr1 xi1 xr2 xi2 ...]^T
    double x_rvd[2*size_H];

    for (i=0; i<size_H; i++){
        x_rvd[2*i]   = xr[i];
        x_rvd[2*i+1] = xi[i];
    }
/*
    std::cout<< "---x_rvd---" <<std::endl;
    for (i=0; i<2*size_H; i++){
       std::cout<<right<< setw(10) <<fixed<< x_rvd[i]<<" ";
    }
    std::cout<<std::endl;
*/
////////////////////////////////////////////////////////

//**************** H_mul_x *******************************


    for(i=0; i<2*size_H; i++){
        H_mul_x[i]=0; //因為出現莫名error，nan，強制初始化0。
        for(j=0; j<2*size_H; j++){
            //tmp 累加優化 05/22
            H_mul_x[i] = H_mul_x[i] +  H_rvd[i][j] *  x_rvd[j];

            printf("H_rvd[%d][%d] = %f", i, j, H_rvd[i][j]); printf("\n");
            printf("x_rvd[%d] = %f", i, x_rvd[i]); printf("\n");
            printf("H_mul_x[%d] = %f", i, H_mul_x[i]); printf("\n");
            
        }
        printf("\n");
    }
/*
    //print H_mul_x
    std::cout<< "---H_mul_x---" <<std::endl;
    for(i=0; i<2*size_H; i++){
        std::cout<<right<< setw(10) <<fixed<< H_mul_x[i]<<" ";
    }
        std::cout<<std::endl;
*/
//**************** H_mul_x END*******************************

}