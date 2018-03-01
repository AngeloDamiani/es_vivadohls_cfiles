; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floyd_warshall_str = internal unnamed_addr constant [15 x i8] c"floyd_warshall\00"
@OUTER_LOOP_MIDDLE_LO = internal unnamed_addr constant [34 x i8] c"OUTER_LOOP_MIDDLE_LOOP_INNER_LOOP\00"
@MIDDLE_LOOP_INNER_LO = internal unnamed_addr constant [23 x i8] c"MIDDLE_LOOP_INNER_LOOP\00"
@p_str3 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @floyd_warshall([100 x i32]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @floyd_warshall_str) nounwind
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %indvar_flatten1 = phi i10 [ 0, %0 ], [ %indvar_flatten_next1, %._crit_edge ]
  %h = phi i4 [ 0, %0 ], [ %tmp_1_mid2_v, %._crit_edge ]
  %indvar_flatten = phi i8 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %i = phi i4 [ 0, %0 ], [ %tmp_4_mid2, %._crit_edge ]
  %j = phi i4 [ 0, %0 ], [ %j_1, %._crit_edge ]
  %exitcond_flatten1 = icmp eq i10 %indvar_flatten1, -24
  %indvar_flatten_next1 = add i10 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %3, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store i32 %tmp_8, i32* %A_addr_2, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset7
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_s) nounwind
  %j_1 = add i4 %j_mid2, 1
  %indvar_flatten_op = add i8 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten9, i8 1, i8 %indvar_flatten_op
  br label %1

.reset7:                                          ; preds = %1
  %h_1 = add i4 %h, 1
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @OUTER_LOOP_MIDDLE_LO)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1000, i64 1000, i64 1000) nounwind
  %exitcond_flatten9 = icmp eq i8 %indvar_flatten, 100
  %i_mid = select i1 %exitcond_flatten9, i4 0, i4 %i
  %tmp_1_mid2_v = select i1 %exitcond_flatten9, i4 %h_1, i4 %h
  %tmp_1_mid2_cast = zext i4 %tmp_1_mid2_v to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_mid2_v, i3 0)
  %p_shl2_cast = zext i7 %tmp to i8
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_1_mid2_v, i1 false)
  %p_shl3_cast = zext i5 %tmp_1 to i8
  %tmp_2 = add i8 %p_shl2_cast, %p_shl3_cast
  %not_exitcond_flatten = xor i1 %exitcond_flatten9, true
  %tmp_4 = icmp eq i4 %j, -6
  %tmp_5_mid = and i1 %tmp_4, %not_exitcond_flatten
  %i_1 = add i4 %i_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @MIDDLE_LOOP_INNER_LO)
  %tmp_3 = or i1 %tmp_5_mid, %exitcond_flatten9
  %j_mid2 = select i1 %tmp_3, i4 0, i4 %j
  %tmp_4_mid2 = select i1 %tmp_5_mid, i4 %i_1, i4 %i_mid
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2, i3 0)
  %p_shl_cast = zext i7 %tmp_5 to i8
  %tmp_6 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_4_mid2, i1 false)
  %p_shl1_cast = zext i5 %tmp_6 to i8
  %tmp_7 = add i8 %p_shl_cast, %p_shl1_cast
  %tmp_10 = add i8 %tmp_1_mid2_cast, %tmp_7
  %tmp_12_cast = zext i8 %tmp_10 to i64
  %A_addr = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_12_cast
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %A_load = load i32* %A_addr, align 4
  %tmp_7_cast = zext i4 %j_mid2 to i8
  %tmp_11 = add i8 %tmp_7_cast, %tmp_2
  %tmp_13_cast = zext i8 %tmp_11 to i64
  %A_addr_1 = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_13_cast
  %tmp_12 = add i8 %tmp_7_cast, %tmp_7
  %tmp_14_cast = zext i8 %tmp_12 to i64
  %A_addr_2 = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_14_cast
  %A_load_1 = load i32* %A_addr_1, align 4
  %tmp_8 = add i32 %A_load_1, %A_load
  %A_load_2 = load i32* %A_addr_2, align 4
  %tmp_9 = icmp ult i32 %tmp_8, %A_load_2
  br i1 %tmp_9, label %2, label %._crit_edge

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_3 = zext i3 %1 to i7
  %empty_4 = shl i7 %empty, 3
  %empty_5 = or i7 %empty_4, %empty_3
  ret i7 %empty_5
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_6 = zext i1 %1 to i5
  %empty_7 = shl i5 %empty, 1
  %empty_8 = or i5 %empty_7, %empty_6
  ret i5 %empty_8
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE [10]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"A"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"A", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 9, i32 1}
