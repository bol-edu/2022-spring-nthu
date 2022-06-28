#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_a_0 "../tv/cdatafile/c.aaa.autotvin_a_0.dat"
#define AUTOTB_TVOUT_a_0 "../tv/cdatafile/c.aaa.autotvout_a_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_1 "../tv/cdatafile/c.aaa.autotvin_a_1.dat"
#define AUTOTB_TVOUT_a_1 "../tv/cdatafile/c.aaa.autotvout_a_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_2 "../tv/cdatafile/c.aaa.autotvin_a_2.dat"
#define AUTOTB_TVOUT_a_2 "../tv/cdatafile/c.aaa.autotvout_a_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_3 "../tv/cdatafile/c.aaa.autotvin_a_3.dat"
#define AUTOTB_TVOUT_a_3 "../tv/cdatafile/c.aaa.autotvout_a_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_4 "../tv/cdatafile/c.aaa.autotvin_a_4.dat"
#define AUTOTB_TVOUT_a_4 "../tv/cdatafile/c.aaa.autotvout_a_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_5 "../tv/cdatafile/c.aaa.autotvin_a_5.dat"
#define AUTOTB_TVOUT_a_5 "../tv/cdatafile/c.aaa.autotvout_a_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_6 "../tv/cdatafile/c.aaa.autotvin_a_6.dat"
#define AUTOTB_TVOUT_a_6 "../tv/cdatafile/c.aaa.autotvout_a_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_7 "../tv/cdatafile/c.aaa.autotvin_a_7.dat"
#define AUTOTB_TVOUT_a_7 "../tv/cdatafile/c.aaa.autotvout_a_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_8 "../tv/cdatafile/c.aaa.autotvin_a_8.dat"
#define AUTOTB_TVOUT_a_8 "../tv/cdatafile/c.aaa.autotvout_a_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_9 "../tv/cdatafile/c.aaa.autotvin_a_9.dat"
#define AUTOTB_TVOUT_a_9 "../tv/cdatafile/c.aaa.autotvout_a_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_10 "../tv/cdatafile/c.aaa.autotvin_a_10.dat"
#define AUTOTB_TVOUT_a_10 "../tv/cdatafile/c.aaa.autotvout_a_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_a_11 "../tv/cdatafile/c.aaa.autotvin_a_11.dat"
#define AUTOTB_TVOUT_a_11 "../tv/cdatafile/c.aaa.autotvout_a_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_0 "../tv/cdatafile/c.aaa.autotvin_b_0.dat"
#define AUTOTB_TVOUT_b_0 "../tv/cdatafile/c.aaa.autotvout_b_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_1 "../tv/cdatafile/c.aaa.autotvin_b_1.dat"
#define AUTOTB_TVOUT_b_1 "../tv/cdatafile/c.aaa.autotvout_b_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_2 "../tv/cdatafile/c.aaa.autotvin_b_2.dat"
#define AUTOTB_TVOUT_b_2 "../tv/cdatafile/c.aaa.autotvout_b_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_3 "../tv/cdatafile/c.aaa.autotvin_b_3.dat"
#define AUTOTB_TVOUT_b_3 "../tv/cdatafile/c.aaa.autotvout_b_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_4 "../tv/cdatafile/c.aaa.autotvin_b_4.dat"
#define AUTOTB_TVOUT_b_4 "../tv/cdatafile/c.aaa.autotvout_b_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_5 "../tv/cdatafile/c.aaa.autotvin_b_5.dat"
#define AUTOTB_TVOUT_b_5 "../tv/cdatafile/c.aaa.autotvout_b_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_6 "../tv/cdatafile/c.aaa.autotvin_b_6.dat"
#define AUTOTB_TVOUT_b_6 "../tv/cdatafile/c.aaa.autotvout_b_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_7 "../tv/cdatafile/c.aaa.autotvin_b_7.dat"
#define AUTOTB_TVOUT_b_7 "../tv/cdatafile/c.aaa.autotvout_b_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_8 "../tv/cdatafile/c.aaa.autotvin_b_8.dat"
#define AUTOTB_TVOUT_b_8 "../tv/cdatafile/c.aaa.autotvout_b_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_9 "../tv/cdatafile/c.aaa.autotvin_b_9.dat"
#define AUTOTB_TVOUT_b_9 "../tv/cdatafile/c.aaa.autotvout_b_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_10 "../tv/cdatafile/c.aaa.autotvin_b_10.dat"
#define AUTOTB_TVOUT_b_10 "../tv/cdatafile/c.aaa.autotvout_b_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_11 "../tv/cdatafile/c.aaa.autotvin_b_11.dat"
#define AUTOTB_TVOUT_b_11 "../tv/cdatafile/c.aaa.autotvout_b_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_0 "../tv/cdatafile/c.aaa.autotvin_r_0.dat"
#define AUTOTB_TVOUT_r_0 "../tv/cdatafile/c.aaa.autotvout_r_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_1 "../tv/cdatafile/c.aaa.autotvin_r_1.dat"
#define AUTOTB_TVOUT_r_1 "../tv/cdatafile/c.aaa.autotvout_r_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_2 "../tv/cdatafile/c.aaa.autotvin_r_2.dat"
#define AUTOTB_TVOUT_r_2 "../tv/cdatafile/c.aaa.autotvout_r_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_3 "../tv/cdatafile/c.aaa.autotvin_r_3.dat"
#define AUTOTB_TVOUT_r_3 "../tv/cdatafile/c.aaa.autotvout_r_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_4 "../tv/cdatafile/c.aaa.autotvin_r_4.dat"
#define AUTOTB_TVOUT_r_4 "../tv/cdatafile/c.aaa.autotvout_r_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_5 "../tv/cdatafile/c.aaa.autotvin_r_5.dat"
#define AUTOTB_TVOUT_r_5 "../tv/cdatafile/c.aaa.autotvout_r_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_6 "../tv/cdatafile/c.aaa.autotvin_r_6.dat"
#define AUTOTB_TVOUT_r_6 "../tv/cdatafile/c.aaa.autotvout_r_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_7 "../tv/cdatafile/c.aaa.autotvin_r_7.dat"
#define AUTOTB_TVOUT_r_7 "../tv/cdatafile/c.aaa.autotvout_r_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_8 "../tv/cdatafile/c.aaa.autotvin_r_8.dat"
#define AUTOTB_TVOUT_r_8 "../tv/cdatafile/c.aaa.autotvout_r_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_9 "../tv/cdatafile/c.aaa.autotvin_r_9.dat"
#define AUTOTB_TVOUT_r_9 "../tv/cdatafile/c.aaa.autotvout_r_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_10 "../tv/cdatafile/c.aaa.autotvin_r_10.dat"
#define AUTOTB_TVOUT_r_10 "../tv/cdatafile/c.aaa.autotvout_r_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_r_11 "../tv/cdatafile/c.aaa.autotvin_r_11.dat"
#define AUTOTB_TVOUT_r_11 "../tv/cdatafile/c.aaa.autotvout_r_11.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_a_0 "../tv/rtldatafile/rtl.aaa.autotvout_a_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_1 "../tv/rtldatafile/rtl.aaa.autotvout_a_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_2 "../tv/rtldatafile/rtl.aaa.autotvout_a_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_3 "../tv/rtldatafile/rtl.aaa.autotvout_a_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_4 "../tv/rtldatafile/rtl.aaa.autotvout_a_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_5 "../tv/rtldatafile/rtl.aaa.autotvout_a_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_6 "../tv/rtldatafile/rtl.aaa.autotvout_a_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_7 "../tv/rtldatafile/rtl.aaa.autotvout_a_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_8 "../tv/rtldatafile/rtl.aaa.autotvout_a_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_9 "../tv/rtldatafile/rtl.aaa.autotvout_a_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_10 "../tv/rtldatafile/rtl.aaa.autotvout_a_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_a_11 "../tv/rtldatafile/rtl.aaa.autotvout_a_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_0 "../tv/rtldatafile/rtl.aaa.autotvout_b_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_1 "../tv/rtldatafile/rtl.aaa.autotvout_b_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_2 "../tv/rtldatafile/rtl.aaa.autotvout_b_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_3 "../tv/rtldatafile/rtl.aaa.autotvout_b_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_4 "../tv/rtldatafile/rtl.aaa.autotvout_b_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_5 "../tv/rtldatafile/rtl.aaa.autotvout_b_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_6 "../tv/rtldatafile/rtl.aaa.autotvout_b_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_7 "../tv/rtldatafile/rtl.aaa.autotvout_b_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_8 "../tv/rtldatafile/rtl.aaa.autotvout_b_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_9 "../tv/rtldatafile/rtl.aaa.autotvout_b_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_10 "../tv/rtldatafile/rtl.aaa.autotvout_b_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_11 "../tv/rtldatafile/rtl.aaa.autotvout_b_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_0 "../tv/rtldatafile/rtl.aaa.autotvout_r_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_1 "../tv/rtldatafile/rtl.aaa.autotvout_r_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_2 "../tv/rtldatafile/rtl.aaa.autotvout_r_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_3 "../tv/rtldatafile/rtl.aaa.autotvout_r_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_4 "../tv/rtldatafile/rtl.aaa.autotvout_r_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_5 "../tv/rtldatafile/rtl.aaa.autotvout_r_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_6 "../tv/rtldatafile/rtl.aaa.autotvout_r_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_7 "../tv/rtldatafile/rtl.aaa.autotvout_r_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_8 "../tv/rtldatafile/rtl.aaa.autotvout_r_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_9 "../tv/rtldatafile/rtl.aaa.autotvout_r_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_10 "../tv/rtldatafile/rtl.aaa.autotvout_r_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_r_11 "../tv/rtldatafile/rtl.aaa.autotvout_r_11.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  a_0_depth = 0;
  a_1_depth = 0;
  a_2_depth = 0;
  a_3_depth = 0;
  a_4_depth = 0;
  a_5_depth = 0;
  a_6_depth = 0;
  a_7_depth = 0;
  a_8_depth = 0;
  a_9_depth = 0;
  a_10_depth = 0;
  a_11_depth = 0;
  b_0_depth = 0;
  b_1_depth = 0;
  b_2_depth = 0;
  b_3_depth = 0;
  b_4_depth = 0;
  b_5_depth = 0;
  b_6_depth = 0;
  b_7_depth = 0;
  b_8_depth = 0;
  b_9_depth = 0;
  b_10_depth = 0;
  b_11_depth = 0;
  r_0_depth = 0;
  r_1_depth = 0;
  r_2_depth = 0;
  r_3_depth = 0;
  r_4_depth = 0;
  r_5_depth = 0;
  r_6_depth = 0;
  r_7_depth = 0;
  r_8_depth = 0;
  r_9_depth = 0;
  r_10_depth = 0;
  r_11_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{a_0 " << a_0_depth << "}\n";
  total_list << "{a_1 " << a_1_depth << "}\n";
  total_list << "{a_2 " << a_2_depth << "}\n";
  total_list << "{a_3 " << a_3_depth << "}\n";
  total_list << "{a_4 " << a_4_depth << "}\n";
  total_list << "{a_5 " << a_5_depth << "}\n";
  total_list << "{a_6 " << a_6_depth << "}\n";
  total_list << "{a_7 " << a_7_depth << "}\n";
  total_list << "{a_8 " << a_8_depth << "}\n";
  total_list << "{a_9 " << a_9_depth << "}\n";
  total_list << "{a_10 " << a_10_depth << "}\n";
  total_list << "{a_11 " << a_11_depth << "}\n";
  total_list << "{b_0 " << b_0_depth << "}\n";
  total_list << "{b_1 " << b_1_depth << "}\n";
  total_list << "{b_2 " << b_2_depth << "}\n";
  total_list << "{b_3 " << b_3_depth << "}\n";
  total_list << "{b_4 " << b_4_depth << "}\n";
  total_list << "{b_5 " << b_5_depth << "}\n";
  total_list << "{b_6 " << b_6_depth << "}\n";
  total_list << "{b_7 " << b_7_depth << "}\n";
  total_list << "{b_8 " << b_8_depth << "}\n";
  total_list << "{b_9 " << b_9_depth << "}\n";
  total_list << "{b_10 " << b_10_depth << "}\n";
  total_list << "{b_11 " << b_11_depth << "}\n";
  total_list << "{r_0 " << r_0_depth << "}\n";
  total_list << "{r_1 " << r_1_depth << "}\n";
  total_list << "{r_2 " << r_2_depth << "}\n";
  total_list << "{r_3 " << r_3_depth << "}\n";
  total_list << "{r_4 " << r_4_depth << "}\n";
  total_list << "{r_5 " << r_5_depth << "}\n";
  total_list << "{r_6 " << r_6_depth << "}\n";
  total_list << "{r_7 " << r_7_depth << "}\n";
  total_list << "{r_8 " << r_8_depth << "}\n";
  total_list << "{r_9 " << r_9_depth << "}\n";
  total_list << "{r_10 " << r_10_depth << "}\n";
  total_list << "{r_11 " << r_11_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int a_0_depth;
    int a_1_depth;
    int a_2_depth;
    int a_3_depth;
    int a_4_depth;
    int a_5_depth;
    int a_6_depth;
    int a_7_depth;
    int a_8_depth;
    int a_9_depth;
    int a_10_depth;
    int a_11_depth;
    int b_0_depth;
    int b_1_depth;
    int b_2_depth;
    int b_3_depth;
    int b_4_depth;
    int b_5_depth;
    int b_6_depth;
    int b_7_depth;
    int b_8_depth;
    int b_9_depth;
    int b_10_depth;
    int b_11_depth;
    int r_0_depth;
    int r_1_depth;
    int r_2_depth;
    int r_3_depth;
    int r_4_depth;
    int r_5_depth;
    int r_6_depth;
    int r_7_depth;
    int r_8_depth;
    int r_9_depth;
    int r_10_depth;
    int r_11_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void aaa_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_aaa_hw(volatile void * __xlx_apatb_param_a_0, volatile void * __xlx_apatb_param_a_1, volatile void * __xlx_apatb_param_a_2, volatile void * __xlx_apatb_param_a_3, volatile void * __xlx_apatb_param_a_4, volatile void * __xlx_apatb_param_a_5, volatile void * __xlx_apatb_param_a_6, volatile void * __xlx_apatb_param_a_7, volatile void * __xlx_apatb_param_a_8, volatile void * __xlx_apatb_param_a_9, volatile void * __xlx_apatb_param_a_10, volatile void * __xlx_apatb_param_a_11, volatile void * __xlx_apatb_param_b_0, volatile void * __xlx_apatb_param_b_1, volatile void * __xlx_apatb_param_b_2, volatile void * __xlx_apatb_param_b_3, volatile void * __xlx_apatb_param_b_4, volatile void * __xlx_apatb_param_b_5, volatile void * __xlx_apatb_param_b_6, volatile void * __xlx_apatb_param_b_7, volatile void * __xlx_apatb_param_b_8, volatile void * __xlx_apatb_param_b_9, volatile void * __xlx_apatb_param_b_10, volatile void * __xlx_apatb_param_b_11, volatile void * __xlx_apatb_param_r_0, volatile void * __xlx_apatb_param_r_1, volatile void * __xlx_apatb_param_r_2, volatile void * __xlx_apatb_param_r_3, volatile void * __xlx_apatb_param_r_4, volatile void * __xlx_apatb_param_r_5, volatile void * __xlx_apatb_param_r_6, volatile void * __xlx_apatb_param_r_7, volatile void * __xlx_apatb_param_r_8, volatile void * __xlx_apatb_param_r_9, volatile void * __xlx_apatb_param_r_10, volatile void * __xlx_apatb_param_r_11) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_0_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_0)[0] = r_0_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_1_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_1)[0] = r_1_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_2)[0] = r_2_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_3_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_3)[0] = r_3_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_4_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_4)[0] = r_4_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_5_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_5)[0] = r_5_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_6_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_6)[0] = r_6_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_7_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_7)[0] = r_7_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_8_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_8)[0] = r_8_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_9_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_9)[0] = r_9_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_10_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_10)[0] = r_10_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_r_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > r_11_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "r_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              r_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_r_11)[0] = r_11_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//a_0
aesl_fh.touch(AUTOTB_TVIN_a_0);
aesl_fh.touch(AUTOTB_TVOUT_a_0);
//a_1
aesl_fh.touch(AUTOTB_TVIN_a_1);
aesl_fh.touch(AUTOTB_TVOUT_a_1);
//a_2
aesl_fh.touch(AUTOTB_TVIN_a_2);
aesl_fh.touch(AUTOTB_TVOUT_a_2);
//a_3
aesl_fh.touch(AUTOTB_TVIN_a_3);
aesl_fh.touch(AUTOTB_TVOUT_a_3);
//a_4
aesl_fh.touch(AUTOTB_TVIN_a_4);
aesl_fh.touch(AUTOTB_TVOUT_a_4);
//a_5
aesl_fh.touch(AUTOTB_TVIN_a_5);
aesl_fh.touch(AUTOTB_TVOUT_a_5);
//a_6
aesl_fh.touch(AUTOTB_TVIN_a_6);
aesl_fh.touch(AUTOTB_TVOUT_a_6);
//a_7
aesl_fh.touch(AUTOTB_TVIN_a_7);
aesl_fh.touch(AUTOTB_TVOUT_a_7);
//a_8
aesl_fh.touch(AUTOTB_TVIN_a_8);
aesl_fh.touch(AUTOTB_TVOUT_a_8);
//a_9
aesl_fh.touch(AUTOTB_TVIN_a_9);
aesl_fh.touch(AUTOTB_TVOUT_a_9);
//a_10
aesl_fh.touch(AUTOTB_TVIN_a_10);
aesl_fh.touch(AUTOTB_TVOUT_a_10);
//a_11
aesl_fh.touch(AUTOTB_TVIN_a_11);
aesl_fh.touch(AUTOTB_TVOUT_a_11);
//b_0
aesl_fh.touch(AUTOTB_TVIN_b_0);
aesl_fh.touch(AUTOTB_TVOUT_b_0);
//b_1
aesl_fh.touch(AUTOTB_TVIN_b_1);
aesl_fh.touch(AUTOTB_TVOUT_b_1);
//b_2
aesl_fh.touch(AUTOTB_TVIN_b_2);
aesl_fh.touch(AUTOTB_TVOUT_b_2);
//b_3
aesl_fh.touch(AUTOTB_TVIN_b_3);
aesl_fh.touch(AUTOTB_TVOUT_b_3);
//b_4
aesl_fh.touch(AUTOTB_TVIN_b_4);
aesl_fh.touch(AUTOTB_TVOUT_b_4);
//b_5
aesl_fh.touch(AUTOTB_TVIN_b_5);
aesl_fh.touch(AUTOTB_TVOUT_b_5);
//b_6
aesl_fh.touch(AUTOTB_TVIN_b_6);
aesl_fh.touch(AUTOTB_TVOUT_b_6);
//b_7
aesl_fh.touch(AUTOTB_TVIN_b_7);
aesl_fh.touch(AUTOTB_TVOUT_b_7);
//b_8
aesl_fh.touch(AUTOTB_TVIN_b_8);
aesl_fh.touch(AUTOTB_TVOUT_b_8);
//b_9
aesl_fh.touch(AUTOTB_TVIN_b_9);
aesl_fh.touch(AUTOTB_TVOUT_b_9);
//b_10
aesl_fh.touch(AUTOTB_TVIN_b_10);
aesl_fh.touch(AUTOTB_TVOUT_b_10);
//b_11
aesl_fh.touch(AUTOTB_TVIN_b_11);
aesl_fh.touch(AUTOTB_TVOUT_b_11);
//r_0
aesl_fh.touch(AUTOTB_TVIN_r_0);
aesl_fh.touch(AUTOTB_TVOUT_r_0);
//r_1
aesl_fh.touch(AUTOTB_TVIN_r_1);
aesl_fh.touch(AUTOTB_TVOUT_r_1);
//r_2
aesl_fh.touch(AUTOTB_TVIN_r_2);
aesl_fh.touch(AUTOTB_TVOUT_r_2);
//r_3
aesl_fh.touch(AUTOTB_TVIN_r_3);
aesl_fh.touch(AUTOTB_TVOUT_r_3);
//r_4
aesl_fh.touch(AUTOTB_TVIN_r_4);
aesl_fh.touch(AUTOTB_TVOUT_r_4);
//r_5
aesl_fh.touch(AUTOTB_TVIN_r_5);
aesl_fh.touch(AUTOTB_TVOUT_r_5);
//r_6
aesl_fh.touch(AUTOTB_TVIN_r_6);
aesl_fh.touch(AUTOTB_TVOUT_r_6);
//r_7
aesl_fh.touch(AUTOTB_TVIN_r_7);
aesl_fh.touch(AUTOTB_TVOUT_r_7);
//r_8
aesl_fh.touch(AUTOTB_TVIN_r_8);
aesl_fh.touch(AUTOTB_TVOUT_r_8);
//r_9
aesl_fh.touch(AUTOTB_TVIN_r_9);
aesl_fh.touch(AUTOTB_TVOUT_r_9);
//r_10
aesl_fh.touch(AUTOTB_TVIN_r_10);
aesl_fh.touch(AUTOTB_TVOUT_r_10);
//r_11
aesl_fh.touch(AUTOTB_TVIN_r_11);
aesl_fh.touch(AUTOTB_TVOUT_r_11);
CodeState = DUMP_INPUTS;
// print a_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data());
}
// print a_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data());
}
// print a_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data());
}
// print a_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data());
}
// print a_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data());
}
// print a_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data());
}
// print a_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data());
}
// print a_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data());
}
// print a_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_8, __xlx_sprintf_buffer.data());
}
// print a_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_9, __xlx_sprintf_buffer.data());
}
// print a_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_10, __xlx_sprintf_buffer.data());
}
// print a_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_a_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.a_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_11, __xlx_sprintf_buffer.data());
}
// print b_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data());
}
// print b_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data());
}
// print b_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data());
}
// print b_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data());
}
// print b_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data());
}
// print b_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data());
}
// print b_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data());
}
// print b_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data());
}
// print b_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_8, __xlx_sprintf_buffer.data());
}
// print b_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_9, __xlx_sprintf_buffer.data());
}
// print b_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_10, __xlx_sprintf_buffer.data());
}
// print b_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_b_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_b_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.b_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_11, __xlx_sprintf_buffer.data());
}
// print r_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_0, __xlx_sprintf_buffer.data());
}
// print r_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_1, __xlx_sprintf_buffer.data());
}
// print r_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_2, __xlx_sprintf_buffer.data());
}
// print r_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_3, __xlx_sprintf_buffer.data());
}
// print r_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_4, __xlx_sprintf_buffer.data());
}
// print r_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_5, __xlx_sprintf_buffer.data());
}
// print r_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_6, __xlx_sprintf_buffer.data());
}
// print r_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_7, __xlx_sprintf_buffer.data());
}
// print r_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_8, __xlx_sprintf_buffer.data());
}
// print r_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_9, __xlx_sprintf_buffer.data());
}
// print r_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_10, __xlx_sprintf_buffer.data());
}
// print r_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_r_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_r_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_r_11, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
aaa_hw_stub_wrapper(__xlx_apatb_param_a_0, __xlx_apatb_param_a_1, __xlx_apatb_param_a_2, __xlx_apatb_param_a_3, __xlx_apatb_param_a_4, __xlx_apatb_param_a_5, __xlx_apatb_param_a_6, __xlx_apatb_param_a_7, __xlx_apatb_param_a_8, __xlx_apatb_param_a_9, __xlx_apatb_param_a_10, __xlx_apatb_param_a_11, __xlx_apatb_param_b_0, __xlx_apatb_param_b_1, __xlx_apatb_param_b_2, __xlx_apatb_param_b_3, __xlx_apatb_param_b_4, __xlx_apatb_param_b_5, __xlx_apatb_param_b_6, __xlx_apatb_param_b_7, __xlx_apatb_param_b_8, __xlx_apatb_param_b_9, __xlx_apatb_param_b_10, __xlx_apatb_param_b_11, __xlx_apatb_param_r_0, __xlx_apatb_param_r_1, __xlx_apatb_param_r_2, __xlx_apatb_param_r_3, __xlx_apatb_param_r_4, __xlx_apatb_param_r_5, __xlx_apatb_param_r_6, __xlx_apatb_param_r_7, __xlx_apatb_param_r_8, __xlx_apatb_param_r_9, __xlx_apatb_param_r_10, __xlx_apatb_param_r_11);
CodeState = DUMP_OUTPUTS;
// print r_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_0, __xlx_sprintf_buffer.data());
}
// print r_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_1, __xlx_sprintf_buffer.data());
}
// print r_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_2, __xlx_sprintf_buffer.data());
}
// print r_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_3, __xlx_sprintf_buffer.data());
}
// print r_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_4, __xlx_sprintf_buffer.data());
}
// print r_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_5, __xlx_sprintf_buffer.data());
}
// print r_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_6, __xlx_sprintf_buffer.data());
}
// print r_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_7, __xlx_sprintf_buffer.data());
}
// print r_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_8, __xlx_sprintf_buffer.data());
}
// print r_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_9, __xlx_sprintf_buffer.data());
}
// print r_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_10, __xlx_sprintf_buffer.data());
}
// print r_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_r_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_r_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_r_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.r_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_r_11, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
