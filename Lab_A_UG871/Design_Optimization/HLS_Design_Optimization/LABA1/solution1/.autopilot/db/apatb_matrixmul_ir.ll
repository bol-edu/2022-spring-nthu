; ModuleID = 'C:/Users/User/Documents/HLS_LABA_1/LABA1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_matrixmul_ir([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [3 x [3 x i8]], align 512
  %b_copy = alloca [3 x [3 x i8]], align 512
  %res_copy = alloca [3 x [3 x i16]], align 512
  %0 = bitcast [3 x i8]* %a to [3 x [3 x i8]]*
  %1 = bitcast [3 x i8]* %b to [3 x [3 x i8]]*
  %2 = bitcast [3 x i16]* %res to [3 x [3 x i16]]*
  call fastcc void @copy_in([3 x [3 x i8]]* %0, [3 x [3 x i8]]* nonnull align 512 %a_copy, [3 x [3 x i8]]* %1, [3 x [3 x i8]]* nonnull align 512 %b_copy, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
  %3 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %a_copy, i32 0, i32 0
  %4 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %b_copy, i32 0, i32 0
  %5 = getelementptr inbounds [3 x [3 x i16]], [3 x [3 x i16]]* %res_copy, i32 0, i32 0
  call void @apatb_matrixmul_hw([3 x i8]* %3, [3 x i8]* %4, [3 x i16]* %5)
  call fastcc void @copy_out([3 x [3 x i8]]* %0, [3 x [3 x i8]]* nonnull align 512 %a_copy, [3 x [3 x i8]]* %1, [3 x [3 x i8]]* nonnull align 512 %b_copy, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([3 x [3 x i8]]* readonly, [3 x [3 x i8]]* noalias align 512, [3 x [3 x i8]]* readonly, [3 x [3 x i8]]* noalias align 512, [3 x [3 x i16]]* readonly, [3 x [3 x i16]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a3i8([3 x [3 x i8]]* align 512 %1, [3 x [3 x i8]]* %0)
  call fastcc void @onebyonecpy_hls.p0a3a3i8([3 x [3 x i8]]* align 512 %3, [3 x [3 x i8]]* %2)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* align 512 %5, [3 x [3 x i16]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3a3i8([3 x [3 x i8]]* noalias align 512, [3 x [3 x i8]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x [3 x i8]]* %0, null
  %3 = icmp eq [3 x [3 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i8, i8* %src.addr68, align 1
  store i8 %5, i8* %dst.addr57, align 1
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* noalias align 512, [3 x [3 x i16]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x [3 x i16]]* %0, null
  %3 = icmp eq [3 x [3 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i16, i16* %src.addr68, align 2
  store i16 %5, i16* %dst.addr57, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([3 x [3 x i8]]*, [3 x [3 x i8]]* noalias readonly align 512, [3 x [3 x i8]]*, [3 x [3 x i8]]* noalias readonly align 512, [3 x [3 x i16]]*, [3 x [3 x i16]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a3i8([3 x [3 x i8]]* %0, [3 x [3 x i8]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a3a3i8([3 x [3 x i8]]* %2, [3 x [3 x i8]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %4, [3 x [3 x i16]]* align 512 %5)
  ret void
}

declare void @apatb_matrixmul_hw([3 x i8]*, [3 x i8]*, [3 x i16]*)

define void @matrixmul_hw_stub_wrapper([3 x i8]*, [3 x i8]*, [3 x i16]*) #4 {
entry:
  %3 = bitcast [3 x i8]* %0 to [3 x [3 x i8]]*
  %4 = bitcast [3 x i8]* %1 to [3 x [3 x i8]]*
  %5 = bitcast [3 x i16]* %2 to [3 x [3 x i16]]*
  call void @copy_out([3 x [3 x i8]]* null, [3 x [3 x i8]]* %3, [3 x [3 x i8]]* null, [3 x [3 x i8]]* %4, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  %6 = bitcast [3 x [3 x i8]]* %3 to [3 x i8]*
  %7 = bitcast [3 x [3 x i8]]* %4 to [3 x i8]*
  %8 = bitcast [3 x [3 x i16]]* %5 to [3 x i16]*
  call void @matrixmul_hw_stub([3 x i8]* %6, [3 x i8]* %7, [3 x i16]* %8)
  call void @copy_in([3 x [3 x i8]]* null, [3 x [3 x i8]]* %3, [3 x [3 x i8]]* null, [3 x [3 x i8]]* %4, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  ret void
}

declare void @matrixmul_hw_stub([3 x i8]*, [3 x i8]*, [3 x i16]*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
