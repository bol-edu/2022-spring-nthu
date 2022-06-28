#
# Copyright 2019-2021 Xilinx, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

source settings.tcl

set PROJ "normalRNG.prj"
set SOLN "sol"

if {![info exists CLKP]} {
  set CLKP 300MHz
}

open_project -reset $PROJ

#add_files "dut.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"

#add_files "normal_rng.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#add_files -tb "test_normal_rng.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/L1/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#set_top dut

########## Test  Rayleigh
#add_files "Rayleigh.cpp" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#add_files -tb "tb_Rayleigh.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#set_top Rayleigh

########## Test AWGN
#add_files "Rayleigh.cpp AWGN.cpp" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#add_files -tb "tb_AWGN.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#set_top Rayleigh

########## Test Mod
#add_files "Modulation.cpp" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#add_files -tb "Modulation.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#set_top Modulation

###########test H*x
#add_files "Rayleigh.cpp" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#add_files -tb "Rayleigh.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
#set_top Rayleigh

###########test y = H*x +n
add_files "Modulation.cpp Rayleigh.cpp AWGN.cpp tb_AWGN.cpp" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
add_files -tb "tb_AWGN.cpp ${XF_PROJ_ROOT}/ext/dcmt/dcmt/lib/libdcmt.a" -cflags "-I${XF_PROJ_ROOT}/code/include -I${XF_PROJ_ROOT}/ext/dcmt/dcmt/include"
set_top my_test



open_solution -reset $SOLN




set_part $XPART
create_clock -period $CLKP

if {$CSIM == 1} {
  csim_design -ldflags "-L./ -ldcmt"
}

if {$CSYNTH == 1} {
  csynth_design
}

if {$COSIM == 1} {
  cosim_design -ldflags "-L./ -ldcmt"
}

if {$VIVADO_SYN == 1} {
  export_design -flow syn -rtl verilog
}

if {$VIVADO_IMPL == 1} {
  export_design -flow impl -rtl verilog
}

exit
