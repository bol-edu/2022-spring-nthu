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
#define AUTOTB_TVIN_d_o "../tv/cdatafile/c.array_io.autotvin_d_o.dat"
#define AUTOTB_TVOUT_d_o "../tv/cdatafile/c.array_io.autotvout_d_o.dat"
// wrapc file define:
#define AUTOTB_TVIN_d_i "../tv/cdatafile/c.array_io.autotvin_d_i.dat"
#define AUTOTB_TVOUT_d_i "../tv/cdatafile/c.array_io.autotvout_d_i.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_d_o "../tv/rtldatafile/rtl.array_io.autotvout_d_o.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_d_i "../tv/rtldatafile/rtl.array_io.autotvout_d_i.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  d_o_depth = 0;
  d_i_depth = 0;
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
  total_list << "{d_o " << d_o_depth << "}\n";
  total_list << "{d_i " << d_i_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int d_o_depth;
    int d_i_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void array_io_hw_stub_wrapper(volatile void *, volatile void *);

extern "C" void apatb_array_io_hw(volatile void * __xlx_apatb_param_d_o, volatile void * __xlx_apatb_param_d_i) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_d_o);
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
          std::vector<sc_bv<16> > d_o_pc_buffer(32);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "d_o");
  
            // push token into output port buffer
            if (AESL_token != "") {
              d_o_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "d_o" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 32; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_d_o)[j*2+0] = d_o_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_d_o)[j*2+1] = d_o_pc_buffer[i].range(15, 8).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
// print d_o Transactions
{
aesl_fh.write(AUTOTB_TVIN_d_o, begin_str(AESL_transaction));
  if (__xlx_apatb_param_d_o) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_d_o)[j];
aesl_fh.write(AUTOTB_TVIN_d_o, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }

  tcl_file.set_num(32, &tcl_file.d_o_depth);
aesl_fh.write(AUTOTB_TVIN_d_o, end_str());
}

unsigned __xlx_offset_byte_param_d_i = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_d_i, 'b');
transaction<16> tr(32);
  __xlx_offset_byte_param_d_i = 0*2;
  if (__xlx_apatb_param_d_i) {
tr.import<2>((char*)__xlx_apatb_param_d_i, 32, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_d_i, tr.p, tr.tbytes);
}

  tcl_file.set_num(32, &tcl_file.d_i_depth);
#else
// print d_i Transactions
{
aesl_fh.write(AUTOTB_TVIN_d_i, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_d_i = 0*2;
  if (__xlx_apatb_param_d_i) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_d_i)[j];
aesl_fh.write(AUTOTB_TVIN_d_i, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(32, &tcl_file.d_i_depth);
aesl_fh.write(AUTOTB_TVIN_d_i, end_str());
}

#endif
CodeState = CALL_C_DUT;
array_io_hw_stub_wrapper(__xlx_apatb_param_d_o, __xlx_apatb_param_d_i);
CodeState = DUMP_OUTPUTS;
// print d_o Transactions
{
aesl_fh.write(AUTOTB_TVOUT_d_o, begin_str(AESL_transaction));
  if (__xlx_apatb_param_d_o) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_d_o)[j];
aesl_fh.write(AUTOTB_TVOUT_d_o, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }

  tcl_file.set_num(32, &tcl_file.d_o_depth);
aesl_fh.write(AUTOTB_TVOUT_d_o, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
