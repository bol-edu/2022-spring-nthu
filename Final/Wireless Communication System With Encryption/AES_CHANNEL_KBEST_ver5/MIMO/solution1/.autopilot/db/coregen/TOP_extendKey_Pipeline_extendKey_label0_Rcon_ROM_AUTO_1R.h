// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_H__
#define __TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_ram) {
        ram[0] = "0b00000001000000000000000000000000";
        ram[1] = "0b00000010000000000000000000000000";
        ram[2] = "0b00000100000000000000000000000000";
        ram[3] = "0b00001000000000000000000000000000";
        ram[4] = "0b00010000000000000000000000000000";
        ram[5] = "0b00100000000000000000000000000000";
        ram[6] = "0b01000000000000000000000000000000";
        ram[7] = "0b10000000000000000000000000000000";
        ram[8] = "0b00011011000000000000000000000000";
        ram[9] = "0b00110110000000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_ram* meminst;


SC_CTOR(TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R) {
meminst = new TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_ram("TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
