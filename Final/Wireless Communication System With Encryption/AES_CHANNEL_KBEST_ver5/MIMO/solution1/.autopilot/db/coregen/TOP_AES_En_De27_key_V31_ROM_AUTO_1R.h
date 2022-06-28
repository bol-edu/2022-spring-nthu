// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __TOP_AES_En_De27_key_V31_ROM_AUTO_1R_H__
#define __TOP_AES_En_De27_key_V31_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct TOP_AES_En_De27_key_V31_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 16;
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


   SC_CTOR(TOP_AES_En_De27_key_V31_ROM_AUTO_1R_ram) {
        ram[0] = "0b10000111";
        ram[1] = "0b00010011";
        ram[2] = "0b00010001";
        ram[3] = "0b00110000";
        ram[4] = "0b01010001";
        ram[5] = "0b10000111";
        ram[6] = "0b00001001";
        ram[7] = "0b10101101";
        ram[8] = "0b11001111";
        ram[9] = "0b00011011";
        ram[10] = "0b01100110";
        ram[11] = "0b11001010";
        ram[12] = "0b10101010";
        ram[13] = "0b11000101";
        ram[14] = "0b00010101";
        ram[15] = "0b10110000";


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


SC_MODULE(TOP_AES_En_De27_key_V31_ROM_AUTO_1R) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


TOP_AES_En_De27_key_V31_ROM_AUTO_1R_ram* meminst;


SC_CTOR(TOP_AES_En_De27_key_V31_ROM_AUTO_1R) {
meminst = new TOP_AES_En_De27_key_V31_ROM_AUTO_1R_ram("TOP_AES_En_De27_key_V31_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~TOP_AES_En_De27_key_V31_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
