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
extern "C" void array_io(volatile void *, short*);
extern "C" void apatb_array_io_hw(volatile void * __xlx_apatb_param_d_o, volatile void * __xlx_apatb_param_d_i) {
  // Collect __xlx_d_i__tmp_vec
  vector<sc_bv<16> >__xlx_d_i__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_d_i)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_d_i)[j*2+1];
    __xlx_d_i__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_d_i = 32;
  int __xlx_offset_param_d_i = 0;
  int __xlx_offset_byte_param_d_i = 0*2;
  short* __xlx_d_i__input_buffer= new short[__xlx_d_i__tmp_vec.size()];
  for (int i = 0; i < __xlx_d_i__tmp_vec.size(); ++i) {
    __xlx_d_i__input_buffer[i] = __xlx_d_i__tmp_vec[i].range(15, 0).to_uint64();
  }
  // DUT call
  array_io(__xlx_apatb_param_d_o, __xlx_d_i__input_buffer);
// print __xlx_apatb_param_d_i
  sc_bv<16>*__xlx_d_i_output_buffer = new sc_bv<16>[__xlx_size_param_d_i];
  for (int i = 0; i < __xlx_size_param_d_i; ++i) {
    __xlx_d_i_output_buffer[i] = __xlx_d_i__input_buffer[i+__xlx_offset_param_d_i];
  }
  for (int i = 0; i < __xlx_size_param_d_i; ++i) {
    ((char*)__xlx_apatb_param_d_i)[i*2+0] = __xlx_d_i_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_d_i)[i*2+1] = __xlx_d_i_output_buffer[i].range(15, 8).to_uint();
  }
}
