
a
GRunning '/opt/Xilinx/Vitis_HLS/2021.2/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px? 
?
xFor user 'g110061575' on host 'ic21' (Linux_x86_64 version 3.10.0-1160.62.1.el7.x86_64) on Fri Apr 29 23:31:53 CST 2022
*HLSZ200-10h px? 
G
-On os "CentOS Linux release 7.9.2009 (Core)"
*HLSZ200-10h px? 
?
?In directory '/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/_x_temp.sw_emu.xilinx_u50_gen3x16_xdma_201920_3/color_detect/color_detect'
*HLSZ200-10h px? 
B
'Sourcing Tcl script 'color_detect.tcl'
*HLSZ200-150h px? 
a
Running: %s
2001510*hls2.
open_project color_detect 2default:defaultZ200-1510h px? 
?
?Creating and opening project '/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/_x_temp.sw_emu.xilinx_u50_gen3x16_xdma_201920_3/color_detect/color_detect/color_detect'.
*HLSZ200-10h px? 
\
Running: %s
2001510*hls2)
set_top color_detect 2default:defaultZ200-1510h px? 
?
Running: %s
2001510*hls2?
?add_files /users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp -cflags  -I /users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect -I /users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include -I /users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect  2default:defaultZ200-1510h px? 
?
?Adding design file '/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp' to the project
*HLSZ200-10h px? 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px? 
?
?Creating and opening solution '/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/_x_temp.sw_emu.xilinx_u50_gen3x16_xdma_201920_3/color_detect/color_detect/color_detect/solution'.
*HLSZ200-10h px? 
?
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h px?eFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-1505.html? 
?
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px? 
?
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px? 
?
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px? 
?
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px? 
c
Running: %s
2001510*hls20
set_part xcu50-fsvh2104-2-e 2default:defaultZ200-1510h px? 
j
Setting target device to '%s'2001611*hls2&
xcu50-fsvh2104-2-e2default:defaultZ200-1611h px? 
x
Running: %s
2001510*hls2E
1create_clock -period 300.000000MHz -name default 2default:defaultZ200-1510h px? 
P
5Setting up clock 'default' with a period of 3.333ns.
*SYNZ201-201h px? 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px? 
n
Running: %s
2001510*hls2;
'config_export -deadlock_detection none 2default:defaultZ200-1510h px? 
s
Running: %s
2001510*hls2@
,config_interface -m_axi_conservative_mode=1 2default:defaultZ200-1510h px? 
f
Running: %s
2001510*hls23
config_interface -m_axi_addr64 2default:defaultZ200-1510h px? 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=0 2default:defaultZ200-1510h px? 
u
Running: %s
2001510*hls2B
.config_export -format xo -ipname color_detect 2default:defaultZ200-1510h px? 
f
Running: %s
2001510*hls23
csynth_design -synthesis_check 2default:defaultZ200-1510h px? 
?
?Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 1.173 GB.
*HLSZ200-111h px? 
?
?Analyzing design file '/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp' ... 
*HLSZ200-10h px? 
?
?'_XF_EROSION_HPP__' is used as a header guard here, followed by #define of a different macro (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:17:9)
*HLSZ207-989h px? 
?
?'_XF_EROSION_HPP_' is defined here; did you mean '_XF_EROSION_HPP__'? (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:18:9)
*HLSZ207-923h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:711:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:716:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:721:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:726:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:731:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:736:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:741:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:746:9)
*HLSZ207-5523h px? 
?
?'factor' in '#pragma HLS array_reshape' is ignored (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_video_mem.hpp:759:47)
*HLSZ207-5525h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:253:9)
*HLSZ207-5523h px? 
?
?'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:257:9)
*HLSZ207-5523h px? 
?
?unused parameter 'src' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:517:30)
*HLSZ207-5287h px? 
?
?unused parameter '_data' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:528:30)
*HLSZ207-5287h px? 
?
?unused parameter 'index' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:541:14)
*HLSZ207-5287h px? 
?
?unused parameter 'index' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:552:20)
*HLSZ207-5287h px? 
?
?unused parameter 'dst' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:785:101)
*HLSZ207-5287h px? 
?
?unused parameter 'stride' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:1043:41)
*HLSZ207-5287h px? 
?
?unused parameter 'index' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:1232:102)
*HLSZ207-5287h px? 
?
?unused parameter 'stride' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:1294:41)
*HLSZ207-5287h px? 
?
?unused parameter 'index' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:1538:34)
*HLSZ207-5287h px? 
?
?the argument to '__builtin_assume' has side effects that will be discarded (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:147:43)
*HLSZ207-4610h px? 
?
?the argument to '__builtin_assume' has side effects that will be discarded (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:148:43)
*HLSZ207-4610h px? 
?
?the argument to '__builtin_assume' has side effects that will be discarded (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:149:46)
*HLSZ207-4610h px? 
?
?the argument to '__builtin_assume' has side effects that will be discarded (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:150:46)
*HLSZ207-4610h px? 
?
?in instantiation of function template specialization 'xf::cv::bgr2hsv<9, 2160, 3840, 1>' requested here (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:68:13)
*HLSZ207-4230h px? 
?
?Finished Source Code Analysis and Preprocessing: CPU user time: 5.22 seconds. CPU system time: 0.38 seconds. Elapsed time: 5.46 seconds; current allocated memory: 264.160 MB.
*HLSZ200-111h px? 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px? 
J
/Auto array partition mode is set into default.
*HLSZ214-284h px? 
?
?In function 'xf::cv::Mat<9, 2160, 3840, 1, 2>::Mat(int, int)', Pragma conflict happens on 'INLINE' and DATAFLOW pragmas: Inline into dataflow region is not suggested (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:670:0)
*HLSZ214-273h px? 
?
?In function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)', Pragma conflict happens on 'INLINE' and DATAFLOW pragmas: Inline into dataflow region is not suggested (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:670:0)
*HLSZ214-273h px? 
?
?Inlining function 'xf::cv::Mat<9, 2160, 3840, 1, 2>::init(int, int, bool)' into 'xf::cv::Mat<9, 2160, 3840, 1, 2>::Mat(int, int)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:675:2)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::init(int, int, bool)' into 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:675:2)
*HLSZ214-131h px? 
?
?Inlining function 'void xf::cv::function_apply<1, 0, 3, 3>(PixelType<0>::uname*, PixelType<0>::uname (*) [3], unsigned char (*) [3])' into 'void xf::cv::Process_function<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], xf::cv::Mat<0, 2160, 3840, 1, 2>&, DataType<0, 1>::name (*) [(3840) >> (xfNPixelsPerCycle<1>::datashift)], PixelType<0>::uname (*) [(xfNPixelsPerCycle<1>::nppc) + ((3) - (1))], DataType<0, 1>::name&, unsigned short, unsigned short, unsigned short&, ap_uint<13>*, ap_uint<13>, int&, int&)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:179:13)
*HLSZ214-131h px? 
?
?Inlining function 'void xf::cv::Process_function<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], xf::cv::Mat<0, 2160, 3840, 1, 2>&, DataType<0, 1>::name (*) [(3840) >> (xfNPixelsPerCycle<1>::datashift)], PixelType<0>::uname (*) [(xfNPixelsPerCycle<1>::nppc) + ((3) - (1))], DataType<0, 1>::name&, unsigned short, unsigned short, unsigned short&, ap_uint<13>*, ap_uint<13>, int&, int&)' into 'void xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:312:9)
*HLSZ214-131h px? 
?
?Inlining function 'void xf::cv::dilate_function_apply<1, 0, 3, 3>(PixelType<0>::uname*, PixelType<0>::uname (*) [3], unsigned char (*) [3])' into 'void xf::cv::Process_function_d<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], xf::cv::Mat<0, 2160, 3840, 1, 2>&, DataType<0, 1>::name (*) [(3840) >> (xfNPixelsPerCycle<1>::datashift)], PixelType<0>::uname (*) [(xfNPixelsPerCycle<1>::nppc) + ((3) - (1))], DataType<0, 1>::name&, unsigned short, unsigned short, unsigned short&, ap_uint<13>*, ap_uint<13>, int&, int&)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:175:13)
*HLSZ214-131h px? 
?
?Inlining function 'void xf::cv::Process_function_d<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], xf::cv::Mat<0, 2160, 3840, 1, 2>&, DataType<0, 1>::name (*) [(3840) >> (xfNPixelsPerCycle<1>::datashift)], PixelType<0>::uname (*) [(xfNPixelsPerCycle<1>::nppc) + ((3) - (1))], DataType<0, 1>::name&, unsigned short, unsigned short, unsigned short&, ap_uint<13>*, ap_uint<13>, int&, int&)' into 'void xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:308:9)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<9, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:44:45)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<9, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:45:48)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:46:48)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:47:48)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:48:48)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:49:48)
*HLSZ214-131h px? 
?
?Inlining function 'xf::cv::Mat<0, 2160, 3840, 1, 2>::Mat(int, int)' into 'color_detect' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L3/examples/colordetect/xf_colordetect_accel.cpp:50:48)
*HLSZ214-131h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:130:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:141:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:142:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:145:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:153:13)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:162:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:163:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:165:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:169:2)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:170:17)
*HLSZ214-291h px? 
?
?Loop 'Apply_dilate_Loop' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:39:5)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:45:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:50:2)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:210:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:214:2)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:132:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:145:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:146:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:149:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:157:13)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:166:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:167:41)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:169:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:173:2)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:174:17)
*HLSZ214-291h px? 
?
?Loop 'Apply_dilate_Loop' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:39:5)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:45:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:50:2)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:214:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:218:2)
*HLSZ214-291h px? 
?
?Loop 'Extract_pixels_loop' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_utility.hpp:324:5)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:106:13)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:107:17)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:44:5)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:50:9)
*HLSZ214-291h px? 
?
?Loop 'anonymous' is marked as complete unroll implied by the pipeline pragma (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:139:13)
*HLSZ214-291h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:97:5) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:102:2) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:130:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:141:41) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:141:41) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:142:41) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:145:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:153:13) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:162:41) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:163:41) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:165:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Pipeline directive for loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:165:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' has been removed because the loop is unrolled completely (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-189h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:45:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:50:2) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:169:2) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:170:17) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:210:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:214:2) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 2 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:313:9) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 2 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:97:5) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:102:2) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:132:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:145:41) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:145:41) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:146:41) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:149:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:157:13) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:166:41) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:167:41) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:169:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Pipeline directive for loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:169:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' has been removed because the loop is unrolled completely (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-189h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:45:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:50:2) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:173:2) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:174:17) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:214:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:218:2) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 2 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:317:9) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 2 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'Extract_pixels_loop' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_utility.hpp:324:5) in function 'xf::cv::xfExtractPixels<1, 1, 0>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_utility.hpp:315:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:106:13) in function 'xf::cv::xFInRange<9, 0, 2160, 3840, 15, 0, 1, 9, 1, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:78:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:107:17) in function 'xf::cv::xFInRange<9, 0, 2160, 3840, 15, 0, 1, 9, 1, 3>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:78:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:44:5) in function 'xf::cv::inrangeproc<9, 1, 15, 0, 9, 1>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:39:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:50:9) in function 'xf::cv::inrangeproc<9, 1, 15, 0, 9, 1>' completely with a factor of 3 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_inrange.hpp:39:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'anonymous' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:139:13) in function 'xf::cv::bgr2hsv<9, 2160, 3840, 1>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:73:0)
*HLSZ214-186h px? 
?
?Inlining function 'xf::cv::MMIter<32, 9, 2160, 3840, 1, 2>::addrbound(int, int)' into 'xf::cv::MMIterIn<32, 9, 2160, 3840, 1, 2>::Axi2AxiStream(ap_uint<32>*, hls::stream<ap_uint<32>, 0>&, int, int, int, int)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_structs.hpp:1018:0)
*HLSZ214-178h px? 
?
?Inlining function 'xf::cv::MMIterIn<32, 9, 2160, 3840, 1, 2>::Array2xfMat(ap_uint<32>*, xf::cv::Mat<9, 2160, 3840, 1, 2>&, int)' into 'void xf::cv::Array2xfMat<32, 9, 2160, 3840, 1>(ap_uint<32>*, xf::cv::Mat<9, 2160, 3840, 1, 2>&, int)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_utility.hpp:786:0)
*HLSZ214-178h px? 
?
?Inlining function 'ap_uint<24> xf::cv::Mat<9, 2160, 3840, 1, 2>::read<2, (void*)0>(int)' into 'void xf::cv::bgr2hsv<9, 2160, 3840, 1>(xf::cv::Mat<9, 2160, 3840, 1, 2>&, xf::cv::Mat<9, 2160, 3840, 1, 2>&)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:73:0)
*HLSZ214-178h px? 
?
?Inlining function 'void xf::cv::Mat<9, 2160, 3840, 1, 2>::write<2, (void*)0>(int, ap_uint<24>)' into 'void xf::cv::bgr2hsv<9, 2160, 3840, 1>(xf::cv::Mat<9, 2160, 3840, 1, 2>&, xf::cv::Mat<9, 2160, 3840, 1, 2>&)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_bgr2hsv.hpp:73:0)
*HLSZ214-178h px? 
?
?Inlining function 'ap_uint<24> xf::cv::Mat<9, 2160, 3840, 1, 2>::read<2, (void*)0>(int)' into 'void xf::cv::xFInRange<9, 0, 2160, 3840, 15, 0, 1, 9, 1, 3>(xf::cv::Mat<9, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], unsigned char (*) [3], unsigned short, unsigned short)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:78:0)
*HLSZ214-178h px? 
?
?Inlining function 'void xf::cv::Mat<0, 2160, 3840, 1, 2>::write<2, (void*)0>(int, ap_uint<8>)' into 'void xf::cv::xFInRange<9, 0, 2160, 3840, 15, 0, 1, 9, 1, 3>(xf::cv::Mat<9, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned char (*) [3], unsigned char (*) [3], unsigned short, unsigned short)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:78:0)
*HLSZ214-178h px? 
?
?Inlining function 'ap_uint<8> xf::cv::Mat<0, 2160, 3840, 1, 2>::read<2, (void*)0>(int)' into 'void xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-178h px? 
?
?Inlining function 'void xf::cv::Mat<0, 2160, 3840, 1, 2>::write<2, (void*)0>(int, ap_uint<8>)' into 'void xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-178h px? 
?
?Inlining function 'ap_uint<8> xf::cv::Mat<0, 2160, 3840, 1, 2>::read<2, (void*)0>(int)' into 'void xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-178h px? 
?
?Inlining function 'void xf::cv::Mat<0, 2160, 3840, 1, 2>::write<2, (void*)0>(int, ap_uint<8>)' into 'void xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, xf::cv::Mat<0, 2160, 3840, 1, 2>&, unsigned short, unsigned short, unsigned char (*) [3])' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-178h px? 
?
?Inlining function 'xf::cv::MMIterOut<8, 0, 2160, 3840, 1, 1, 2>::xfMat2Array(xf::cv::Mat<0, 2160, 3840, 1, 2>&, ap_uint<8>*, int)' into 'void xf::cv::xfMat2Array<8, 0, 2160, 3840, 1, 1>(xf::cv::Mat<0, 2160, 3840, 1, 2>&, ap_uint<8>*, int)' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/common/xf_utility.hpp:776:0)
*HLSZ214-178h px? 
?
?Unrolling loop 'Apply_dilate_Loop' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:39:5) in function 'xf::cv::xfdilate<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:234:0)
*HLSZ214-186h px? 
?
?Unrolling loop 'Apply_dilate_Loop' (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:39:5) in function 'xf::cv::xferode<2160, 3840, 1, 0, 1, 0, 3841, 3, 3>' completely with a factor of 1 (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:238:0)
*HLSZ214-186h px? 
?
xApplying array_partition to 'kernel_new.1': Complete partitioning on dimension 1. Complete partitioning on dimension 2.
*HLSZ214-248h px? 
?
vApplying array_partition to 'kernel_new': Complete partitioning on dimension 1. Complete partitioning on dimension 2.
*HLSZ214-248h px? 
?
?Applying array_partition to 'low_th': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:132:16)
*HLSZ214-248h px? 
?
?Applying array_partition to 'high_th': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_colorthresholding.hpp:132:38)
*HLSZ214-248h px? 
?
?Applying array_partition to 'buf_cop.i': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:87:37)
*HLSZ214-248h px? 
?
?Applying array_partition to 'row_ind': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:239:17)
*HLSZ214-248h px? 
?
?Applying array_partition to 'buf': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_erosion.hpp:255:40)
*HLSZ214-248h px? 
?
?Applying array_partition to 'buf_cop.i': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:87:37)
*HLSZ214-248h px? 
?
?Applying array_partition to 'row_ind': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:235:17)
*HLSZ214-248h px? 
?
?Applying array_partition to 'buf': Complete partitioning on dimension 1. (/users/course/2022S/HLS17000000/g110061575/HLS/Lab_C/02_partition_1_4k/vision/L1/include/imgproc/xf_dilation.hpp:251:40)
*HLSZ214-248h px? 
?
?Finished Compiling Optimization and Transform: CPU user time: 5.15 seconds. CPU system time: 0.39 seconds. Elapsed time: 7.07 seconds; current allocated memory: 264.160 MB.
*HLSZ200-111h px? 
?
?Finished Checking Pragmas: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 264.160 MB.
*HLSZ200-111h px? 
x
SRunning only source code synthesis checks, skipping scheduling and RTL generation.
2001493*hlsZ200-1493h px? 
?
?Finished Command csynth_design CPU user time: 10.43 seconds. CPU system time: 0.79 seconds. Elapsed time: 12.63 seconds; current allocated memory: -937.109 MB.
*HLSZ200-111h px? 
6
HLS completed successfully
*HLSZ200-150h px? 
?
?Total CPU user time: 13.36 seconds. Total CPU system time: 1.15 seconds. Total elapsed time: 14.79 seconds; peak allocated memory: 1.173 GB.
*HLSZ200-112h px? 
?
Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Fri Apr 29 23:32:07 20222default:defaultZ17-206h px? 


End Record