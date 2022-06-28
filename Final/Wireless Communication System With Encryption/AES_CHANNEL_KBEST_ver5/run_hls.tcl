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

set PROJ "Final_HLS.prj"
set SOLN "solution1"


if {![info exists CLKP]} {
  set CLKP 40
}

open_project -reset $PROJ

add_files " ${src_PATH}/aes.cpp ${src_PATH}/ap_int.h ${src_PATH}/AWGN.cpp ${src_PATH}/dc.h ${src_PATH}/DeModulation.cpp ${src_PATH}/KBEST.cpp ${src_PATH}/MIMO.cpp ${src_PATH}/Modulation.cpp ${src_PATH}/normal_rng.cpp ${src_PATH}/normal_rng.hpp ${src_PATH}/QRD.cpp ${src_PATH}/Rayleigh.cpp ${src_PATH}/utils.hpp "

add_files -tb "${src_PATH}/TESTBENCH.cpp"
set_top TOP

open_solution -reset $SOLN




set_part $XPART
create_clock -period $CLKP

if {$CSIM == 1} {
  csim_design
}

if {$CSYNTH == 1} {
  csynth_design
}

if {$COSIM == 1} {
  cosim_design
}

if {$VIVADO_SYN == 1} {
  export_design -flow syn -rtl verilog
}

if {$VIVADO_IMPL == 1} {
  export_design -flow impl -rtl verilog
}

exit
