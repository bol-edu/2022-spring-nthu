// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_H__
#define __TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_ram) {


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
           }
        }
    }
}


}; //endmodule


SC_MODULE(TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_ram* meminst;


SC_CTOR(TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W) {
meminst = new TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_ram("TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W() {
    delete meminst;
}


};//endmodule
#endif
