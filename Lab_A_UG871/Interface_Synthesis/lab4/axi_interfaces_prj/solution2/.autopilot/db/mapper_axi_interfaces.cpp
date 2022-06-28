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
extern "C" void axi_interfaces(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_axi_interfaces_hw(volatile void * __xlx_apatb_param_d_o_0, volatile void * __xlx_apatb_param_d_o_1, volatile void * __xlx_apatb_param_d_o_2, volatile void * __xlx_apatb_param_d_o_3, volatile void * __xlx_apatb_param_d_o_4, volatile void * __xlx_apatb_param_d_o_5, volatile void * __xlx_apatb_param_d_o_6, volatile void * __xlx_apatb_param_d_o_7, volatile void * __xlx_apatb_param_d_i_0, volatile void * __xlx_apatb_param_d_i_1, volatile void * __xlx_apatb_param_d_i_2, volatile void * __xlx_apatb_param_d_i_3, volatile void * __xlx_apatb_param_d_i_4, volatile void * __xlx_apatb_param_d_i_5, volatile void * __xlx_apatb_param_d_i_6, volatile void * __xlx_apatb_param_d_i_7) {
  // DUT call
  axi_interfaces(__xlx_apatb_param_d_o_0, __xlx_apatb_param_d_o_1, __xlx_apatb_param_d_o_2, __xlx_apatb_param_d_o_3, __xlx_apatb_param_d_o_4, __xlx_apatb_param_d_o_5, __xlx_apatb_param_d_o_6, __xlx_apatb_param_d_o_7, __xlx_apatb_param_d_i_0, __xlx_apatb_param_d_i_1, __xlx_apatb_param_d_i_2, __xlx_apatb_param_d_i_3, __xlx_apatb_param_d_i_4, __xlx_apatb_param_d_i_5, __xlx_apatb_param_d_i_6, __xlx_apatb_param_d_i_7);
}
