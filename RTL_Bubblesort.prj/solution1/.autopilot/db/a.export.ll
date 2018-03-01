; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bubble_sort_str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @bubble_sort([10 x i64]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %arr) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %7, %0
  %j = phi i4 [ 0, %0 ], [ %j_1, %7 ]
  %lastSwap = phi i8 [ 9, %0 ], [ %lastSwap_1, %7 ]
  %tmp = icmp ult i4 %j, -6
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 10, i64 5)
  %j_1 = add i4 %j, 1
  br i1 %tmp, label %2, label %.loopexit

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %._crit_edge, %2
  %lastSwap_1 = phi i8 [ -1, %2 ], [ %currentSwap_1, %._crit_edge ]
  %is_sorted = phi i2 [ 1, %2 ], [ %is_sorted_1, %._crit_edge ]
  %currentSwap = phi i7 [ 0, %2 ], [ %i, %._crit_edge ]
  %index_1_assign_cast = zext i7 %currentSwap to i8
  %tmp_2 = icmp slt i8 %index_1_assign_cast, %lastSwap
  %i = add i7 %currentSwap, 1
  br i1 %tmp_2, label %4, label %6

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 0, i32 5, [1 x i8]* @p_str2) nounwind
  %tmp_3 = zext i7 %currentSwap to i64
  %arr_addr = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_3
  %b = load i64* %arr_addr, align 8
  %tmp_6 = zext i7 %i to i64
  %arr_addr_1 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_6
  %arr_load_1 = load i64* %arr_addr_1, align 8
  %tmp_7 = icmp sgt i64 %b, %arr_load_1
  br i1 %tmp_7, label %5, label %._crit_edge

; <label>:5                                       ; preds = %4
  store i64 %arr_load_1, i64* %arr_addr, align 8
  store i64 %b, i64* %arr_addr_1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %4
  %currentSwap_1 = phi i8 [ %index_1_assign_cast, %5 ], [ %lastSwap_1, %4 ]
  %is_sorted_1 = phi i2 [ 0, %5 ], [ %is_sorted, %4 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str1, i32 %tmp_s) nounwind
  br label %3

; <label>:6                                       ; preds = %3
  %tmp_8 = icmp eq i2 %is_sorted, 0
  br i1 %tmp_8, label %7, label %.loopexit

; <label>:7                                       ; preds = %6
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str, i32 %tmp_1) nounwind
  br label %1

.loopexit:                                        ; preds = %6, %1
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

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"long*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"arr", metadata !17, metadata !"long int", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
