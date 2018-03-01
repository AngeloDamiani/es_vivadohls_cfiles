; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort_str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=1 type=i8*]
@p_str6 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=3 type=[12 x i8]*]

; [#uses=0]
define void @mergesort([10 x i64]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %arr) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort_str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !32), !dbg !44 ; [debug line = 44:21] [debug variable = arr]
  br label %1, !dbg !45                           ; [debug line = 49:6]

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m_1, %5 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !45            ; [#uses=1 type=i1] [debug line = 49:6]
  br i1 %tmp, label %2, label %6, !dbg !45        ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind, !dbg !48 ; [debug line = 50:3]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5) nounwind, !dbg !48 ; [#uses=1 type=i32] [debug line = 50:3]
  %m_1 = shl i64 %m, 1, !dbg !50                  ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !53                           ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x_1, %4 ]            ; [#uses=4 type=i64]
  %tmp_3 = icmp slt i64 %x, 9, !dbg !53           ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp_3, label %4, label %5, !dbg !53      ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind, !dbg !54 ; [debug line = 53:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !55 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @p_str1) nounwind, !dbg !55 ; [debug line = 54:1]
  %tmp_5 = trunc i64 %x to i8, !dbg !56           ; [#uses=1 type=i8] [debug line = 54:4]
  %tmp1 = add i64 -1, %x, !dbg !56                ; [#uses=2 type=i64] [debug line = 54:4]
  %tmp_6 = add i64 %tmp1, %m, !dbg !56            ; [#uses=1 type=i64] [debug line = 54:4]
  %c_assign = add i64 %tmp1, %m_1, !dbg !50       ; [#uses=2 type=i64] [debug line = 54:20]
  call void @llvm.dbg.value(metadata !{i64 %c_assign}, i64 0, metadata !57), !dbg !61 ; [debug line = 39:15@54:20] [debug variable = c]
  %tmp_i = icmp slt i64 %c_assign, 9, !dbg !62    ; [#uses=1 type=i1] [debug line = 41:2@54:20]
  %c_assign_1 = select i1 %tmp_i, i64 %c_assign, i64 9, !dbg !62 ; [#uses=1 type=i64] [debug line = 41:2@54:20]
  call void @llvm.dbg.value(metadata !{i64 %c_assign_1}, i64 0, metadata !57), !dbg !62 ; [debug line = 41:2@54:20] [debug variable = c]
  call fastcc void @merge(i8 signext %tmp_5, i64 %tmp_6, i64 %c_assign_1, [10 x i64]* %arr) nounwind, !dbg !50 ; [debug line = 54:20]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_2) nounwind, !dbg !64 ; [#uses=0 type=i32] [debug line = 55:4]
  %x_1 = add nsw i64 %m_1, %x, !dbg !65           ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x_1}, i64 0, metadata !66), !dbg !65 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !65                           ; [debug line = 52:25]

; <label>:5                                       ; preds = %3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_1) nounwind, !dbg !67 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m_1}, i64 0, metadata !68), !dbg !69 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !69                           ; [debug line = 49:25]

; <label>:6                                       ; preds = %1
  ret void, !dbg !70                              ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i8 signext %i1, i64 %f1, i64 %f2, [10 x i64]* nocapture %arr) {
  %p_0 = alloca i8                                ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %p_0}, metadata !71) ; [debug variable = i1]
  %i2_1 = alloca i8                               ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %i2_1}, metadata !77) ; [debug variable = i2]
  %f2_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f2) ; [#uses=3 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %f2_read}, i64 0, metadata !79), !dbg !80 ; [debug line = 6:37] [debug variable = f2]
  %f1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f1) ; [#uses=3 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %f1_read}, i64 0, metadata !81), !dbg !82 ; [debug line = 6:28] [debug variable = f1]
  %i1_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %i1) ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %i1_read}, i64 0, metadata !71), !dbg !83 ; [debug line = 6:19] [debug variable = i1]
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i8 %i1}, i64 0, metadata !71), !dbg !83 ; [debug line = 6:19] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !81), !dbg !82 ; [debug line = 6:28] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !79), !dbg !80 ; [debug line = 6:37] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !84), !dbg !85 ; [debug line = 6:46] [debug variable = arr]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !86), !dbg !87 ; [debug line = 8:7] [debug variable = x]
  %tmp = trunc i64 %f1_read to i8, !dbg !88       ; [#uses=1 type=i8] [debug line = 9:20]
  %i2 = add i8 1, %tmp, !dbg !88                  ; [#uses=1 type=i8] [debug line = 9:20]
  call void @llvm.dbg.value(metadata !{i8 %i2}, i64 0, metadata !77), !dbg !88 ; [debug line = 9:20] [debug variable = i2]
  store i8 %i2, i8* %i2_1, !dbg !88               ; [debug line = 9:20]
  store i8 %i1_read, i8* %p_0, !dbg !83           ; [debug line = 6:19]
  br label %1, !dbg !89                           ; [debug line = 13:2]

; <label>:1                                       ; preds = %6, %0
  %i = phi i8 [ 0, %0 ], [ %i_1, %6 ]             ; [#uses=5 type=i8]
  %p_0_load = load i8* %p_0, !dbg !90             ; [#uses=3 type=i8] [debug line = 16:4]
  %i2_1_load = load i8* %i2_1, !dbg !92           ; [#uses=3 type=i8] [debug line = 18:4]
  %tmp_s = sext i8 %p_0_load to i64, !dbg !89     ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp_1 = icmp sgt i64 %tmp_s, %f1_read, !dbg !89 ; [#uses=1 type=i1] [debug line = 13:2]
  %i_1 = add i8 %i, 1, !dbg !90                   ; [#uses=1 type=i8] [debug line = 16:4]
  br i1 %tmp_1, label %.preheader.preheader, label %2, !dbg !89 ; [debug line = 13:2]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !93                  ; [debug line = 29:7]

; <label>:2                                       ; preds = %1
  %tmp_2 = sext i8 %i2_1_load to i64, !dbg !89    ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp_3 = icmp sgt i64 %tmp_2, %f2_read, !dbg !89 ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp_3, label %.preheader3.preheader, label %3

.preheader3.preheader:                            ; preds = %2
  br label %.preheader3, !dbg !96                 ; [debug line = 24:7]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind, !dbg !99 ; [debug line = 14:3]
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str), !dbg !99 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @p_str1) nounwind, !dbg !100 ; [debug line = 15:1]
  %arr_addr_1 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_s, !dbg !101 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr_load = load i64* %arr_addr_1, align 8, !dbg !101 ; [#uses=2 type=i64] [debug line = 15:3]
  %arr_addr_2 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_2, !dbg !101 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr_load_1 = load i64* %arr_addr_2, align 8, !dbg !101 ; [#uses=2 type=i64] [debug line = 15:3]
  %tmp_7 = icmp sgt i64 %arr_load, %arr_load_1, !dbg !101 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp_7, label %5, label %4, !dbg !101     ; [debug line = 15:3]

; <label>:4                                       ; preds = %3
  %i1_assign = add i8 %p_0_load, 1, !dbg !90      ; [#uses=1 type=i8] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i8 %i1_assign}, i64 0, metadata !71), !dbg !90 ; [debug line = 16:4] [debug variable = i1]
  %tmp_14 = sext i8 %i to i64, !dbg !90           ; [#uses=1 type=i64] [debug line = 16:4]
  %x_addr_2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_14, !dbg !90 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %arr_load, i64* %x_addr_2, align 8, !dbg !90 ; [debug line = 16:4]
  store i8 %i1_assign, i8* %p_0, !dbg !90         ; [debug line = 16:4]
  br label %6, !dbg !90                           ; [debug line = 16:4]

; <label>:5                                       ; preds = %3
  %i2_2 = add i8 %i2_1_load, 1, !dbg !92          ; [#uses=1 type=i8] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i8 %i2_2}, i64 0, metadata !77), !dbg !92 ; [debug line = 18:4] [debug variable = i2]
  %tmp_13 = sext i8 %i to i64, !dbg !92           ; [#uses=1 type=i64] [debug line = 18:4]
  %x_addr_1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_13, !dbg !92 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %arr_load_1, i64* %x_addr_1, align 8, !dbg !92 ; [debug line = 18:4]
  store i8 %i2_2, i8* %i2_1, !dbg !92             ; [debug line = 18:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  call void @llvm.dbg.value(metadata !{i8 %i_1}, i64 0, metadata !102), !dbg !90 ; [debug line = 16:4] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_23), !dbg !103 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !103                          ; [debug line = 19:2]

.preheader3:                                      ; preds = %7, %.preheader3.preheader
  %tmp_10 = phi i8 [ %tmp_16, %7 ], [ %p_0_load, %.preheader3.preheader ] ; [#uses=2 type=i8]
  %i_2 = phi i8 [ %i_6, %7 ], [ %i, %.preheader3.preheader ] ; [#uses=2 type=i8]
  %tmp_11 = sext i8 %tmp_10 to i64, !dbg !96      ; [#uses=2 type=i64] [debug line = 24:7]
  %tmp_12 = icmp sgt i64 %tmp_11, %f1_read, !dbg !96 ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp_12, label %.loopexit.loopexit13, label %7, !dbg !96 ; [debug line = 24:7]

; <label>:7                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind, !dbg !104 ; [debug line = 25:2]
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2), !dbg !104 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @p_str1) nounwind, !dbg !106 ; [debug line = 26:1]
  %arr_addr_3 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_11, !dbg !107 ; [#uses=1 type=i64*] [debug line = 25:1]
  %arr_load_3 = load i64* %arr_addr_3, align 8, !dbg !107 ; [#uses=1 type=i64] [debug line = 25:1]
  %i_6 = add i8 %i_2, 1, !dbg !107                ; [#uses=1 type=i8] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i8 %i_6}, i64 0, metadata !102), !dbg !107 ; [debug line = 25:1] [debug variable = i]
  %tmp_15 = sext i8 %i_2 to i64, !dbg !107        ; [#uses=1 type=i64] [debug line = 25:1]
  %x_addr_3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_15, !dbg !107 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %arr_load_3, i64* %x_addr_3, align 8, !dbg !107 ; [debug line = 25:1]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_24), !dbg !108 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp_16 = add i8 %tmp_10, 1, !dbg !109          ; [#uses=1 type=i8] [debug line = 24:24]
  br label %.preheader3, !dbg !109                ; [debug line = 24:24]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %tmp_4 = phi i8 [ %tmp_9, %8 ], [ %i2_1_load, %.preheader.preheader ] ; [#uses=2 type=i8]
  %i_3 = phi i8 [ %i_5, %8 ], [ %i, %.preheader.preheader ] ; [#uses=2 type=i8]
  %tmp_5 = sext i8 %tmp_4 to i64, !dbg !93        ; [#uses=2 type=i64] [debug line = 29:7]
  %tmp_6 = icmp sgt i64 %tmp_5, %f2_read, !dbg !93 ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp_6, label %.loopexit.loopexit, label %8, !dbg !93 ; [debug line = 29:7]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind, !dbg !110 ; [debug line = 30:2]
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3), !dbg !110 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @p_str1) nounwind, !dbg !112 ; [debug line = 31:1]
  %arr_addr = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_5, !dbg !113 ; [#uses=1 type=i64*] [debug line = 30:1]
  %arr_load_2 = load i64* %arr_addr, align 8, !dbg !113 ; [#uses=1 type=i64] [debug line = 30:1]
  %i_5 = add i8 %i_3, 1, !dbg !113                ; [#uses=1 type=i8] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i8 %i_5}, i64 0, metadata !102), !dbg !113 ; [debug line = 30:1] [debug variable = i]
  %tmp_8 = sext i8 %i_3 to i64, !dbg !113         ; [#uses=1 type=i64] [debug line = 30:1]
  %x_addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_8, !dbg !113 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %arr_load_2, i64* %x_addr, align 8, !dbg !113 ; [debug line = 30:1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_22), !dbg !114 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp_9 = add i8 %tmp_4, 1, !dbg !115            ; [#uses=1 type=i8] [debug line = 29:24]
  br label %.preheader, !dbg !115                 ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit13:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit13, %.loopexit.loopexit
  br label %9, !dbg !116                          ; [debug line = 34:6]

; <label>:9                                       ; preds = %10, %.loopexit
  %tmp_17 = phi i8 [ %i1_read, %.loopexit ], [ %tmp_21, %10 ] ; [#uses=3 type=i8]
  %i_4 = phi i8 [ 0, %.loopexit ], [ %i_7, %10 ]  ; [#uses=2 type=i8]
  %tmp_18 = sext i8 %tmp_17 to i64, !dbg !116     ; [#uses=2 type=i64] [debug line = 34:6]
  %tmp_19 = icmp sgt i64 %tmp_18, %f2_read, !dbg !116 ; [#uses=1 type=i1] [debug line = 34:6]
  %i_7 = add i8 %i_4, 1, !dbg !118                ; [#uses=1 type=i8] [debug line = 35:1]
  br i1 %tmp_19, label %11, label %10, !dbg !116  ; [debug line = 34:6]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind, !dbg !120 ; [debug line = 35:2]
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4), !dbg !120 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @p_str1) nounwind, !dbg !121 ; [debug line = 36:1]
  call void @llvm.dbg.value(metadata !{i8 %i_7}, i64 0, metadata !102), !dbg !118 ; [debug line = 35:1] [debug variable = i]
  %tmp_20 = sext i8 %i_4 to i64, !dbg !118        ; [#uses=1 type=i64] [debug line = 35:1]
  %x_addr_4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp_20, !dbg !118 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x_load = load i64* %x_addr_4, align 8, !dbg !118 ; [#uses=1 type=i64] [debug line = 35:1]
  %arr_addr_4 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_18, !dbg !118 ; [#uses=1 type=i64*] [debug line = 35:1]
  store i64 %x_load, i64* %arr_addr_4, align 8, !dbg !118 ; [debug line = 35:1]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_25), !dbg !122 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp_21 = add i8 %tmp_17, 1, !dbg !123          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %9, !dbg !123                          ; [debug line = 34:33]

; <label>:11                                      ; preds = %9
  store i8 %tmp_17, i8* @h, align 1, !dbg !123    ; [debug line = 34:33]
  ret void, !dbg !124                             ; [debug line = 36:1]
}

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=2]
define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
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
!32 = metadata !{i32 786689, metadata !33, metadata !"arr", null, i32 44, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 786478, i32 0, metadata !34, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !34, i32 44, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 45} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !37}
!37 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!38 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !38, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 44, i32 21, metadata !33, null}
!45 = metadata !{i32 49, i32 6, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 49, i32 2, metadata !34, i32 12} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !33, i32 45, i32 1, metadata !34, i32 11} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 50, i32 3, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 50, i32 2, metadata !34, i32 13} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 54, i32 20, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 53, i32 3, metadata !34, i32 15} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !49, i32 52, i32 3, metadata !34, i32 14} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 52, i32 7, metadata !52, null}
!54 = metadata !{i32 53, i32 4, metadata !51, null}
!55 = metadata !{i32 54, i32 1, metadata !51, null}
!56 = metadata !{i32 54, i32 4, metadata !51, null}
!57 = metadata !{i32 786689, metadata !58, metadata !"c", metadata !34, i32 16777255, metadata !38, i32 0, metadata !50} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !34, metadata !"min", metadata !"min", metadata !"", metadata !34, i32 39, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 40} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !38, metadata !38, metadata !38}
!61 = metadata !{i32 39, i32 15, metadata !58, metadata !50}
!62 = metadata !{i32 41, i32 2, metadata !63, metadata !50}
!63 = metadata !{i32 786443, metadata !58, i32 40, i32 1, metadata !34, i32 10} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 55, i32 4, metadata !51, null}
!65 = metadata !{i32 52, i32 25, metadata !52, null}
!66 = metadata !{i32 786688, metadata !47, metadata !"x", metadata !34, i32 47, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 56, i32 2, metadata !49, null}
!68 = metadata !{i32 786688, metadata !47, metadata !"m", metadata !34, i32 46, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 49, i32 25, metadata !46, null}
!70 = metadata !{i32 57, i32 1, metadata !47, null}
!71 = metadata !{i32 786689, metadata !72, metadata !"i1", metadata !34, i32 16777222, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786478, i32 0, metadata !34, metadata !"merge", metadata !"merge", metadata !"", metadata !34, i32 6, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 7} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75, metadata !38, metadata !38, metadata !37}
!75 = metadata !{i32 786454, null, metadata !"int8_t", metadata !34, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ]
!76 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!77 = metadata !{i32 786688, metadata !78, metadata !"i2", metadata !34, i32 9, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786443, metadata !72, i32 7, i32 1, metadata !34, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786689, metadata !72, metadata !"f2", metadata !34, i32 50331654, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 6, i32 37, metadata !72, null}
!81 = metadata !{i32 786689, metadata !72, metadata !"f1", metadata !34, i32 33554438, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 6, i32 28, metadata !72, null}
!83 = metadata !{i32 6, i32 19, metadata !72, null}
!84 = metadata !{i32 786689, metadata !72, metadata !"arr", null, i32 6, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 6, i32 46, metadata !72, null}
!86 = metadata !{i32 786688, metadata !78, metadata !"x", metadata !34, i32 8, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 8, i32 7, metadata !78, null}
!88 = metadata !{i32 9, i32 20, metadata !78, null}
!89 = metadata !{i32 13, i32 2, metadata !78, null}
!90 = metadata !{i32 16, i32 4, metadata !91, null}
!91 = metadata !{i32 786443, metadata !78, i32 14, i32 2, metadata !34, i32 1} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 18, i32 4, metadata !91, null}
!93 = metadata !{i32 29, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !95, i32 29, i32 3, metadata !34, i32 6} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !78, i32 27, i32 6, metadata !34, i32 5} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 24, i32 7, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 24, i32 3, metadata !34, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !78, i32 22, i32 2, metadata !34, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 14, i32 3, metadata !91, null}
!100 = metadata !{i32 15, i32 1, metadata !91, null}
!101 = metadata !{i32 15, i32 3, metadata !91, null}
!102 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !34, i32 10, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 19, i32 2, metadata !91, null}
!104 = metadata !{i32 25, i32 2, metadata !105, null}
!105 = metadata !{i32 786443, metadata !97, i32 25, i32 1, metadata !34, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 26, i32 1, metadata !105, null}
!107 = metadata !{i32 25, i32 1, metadata !105, null}
!108 = metadata !{i32 25, i32 15, metadata !105, null}
!109 = metadata !{i32 24, i32 24, metadata !97, null}
!110 = metadata !{i32 30, i32 2, metadata !111, null}
!111 = metadata !{i32 786443, metadata !94, i32 30, i32 1, metadata !34, i32 7} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 31, i32 1, metadata !111, null}
!113 = metadata !{i32 30, i32 1, metadata !111, null}
!114 = metadata !{i32 30, i32 15, metadata !111, null}
!115 = metadata !{i32 29, i32 24, metadata !94, null}
!116 = metadata !{i32 34, i32 6, metadata !117, null}
!117 = metadata !{i32 786443, metadata !78, i32 34, i32 2, metadata !34, i32 8} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 35, i32 1, metadata !119, null}
!119 = metadata !{i32 786443, metadata !117, i32 35, i32 1, metadata !34, i32 9} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 35, i32 2, metadata !119, null}
!121 = metadata !{i32 36, i32 1, metadata !119, null}
!122 = metadata !{i32 35, i32 15, metadata !119, null}
!123 = metadata !{i32 34, i32 33, metadata !117, null}
!124 = metadata !{i32 36, i32 1, metadata !78, null}
