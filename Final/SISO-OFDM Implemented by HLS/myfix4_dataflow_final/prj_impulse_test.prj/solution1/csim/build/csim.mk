# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__HLS_FPO_v6_1__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../src/main.cpp ../../../../src/deQAM_to_pixl/data2pic.cpp ../../../../src/deQAM_to_pixl/data_out_main.cpp ../../../../src/deQAM_to_pixl/deQAM.cpp ../../../../src/channel_stream/channel_gen.cpp ../../../../src/channel_stream/rand_func.cpp ../../../../src/channel_stream/rand.cpp ../../../../src/QAM/qam.cpp ../../../../src/fft/fft.cpp ../../../../src/picture_to_symbol/pixl_to_symbol.cpp ../../../../src/top_module.cpp ../../../../src/pilot_insertion/pilot_insertion.cpp ../../../../src/CP_insertion/Cp_insertion.cpp ../../../../src/Tx.cpp ../../../../src/AWGN.cpp ../../../../src/Rx.cpp ../../../../src/equalizer/equalizer.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /opt/Xilinx/Vitis_HLS/2021.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/Xilinx/Vitis_HLS/2021.2/tps/lnx64/gcc-6.2.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__HLS_FPO_v6_1__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -Wno-unknown-pragmas -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/main.o: ../../../../src/main.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/main.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/main.d

$(ObjDir)/data2pic.o: ../../../../src/deQAM_to_pixl/data2pic.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/deQAM_to_pixl/data2pic.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/data2pic.d

$(ObjDir)/data_out_main.o: ../../../../src/deQAM_to_pixl/data_out_main.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/deQAM_to_pixl/data_out_main.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/data_out_main.d

$(ObjDir)/deQAM.o: ../../../../src/deQAM_to_pixl/deQAM.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/deQAM_to_pixl/deQAM.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/deQAM.d

$(ObjDir)/channel_gen.o: ../../../../src/channel_stream/channel_gen.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/channel_stream/channel_gen.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/channel_gen.d

$(ObjDir)/rand_func.o: ../../../../src/channel_stream/rand_func.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/channel_stream/rand_func.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rand_func.d

$(ObjDir)/rand.o: ../../../../src/channel_stream/rand.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/channel_stream/rand.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/code/include -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/HLS_Final_Channel_Model/ext/dcmt/dcmt/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rand.d

$(ObjDir)/qam.o: ../../../../src/QAM/qam.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/QAM/qam.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/qam.d

$(ObjDir)/fft.o: ../../../../src/fft/fft.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/fft/fft.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fft.d

$(ObjDir)/pixl_to_symbol.o: ../../../../src/picture_to_symbol/pixl_to_symbol.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/picture_to_symbol/pixl_to_symbol.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/pixl_to_symbol.d

$(ObjDir)/top_module.o: ../../../../src/top_module.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/top_module.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/top_module.d

$(ObjDir)/pilot_insertion.o: ../../../../src/pilot_insertion/pilot_insertion.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/pilot_insertion/pilot_insertion.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/pilot_insertion.d

$(ObjDir)/Cp_insertion.o: ../../../../src/CP_insertion/Cp_insertion.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/CP_insertion/Cp_insertion.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/Cp_insertion.d

$(ObjDir)/Tx.o: ../../../../src/Tx.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/Tx.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/Tx.d

$(ObjDir)/AWGN.o: ../../../../src/AWGN.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/AWGN.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/AWGN.d

$(ObjDir)/Rx.o: ../../../../src/Rx.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/Rx.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/Rx.d

$(ObjDir)/equalizer.o: ../../../../src/equalizer/equalizer.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/equalizer/equalizer.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/users/course/2022S/HLS17000000/g110064539/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/equalizer.d
