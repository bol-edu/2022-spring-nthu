; ModuleID = 'D:/NTHU/HLS/FINAL/ASE_CHANNEL_KBEST_ver5/MIMO/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_TOP_ir(%"class.hls::stream<ap_uint<8>, 0>"* %in_data, %"class.hls::stream<ap_uint<8>, 0>"* %out_data, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* nocapture readonly %SNR) local_unnamed_addr #1 {
entry:
  %in_data_copy = alloca i8, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i8* %in_data_copy) ]
  %out_data_copy = alloca i8, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i8* %out_data_copy) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* %in_data, i8* nonnull align 512 %in_data_copy, %"class.hls::stream<ap_uint<8>, 0>"* %out_data, i8* nonnull align 512 %out_data_copy)
  call void @apatb_TOP_hw(i8* %in_data_copy, i8* %out_data_copy, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %SNR)
  call fastcc void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* %in_data, i8* nonnull align 512 %in_data_copy, %"class.hls::stream<ap_uint<8>, 0>"* %out_data, i8* nonnull align 512 %out_data_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.779"(i8* align 512 %1, %"class.hls::stream<ap_uint<8>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.779"(i8* align 512 %3, %"class.hls::stream<ap_uint<8>, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, i8* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.773"(%"class.hls::stream<ap_uint<8>, 0>"* nonnull %0, i8* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.773"(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca i8
  %3 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %6 = call %"struct.ap_int_base<8, false>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_uint<8>, 0>s.i8"(i8 %5)
  %oldret1 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %6, 0
  %oldret = insertvalue %"class.hls::stream<ap_uint<8>, 0>" undef, %"struct.ap_uint<8>" %oldret1, 0
  store %"class.hls::stream<ap_uint<8>, 0>" %oldret, %"class.hls::stream<ap_uint<8>, 0>"* %3
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %3 to i8*
  %8 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %7, i8* %8)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal %"struct.ap_int_base<8, false>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_uint<8>, 0>s.i8"(i8 %A) #6 {
  %.0 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %A, 0
  %.01 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.01, 0
  %oldret = extractvalue %"struct.ap_uint<8>" %.02, 0
  ret %"struct.ap_int_base<8, false>" %oldret
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.779"(i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.782"(i8* nonnull align 512 %0, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.782"(i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %2
  %9 = call i8 @"_llvm.fpga.pack.bits.i8.s_class.hls::stream<ap_uint<8>, 0>s"(%"class.hls::stream<ap_uint<8>, 0>" %8)
  store i8 %9, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i8 @"_llvm.fpga.pack.bits.i8.s_class.hls::stream<ap_uint<8>, 0>s"(%"class.hls::stream<ap_uint<8>, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<ap_uint<8>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<8>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.0.0, 0
  ret i8 %A.0.0.0.0
}

declare void @apatb_TOP_hw(i8*, i8*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*)

define void @TOP_hw_stub_wrapper(i8*, i8*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*) #7 {
entry:
  %3 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  %4 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  call void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* %3, i8* %0, %"class.hls::stream<ap_uint<8>, 0>"* %4, i8* %1)
  call void @TOP_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"* %3, %"class.hls::stream<ap_uint<8>, 0>"* %4, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %2)
  call void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* %3, i8* %0, %"class.hls::stream<ap_uint<8>, 0>"* %4, i8* %1)
  ret void
}

declare void @TOP_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { alwaysinline nounwind readnone }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
