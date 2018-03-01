; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort_str = internal unnamed_addr constant [10 x i8] c"mergesort\00"
@h = global i8 0, align 1
@p_str7 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1
@p_str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1

define void @mergesort(i64* %arr_0, i64* %arr_1, i64* %arr_2, i64* %arr_3, i64* %arr_4, i64* %arr_5, i64* %arr_6, i64* %arr_7, i64* %arr_8, i64* %arr_9) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_9), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_8), !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_7), !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_6), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_5), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_4), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_3), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_2), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_1), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %arr_0), !map !80
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m_1, %5 ]
  %tmp = icmp slt i64 %m, 10
  br i1 %tmp, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6) nounwind
  %m_1 = shl i64 %m, 1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x_1, %4 ]
  %tmp_3 = icmp slt i64 %x, 9
  br i1 %tmp_3, label %4, label %5

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str7) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @p_str1) nounwind
  %tmp1 = add i64 %x, -1
  %tmp_5 = add i64 %tmp1, %m
  %c_assign = add i64 %tmp1, %m_1
  %tmp_i = icmp slt i64 %c_assign, 9
  %c_assign_1 = select i1 %tmp_i, i64 %c_assign, i64 9
  %arr_0_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_0)
  %arr_1_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_1)
  %arr_2_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_2)
  %arr_3_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_3)
  %arr_4_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_4)
  %arr_5_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_5)
  %arr_6_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_6)
  %arr_7_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_7)
  %arr_8_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_8)
  %arr_9_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_9)
  call fastcc void @merge(i64 %x, i64 %tmp_5, i64 %c_assign_1, i64* %arr_0, i64 %arr_0_read, i64* %arr_1, i64 %arr_1_read, i64* %arr_2, i64 %arr_2_read, i64* %arr_3, i64 %arr_3_read, i64* %arr_4, i64 %arr_4_read, i64* %arr_5, i64 %arr_5_read, i64* %arr_6, i64 %arr_6_read, i64* %arr_7, i64 %arr_7_read, i64* %arr_8, i64 %arr_8_read, i64* %arr_9, i64 %arr_9_read)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str7, i32 %tmp_2) nounwind
  %x_1 = add nsw i64 %m_1, %x
  br label %3

; <label>:5                                       ; preds = %3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_1) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define internal fastcc void @merge(i64 %i1, i64 %f1, i64 %f2, i64* nocapture %arr_0, i64 %arr_0_read, i64* nocapture %arr_1, i64 %arr_1_read, i64* nocapture %arr_2, i64 %arr_2_read, i64* nocapture %arr_3, i64 %arr_3_read, i64* nocapture %arr_4, i64 %arr_4_read, i64* nocapture %arr_5, i64 %arr_5_read, i64* nocapture %arr_6, i64 %arr_6_read, i64* nocapture %arr_7, i64 %arr_7_read, i64* nocapture %arr_8, i64 %arr_8_read, i64* nocapture %arr_9, i64 %arr_9_read) {
  %p_0 = alloca i64
  %i2_1 = alloca i64
  %arr_9_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_9_read)
  %arr_8_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_8_read)
  %arr_7_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_7_read)
  %arr_6_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_6_read)
  %arr_5_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_5_read)
  %arr_4_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_4_read)
  %arr_3_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_3_read)
  %arr_2_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_2_read)
  %arr_1_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_1_read)
  %arr_0_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_0_read)
  %f2_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f2)
  %f1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f1)
  %i1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %i1)
  %x = alloca [10 x i64], align 16
  %i2 = add nsw i64 %f1_read, 1
  store i64 %i2, i64* %i2_1
  store i64 %i1_read, i64* %p_0
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %5 ]
  %p_0_load = load i64* %p_0
  %i2_1_load = load i64* %i2_1
  %i_cast = zext i4 %i to i64
  %slt = icmp slt i64 %f2_read, %i2_1_load
  %rev = xor i1 %slt, true
  %slt1 = icmp slt i64 %f1_read, %p_0_load
  %rev1 = xor i1 %slt1, true
  %tmp_s = and i1 %rev, %rev1
  %i_1 = add i4 %i, 1
  br i1 %tmp_s, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @p_str1) nounwind
  %tmp = trunc i64 %p_0_load to i4
  %tmp_4 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp)
  %tmp_13 = trunc i64 %i2_1_load to i4
  %tmp_18 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_13)
  %tmp_1 = icmp sgt i64 %tmp_4, %tmp_18
  br i1 %tmp_1, label %4, label %3

; <label>:3                                       ; preds = %2
  %i1_assign = add nsw i64 %p_0_load, 1
  %x_addr_1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_cast
  store i64 %tmp_4, i64* %x_addr_1, align 8
  store i64 %i1_assign, i64* %p_0
  br label %5

; <label>:4                                       ; preds = %2
  %i2_2 = add nsw i64 %i2_1_load, 1
  %x_addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_cast
  store i64 %tmp_18, i64* %x_addr, align 8
  store i64 %i2_2, i64* %i2_1
  br label %5

; <label>:5                                       ; preds = %4, %3
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_3)
  br label %1

; <label>:6                                       ; preds = %1
  %tmp_2 = icmp sgt i64 %p_0_load, %f1_read
  br i1 %tmp_2, label %10, label %7

; <label>:7                                       ; preds = %6
  %tmp_20 = trunc i64 %p_0_load to i8
  br label %8

; <label>:8                                       ; preds = %9, %7
  %tmp_8 = phi i8 [ %tmp_20, %7 ], [ %tmp_12, %9 ]
  %i_2 = phi i64 [ %i_cast, %7 ], [ %i_6, %9 ]
  %tmp_9 = sext i8 %tmp_8 to i64
  %tmp_10 = icmp sgt i64 %tmp_9, %f1_read
  br i1 %tmp_10, label %.loopexit.loopexit46, label %9

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @p_str1) nounwind
  %tmp_27 = trunc i8 %tmp_8 to i4
  %tmp_24 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_27)
  %i_6 = add nsw i64 1, %i_2
  %x_addr_3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_2
  store i64 %tmp_24, i64* %x_addr_3, align 8
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_23)
  %tmp_12 = add i8 1, %tmp_8
  br label %8

; <label>:10                                      ; preds = %6
  %tmp_19 = trunc i64 %i2_1_load to i8
  br label %11

; <label>:11                                      ; preds = %12, %10
  %tmp_5 = phi i8 [ %tmp_19, %10 ], [ %tmp_11, %12 ]
  %i_3 = phi i64 [ %i_cast, %10 ], [ %i_5, %12 ]
  %tmp_6 = sext i8 %tmp_5 to i64
  %tmp_7 = icmp sgt i64 %tmp_6, %f2_read
  br i1 %tmp_7, label %.loopexit.loopexit, label %12

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @p_str1) nounwind
  %tmp_26 = trunc i8 %tmp_5 to i4
  %tmp_22 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_26)
  %i_5 = add nsw i64 1, %i_3
  %x_addr_2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_3
  store i64 %tmp_22, i64* %x_addr_2, align 8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_21)
  %tmp_11 = add i8 1, %tmp_5
  br label %11

.loopexit.loopexit:                               ; preds = %11
  br label %.loopexit

.loopexit.loopexit46:                             ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit46, %.loopexit.loopexit
  %tmp_28 = trunc i64 %i1_read to i8
  br label %13

; <label>:13                                      ; preds = %15, %.loopexit
  %tmp_14 = phi i8 [ %tmp_28, %.loopexit ], [ %tmp_17, %15 ]
  %i_4 = phi i64 [ 0, %.loopexit ], [ %i_7, %15 ]
  %tmp_15 = sext i8 %tmp_14 to i64
  %tmp_16 = icmp sgt i64 %tmp_15, %f2_read
  %i_7 = add nsw i64 %i_4, 1
  br i1 %tmp_16, label %16, label %14

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @p_str1) nounwind
  %x_addr_4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_4
  %x_load = load i64* %x_addr_4, align 8
  %tmp_29 = trunc i8 %tmp_14 to i4
  switch i4 %tmp_29, label %branch9 [
    i4 0, label %branch0
    i4 1, label %branch1
    i4 2, label %branch2
    i4 3, label %branch3
    i4 4, label %branch4
    i4 5, label %branch5
    i4 6, label %branch6
    i4 7, label %branch7
    i4 -8, label %branch8
  ]

; <label>:15                                      ; preds = %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_25)
  %tmp_17 = add i8 %tmp_14, 1
  br label %13

; <label>:16                                      ; preds = %13
  store i8 %tmp_14, i8* @h, align 1
  ret void

branch0:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_0, i64 %x_load)
  br label %15

branch1:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_1, i64 %x_load)
  br label %15

branch2:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_2, i64 %x_load)
  br label %15

branch3:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_3, i64 %x_load)
  br label %15

branch4:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_4, i64 %x_load)
  br label %15

branch5:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_5, i64 %x_load)
  br label %15

branch6:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_6, i64 %x_load)
  br label %15

branch7:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_7, i64 %x_load)
  br label %15

branch8:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_8, i64 %x_load)
  br label %15

branch9:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_9, i64 %x_load)
  br label %15
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
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

define weak i64 @_ssdm_op_Read.ap_auto.i64P(i64*) {
entry:
  %empty = load i64* %0
  ret i64 %empty
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i4) {
entry:
  switch i4 %10, label %case9 [
    i4 0, label %case0
    i4 1, label %case1
    i4 2, label %case2
    i4 3, label %case3
    i4 4, label %case4
    i4 5, label %case5
    i4 6, label %case6
    i4 7, label %case7
    i4 -8, label %case8
  ]

case0:                                            ; preds = %case9, %case8, %case7, %case6, %case5, %case4, %case3, %case2, %case1, %entry
  %merge = phi i64 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ]
  ret i64 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0

case4:                                            ; preds = %entry
  br label %case0

case5:                                            ; preds = %entry
  br label %case0

case6:                                            ; preds = %entry
  br label %case0

case7:                                            ; preds = %entry
  br label %case0

case8:                                            ; preds = %entry
  br label %case0

case9:                                            ; preds = %entry
  br label %case0
}

declare i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
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
!16 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
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
!31 = metadata !{i32 9, i32 9, i32 2}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 63, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"arr", metadata !36, metadata !"long int", i32 0, i32 63}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 8, i32 8, i32 2}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 63, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"arr", metadata !42, metadata !"long int", i32 0, i32 63}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 7, i32 7, i32 2}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 63, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"arr", metadata !48, metadata !"long int", i32 0, i32 63}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 6, i32 6, i32 2}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 63, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"arr", metadata !54, metadata !"long int", i32 0, i32 63}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 5, i32 5, i32 2}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 63, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"arr", metadata !60, metadata !"long int", i32 0, i32 63}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 4, i32 4, i32 2}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 63, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"arr", metadata !66, metadata !"long int", i32 0, i32 63}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 3, i32 3, i32 2}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 63, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"arr", metadata !72, metadata !"long int", i32 0, i32 63}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 2, i32 2, i32 2}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 63, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"arr", metadata !78, metadata !"long int", i32 0, i32 63}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 1, i32 1, i32 2}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 63, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"arr", metadata !84, metadata !"long int", i32 0, i32 63}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 0, i32 2}
