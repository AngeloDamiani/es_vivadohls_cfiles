; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort_str = internal unnamed_addr constant [10 x i8] c"mergesort\00"
@h = global i8 0, align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1
@p_str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1

define void @mergesort([10 x i64]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %arr) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m_1, %5 ]
  %tmp = icmp slt i64 %m, 10
  br i1 %tmp, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5) nounwind
  %m_1 = shl i64 %m, 1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x_1, %4 ]
  %tmp_3 = icmp slt i64 %x, 9
  br i1 %tmp_3, label %4, label %5

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @p_str1) nounwind
  %tmp_5 = trunc i64 %x to i8
  %tmp1 = add i64 -1, %x
  %tmp_6 = add i64 %tmp1, %m
  %c_assign = add i64 %tmp1, %m_1
  %tmp_i = icmp slt i64 %c_assign, 9
  %c_assign_1 = select i1 %tmp_i, i64 %c_assign, i64 9
  call fastcc void @merge(i8 signext %tmp_5, i64 %tmp_6, i64 %c_assign_1, [10 x i64]* %arr) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_2) nounwind
  %x_1 = add nsw i64 %m_1, %x
  br label %3

; <label>:5                                       ; preds = %3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_1) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define internal fastcc void @merge(i8 signext %i1, i64 %f1, i64 %f2, [10 x i64]* nocapture %arr) {
  %p_0 = alloca i8
  %i2_1 = alloca i8
  %f2_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f2)
  %f1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f1)
  %i1_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %i1)
  %x = alloca [10 x i64], align 16
  %tmp = trunc i64 %f1_read to i8
  %i2 = add i8 1, %tmp
  store i8 %i2, i8* %i2_1
  store i8 %i1_read, i8* %p_0
  br label %1

; <label>:1                                       ; preds = %6, %0
  %i = phi i8 [ 0, %0 ], [ %i_1, %6 ]
  %p_0_load = load i8* %p_0
  %i2_1_load = load i8* %i2_1
  %tmp_s = sext i8 %p_0_load to i64
  %tmp_1 = icmp sgt i64 %tmp_s, %f1_read
  %i_1 = add i8 %i, 1
  br i1 %tmp_1, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_2 = sext i8 %i2_1_load to i64
  %tmp_3 = icmp sgt i64 %tmp_2, %f2_read
  br i1 %tmp_3, label %.preheader3.preheader, label %3

.preheader3.preheader:                            ; preds = %2
  br label %.preheader3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @p_str1) nounwind
  %arr_addr_1 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_s
  %arr_load = load i64* %arr_addr_1, align 8
  %arr_addr_2 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_2
  %arr_load_1 = load i64* %arr_addr_2, align 8
  %tmp_7 = icmp sgt i64 %arr_load, %arr_load_1
  br i1 %tmp_7, label %5, label %4

; <label>:4                                       ; preds = %3
  %i1_assign = add i8 %p_0_load, 1
  %tmp_14 = sext i8 %i to i64
  %x_addr_2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_14
  store i64 %arr_load, i64* %x_addr_2, align 8
  store i8 %i1_assign, i8* %p_0
  br label %6

; <label>:5                                       ; preds = %3
  %i2_2 = add i8 %i2_1_load, 1
  %tmp_13 = sext i8 %i to i64
  %x_addr_1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_13
  store i64 %arr_load_1, i64* %x_addr_1, align 8
  store i8 %i2_2, i8* %i2_1
  br label %6

; <label>:6                                       ; preds = %5, %4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_23)
  br label %1

.preheader3:                                      ; preds = %.preheader3.preheader, %7
  %tmp_10 = phi i8 [ %tmp_16, %7 ], [ %p_0_load, %.preheader3.preheader ]
  %i_2 = phi i8 [ %i_6, %7 ], [ %i, %.preheader3.preheader ]
  %tmp_11 = sext i8 %tmp_10 to i64
  %tmp_12 = icmp sgt i64 %tmp_11, %f1_read
  br i1 %tmp_12, label %.loopexit.loopexit13, label %7

; <label>:7                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @p_str1) nounwind
  %arr_addr_3 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_11
  %arr_load_3 = load i64* %arr_addr_3, align 8
  %i_6 = add i8 %i_2, 1
  %tmp_15 = sext i8 %i_2 to i64
  %x_addr_3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_15
  store i64 %arr_load_3, i64* %x_addr_3, align 8
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_24)
  %tmp_16 = add i8 %tmp_10, 1
  br label %.preheader3

.preheader:                                       ; preds = %.preheader.preheader, %8
  %tmp_4 = phi i8 [ %tmp_9, %8 ], [ %i2_1_load, %.preheader.preheader ]
  %i_3 = phi i8 [ %i_5, %8 ], [ %i, %.preheader.preheader ]
  %tmp_5 = sext i8 %tmp_4 to i64
  %tmp_6 = icmp sgt i64 %tmp_5, %f2_read
  br i1 %tmp_6, label %.loopexit.loopexit, label %8

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @p_str1) nounwind
  %arr_addr = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_5
  %arr_load_2 = load i64* %arr_addr, align 8
  %i_5 = add i8 %i_3, 1
  %tmp_8 = sext i8 %i_3 to i64
  %x_addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_8
  store i64 %arr_load_2, i64* %x_addr, align 8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_22)
  %tmp_9 = add i8 %tmp_4, 1
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit13:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit13, %.loopexit.loopexit
  br label %9

; <label>:9                                       ; preds = %10, %.loopexit
  %tmp_17 = phi i8 [ %i1_read, %.loopexit ], [ %tmp_21, %10 ]
  %i_4 = phi i8 [ 0, %.loopexit ], [ %i_7, %10 ]
  %tmp_18 = sext i8 %tmp_17 to i64
  %tmp_19 = icmp sgt i64 %tmp_18, %f2_read
  %i_7 = add i8 %i_4, 1
  br i1 %tmp_19, label %11, label %10

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @p_str1) nounwind
  %tmp_20 = sext i8 %i_4 to i64
  %x_addr_4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_20
  %x_load = load i64* %x_addr_4, align 8
  %arr_addr_4 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_18
  store i64 %x_load, i64* %arr_addr_4, align 8
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_25)
  %tmp_21 = add i8 %tmp_17, 1
  br label %9

; <label>:11                                      ; preds = %9
  store i8 %tmp_17, i8* @h, align 1
  ret void
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

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
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

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"long", metadata !"long", metadata !"long*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"i1", metadata !"f1", metadata !"f2", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"long", metadata !"long"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"c", metadata !"b"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!19 = metadata !{metadata !20, i8* @h}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"h", metadata !24, metadata !"signed char", i32 0, i32 7}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 63, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"arr", metadata !30, metadata !"long int", i32 0, i32 63}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 9, i32 1}
