#include "iostream"
#include "hls_stream.h"
#include "equalizer.hpp"
#include <ap_fixed.h>

using namespace std ;

#define IN_WL 20
#define IN_IL 5

typedef ap_fixed<IN_WL, IN_IL> dt2 ;

int main(int argc, char** argv) {
	const int N = 64 ;
	const int D = 8 ;
    hls::stream<dt2> in[2] ;
    hls::stream<dt2> out[2] ;
    dt2 input_data[N][2] ;
    dt2 output_data[N][2] ;
    dt2 nothing_reg[2] ;
    for(int i = 0; i < N; i++) {
    	if(i % D == 0) {
    		input_data[i][0] = 2 ;
    		input_data[i][1] = 0 ;
    	} else {
    		input_data[i][0] = 3 ;
    		input_data[i][1] = 4 ;
    	}
    }
    cout << "Simulation Results : " << endl ;
    for(int i = 0; i < N; i++) {
        cout << "input_data[" << i << "][0] = " << input_data[i][0] << endl ;
        cout << "input_data[" << i << "][1] = " << input_data[i][1] << endl ;
    }
    for(int i = 0; i < 10; i++) {
    	for (int j = 0; j < N + D; j++) {
    		if(j < N) {
        	    in[0].write(input_data[j][0]) ;
        	    in[1].write(input_data[j][1]) ;
    		} else {
        	    in[0].write(0) ;
        	    in[1].write(0) ;
    		}
    	}
    	equalizer(in, out) ;
    	for (int j = 0; j < N + D; j++) {
    		if(j >= D) {
        	    output_data[j - D][0] = out[0].read() ;
        	    output_data[j - D][1] = out[1].read() ;
    		} else {
    			nothing_reg[0] = out[0].read() ;
    			nothing_reg[1] = out[1].read() ;
    		}
    	}
    	if(i == 0) {
    		cout << "When i is 0, " << endl ;
    	    for(int j = 0; j < N; j++) {
    	        cout << "output_data[" << j << "][0] = " << output_data[j][0] << endl ;
    	        cout << "output_data[" << j << "][1] = " << output_data[j][1] << endl ;
    	    }
    	}
    	if(i == 5) {
    		cout << "When i is 5, " << endl ;
    	    for(int j = 0; j < N; j++) {
    	        cout << "output_data[" << j << "][0] = " << output_data[j][0] << endl ;
    	        cout << "output_data[" << j << "][1] = " << output_data[j][1] << endl ;
    	    }
    	}
    }
    return 0 ;
}
