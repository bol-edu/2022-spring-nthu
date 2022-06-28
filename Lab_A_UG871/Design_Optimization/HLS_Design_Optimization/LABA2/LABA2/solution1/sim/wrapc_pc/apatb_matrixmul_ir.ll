; ModuleID = 'C:/Users/User/Documents/HLS_LABA_1/LABA2/LABA2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_matrixmul_ir([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) local_unnamed_addr #1 {
entry:
  %a_copy1 = alloca [3 x i24], align 512
  %b_copy2 = alloca [3 x i24], align 512
  %res_copy = alloca [3 x [3 x i16]], align 512
  %0 = bitcast [3 x i8]* %a to [3 x [3 x i8]]*
  %1 = bitcast [3 x i8]* %b to [3 x [3 x i8]]*
  %2 = bitcast [3 x i16]* %res to [3 x [3 x i16]]*
  call void @copy_in([3 x [3 x i8]]* %0, [3 x i24]* nonnull align 512 %a_copy1, [3 x [3 x i8]]* %1, [3 x i24]* nonnull align 512 %b_copy2, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
  %a_copy.gep3 = getelementptr [3 x i24], [3 x i24]* %a_copy1, i64 0, i32 0
  %3 = getelementptr inbounds [3 x [3 x i16]], [3 x [3 x i16]]* %res_copy, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i24* %a_copy.gep3, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"([3 x i24]* %b_copy2, i32 0, i32 1, i32 0) ], !dbg !367
  call void @apatb_matrixmul_hw([3 x i24]* %a_copy1, [3 x i24]* %b_copy2, [3 x i16]* %3)
  call void @copy_out([3 x [3 x i8]]* %0, [3 x i24]* nonnull align 512 %a_copy1, [3 x [3 x i8]]* %1, [3 x i24]* nonnull align 512 %b_copy2, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
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
define internal void @onebyonecpy_hls.p0a3a3i8.3.4([3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x [3 x i8]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x i24]* %0, null
  %3 = icmp eq [3 x [3 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %dst.addr571 = getelementptr [3 x i24], [3 x i24]* %0, i64 0, i64 %for.loop.idx10
  %dst.addr571.promoted = load i24, i24* %dst.addr571, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %5 = phi i24 [ %dst.addr571.promoted, %for.loop ], [ %21, %for.loop2 ]
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 8, %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %7 = load i8, i8* %src.addr68, align 1
  %8 = add i64 %6, 7
  %9 = trunc i64 %6 to i24
  %10 = zext i8 %7 to i24
  %11 = shl i24 %10, %9
  %12 = trunc i64 %8 to i24
  %13 = add nuw nsw i24 %12, 1
  %14 = shl i24 1, %13
  %15 = icmp uge i24 %13, 24
  %16 = select i1 %15, i24 0, i24 %14
  %17 = shl i24 1, %9
  %18 = sub i24 %16, %17
  %19 = xor i24 %18, -1
  %20 = and i24 %5, %19
  %21 = or i24 %20, %11
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i24 %21, i24* %dst.addr571, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.5.6([3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x [3 x i8]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x i24]* %0, null
  %3 = icmp eq [3 x [3 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = mul nuw nsw i64 8, %for.loop.idx10
  %6 = add i64 %5, 7
  %7 = trunc i64 %5 to i24
  %8 = trunc i64 %6 to i24
  %9 = add nuw nsw i24 %8, 1
  %10 = shl i24 1, %9
  %11 = icmp uge i24 %9, 24
  %12 = select i1 %11, i24 0, i24 %10
  %13 = shl i24 1, %7
  %14 = sub i24 %12, %13
  %15 = xor i24 %14, -1
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr571 = getelementptr [3 x i24], [3 x i24]* %0, i64 0, i64 %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %16 = load i8, i8* %src.addr68, align 1
  %17 = load i24, i24* %dst.addr571, align 4
  %18 = zext i8 %16 to i24
  %19 = shl i24 %18, %7
  %20 = and i24 %17, %15
  %21 = or i24 %20, %19
  store i24 %21, i24* %dst.addr571, align 4
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
define internal void @copy_in([3 x [3 x i8]]* readonly "orig.arg.no"="0", [3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [3 x [3 x i8]]* readonly "orig.arg.no"="2", [3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [3 x [3 x i16]]* readonly "orig.arg.no"="4", [3 x [3 x i16]]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.3.4([3 x i24]* align 512 %1, [3 x [3 x i8]]* %0)
  call void @onebyonecpy_hls.p0a3a3i8.5.6([3 x i24]* align 512 %3, [3 x [3 x i8]]* %2)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* align 512 %5, [3 x [3 x i16]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.11.12([3 x [3 x i8]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x [3 x i8]]* %0, null
  %3 = icmp eq [3 x i24]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr681 = getelementptr [3 x i24], [3 x i24]* %1, i64 0, i64 %for.loop.idx10
  %5 = load i24, i24* %src.addr681, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %6 = mul nuw nsw i64 8, %for.loop.idx39
  %7 = add i64 %6, 7
  %8 = trunc i64 %6 to i24
  %9 = trunc i64 %7 to i24
  %10 = add nuw nsw i24 %9, 1
  %11 = shl i24 1, %10
  %12 = icmp uge i24 %10, 24
  %13 = select i1 %12, i24 0, i24 %11
  %14 = shl i24 1, %8
  %15 = sub i24 %13, %14
  %16 = and i24 %5, %15
  %17 = lshr i24 %16, %8
  %18 = trunc i24 %17 to i8
  store i8 %18, i8* %dst.addr57, align 1
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
define internal void @onebyonecpy_hls.p0a3a3i8.13.14([3 x [3 x i8]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x [3 x i8]]* %0, null
  %3 = icmp eq [3 x i24]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = mul nuw nsw i64 8, %for.loop.idx10
  %6 = add i64 %5, 7
  %7 = trunc i64 %5 to i24
  %8 = trunc i64 %6 to i24
  %9 = add nuw nsw i24 %8, 1
  %10 = shl i24 1, %9
  %11 = icmp uge i24 %9, 24
  %12 = select i1 %11, i24 0, i24 %10
  %13 = shl i24 1, %7
  %14 = sub i24 %12, %13
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr681 = getelementptr [3 x i24], [3 x i24]* %1, i64 0, i64 %for.loop.idx39
  %15 = load i24, i24* %src.addr681, align 4
  %16 = and i24 %15, %14
  %17 = lshr i24 %16, %7
  %18 = trunc i24 %17 to i8
  store i8 %18, i8* %dst.addr57, align 1
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
define internal void @copy_out([3 x [3 x i8]]* "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [3 x [3 x i8]]* "orig.arg.no"="2", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [3 x [3 x i16]]* "orig.arg.no"="4", [3 x [3 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.11.12([3 x [3 x i8]]* %0, [3 x i24]* align 512 %1)
  call void @onebyonecpy_hls.p0a3a3i8.13.14([3 x [3 x i8]]* %2, [3 x i24]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %4, [3 x [3 x i16]]* align 512 %5)
  ret void
}

declare void @apatb_matrixmul_hw([3 x i24]*, [3 x i24]*, [3 x i16]*)

define void @matrixmul_hw_stub_wrapper([3 x i24]*, [3 x i24]*, [3 x i16]*) #5 {
entry:
  %3 = alloca [3 x [3 x i8]]
  %4 = alloca [3 x [3 x i8]]
  %5 = bitcast [3 x i16]* %2 to [3 x [3 x i16]]*
  call void @copy_out([3 x [3 x i8]]* %3, [3 x i24]* %0, [3 x [3 x i8]]* %4, [3 x i24]* %1, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  %6 = bitcast [3 x [3 x i8]]* %3 to [3 x i8]*
  %7 = bitcast [3 x [3 x i8]]* %4 to [3 x i8]*
  %8 = bitcast [3 x [3 x i16]]* %5 to [3 x i16]*
  call void @matrixmul_hw_stub([3 x i8]* %6, [3 x i8]* %7, [3 x i16]* %8)
  call void @copy_in([3 x [3 x i8]]* %3, [3 x i24]* %0, [3 x [3 x i8]]* %4, [3 x i24]* %1, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  ret void
}

declare void @matrixmul_hw_stub([3 x i8]*, [3 x i8]*, [3 x i16]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 53, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "matrixmul", linkageName: "_Z9matrixmulPA3_cS0_PA3_s", scope: !7, file: !7, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !24, variables: !4)
!7 = !DIFile(filename: "matrixmul.cpp", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS_LABA_1\5CLABA2")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !17, !20}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, elements: !15)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_a_t", file: !13, line: 60, baseType: !14)
!13 = !DIFile(filename: "./matrixmul.h", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS_LABA_1\5CLABA2")
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !15)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_b_t", file: !13, line: 61, baseType: !14)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !15)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_t", file: !13, line: 62, baseType: !23)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !25, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !26)
!25 = !DIFile(filename: "C:/Users/User/Documents/HLS_LABA_1/LABA2/LABA2/solution1/.autopilot/db\5Cmatrixmul.pp.0.cpp", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS_LABA_1\5CLABA2")
!26 = !{!27, !35, !37, !39, !43, !45, !47, !49, !51, !53, !55, !57, !63, !67, !69, !71, !76, !78, !80, !82, !84, !86, !88, !90, !93, !95, !99, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !128, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !166, !170, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !196, !200, !204, !206, !208, !210, !215, !219, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !252, !256, !260, !262, !264, !266, !272, !276, !280, !282, !284, !286, !288, !290, !292, !296, !300, !302, !304, !306, !308, !312, !316, !320, !322, !324, !326, !328, !330, !332, !336, !340, !344, !346, !350, !354, !356, !358, !360, !362, !364, !366}
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !29, file: !34, line: 106)
!28 = !DINamespace(name: "std", scope: null)
!29 = !DISubprogram(name: "acos", scope: !30, file: !30, line: 190, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS_LABA_1\5CLABA2")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !33}
!33 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!34 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.2/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "C:\5CUsers\5CUser\5CDocuments\5CHLS_LABA_1\5CLABA2")
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !36, file: !34, line: 125)
!36 = !DISubprogram(name: "asin", scope: !30, file: !30, line: 189, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !38, file: !34, line: 144)
!38 = !DISubprogram(name: "atan", scope: !30, file: !30, line: 191, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !40, file: !34, line: 163)
!40 = !DISubprogram(name: "atan2", scope: !30, file: !30, line: 192, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DISubroutineType(types: !42)
!42 = !{!33, !33, !33}
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !44, file: !34, line: 184)
!44 = !DISubprogram(name: "ceil", scope: !30, file: !30, line: 198, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !46, file: !34, line: 203)
!46 = !DISubprogram(name: "cos", scope: !30, file: !30, line: 184, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !48, file: !34, line: 222)
!48 = !DISubprogram(name: "cosh", scope: !30, file: !30, line: 187, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !50, file: !34, line: 241)
!50 = !DISubprogram(name: "exp", scope: !30, file: !30, line: 193, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !52, file: !34, line: 260)
!52 = !DISubprogram(name: "fabs", scope: !30, file: !30, line: 204, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !54, file: !34, line: 279)
!54 = !DISubprogram(name: "floor", scope: !30, file: !30, line: 199, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !56, file: !34, line: 298)
!56 = !DISubprogram(name: "fmod", scope: !30, file: !30, line: 246, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !58, file: !34, line: 319)
!58 = !DISubprogram(name: "frexp", scope: !30, file: !30, line: 244, type: !59, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{!33, !33, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !64, file: !34, line: 338)
!64 = !DISubprogram(name: "ldexp", scope: !30, file: !30, line: 243, type: !65, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DISubroutineType(types: !66)
!66 = !{!33, !33, !62}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !68, file: !34, line: 357)
!68 = !DISubprogram(name: "log", scope: !30, file: !30, line: 194, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !70, file: !34, line: 376)
!70 = !DISubprogram(name: "log10", scope: !30, file: !30, line: 195, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !72, file: !34, line: 395)
!72 = !DISubprogram(name: "modf", scope: !30, file: !30, line: 245, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{!33, !33, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !77, file: !34, line: 407)
!77 = !DISubprogram(name: "pow", scope: !30, file: !30, line: 196, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !79, file: !34, line: 444)
!79 = !DISubprogram(name: "sin", scope: !30, file: !30, line: 183, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !81, file: !34, line: 463)
!81 = !DISubprogram(name: "sinh", scope: !30, file: !30, line: 186, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !83, file: !34, line: 482)
!83 = !DISubprogram(name: "sqrt", scope: !30, file: !30, line: 197, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !85, file: !34, line: 501)
!85 = !DISubprogram(name: "tan", scope: !30, file: !30, line: 185, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !87, file: !34, line: 520)
!87 = !DISubprogram(name: "tanh", scope: !30, file: !30, line: 188, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !89, file: !34, line: 1077)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !30, line: 373, baseType: !33)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !91, file: !34, line: 1078)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !30, line: 372, baseType: !92)
!92 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !94, file: !34, line: 1081)
!94 = !DISubprogram(name: "acosh", scope: !30, file: !30, line: 705, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !96, file: !34, line: 1082)
!96 = !DISubprogram(name: "acoshf", scope: !30, file: !30, line: 706, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!92, !92}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !100, file: !34, line: 1083)
!100 = !DISubprogram(name: "acoshl", scope: !30, file: !30, line: 707, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !103}
!103 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !105, file: !34, line: 1085)
!105 = !DISubprogram(name: "asinh", scope: !30, file: !30, line: 710, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !107, file: !34, line: 1086)
!107 = !DISubprogram(name: "asinhf", scope: !30, file: !30, line: 711, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !109, file: !34, line: 1087)
!109 = !DISubprogram(name: "asinhl", scope: !30, file: !30, line: 712, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !111, file: !34, line: 1089)
!111 = !DISubprogram(name: "atanh", scope: !30, file: !30, line: 715, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !113, file: !34, line: 1090)
!113 = !DISubprogram(name: "atanhf", scope: !30, file: !30, line: 716, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !115, file: !34, line: 1091)
!115 = !DISubprogram(name: "atanhl", scope: !30, file: !30, line: 717, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !117, file: !34, line: 1093)
!117 = !DISubprogram(name: "cbrt", scope: !30, file: !30, line: 877, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !119, file: !34, line: 1094)
!119 = !DISubprogram(name: "cbrtf", scope: !30, file: !30, line: 878, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !121, file: !34, line: 1095)
!121 = !DISubprogram(name: "cbrtl", scope: !30, file: !30, line: 879, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !123, file: !34, line: 1097)
!123 = !DISubprogram(name: "copysign", scope: !30, file: !30, line: 1063, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !125, file: !34, line: 1098)
!125 = !DISubprogram(name: "copysignf", scope: !30, file: !30, line: 1064, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DISubroutineType(types: !127)
!127 = !{!92, !92, !92}
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !129, file: !34, line: 1099)
!129 = !DISubprogram(name: "copysignl", scope: !30, file: !30, line: 1065, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!103, !103, !103}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !133, file: !34, line: 1101)
!133 = !DISubprogram(name: "erf", scope: !30, file: !30, line: 901, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !135, file: !34, line: 1102)
!135 = !DISubprogram(name: "erff", scope: !30, file: !30, line: 902, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !137, file: !34, line: 1103)
!137 = !DISubprogram(name: "erfl", scope: !30, file: !30, line: 903, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !139, file: !34, line: 1105)
!139 = !DISubprogram(name: "erfc", scope: !30, file: !30, line: 906, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !141, file: !34, line: 1106)
!141 = !DISubprogram(name: "erfcf", scope: !30, file: !30, line: 907, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !143, file: !34, line: 1107)
!143 = !DISubprogram(name: "erfcl", scope: !30, file: !30, line: 908, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !145, file: !34, line: 1109)
!145 = !DISubprogram(name: "exp2", scope: !30, file: !30, line: 728, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !147, file: !34, line: 1110)
!147 = !DISubprogram(name: "exp2f", scope: !30, file: !30, line: 729, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !149, file: !34, line: 1111)
!149 = !DISubprogram(name: "exp2l", scope: !30, file: !30, line: 730, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !151, file: !34, line: 1113)
!151 = !DISubprogram(name: "expm1", scope: !30, file: !30, line: 734, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !153, file: !34, line: 1114)
!153 = !DISubprogram(name: "expm1f", scope: !30, file: !30, line: 735, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !155, file: !34, line: 1115)
!155 = !DISubprogram(name: "expm1l", scope: !30, file: !30, line: 736, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !157, file: !34, line: 1117)
!157 = !DISubprogram(name: "fdim", scope: !30, file: !30, line: 1109, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !159, file: !34, line: 1118)
!159 = !DISubprogram(name: "fdimf", scope: !30, file: !30, line: 1110, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !161, file: !34, line: 1119)
!161 = !DISubprogram(name: "fdiml", scope: !30, file: !30, line: 1111, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !163, file: !34, line: 1121)
!163 = !DISubprogram(name: "fma", scope: !30, file: !30, line: 1130, type: !164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{!33, !33, !33, !33}
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !167, file: !34, line: 1122)
!167 = !DISubprogram(name: "fmaf", scope: !30, file: !30, line: 1131, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!92, !92, !92, !92}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !171, file: !34, line: 1123)
!171 = !DISubprogram(name: "fmal", scope: !30, file: !30, line: 1132, type: !172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!103, !103, !103, !103}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !175, file: !34, line: 1125)
!175 = !DISubprogram(name: "fmax", scope: !30, file: !30, line: 1119, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !177, file: !34, line: 1126)
!177 = !DISubprogram(name: "fmaxf", scope: !30, file: !30, line: 1120, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !179, file: !34, line: 1127)
!179 = !DISubprogram(name: "fmaxl", scope: !30, file: !30, line: 1121, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !181, file: !34, line: 1129)
!181 = !DISubprogram(name: "fmin", scope: !30, file: !30, line: 1124, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !183, file: !34, line: 1130)
!183 = !DISubprogram(name: "fminf", scope: !30, file: !30, line: 1125, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !185, file: !34, line: 1131)
!185 = !DISubprogram(name: "fminl", scope: !30, file: !30, line: 1126, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !187, file: !34, line: 1133)
!187 = !DISubprogram(name: "hypot", scope: !30, file: !30, line: 882, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !189, file: !34, line: 1134)
!189 = !DISubprogram(name: "hypotf", scope: !30, file: !30, line: 883, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !191, file: !34, line: 1135)
!191 = !DISubprogram(name: "hypotl", scope: !30, file: !30, line: 887, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !193, file: !34, line: 1137)
!193 = !DISubprogram(name: "ilogb", scope: !30, file: !30, line: 748, type: !194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{!62, !33}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !197, file: !34, line: 1138)
!197 = !DISubprogram(name: "ilogbf", scope: !30, file: !30, line: 749, type: !198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{!62, !92}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !201, file: !34, line: 1139)
!201 = !DISubprogram(name: "ilogbl", scope: !30, file: !30, line: 750, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!62, !103}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !205, file: !34, line: 1141)
!205 = !DISubprogram(name: "lgamma", scope: !30, file: !30, line: 911, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !207, file: !34, line: 1142)
!207 = !DISubprogram(name: "lgammaf", scope: !30, file: !30, line: 912, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !209, file: !34, line: 1143)
!209 = !DISubprogram(name: "lgammal", scope: !30, file: !30, line: 913, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !211, file: !34, line: 1145)
!211 = !DISubprogram(name: "llrint", scope: !30, file: !30, line: 946, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !33}
!214 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !216, file: !34, line: 1146)
!216 = !DISubprogram(name: "llrintf", scope: !30, file: !30, line: 947, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!214, !92}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !220, file: !34, line: 1147)
!220 = !DISubprogram(name: "llrintl", scope: !30, file: !30, line: 948, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!214, !103}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !224, file: !34, line: 1149)
!224 = !DISubprogram(name: "llround", scope: !30, file: !30, line: 1038, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !226, file: !34, line: 1150)
!226 = !DISubprogram(name: "llroundf", scope: !30, file: !30, line: 1039, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !228, file: !34, line: 1151)
!228 = !DISubprogram(name: "llroundl", scope: !30, file: !30, line: 1040, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !230, file: !34, line: 1153)
!230 = !DISubprogram(name: "log1p", scope: !30, file: !30, line: 768, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !232, file: !34, line: 1154)
!232 = !DISubprogram(name: "log1pf", scope: !30, file: !30, line: 769, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !234, file: !34, line: 1155)
!234 = !DISubprogram(name: "log1pl", scope: !30, file: !30, line: 770, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !236, file: !34, line: 1157)
!236 = !DISubprogram(name: "log2", scope: !30, file: !30, line: 773, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !238, file: !34, line: 1158)
!238 = !DISubprogram(name: "log2f", scope: !30, file: !30, line: 774, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !240, file: !34, line: 1159)
!240 = !DISubprogram(name: "log2l", scope: !30, file: !30, line: 775, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !242, file: !34, line: 1161)
!242 = !DISubprogram(name: "logb", scope: !30, file: !30, line: 778, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !244, file: !34, line: 1162)
!244 = !DISubprogram(name: "logbf", scope: !30, file: !30, line: 779, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !246, file: !34, line: 1163)
!246 = !DISubprogram(name: "logbl", scope: !30, file: !30, line: 780, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !248, file: !34, line: 1165)
!248 = !DISubprogram(name: "lrint", scope: !30, file: !30, line: 942, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !33}
!251 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !253, file: !34, line: 1166)
!253 = !DISubprogram(name: "lrintf", scope: !30, file: !30, line: 943, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!251, !92}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !257, file: !34, line: 1167)
!257 = !DISubprogram(name: "lrintl", scope: !30, file: !30, line: 944, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubroutineType(types: !259)
!259 = !{!251, !103}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !261, file: !34, line: 1169)
!261 = !DISubprogram(name: "lround", scope: !30, file: !30, line: 1035, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !263, file: !34, line: 1170)
!263 = !DISubprogram(name: "lroundf", scope: !30, file: !30, line: 1036, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !265, file: !34, line: 1171)
!265 = !DISubprogram(name: "lroundl", scope: !30, file: !30, line: 1037, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !267, file: !34, line: 1173)
!267 = !DISubprogram(name: "nan", scope: !30, file: !30, line: 1087, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!33, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !273, file: !34, line: 1174)
!273 = !DISubprogram(name: "nanf", scope: !30, file: !30, line: 1088, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!92, !270}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !277, file: !34, line: 1175)
!277 = !DISubprogram(name: "nanl", scope: !30, file: !30, line: 1089, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!103, !270}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !281, file: !34, line: 1177)
!281 = !DISubprogram(name: "nearbyint", scope: !30, file: !30, line: 931, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !283, file: !34, line: 1178)
!283 = !DISubprogram(name: "nearbyintf", scope: !30, file: !30, line: 932, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !285, file: !34, line: 1179)
!285 = !DISubprogram(name: "nearbyintl", scope: !30, file: !30, line: 933, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !287, file: !34, line: 1181)
!287 = !DISubprogram(name: "nextafter", scope: !30, file: !30, line: 1098, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !289, file: !34, line: 1182)
!289 = !DISubprogram(name: "nextafterf", scope: !30, file: !30, line: 1099, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !291, file: !34, line: 1183)
!291 = !DISubprogram(name: "nextafterl", scope: !30, file: !30, line: 1100, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !293, file: !34, line: 1185)
!293 = !DISubprogram(name: "nexttoward", scope: !30, file: !30, line: 1103, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!33, !33, !103}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !297, file: !34, line: 1186)
!297 = !DISubprogram(name: "nexttowardf", scope: !30, file: !30, line: 1104, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!92, !92, !103}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !301, file: !34, line: 1187)
!301 = !DISubprogram(name: "nexttowardl", scope: !30, file: !30, line: 1105, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !303, file: !34, line: 1189)
!303 = !DISubprogram(name: "remainder", scope: !30, file: !30, line: 1053, type: !41, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !305, file: !34, line: 1190)
!305 = !DISubprogram(name: "remainderf", scope: !30, file: !30, line: 1054, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !307, file: !34, line: 1191)
!307 = !DISubprogram(name: "remainderl", scope: !30, file: !30, line: 1055, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !309, file: !34, line: 1193)
!309 = !DISubprogram(name: "remquo", scope: !30, file: !30, line: 1058, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!33, !33, !33, !61}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !313, file: !34, line: 1194)
!313 = !DISubprogram(name: "remquof", scope: !30, file: !30, line: 1059, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!92, !92, !92, !61}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !317, file: !34, line: 1195)
!317 = !DISubprogram(name: "remquol", scope: !30, file: !30, line: 1060, type: !318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!103, !103, !103, !61}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !321, file: !34, line: 1197)
!321 = !DISubprogram(name: "rint", scope: !30, file: !30, line: 937, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !323, file: !34, line: 1198)
!323 = !DISubprogram(name: "rintf", scope: !30, file: !30, line: 938, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !325, file: !34, line: 1199)
!325 = !DISubprogram(name: "rintl", scope: !30, file: !30, line: 939, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !327, file: !34, line: 1201)
!327 = !DISubprogram(name: "round", scope: !30, file: !30, line: 1030, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !329, file: !34, line: 1202)
!329 = !DISubprogram(name: "roundf", scope: !30, file: !30, line: 1031, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !331, file: !34, line: 1203)
!331 = !DISubprogram(name: "roundl", scope: !30, file: !30, line: 1032, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !333, file: !34, line: 1205)
!333 = !DISubprogram(name: "scalbln", scope: !30, file: !30, line: 871, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!33, !33, !251}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !337, file: !34, line: 1206)
!337 = !DISubprogram(name: "scalblnf", scope: !30, file: !30, line: 872, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!92, !92, !251}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !341, file: !34, line: 1207)
!341 = !DISubprogram(name: "scalblnl", scope: !30, file: !30, line: 873, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!103, !103, !251}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !345, file: !34, line: 1209)
!345 = !DISubprogram(name: "scalbn", scope: !30, file: !30, line: 867, type: !65, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !347, file: !34, line: 1210)
!347 = !DISubprogram(name: "scalbnf", scope: !30, file: !30, line: 868, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!92, !92, !62}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !351, file: !34, line: 1211)
!351 = !DISubprogram(name: "scalbnl", scope: !30, file: !30, line: 869, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!103, !103, !62}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !355, file: !34, line: 1213)
!355 = !DISubprogram(name: "tgamma", scope: !30, file: !30, line: 918, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !357, file: !34, line: 1214)
!357 = !DISubprogram(name: "tgammaf", scope: !30, file: !30, line: 919, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !359, file: !34, line: 1215)
!359 = !DISubprogram(name: "tgammal", scope: !30, file: !30, line: 920, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !361, file: !34, line: 1217)
!361 = !DISubprogram(name: "trunc", scope: !30, file: !30, line: 1044, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !363, file: !34, line: 1218)
!363 = !DISubprogram(name: "truncf", scope: !30, file: !30, line: 1045, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !365, file: !34, line: 1219)
!365 = !DISubprogram(name: "truncl", scope: !30, file: !30, line: 1046, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !28, file: !13, line: 50)
!367 = !DILocation(line: 52, column: 60, scope: !6)
