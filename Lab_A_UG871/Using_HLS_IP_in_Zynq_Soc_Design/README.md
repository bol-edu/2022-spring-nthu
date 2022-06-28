# HLS_labA
ug871-vivado-high-level-synthesis-tutorial
包含兩個lab (MACC、FFT)
	lab1/
    HLS_macc/
      	IP/
        	export.zip
        	xilinx_com_hls_hls_macc_1_0.zip
         readme.txt							// 兩個皆是HLS IP
      	report/
        	csynth.rpt
        	hls_macc_csim.log
        	hls_macc_csynth.rpt
         readme.txt
  	HLS_source/									// HLS code and testbench
      	hls_macc.c
      	hls_macc.h
      	hls_macc_test.c							// testbench
      	run_hls.tcl								// run file
      	readme
  	Vivado/
    	report/
      	design_1_wrapper_power_routed.rpt
      	design_1_wrapper_timing_summary_routed.rpt
      	design_1_wrapper_utilization_placed.rpt
      	readme.txt
    	design_1_wrapper.bit						// bitstream
    	design_1_wrapper.hwh						// handoff file
    	design_wrapper.xsa							// export hardware
  	arm_source/
    	overlay/
      	pynq_overlay_test.py					// overlay control PS
      	readme.txt
    	vitis/
      	zynq_design_test.c						// PS端code
      	readme.txt
	lab2/
  	HLS_real2xfft/								// front-end
    	report/
      	csynth.rpt
      	hls_real2xfft_cosim.rpt
      	hls_real2xfft_csim.rpt
      	hls_real2xfft_csynth.rpt
      	readme.txt
    	xilinx_com_hls_hls_real2xfft_2_0.zip				// HLS frond-end IP
  	HLS_source/									// HLS code and testbench
    	hls_realfft.h
    	hls_realfft_test.cpp							// testbench
    	real2xfft.cpp								// front-end source
    	reference_fft.h
    	run_hls.tcl								// run file
    	sliding_win.h
    	w_rom_1k_1quad_init.txt
    	xfft2real.cpp								// back-end source
    	xfft2real.h								// back-end header
    	readme.txt
  	HLS_xfft2real/								//back-end
    	report/
      	csynth.rpt
      	hls_xfft2real_csim.log
      	hls_xfft2real_csynth.rpt
      	readme.txt
    	xilinx_com_hls_hls_xfft2real_1_0.zip				// HLS back-end IP
  	Vivado/
    	design_1.hwh							// handoff file
    	design_1_wrapper.bit						// bitstream
    	design_1_wrapper.xsa						// export hardware
    	readme.txt
  	arm_source/
    	helloworld.c								// PS端code
    	readme.txt
	report/
  	labA_no5_107012045.pdf							// this report
  	labA_no5_107012045.pptx						// slide
	README.md

