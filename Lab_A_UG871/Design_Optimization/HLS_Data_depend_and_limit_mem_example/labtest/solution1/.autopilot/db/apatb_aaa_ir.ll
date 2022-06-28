; ModuleID = 'C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/labtest/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_aaa_ir(i32* %a, i32* %b, i32* %r) local_unnamed_addr #0 {
entry:
  %a_copy_0 = alloca i32, align 512
  %a_copy_1 = alloca i32, align 512
  %a_copy_2 = alloca i32, align 512
  %a_copy_3 = alloca i32, align 512
  %a_copy_4 = alloca i32, align 512
  %a_copy_5 = alloca i32, align 512
  %a_copy_6 = alloca i32, align 512
  %a_copy_7 = alloca i32, align 512
  %a_copy_8 = alloca i32, align 512
  %a_copy_9 = alloca i32, align 512
  %a_copy_10 = alloca i32, align 512
  %a_copy_11 = alloca i32, align 512
  %b_copy_0 = alloca i32, align 512
  %b_copy_1 = alloca i32, align 512
  %b_copy_2 = alloca i32, align 512
  %b_copy_3 = alloca i32, align 512
  %b_copy_4 = alloca i32, align 512
  %b_copy_5 = alloca i32, align 512
  %b_copy_6 = alloca i32, align 512
  %b_copy_7 = alloca i32, align 512
  %b_copy_8 = alloca i32, align 512
  %b_copy_9 = alloca i32, align 512
  %b_copy_10 = alloca i32, align 512
  %b_copy_11 = alloca i32, align 512
  %r_copy_0 = alloca i32, align 512
  %r_copy_1 = alloca i32, align 512
  %r_copy_2 = alloca i32, align 512
  %r_copy_3 = alloca i32, align 512
  %r_copy_4 = alloca i32, align 512
  %r_copy_5 = alloca i32, align 512
  %r_copy_6 = alloca i32, align 512
  %r_copy_7 = alloca i32, align 512
  %r_copy_8 = alloca i32, align 512
  %r_copy_9 = alloca i32, align 512
  %r_copy_10 = alloca i32, align 512
  %r_copy_11 = alloca i32, align 512
  %0 = bitcast i32* %a to [12 x i32]*
  %1 = bitcast i32* %b to [12 x i32]*
  %2 = bitcast i32* %r to [12 x i32]*
  call void @copy_in([12 x i32]* %0, i32* nonnull align 512 %a_copy_0, i32* nonnull align 512 %a_copy_1, i32* nonnull align 512 %a_copy_2, i32* nonnull align 512 %a_copy_3, i32* nonnull align 512 %a_copy_4, i32* nonnull align 512 %a_copy_5, i32* nonnull align 512 %a_copy_6, i32* nonnull align 512 %a_copy_7, i32* nonnull align 512 %a_copy_8, i32* nonnull align 512 %a_copy_9, i32* nonnull align 512 %a_copy_10, i32* nonnull align 512 %a_copy_11, [12 x i32]* %1, i32* nonnull align 512 %b_copy_0, i32* nonnull align 512 %b_copy_1, i32* nonnull align 512 %b_copy_2, i32* nonnull align 512 %b_copy_3, i32* nonnull align 512 %b_copy_4, i32* nonnull align 512 %b_copy_5, i32* nonnull align 512 %b_copy_6, i32* nonnull align 512 %b_copy_7, i32* nonnull align 512 %b_copy_8, i32* nonnull align 512 %b_copy_9, i32* nonnull align 512 %b_copy_10, i32* nonnull align 512 %b_copy_11, [12 x i32]* %2, i32* nonnull align 512 %r_copy_0, i32* nonnull align 512 %r_copy_1, i32* nonnull align 512 %r_copy_2, i32* nonnull align 512 %r_copy_3, i32* nonnull align 512 %r_copy_4, i32* nonnull align 512 %r_copy_5, i32* nonnull align 512 %r_copy_6, i32* nonnull align 512 %r_copy_7, i32* nonnull align 512 %r_copy_8, i32* nonnull align 512 %r_copy_9, i32* nonnull align 512 %r_copy_10, i32* nonnull align 512 %r_copy_11)
  call void @apatb_aaa_hw(i32* %a_copy_0, i32* %a_copy_1, i32* %a_copy_2, i32* %a_copy_3, i32* %a_copy_4, i32* %a_copy_5, i32* %a_copy_6, i32* %a_copy_7, i32* %a_copy_8, i32* %a_copy_9, i32* %a_copy_10, i32* %a_copy_11, i32* %b_copy_0, i32* %b_copy_1, i32* %b_copy_2, i32* %b_copy_3, i32* %b_copy_4, i32* %b_copy_5, i32* %b_copy_6, i32* %b_copy_7, i32* %b_copy_8, i32* %b_copy_9, i32* %b_copy_10, i32* %b_copy_11, i32* %r_copy_0, i32* %r_copy_1, i32* %r_copy_2, i32* %r_copy_3, i32* %r_copy_4, i32* %r_copy_5, i32* %r_copy_6, i32* %r_copy_7, i32* %r_copy_8, i32* %r_copy_9, i32* %r_copy_10, i32* %r_copy_11)
  call void @copy_out([12 x i32]* %0, i32* nonnull align 512 %a_copy_0, i32* nonnull align 512 %a_copy_1, i32* nonnull align 512 %a_copy_2, i32* nonnull align 512 %a_copy_3, i32* nonnull align 512 %a_copy_4, i32* nonnull align 512 %a_copy_5, i32* nonnull align 512 %a_copy_6, i32* nonnull align 512 %a_copy_7, i32* nonnull align 512 %a_copy_8, i32* nonnull align 512 %a_copy_9, i32* nonnull align 512 %a_copy_10, i32* nonnull align 512 %a_copy_11, [12 x i32]* %1, i32* nonnull align 512 %b_copy_0, i32* nonnull align 512 %b_copy_1, i32* nonnull align 512 %b_copy_2, i32* nonnull align 512 %b_copy_3, i32* nonnull align 512 %b_copy_4, i32* nonnull align 512 %b_copy_5, i32* nonnull align 512 %b_copy_6, i32* nonnull align 512 %b_copy_7, i32* nonnull align 512 %b_copy_8, i32* nonnull align 512 %b_copy_9, i32* nonnull align 512 %b_copy_10, i32* nonnull align 512 %b_copy_11, [12 x i32]* %2, i32* nonnull align 512 %r_copy_0, i32* nonnull align 512 %r_copy_1, i32* nonnull align 512 %r_copy_2, i32* nonnull align 512 %r_copy_3, i32* nonnull align 512 %r_copy_4, i32* nonnull align 512 %r_copy_5, i32* nonnull align 512 %r_copy_6, i32* nonnull align 512 %r_copy_7, i32* nonnull align 512 %r_copy_8, i32* nonnull align 512 %r_copy_9, i32* nonnull align 512 %r_copy_10, i32* nonnull align 512 %r_copy_11)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a12i32.3.4(i32* noalias align 512 "orig.arg.no"="0" %_0, i32* noalias align 512 "orig.arg.no"="0" %_1, i32* noalias align 512 "orig.arg.no"="0" %_2, i32* noalias align 512 "orig.arg.no"="0" %_3, i32* noalias align 512 "orig.arg.no"="0" %_4, i32* noalias align 512 "orig.arg.no"="0" %_5, i32* noalias align 512 "orig.arg.no"="0" %_6, i32* noalias align 512 "orig.arg.no"="0" %_7, i32* noalias align 512 "orig.arg.no"="0" %_8, i32* noalias align 512 "orig.arg.no"="0" %_9, i32* noalias align 512 "orig.arg.no"="0" %_10, i32* noalias align 512 "orig.arg.no"="0" %_11, [12 x i32]* noalias readonly "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [12 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  %_01 = bitcast i32* %_0 to i8*
  %_12 = bitcast i32* %_1 to i8*
  %_23 = bitcast i32* %_2 to i8*
  %_34 = bitcast i32* %_3 to i8*
  %_45 = bitcast i32* %_4 to i8*
  %_56 = bitcast i32* %_5 to i8*
  %_67 = bitcast i32* %_6 to i8*
  %_78 = bitcast i32* %_7 to i8*
  %_89 = bitcast i32* %_8 to i8*
  %_910 = bitcast i32* %_9 to i8*
  %_1011 = bitcast i32* %_10 to i8*
  %_1112 = bitcast i32* %_11 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %src.addr.gep2 = getelementptr [12 x i32], [12 x i32]* %0, i64 0, i64 %for.loop.idx3
  %4 = bitcast i32* %src.addr.gep2 to i8*
  switch i64 %for.loop.idx3, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
  ]

.default:                                         ; preds = %for.loop
  unreachable

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_12, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_23, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_34, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_45, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_56, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_67, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_78, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.8:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_89, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.9:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_910, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.10:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1011, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.11:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1112, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([12 x i32]* readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" %_0, i32* noalias align 512 "orig.arg.no"="1" %_1, i32* noalias align 512 "orig.arg.no"="1" %_2, i32* noalias align 512 "orig.arg.no"="1" %_3, i32* noalias align 512 "orig.arg.no"="1" %_4, i32* noalias align 512 "orig.arg.no"="1" %_5, i32* noalias align 512 "orig.arg.no"="1" %_6, i32* noalias align 512 "orig.arg.no"="1" %_7, i32* noalias align 512 "orig.arg.no"="1" %_8, i32* noalias align 512 "orig.arg.no"="1" %_9, i32* noalias align 512 "orig.arg.no"="1" %_10, i32* noalias align 512 "orig.arg.no"="1" %_11, [12 x i32]* readonly "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" %_01, i32* noalias align 512 "orig.arg.no"="3" %_12, i32* noalias align 512 "orig.arg.no"="3" %_23, i32* noalias align 512 "orig.arg.no"="3" %_34, i32* noalias align 512 "orig.arg.no"="3" %_45, i32* noalias align 512 "orig.arg.no"="3" %_56, i32* noalias align 512 "orig.arg.no"="3" %_67, i32* noalias align 512 "orig.arg.no"="3" %_78, i32* noalias align 512 "orig.arg.no"="3" %_89, i32* noalias align 512 "orig.arg.no"="3" %_910, i32* noalias align 512 "orig.arg.no"="3" %_1011, i32* noalias align 512 "orig.arg.no"="3" %_1112, [12 x i32]* readonly "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" %_013, i32* noalias align 512 "orig.arg.no"="5" %_114, i32* noalias align 512 "orig.arg.no"="5" %_215, i32* noalias align 512 "orig.arg.no"="5" %_316, i32* noalias align 512 "orig.arg.no"="5" %_417, i32* noalias align 512 "orig.arg.no"="5" %_518, i32* noalias align 512 "orig.arg.no"="5" %_619, i32* noalias align 512 "orig.arg.no"="5" %_720, i32* noalias align 512 "orig.arg.no"="5" %_821, i32* noalias align 512 "orig.arg.no"="5" %_922, i32* noalias align 512 "orig.arg.no"="5" %_1023, i32* noalias align 512 "orig.arg.no"="5" %_1124) #3 {
entry:
  call void @onebyonecpy_hls.p0a12i32.3.4(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, [12 x i32]* %0)
  call void @onebyonecpy_hls.p0a12i32.3.4(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, i32* align 512 %_89, i32* align 512 %_910, i32* align 512 %_1011, i32* align 512 %_1112, [12 x i32]* %1)
  call void @onebyonecpy_hls.p0a12i32.3.4(i32* align 512 %_013, i32* align 512 %_114, i32* align 512 %_215, i32* align 512 %_316, i32* align 512 %_417, i32* align 512 %_518, i32* align 512 %_619, i32* align 512 %_720, i32* align 512 %_821, i32* align 512 %_922, i32* align 512 %_1023, i32* align 512 %_1124, [12 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a12i32.9.10([12 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" %_7, i32* noalias readonly align 512 "orig.arg.no"="1" %_8, i32* noalias readonly align 512 "orig.arg.no"="1" %_9, i32* noalias readonly align 512 "orig.arg.no"="1" %_10, i32* noalias readonly align 512 "orig.arg.no"="1" %_11) #2 {
entry:
  %1 = icmp eq [12 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  %_01 = bitcast i32* %_0 to i8*
  %_12 = bitcast i32* %_1 to i8*
  %_23 = bitcast i32* %_2 to i8*
  %_34 = bitcast i32* %_3 to i8*
  %_45 = bitcast i32* %_4 to i8*
  %_56 = bitcast i32* %_5 to i8*
  %_67 = bitcast i32* %_6 to i8*
  %_78 = bitcast i32* %_7 to i8*
  %_89 = bitcast i32* %_8 to i8*
  %_910 = bitcast i32* %_9 to i8*
  %_1011 = bitcast i32* %_10 to i8*
  %_1112 = bitcast i32* %_11 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %dst.addr.gep1 = getelementptr [12 x i32], [12 x i32]* %0, i64 0, i64 %for.loop.idx3
  %4 = bitcast i32* %dst.addr.gep1 to i8*
  switch i64 %for.loop.idx3, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
  ]

.default:                                         ; preds = %for.loop
  unreachable

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_01, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_12, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_23, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_34, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_45, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_56, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_67, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_78, i64 4, i1 false)
  br label %.exit

.case.8:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_89, i64 4, i1 false)
  br label %.exit

.case.9:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_910, i64 4, i1 false)
  br label %.exit

.case.10:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1011, i64 4, i1 false)
  br label %.exit

.case.11:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1112, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([12 x i32]* "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" %_7, i32* noalias readonly align 512 "orig.arg.no"="1" %_8, i32* noalias readonly align 512 "orig.arg.no"="1" %_9, i32* noalias readonly align 512 "orig.arg.no"="1" %_10, i32* noalias readonly align 512 "orig.arg.no"="1" %_11, [12 x i32]* "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" %_01, i32* noalias readonly align 512 "orig.arg.no"="3" %_12, i32* noalias readonly align 512 "orig.arg.no"="3" %_23, i32* noalias readonly align 512 "orig.arg.no"="3" %_34, i32* noalias readonly align 512 "orig.arg.no"="3" %_45, i32* noalias readonly align 512 "orig.arg.no"="3" %_56, i32* noalias readonly align 512 "orig.arg.no"="3" %_67, i32* noalias readonly align 512 "orig.arg.no"="3" %_78, i32* noalias readonly align 512 "orig.arg.no"="3" %_89, i32* noalias readonly align 512 "orig.arg.no"="3" %_910, i32* noalias readonly align 512 "orig.arg.no"="3" %_1011, i32* noalias readonly align 512 "orig.arg.no"="3" %_1112, [12 x i32]* "orig.arg.no"="4", i32* noalias readonly align 512 "orig.arg.no"="5" %_013, i32* noalias readonly align 512 "orig.arg.no"="5" %_114, i32* noalias readonly align 512 "orig.arg.no"="5" %_215, i32* noalias readonly align 512 "orig.arg.no"="5" %_316, i32* noalias readonly align 512 "orig.arg.no"="5" %_417, i32* noalias readonly align 512 "orig.arg.no"="5" %_518, i32* noalias readonly align 512 "orig.arg.no"="5" %_619, i32* noalias readonly align 512 "orig.arg.no"="5" %_720, i32* noalias readonly align 512 "orig.arg.no"="5" %_821, i32* noalias readonly align 512 "orig.arg.no"="5" %_922, i32* noalias readonly align 512 "orig.arg.no"="5" %_1023, i32* noalias readonly align 512 "orig.arg.no"="5" %_1124) #4 {
entry:
  call void @onebyonecpy_hls.p0a12i32.9.10([12 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11)
  call void @onebyonecpy_hls.p0a12i32.9.10([12 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, i32* align 512 %_89, i32* align 512 %_910, i32* align 512 %_1011, i32* align 512 %_1112)
  call void @onebyonecpy_hls.p0a12i32.9.10([12 x i32]* %2, i32* align 512 %_013, i32* align 512 %_114, i32* align 512 %_215, i32* align 512 %_316, i32* align 512 %_417, i32* align 512 %_518, i32* align 512 %_619, i32* align 512 %_720, i32* align 512 %_821, i32* align 512 %_922, i32* align 512 %_1023, i32* align 512 %_1124)
  ret void
}

declare void @apatb_aaa_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

define void @aaa_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %36 = alloca [12 x i32]
  %37 = alloca [12 x i32]
  %38 = alloca [12 x i32]
  call void @copy_out([12 x i32]* %36, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, [12 x i32]* %37, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, [12 x i32]* %38, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  %39 = bitcast [12 x i32]* %36 to i32*
  %40 = bitcast [12 x i32]* %37 to i32*
  %41 = bitcast [12 x i32]* %38 to i32*
  call void @aaa_hw_stub(i32* %39, i32* %40, i32* %41)
  call void @copy_in([12 x i32]* %36, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, [12 x i32]* %37, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, [12 x i32]* %38, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  ret void
}

declare void @aaa_hw_stub(i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
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
