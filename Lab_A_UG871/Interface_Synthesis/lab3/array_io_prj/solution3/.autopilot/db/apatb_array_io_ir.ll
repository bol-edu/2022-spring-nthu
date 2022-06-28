; ModuleID = 'D:/lab_A/Interface_Synthesis/lab3/array_io_prj/solution3/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_array_io_ir(i16* %d_o, i16* %d_i) local_unnamed_addr #1 {
entry:
  %d_o_copy_0 = alloca [8 x i16], align 512
  %d_o_copy_1 = alloca [8 x i16], align 512
  %d_o_copy_2 = alloca [8 x i16], align 512
  %d_o_copy_3 = alloca [8 x i16], align 512
  %d_i_copy_0 = alloca [16 x i16], align 512
  %d_i_copy_1 = alloca [16 x i16], align 512
  %0 = bitcast i16* %d_o to [32 x i16]*
  %1 = bitcast i16* %d_i to [32 x i16]*
  call void @copy_in([32 x i16]* %0, [8 x i16]* nonnull align 512 %d_o_copy_0, [8 x i16]* nonnull align 512 %d_o_copy_1, [8 x i16]* nonnull align 512 %d_o_copy_2, [8 x i16]* nonnull align 512 %d_o_copy_3, [32 x i16]* %1, [16 x i16]* nonnull align 512 %d_i_copy_0, [16 x i16]* nonnull align 512 %d_i_copy_1)
  %d_o_copy.gep_0 = getelementptr [8 x i16], [8 x i16]* %d_o_copy_0, i64 0, i32 0
  %d_o_copy.gep_1 = getelementptr [8 x i16], [8 x i16]* %d_o_copy_1, i64 0, i32 0
  %d_o_copy.gep_2 = getelementptr [8 x i16], [8 x i16]* %d_o_copy_2, i64 0, i32 0
  %d_o_copy.gep_3 = getelementptr [8 x i16], [8 x i16]* %d_o_copy_3, i64 0, i32 0
  %d_i_copy.gep_0 = getelementptr [16 x i16], [16 x i16]* %d_i_copy_0, i64 0, i32 0
  %d_i_copy.gep_1 = getelementptr [16 x i16], [16 x i16]* %d_i_copy_1, i64 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_o_copy.gep_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_i_copy.gep_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !26
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i16* %d_i_copy.gep_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !26
  call void @apatb_array_io_hw([8 x i16]* %d_o_copy_0, [8 x i16]* %d_o_copy_1, [8 x i16]* %d_o_copy_2, [8 x i16]* %d_o_copy_3, [16 x i16]* %d_i_copy_0, [16 x i16]* %d_i_copy_1)
  call void @copy_out([32 x i16]* %0, [8 x i16]* nonnull align 512 %d_o_copy_0, [8 x i16]* nonnull align 512 %d_o_copy_1, [8 x i16]* nonnull align 512 %d_o_copy_2, [8 x i16]* nonnull align 512 %d_o_copy_3, [32 x i16]* %1, [16 x i16]* nonnull align 512 %d_i_copy_0, [16 x i16]* nonnull align 512 %d_i_copy_1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [8 x i16]* %_0, null
  %2 = icmp eq [32 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 8
  %5 = urem i64 %for.loop.idx1, 8
  %dst.addr_0 = getelementptr [8 x i16], [8 x i16]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [8 x i16], [8 x i16]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [8 x i16], [8 x i16]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [8 x i16], [8 x i16]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i16, i16* %src.addr, align 2
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_1, align 2
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_2, align 2
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_3, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.5.6([16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [16 x i16]* %_0, null
  %2 = icmp eq [32 x i16]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 16
  %5 = urem i64 %for.loop.idx1, 16
  %dst.addr_0 = getelementptr [16 x i16], [16 x i16]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [16 x i16], [16 x i16]* %_1, i64 0, i64 %5
  %src.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i16, i16* %src.addr, align 2
  %7 = trunc i64 %4 to i1
  %cond = icmp eq i1 %7, false
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %6, i16* %dst.addr_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %7)
  store i16 %6, i16* %dst.addr_1, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([32 x i16]* readonly "orig.arg.no"="0", [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [32 x i16]* readonly "orig.arg.no"="2", [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [16 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12) #4 {
entry:
  call void @onebyonecpy_hls.p0a32i16.3.4([8 x i16]* align 512 %_0, [8 x i16]* align 512 %_1, [8 x i16]* align 512 %_2, [8 x i16]* align 512 %_3, [32 x i16]* %0)
  call void @onebyonecpy_hls.p0a32i16.5.6([16 x i16]* align 512 %_01, [16 x i16]* align 512 %_12, [32 x i16]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.11.12([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #3 {
entry:
  %1 = icmp eq [32 x i16]* %0, null
  %2 = icmp eq [8 x i16]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 8
  %5 = urem i64 %for.loop.idx1, 8
  %src.addr_0 = getelementptr [8 x i16], [8 x i16]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [8 x i16], [8 x i16]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [8 x i16], [8 x i16]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [8 x i16], [8 x i16]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %src.addr_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i16, i16* %src.addr_1, align 2
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load i16, i16* %src.addr_2, align 2
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load i16, i16* %src.addr_3, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi i16 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store i16 %7, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a32i16.13.14([32 x i16]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1) #3 {
entry:
  %1 = icmp eq [32 x i16]* %0, null
  %2 = icmp eq [16 x i16]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 16
  %5 = urem i64 %for.loop.idx1, 16
  %src.addr_0 = getelementptr [16 x i16], [16 x i16]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [16 x i16], [16 x i16]* %_1, i64 0, i64 %5
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i16, i16* %src.addr_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %6)
  %_12 = load i16, i16* %src.addr_1, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %7 = phi i16 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ]
  store i16 %7, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([32 x i16]* "orig.arg.no"="0", [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [8 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [32 x i16]* "orig.arg.no"="2", [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [16 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12) #5 {
entry:
  call void @onebyonecpy_hls.p0a32i16.11.12([32 x i16]* %0, [8 x i16]* align 512 %_0, [8 x i16]* align 512 %_1, [8 x i16]* align 512 %_2, [8 x i16]* align 512 %_3)
  call void @onebyonecpy_hls.p0a32i16.13.14([32 x i16]* %1, [16 x i16]* align 512 %_01, [16 x i16]* align 512 %_12)
  ret void
}

declare void @apatb_array_io_hw([8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [16 x i16]*, [16 x i16]*)

define void @array_io_hw_stub_wrapper([8 x i16]*, [8 x i16]*, [8 x i16]*, [8 x i16]*, [16 x i16]*, [16 x i16]*) #6 {
entry:
  %6 = alloca [32 x i16]
  %7 = alloca [32 x i16]
  call void @copy_out([32 x i16]* %6, [8 x i16]* %0, [8 x i16]* %1, [8 x i16]* %2, [8 x i16]* %3, [32 x i16]* %7, [16 x i16]* %4, [16 x i16]* %5)
  %8 = bitcast [32 x i16]* %6 to i16*
  %9 = bitcast [32 x i16]* %7 to i16*
  call void @array_io_hw_stub(i16* %8, i16* %9)
  call void @copy_in([32 x i16]* %6, [8 x i16]* %0, [8 x i16]* %1, [8 x i16]* %2, [8 x i16]* %3, [32 x i16]* %7, [16 x i16]* %4, [16 x i16]* %5)
  ret void
}

declare void @array_io_hw_stub(i16*, i16*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 58, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "array_io", scope: !7, file: !7, line: 57, type: !8, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!7 = !DIFile(filename: "array_io.c", directory: "D:\5Clab_A\5CInterface_Synthesis\5Clab3")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_t", file: !12, line: 52, baseType: !13)
!12 = !DIFile(filename: "./array_io.h", directory: "D:\5Clab_A\5CInterface_Synthesis\5Clab3")
!13 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_t", file: !12, line: 51, baseType: !13)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !18)
!17 = !DIFile(filename: "D:/lab_A/Interface_Synthesis/lab3/array_io_prj/solution3/.autopilot/db\5Carray_io.pp.0.c", directory: "D:\5Clab_A\5CInterface_Synthesis\5Clab3")
!18 = !{!19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "acc", scope: !6, file: !7, line: 61, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !24)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "dacc_t", file: !12, line: 53, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25}
!25 = !DISubrange(count: 8)
!26 = !DILocation(line: 57, column: 129, scope: !6)
