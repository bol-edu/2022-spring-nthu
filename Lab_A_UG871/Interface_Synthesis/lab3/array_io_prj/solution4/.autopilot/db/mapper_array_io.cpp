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
extern "C" void array_io(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_array_io_hw(volatile void * __xlx_apatb_param_d_o_0, volatile void * __xlx_apatb_param_d_o_1, volatile void * __xlx_apatb_param_d_o_2, volatile void * __xlx_apatb_param_d_o_3, volatile void * __xlx_apatb_param_d_o_4, volatile void * __xlx_apatb_param_d_o_5, volatile void * __xlx_apatb_param_d_o_6, volatile void * __xlx_apatb_param_d_o_7, volatile void * __xlx_apatb_param_d_o_8, volatile void * __xlx_apatb_param_d_o_9, volatile void * __xlx_apatb_param_d_o_10, volatile void * __xlx_apatb_param_d_o_11, volatile void * __xlx_apatb_param_d_o_12, volatile void * __xlx_apatb_param_d_o_13, volatile void * __xlx_apatb_param_d_o_14, volatile void * __xlx_apatb_param_d_o_15, volatile void * __xlx_apatb_param_d_o_16, volatile void * __xlx_apatb_param_d_o_17, volatile void * __xlx_apatb_param_d_o_18, volatile void * __xlx_apatb_param_d_o_19, volatile void * __xlx_apatb_param_d_o_20, volatile void * __xlx_apatb_param_d_o_21, volatile void * __xlx_apatb_param_d_o_22, volatile void * __xlx_apatb_param_d_o_23, volatile void * __xlx_apatb_param_d_o_24, volatile void * __xlx_apatb_param_d_o_25, volatile void * __xlx_apatb_param_d_o_26, volatile void * __xlx_apatb_param_d_o_27, volatile void * __xlx_apatb_param_d_o_28, volatile void * __xlx_apatb_param_d_o_29, volatile void * __xlx_apatb_param_d_o_30, volatile void * __xlx_apatb_param_d_o_31, volatile void * __xlx_apatb_param_d_i_0, volatile void * __xlx_apatb_param_d_i_1, volatile void * __xlx_apatb_param_d_i_2, volatile void * __xlx_apatb_param_d_i_3, volatile void * __xlx_apatb_param_d_i_4, volatile void * __xlx_apatb_param_d_i_5, volatile void * __xlx_apatb_param_d_i_6, volatile void * __xlx_apatb_param_d_i_7, volatile void * __xlx_apatb_param_d_i_8, volatile void * __xlx_apatb_param_d_i_9, volatile void * __xlx_apatb_param_d_i_10, volatile void * __xlx_apatb_param_d_i_11, volatile void * __xlx_apatb_param_d_i_12, volatile void * __xlx_apatb_param_d_i_13, volatile void * __xlx_apatb_param_d_i_14, volatile void * __xlx_apatb_param_d_i_15, volatile void * __xlx_apatb_param_d_i_16, volatile void * __xlx_apatb_param_d_i_17, volatile void * __xlx_apatb_param_d_i_18, volatile void * __xlx_apatb_param_d_i_19, volatile void * __xlx_apatb_param_d_i_20, volatile void * __xlx_apatb_param_d_i_21, volatile void * __xlx_apatb_param_d_i_22, volatile void * __xlx_apatb_param_d_i_23, volatile void * __xlx_apatb_param_d_i_24, volatile void * __xlx_apatb_param_d_i_25, volatile void * __xlx_apatb_param_d_i_26, volatile void * __xlx_apatb_param_d_i_27, volatile void * __xlx_apatb_param_d_i_28, volatile void * __xlx_apatb_param_d_i_29, volatile void * __xlx_apatb_param_d_i_30, volatile void * __xlx_apatb_param_d_i_31) {
  // DUT call
  array_io(__xlx_apatb_param_d_o_0, __xlx_apatb_param_d_o_1, __xlx_apatb_param_d_o_2, __xlx_apatb_param_d_o_3, __xlx_apatb_param_d_o_4, __xlx_apatb_param_d_o_5, __xlx_apatb_param_d_o_6, __xlx_apatb_param_d_o_7, __xlx_apatb_param_d_o_8, __xlx_apatb_param_d_o_9, __xlx_apatb_param_d_o_10, __xlx_apatb_param_d_o_11, __xlx_apatb_param_d_o_12, __xlx_apatb_param_d_o_13, __xlx_apatb_param_d_o_14, __xlx_apatb_param_d_o_15, __xlx_apatb_param_d_o_16, __xlx_apatb_param_d_o_17, __xlx_apatb_param_d_o_18, __xlx_apatb_param_d_o_19, __xlx_apatb_param_d_o_20, __xlx_apatb_param_d_o_21, __xlx_apatb_param_d_o_22, __xlx_apatb_param_d_o_23, __xlx_apatb_param_d_o_24, __xlx_apatb_param_d_o_25, __xlx_apatb_param_d_o_26, __xlx_apatb_param_d_o_27, __xlx_apatb_param_d_o_28, __xlx_apatb_param_d_o_29, __xlx_apatb_param_d_o_30, __xlx_apatb_param_d_o_31, __xlx_apatb_param_d_i_0, __xlx_apatb_param_d_i_1, __xlx_apatb_param_d_i_2, __xlx_apatb_param_d_i_3, __xlx_apatb_param_d_i_4, __xlx_apatb_param_d_i_5, __xlx_apatb_param_d_i_6, __xlx_apatb_param_d_i_7, __xlx_apatb_param_d_i_8, __xlx_apatb_param_d_i_9, __xlx_apatb_param_d_i_10, __xlx_apatb_param_d_i_11, __xlx_apatb_param_d_i_12, __xlx_apatb_param_d_i_13, __xlx_apatb_param_d_i_14, __xlx_apatb_param_d_i_15, __xlx_apatb_param_d_i_16, __xlx_apatb_param_d_i_17, __xlx_apatb_param_d_i_18, __xlx_apatb_param_d_i_19, __xlx_apatb_param_d_i_20, __xlx_apatb_param_d_i_21, __xlx_apatb_param_d_i_22, __xlx_apatb_param_d_i_23, __xlx_apatb_param_d_i_24, __xlx_apatb_param_d_i_25, __xlx_apatb_param_d_i_26, __xlx_apatb_param_d_i_27, __xlx_apatb_param_d_i_28, __xlx_apatb_param_d_i_29, __xlx_apatb_param_d_i_30, __xlx_apatb_param_d_i_31);
}
