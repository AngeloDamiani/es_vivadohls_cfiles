; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@banker_algorithm_str = internal unnamed_addr constant [17 x i8] c"banker_algorithm\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i64 @banker_algorithm([3 x i64]* %available, [12 x i64]* %allocated, [12 x i64]* %max, [12 x i64]* %need) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i64]* %available) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %allocated) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %max) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %need) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i64 0) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @banker_algorithm_str) nounwind
  br label %.loopexit3

.loopexit3.loopexit:                              ; preds = %.preheader
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.loopexit3.loopexit ]
  %i_cast2_cast = zext i3 %i to i5
  %tmp_5 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i, i2 0)
  %tmp_7 = sub i5 %tmp_5, %i_cast2_cast
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %i, i32 2)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind
  %i_1 = add i3 %i, 1
  br i1 %tmp, label %.loopexit.loopexit6, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %j = phi i2 [ %j_1, %.critedge ], [ 0, %.preheader.preheader ]
  %j_cast1 = zext i2 %j to i64
  %j_cast1_cast = zext i2 %j to i5
  %tmp_8 = add i5 %tmp_7, %j_cast1_cast
  %tmp_8_cast = sext i5 %tmp_8 to i64
  %allocated_addr = getelementptr [12 x i64]* %allocated, i64 0, i64 %tmp_8_cast
  %need_addr = getelementptr [12 x i64]* %need, i64 0, i64 %tmp_8_cast
  %tmp_1 = icmp eq i2 %j, -1
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2) nounwind
  %j_1 = add i2 %j, 1
  br i1 %tmp_1, label %.loopexit3.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %need_load = load i64* %need_addr, align 8
  %available_addr = getelementptr [3 x i64]* %available, i64 0, i64 %j_cast1
  %available_load = load i64* %available_addr, align 8
  %tmp_2 = sub nsw i64 %available_load, %need_load
  store i64 %tmp_2, i64* %available_addr, align 8
  %allocated_load = load i64* %allocated_addr, align 8
  %tmp_3 = add nsw i64 %allocated_load, %need_load
  store i64 %tmp_3, i64* %allocated_addr, align 8
  %tmp_4 = icmp sgt i64 %need_load, %tmp_2
  br i1 %tmp_4, label %.loopexit.loopexit, label %.critedge

.critedge:                                        ; preds = %1
  %tmp_6 = add i64 %allocated_load, %available_load
  store i64 %tmp_6, i64* %available_addr, align 8
  br label %.preheader

.loopexit.loopexit:                               ; preds = %1
  br label %.loopexit

.loopexit.loopexit6:                              ; preds = %.loopexit3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit6, %.loopexit.loopexit
  %p_0 = phi i2 [ -1, %.loopexit.loopexit ], [ 1, %.loopexit.loopexit6 ]
  %p_0_cast = sext i2 %p_0 to i64
  ret i64 %p_0_cast
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_3 = shl i3 1, %empty
  %empty_4 = and i3 %0, %empty_3
  %empty_5 = icmp ne i3 %empty_4, 0
  ret i1 %empty_5
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_6 = zext i2 %1 to i5
  %empty_7 = shl i5 %empty, 2
  %empty_8 = or i5 %empty_7, %empty_6
  ret i5 %empty_8
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"available", metadata !"allocated", metadata !"max", metadata !"need"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"available", metadata !11, metadata !"long int", i32 0, i32 63}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 2, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"allocated", metadata !17, metadata !"long int", i32 0, i32 63}
!17 = metadata !{metadata !18, metadata !12}
!18 = metadata !{i32 0, i32 3, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"max", metadata !17, metadata !"long int", i32 0, i32 63}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"need", metadata !17, metadata !"long int", i32 0, i32 63}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 63, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"return", metadata !31, metadata !"TARGET_TYPE", i32 0, i32 63}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 1, i32 0}
