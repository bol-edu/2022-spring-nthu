make -C /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt
make[1]: Entering directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt'
flock /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/.lock make -C /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt lib
make[2]: Entering directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt'
make -C /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/lib
make[3]: Entering directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/lib'
ar -crus libdcmt.a check32.o prescr.o mt19937.o eqdeg.o seive.o genmtrand.o init.o
make[3]: Leaving directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/lib'
make[2]: Leaving directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt'
make[1]: Leaving directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt'
Configured: settings.tcl
----
set XPART xcu50-fsvh2104-2-e
set CSIM 1
set CSYNTH 0
set COSIM 0
set VIVADO_SYN 0
set VIVADO_IMPL 0
set XF_PROJ_ROOT "/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance"
set CUR_DIR "/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src"
----
vitis_hls -f run_hls.tcl;

****** Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
  **** SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
  **** IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
    ** Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

source /opt/Xilinx/Vitis_HLS/2021.2/scripts/vitis_hls/hls.tcl -notrace
INFO: Applying HLS Y2K22 patch v1.2 for IP revision
INFO: [HLS 200-10] Running '/opt/Xilinx/Vitis_HLS/2021.2/bin/unwrapped/lnx64.o/vitis_hls'
INFO: [HLS 200-10] For user 'g110064521' on host 'ic21' (Linux_x86_64 version 3.10.0-1160.62.1.el7.x86_64) on Wed May 18 17:23:41 CST 2022
INFO: [HLS 200-10] On os "CentOS Linux release 7.9.2009 (Core)"
INFO: [HLS 200-10] In directory '/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src'
Sourcing Tcl script 'run_hls.tcl'
INFO: [HLS 200-1510] Running: open_project -reset normalRNG.prj 
INFO: [HLS 200-10] Opening and resetting project '/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj'.
WARNING: [HLS 200-40] No /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj/sol/sol.aps file found.
INFO: [HLS 200-1510] Running: add_files normal_rng.cpp -cflags -I/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/include -I/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/include 
INFO: [HLS 200-10] Adding design file 'normal_rng.cpp' to the project
INFO: [HLS 200-1510] Running: add_files -tb test_normal_rng.cpp /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/lib/libdcmt.a -cflags -I/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/include -I/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/include 
INFO: [HLS 200-10] Adding test bench file 'test_normal_rng.cpp' to the project
INFO: [HLS 200-10] Adding test bench file '/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/ext/dcmt/dcmt/lib/libdcmt.a' to the project
INFO: [HLS 200-1510] Running: set_top dut 
INFO: [HLS 200-1510] Running: open_solution -reset sol 
INFO: [HLS 200-10] Creating and opening solution '/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj/sol'.
INFO: [HLS 200-10] Cleaning up the solution database.
WARNING: [HLS 200-40] No /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj/sol/sol.aps file found.
INFO: [HLS 200-1505] Using default flow_target 'vivado'
Resolution: For help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-1505.html
INFO: [HLS 200-1510] Running: set_part xcu50-fsvh2104-2-e 
INFO: [HLS 200-1611] Setting target device to 'xcu50-fsvh2104-2-e'
INFO: [HLS 200-1510] Running: create_clock -period 300MHz 
INFO: [SYN 201-201] Setting up clock 'default' with a period of 3.333ns.
INFO: [HLS 200-1510] Running: csim_design -ldflags -L./ -ldcmt 
INFO: [SIM 211-2] *************** CSIM start ***************
INFO: [SIM 211-4] CSIM will launch GCC as the compiler.
make[1]: Entering directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj/sol/csim/build'
   Compiling ../../../../test_normal_rng.cpp in debug mode
   Compiling ../../../../normal_rng.cpp in debug mode
   Generating csim.exe
make[1]: Leaving directory `/users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/tests/normalRNG/HLS_Final_Channel_Model/src/normalRNG.prj/sol/csim/build'
../../../../test_normal_rng.cpp:16:0: warning: "SAMPLE_NUM" redefined
 #define SAMPLE_NUM (1 << 4)
 
In file included from ../../../../test_normal_rng.cpp:4:0:
../../../../normal_rng.hpp:3:0: note: this is the location of the previous definition
 #define SAMPLE_NUM (1 << 10)
 
In file included from /opt/Xilinx/Vitis_HLS/2021.2/include/hls_hotbm_apfixed.h:45:0,
                 from /opt/Xilinx/Vitis_HLS/2021.2/include/hls_math.h:1065,
                 from /users/course/2022S/HLS17000000/g110064521/HLS_C/Vitis_Libraries/quantitative_finance/L1/include/xf_fintech/rng.hpp:27,
                 from ../../../../normal_rng.cpp:2:
/opt/Xilinx/Vitis_HLS/2021.2/include/utils/x_hls_utils.h:246:10: warning: ‘hls_preserve’ attribute directive ignored [-Wattributes]
 T reg(T d)
          ^
Real

 output_randn[0]: 0.101749
 output_randn[1]: -1.18245
 output_randn[2]: 0.208107
 output_randn[3]: 0.587063
 output_randn[4]: -0.169227
 output_randn[5]: 0.954878
 output_randn[6]: -1.67469
 output_randn[7]: 0.74383
 output_randn[8]: -0.0548694
 output_randn[9]: 0.226884
 output_randn[10]: -1.17549
 output_randn[11]: -0.367302
 output_randn[12]: 0.728888
 output_randn[13]: -0.0373227
 output_randn[14]: -0.899673
 output_randn[15]: -0.49177


Imag

 output_randn[0]: -0.663198
 output_randn[1]: -0.664924
 output_randn[2]: 0.523229
 output_randn[3]: 0.926598
 output_randn[4]: 2.28256
 output_randn[5]: 0.546873
 output_randn[6]: 0.371271
 output_randn[7]: -0.0746391
 output_randn[8]: -1.12042
 output_randn[9]: 1.683
 output_randn[10]: 0.867632
 output_randn[11]: -0.337022
 output_randn[12]: -0.889954
 output_randn[13]: -0.819023
 output_randn[14]: -1.05493
 output_randn[15]: 1.37531
INFO: [SIM 211-1] CSim done with 0 errors.
INFO: [SIM 211-3] *************** CSIM finish ***************
INFO: [HLS 200-111] Finished Command csim_design CPU user time: 6.93 seconds. CPU system time: 0.79 seconds. Elapsed time: 7.12 seconds; current allocated memory: -937.109 MB.
INFO: [HLS 200-112] Total CPU user time: 9.71 seconds. Total CPU system time: 1.49 seconds. Total elapsed time: 9.35 seconds; peak allocated memory: 264.160 MB.
INFO: [Common 17-206] Exiting vitis_hls at Wed May 18 17:23:50 2022...
