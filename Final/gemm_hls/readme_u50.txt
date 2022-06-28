Steps:
1. Change the GNU toolchain version
	-> scl enable devtoolset-9 tcsh 
2. Understand the address map naming of U50
	-> platforminfo -p xilinx_u50_gen3x16_xdma_201920_3
3. Update CMakeLists.txt:
	Line 9
	-> set(MM_PLATFORM "xilinx_u50_gen3x16_xdma_201920_3" CACHE STRING "Platform string for Vitis.")
	Line 186
	-> if(MM_TWO_DIMMS)
  	->	set(MM_PORT_MAPPING m_axi_gmem0:HBM[0] m_axi_gmem1:HBM[1] m_axi_gmem2:HBM[1])
	-> else()
  	->	set(MM_PORT_MAPPING m_axi_gmem0:HBM[1] m_axi_gmem1:HBM[1] m_axi_gmem2:HBM[1])
	-> endif()
4. Change to use Vitis 2021.1
	-> .tcshrc
	-> source /opt/Xilinx/Vitis/2021.1/settings64.csh