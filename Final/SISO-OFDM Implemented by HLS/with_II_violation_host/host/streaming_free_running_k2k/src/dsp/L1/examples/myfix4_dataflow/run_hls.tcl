#
# Copyright 2019-2020 Xilinx, Inc.
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

set PROJ "prj_impulse_test.prj"
set SOLN "solution1"

if {![info exists CLKP]} {
  set CLKP 10
}

open_project -reset $PROJ
add_files "src/channel_stream/channel_gen.cpp src/equalizer/equalizer.hpp " -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/equalizer/equalizer.cpp src/equalizer/equalizer.hpp " -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/data_path.hpp " -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
#add_files "src/synchronization/synchronization.h src/synchronization/synchronization.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/Tx.cpp src/Tx.h src/AWGN.cpp src/AWGN.h src/Rx.cpp src/Rx.h" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/CP_insertion/Cp_insertion.cpp src/CP_insertion/Cp_insertion.h" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/pilot_insertion/pilot_insertion.cpp src/pilot_insertion/pilot_insertion.h" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/top_module.cpp src/top_module.hpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/picture_to_symbol/pixl_to_symbol.cpp src/picture_to_symbol/pixl_to_symbol.h" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/QAM/qam.cpp src/QAM/qam.hpp src/fft/fft.cpp src/fft/fft.hpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
add_files "src/deQAM_to_pixl/data2pic.h src/deQAM_to_pixl/data2pic.cpp src/deQAM_to_pixl/data_out_main.cpp src/deQAM_to_pixl/deQAM.cpp src/channel_stream/channel_gen.h src/channel_stream/channel_gen.cpp src/channel_stream/rand_func.cpp src/channel_stream/rand.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed -I${XF_PROJ_ROOT}/HLS_Final_Channel_Model/code/include -I${XF_PROJ_ROOT}/HLS_Final_Channel_Model/ext/dcmt/dcmt/include"

add_files -tb "src/main.cpp src/picture_txt/pic_data.txt src/output_result/out.txt" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"


#add_files -tb "src/synchronization/syn_test.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw/vitis_fft/fixed"
#testbench for synchronization
#add_files -tb "src/CP_insertion/CpTester.cpp" #testbench for CP_insertion
#add_files -tb "src/pilot_insertion/PilotTester.cpp" #testbench for pilot_insertion
#add_files -tb "src/channel_stream/channel_genTester.cpp" #testbench for channel
#add_files -tb "src/QAM/main.cpp" #testbench for QAM
#add_files -tb "src/deQAM_to_pixl/MultipTester.cpp" #testbench for deQAM_to_pixl
#add_files -tb "src/picture_to_symbol/MultipTester.cpp src/picture_txt/pic_data.txt" #testbench for picture_to_symbol

#add_files "src/data_path.hpp src/picture_to_symbol/pixl_to_symbol.cpp src/picture_to_symbol/pixl_to_symbol.h"
#add_files -tb "src/picture_to_symbol/MultipTester.cpp src/picture/pic_data.txt"

set_top top_module
#set_top synchronization

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
  #cosim_design
  cosim_design -tool xsim  -rtl verilog -coverage -trace_level all
}

if {$VIVADO_SYN == 1} {
  export_design -flow syn -rtl verilog
}

if {$VIVADO_IMPL == 1} {
  export_design -flow impl -rtl verilog
}

exit