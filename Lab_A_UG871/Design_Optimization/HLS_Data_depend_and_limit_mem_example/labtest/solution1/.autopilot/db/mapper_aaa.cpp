#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void aaa(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_aaa_hw(volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_a_2, volatile void * __xlx_apatb_param_a_3, volatile void * __xlx_apatb_param_a_4, volatile void * __xlx_apatb_param_a_5, volatile void * __xlx_apatb_param_a_6, volatile void * __xlx_apatb_param_a_7, volatile void * __xlx_apatb_param_a_8, volatile void * __xlx_apatb_param_a_9, volatile void * __xlx_apatb_param_a_10, volatile void * __xlx_apatb_param_a_11, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_b_2, volatile void * __xlx_apatb_param_b_3, volatile void * __xlx_apatb_param_b_4, volatile void * __xlx_apatb_param_b_5, volatile void * __xlx_apatb_param_b_6, volatile void * __xlx_apatb_param_b_7, volatile void * __xlx_apatb_param_b_8, volatile void * __xlx_apatb_param_b_9, volatile void * __xlx_apatb_param_b_10, volatile void * __xlx_apatb_param_b_11, volatile void * __xlx_apatb_param_r_0, volatile void * __xlx_apatb_param_r_1, volatile void * __xlx_apatb_param_r_2, volatile void * __xlx_apatb_param_r_3, volatile void * __xlx_apatb_param_r_4, volatile void * __xlx_apatb_param_r_5, volatile void * __xlx_apatb_param_r_6, volatile void * __xlx_apatb_param_r_7, volatile void * __xlx_apatb_param_r_8, volatile void * __xlx_apatb_param_r_9, volatile void * __xlx_apatb_param_r_10, volatile void * __xlx_apatb_param_r_11) {
  // DUT call
  aaa(__xlx_apatb_param_a_0, __xlx_apatb_param_a_1, __xlx_apatb_param_a_2, __xlx_apatb_param_a_3, __xlx_apatb_param_a_4, __xlx_apatb_param_a_5, __xlx_apatb_param_a_6, __xlx_apatb_param_a_7, __xlx_apatb_param_a_8, __xlx_apatb_param_a_9, __xlx_apatb_param_a_10, __xlx_apatb_param_a_11, __xlx_apatb_param_b_0, __xlx_apatb_param_b_1, __xlx_apatb_param_b_2, __xlx_apatb_param_b_3, __xlx_apatb_param_b_4, __xlx_apatb_param_b_5, __xlx_apatb_param_b_6, __xlx_apatb_param_b_7, __xlx_apatb_param_b_8, __xlx_apatb_param_b_9, __xlx_apatb_param_b_10, __xlx_apatb_param_b_11, __xlx_apatb_param_r_0, __xlx_apatb_param_r_1, __xlx_apatb_param_r_2, __xlx_apatb_param_r_3, __xlx_apatb_param_r_4, __xlx_apatb_param_r_5, __xlx_apatb_param_r_6, __xlx_apatb_param_r_7, __xlx_apatb_param_r_8, __xlx_apatb_param_r_9, __xlx_apatb_param_r_10, __xlx_apatb_param_r_11);
}
