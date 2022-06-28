#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VITIS ?= /opt/Xilinx/Vitis/2021.2
XILINX_XRT ?= /opt/xilinx/xrt
XILINX_VIVADO ?= /opt/Xilinx/Vivado/2021.2
XILINX_HLS ?= $(XILINX_VITIS)/Vivado_HLS

VPP ?= ${XILINX_VITIS}/bin/v++
RM = rm -f
RMDIR = rm -rf

VITIS_PLATFORM = xilinx_u50_gen3x16_xdma_201920_3
VITIS_PLATFORM_PATH = $(VITIS_PLATFORM)

TARGET = hw_emu
VPP_OPTS = --target $(TARGET)

#
# Hw kernel files
#


BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/TOP.xo
SRC_KERNEL_OBJS += build/TOP.xo

ALL_MESSAGE_FILES = $(subst .xo,.o,.mdb,$(SRC_KERNEL_OBJS))

#
# primary build targets
#

.PHONY: all clean
all: $(HW_KERNEL_OBJS)


clean:
	-$(RM) $(SRC_KERNEL_OBJS) $(ALL_MESSAGE_FILES) 
	-$(RMDIR) $(BUILD_SUBDIRS)
	-$(RMDIR) .Xil

ifeq ($(MAKECMDGOALS),incremental)
.PHONY: build/TOP.xo
endif

.PHONY: incremental
incremental: all


nothing:

#
# Hw Kernels compile;
#

build/TOP.xo: ../src/MIMO.cpp TOP-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --hls.pre_tcl /users/course/2022S/HLS17000000/g110061560/hls_config.tcl --config TOP-compile.cfg -o"$@" "$<"

