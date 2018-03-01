; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quicksort_str = internal unnamed_addr constant [10 x i8] c"quicksort\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"QWHILE\00", align 1
@p_str = private unnamed_addr constant [9 x i8] c"PARWHILE\00", align 1

define void @quicksort(i64 %i, i64 %f, [10 x i64]* %a) nounwind uwtable {
  %stack_size = alloca i64
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %i) nounwind, !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %f) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %a) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @quicksort_str) nounwind
  %f_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f) nounwind
  %i_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %i) nounwind
  %stack_0 = alloca [10 x i64], align 16
  %stack_1 = alloca [10 x i64], align 16
  %top = getelementptr [10 x i64]* %stack_0, i64 0, i64 0
  store i64 %i_read, i64* %top, align 16
  %stack_1_addr = getelementptr [10 x i64]* %stack_1, i64 0, i64 0
  store i64 %f_read, i64* %stack_1_addr, align 16
  store i64 0, i64* %stack_size
  br label %1

; <label>:1                                       ; preds = %5, %0
  %stack_size_load = load i64* %stack_size
  %stack_0_addr = getelementptr [10 x i64]* %stack_0, i64 0, i64 %stack_size_load
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %stack_size_load, i32 63)
  br i1 %tmp, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str1) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, [1 x i8]* @p_str2) nounwind
  %base = load i64* %stack_0_addr, align 16
  %stack_1_addr_1 = getelementptr [10 x i64]* %stack_1, i64 0, i64 %stack_size_load
  %stack_1_load = load i64* %stack_1_addr_1, align 8
  %tmp_1 = icmp slt i64 %base, %stack_1_load
  br i1 %tmp_1, label %3, label %4

; <label>:3                                       ; preds = %2
  %pivot_position = call fastcc i64 @partition(i64 %base, i64 %stack_1_load, [10 x i64]* %a) nounwind
  %tmp_3 = add nsw i64 %pivot_position, 1
  store i64 %tmp_3, i64* %stack_0_addr, align 16
  %stack_size_1 = add nsw i64 %stack_size_load, 1
  %stack_0_addr_1 = getelementptr [10 x i64]* %stack_0, i64 0, i64 %stack_size_1
  store i64 %base, i64* %stack_0_addr_1, align 16
  %tmp_5 = add nsw i64 %pivot_position, -1
  %stack_1_addr_2 = getelementptr [10 x i64]* %stack_1, i64 0, i64 %stack_size_1
  store i64 %tmp_5, i64* %stack_1_addr_2, align 8
  store i64 %stack_size_1, i64* %stack_size
  br label %5

; <label>:4                                       ; preds = %2
  %stack_size_2 = add nsw i64 %stack_size_load, -1
  store i64 %stack_size_2, i64* %stack_size
  br label %5

; <label>:5                                       ; preds = %4, %3
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str1, i32 %tmp_2) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define internal fastcc i64 @partition(i64 %init, i64 %end_r, [10 x i64]* nocapture %a) {
  %inf = alloca i64
  %sup = alloca i64
  %end_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %end_r)
  %init_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %init)
  %a_addr = getelementptr [10 x i64]* %a, i64 0, i64 %init_read
  %pivot = load i64* %a_addr, align 8
  store i64 %end_read, i64* %sup
  store i64 %init_read, i64* %inf
  br label %1

; <label>:1                                       ; preds = %8, %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str) nounwind
  br label %2

; <label>:2                                       ; preds = %4, %1
  %inf_load = load i64* %inf
  %tmp = icmp sgt i64 %inf_load, %end_read
  br i1 %tmp, label %.critedge, label %3

; <label>:3                                       ; preds = %2
  %a_addr_1 = getelementptr [10 x i64]* %a, i64 0, i64 %inf_load
  %a_load = load i64* %a_addr_1, align 8
  %tmp_7 = icmp sgt i64 %a_load, %pivot
  br i1 %tmp_7, label %.critedge, label %4

; <label>:4                                       ; preds = %3
  %inf_1 = add nsw i64 %inf_load, 1
  store i64 %inf_1, i64* %inf
  br label %2

.critedge:                                        ; preds = %3, %2
  br label %5

; <label>:5                                       ; preds = %6, %.critedge
  %sup_load = load i64* %sup
  %a_addr_2 = getelementptr [10 x i64]* %a, i64 0, i64 %sup_load
  %a_load_1 = load i64* %a_addr_2, align 8
  %tmp_9 = icmp sgt i64 %a_load_1, %pivot
  br i1 %tmp_9, label %6, label %7

; <label>:6                                       ; preds = %5
  %sup_1 = add nsw i64 %sup_load, -1
  store i64 %sup_1, i64* %sup
  br label %5

; <label>:7                                       ; preds = %5
  %tmp_s = add nsw i64 %sup_load, 1
  %tmp_1 = icmp slt i64 %inf_load, %tmp_s
  br i1 %tmp_1, label %8, label %9

; <label>:8                                       ; preds = %7
  %a_addr_3 = getelementptr [10 x i64]* %a, i64 0, i64 %inf_load
  %b = load i64* %a_addr_3, align 8
  store i64 %a_load_1, i64* %a_addr_3, align 8
  store i64 %b, i64* %a_addr_2, align 8
  br label %1

; <label>:9                                       ; preds = %7
  %b_1 = load i64* %a_addr, align 8
  store i64 %a_load_1, i64* %a_addr, align 8
  store i64 %b_1, i64* %a_addr_2, align 8
  ret i64 %sup_load
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_3 = shl i64 1, %empty
  %empty_4 = and i64 %0, %empty_3
  %empty_5 = icmp ne i64 %empty_4, 0
  ret i1 %empty_5
}

!opencl.kernels = !{!0, !7, !9}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"a"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"init", metadata !"end", metadata !"a"}
!9 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !10, metadata !6}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"f", metadata !"a"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"i", metadata !15, metadata !"long int", i32 0, i32 63}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 63, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"f", metadata !15, metadata !"long int", i32 0, i32 63}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 63, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"a", metadata !25, metadata !"long int", i32 0, i32 63}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 9, i32 1}
