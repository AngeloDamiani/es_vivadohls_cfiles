; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort.str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=3 type=i8*]
@.str7 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
define internal fastcc i64 @min(i64 %c) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64 %c}, i64 0, metadata !45), !dbg !46 ; [debug line = 39:15] [debug variable = c]
  %tmp = icmp slt i64 %c, 9, !dbg !47             ; [#uses=1 type=i1] [debug line = 41:2]
  %c.assign = select i1 %tmp, i64 %c, i64 9, !dbg !47 ; [#uses=1 type=i64] [debug line = 41:2]
  call void @llvm.dbg.value(metadata !{i64 %c.assign}, i64 0, metadata !45), !dbg !47 ; [debug line = 41:2] [debug variable = c]
  ret i64 %c.assign, !dbg !47                     ; [debug line = 41:2]
}

; [#uses=0]
define void @mergesort(i64* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort.str) nounwind
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !49), !dbg !50 ; [debug line = 44:28] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !51 ; [debug line = 45:2]
  call void (...)* @_ssdm_SpecArrayPartition(i64* %arr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !53 ; [debug line = 46:1]
  br label %1, !dbg !54                           ; [debug line = 49:6]

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m.1, %5 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !54            ; [#uses=1 type=i1] [debug line = 49:6]
  br i1 %tmp, label %2, label %6, !dbg !54        ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !56 ; [debug line = 50:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !56 ; [#uses=1 type=i32] [debug line = 50:3]
  %m.1 = shl i64 %m, 1, !dbg !58                  ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !61                           ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x.1, %4 ]            ; [#uses=5 type=i64]
  %tmp.3 = icmp slt i64 %x, 9, !dbg !61           ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp.3, label %4, label %5, !dbg !61      ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 53:4]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !62 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !63 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !63 ; [debug line = 54:1]
  %tmp.4 = add i64 %m, -1, !dbg !64               ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.5 = add i64 %tmp.4, %x, !dbg !64           ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.6 = add i64 %m.1, -1, !dbg !58             ; [#uses=1 type=i64] [debug line = 54:20]
  %tmp.7 = add i64 %tmp.6, %x, !dbg !58           ; [#uses=1 type=i64] [debug line = 54:20]
  %tmp.8 = call fastcc i64 @min(i64 %tmp.7), !dbg !58 ; [#uses=1 type=i64] [debug line = 54:20]
  call fastcc void @merge(i64 %x, i64 %tmp.5, i64 %tmp.8, i64* %arr), !dbg !58 ; [debug line = 54:20]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 55:4]
  %x.1 = add nsw i64 %x, %m.1, !dbg !66           ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x.1}, i64 0, metadata !67), !dbg !66 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !66                           ; [debug line = 52:25]

; <label>:5                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !68 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m.1}, i64 0, metadata !69), !dbg !70 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !70                           ; [debug line = 49:25]

; <label>:6                                       ; preds = %1
  ret void, !dbg !71                              ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i64 %i1, i64 %f1, i64 %f2, i64* %arr) nounwind uwtable {
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !72), !dbg !73 ; [debug line = 6:25] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !74), !dbg !75 ; [debug line = 6:42] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !76), !dbg !77 ; [debug line = 6:59] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !78), !dbg !79 ; [debug line = 6:75] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !80 ; [debug line = 7:2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !82), !dbg !86 ; [debug line = 8:7] [debug variable = x]
  %i2 = add nsw i64 %f1, 1, !dbg !87              ; [#uses=1 type=i64] [debug line = 9:26]
  call void @llvm.dbg.value(metadata !{i64 %i2}, i64 0, metadata !88), !dbg !87 ; [debug line = 9:26] [debug variable = i2]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !89), !dbg !90 ; [debug line = 11:17] [debug variable = start]
  br label %1, !dbg !91                           ; [debug line = 13:2]

; <label>:1                                       ; preds = %5, %0
  %i21 = phi i64 [ %i2, %0 ], [ %i2.1, %5 ]       ; [#uses=5 type=i64]
  %i = phi i64 [ 0, %0 ], [ %i.1, %5 ]            ; [#uses=4 type=i64]
  %.0 = phi i64 [ %i1, %0 ], [ %.1, %5 ]          ; [#uses=5 type=i64]
  %tmp = icmp sle i64 %i21, %f2, !dbg !91         ; [#uses=1 type=i1] [debug line = 13:2]
  %not. = icmp sle i64 %.0, %f1, !dbg !91         ; [#uses=1 type=i1] [debug line = 13:2]
  %tmp.10 = and i1 %tmp, %not., !dbg !91          ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp.10, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !92 ; [debug line = 14:3]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 15:1]
  %arr.addr = getelementptr inbounds i64* %arr, i64 %.0, !dbg !95 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load = load i64* %arr.addr, align 8, !dbg !95 ; [#uses=4 type=i64] [debug line = 15:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %arr.addr.1 = getelementptr inbounds i64* %arr, i64 %i21, !dbg !95 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load.1 = load i64* %arr.addr.1, align 8, !dbg !95 ; [#uses=4 type=i64] [debug line = 15:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %tmp.11 = icmp sgt i64 %arr.load, %arr.load.1, !dbg !95 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp.11, label %4, label %3, !dbg !95     ; [debug line = 15:3]

; <label>:3                                       ; preds = %2
  %i1.assign = add nsw i64 %.0, 1, !dbg !96       ; [#uses=1 type=i64] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i64 %i1.assign}, i64 0, metadata !72), !dbg !96 ; [debug line = 16:4] [debug variable = i1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %x.addr.1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i, !dbg !96 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %arr.load, i64* %x.addr.1, align 8, !dbg !96 ; [debug line = 16:4]
  br label %5, !dbg !96                           ; [debug line = 16:4]

; <label>:4                                       ; preds = %2
  %i2.2 = add nsw i64 %i21, 1, !dbg !97           ; [#uses=1 type=i64] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i64 %i2.2}, i64 0, metadata !88), !dbg !97 ; [debug line = 18:4] [debug variable = i2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %x.addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i, !dbg !97 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %arr.load.1, i64* %x.addr, align 8, !dbg !97 ; [debug line = 18:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %i2.1 = phi i64 [ %i21, %3 ], [ %i2.2, %4 ]     ; [#uses=1 type=i64]
  %.1 = phi i64 [ %i1.assign, %3 ], [ %.0, %4 ]   ; [#uses=1 type=i64]
  %i.1 = add nsw i64 %i, 1, !dbg !96              ; [#uses=1 type=i64] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i64 %i.1}, i64 0, metadata !98), !dbg !96 ; [debug line = 16:4] [debug variable = i]
  %rend13 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !99 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !99                           ; [debug line = 19:2]

; <label>:6                                       ; preds = %1
  %.0.lcssa = phi i64 [ %.0, %1 ]                 ; [#uses=2 type=i64]
  %i.0.lcssa = phi i64 [ %i, %1 ]                 ; [#uses=2 type=i64]
  %i2.0.lcssa = phi i64 [ %i21, %1 ]              ; [#uses=1 type=i64]
  %tmp.12 = icmp sgt i64 %.0.lcssa, %f1, !dbg !100 ; [#uses=1 type=i1] [debug line = 21:2]
  br i1 %tmp.12, label %10, label %7, !dbg !100   ; [debug line = 21:2]

; <label>:7                                       ; preds = %6
  %tmp.16 = trunc i64 %.0.lcssa to i8, !dbg !101  ; [#uses=1 type=i8] [debug line = 24:7]
  br label %8, !dbg !101                          ; [debug line = 24:7]

; <label>:8                                       ; preds = %9, %7
  %tmp.20 = phi i8 [ %tmp.16, %7 ], [ %tmp.26, %9 ] ; [#uses=3 type=i8]
  %i.2 = phi i64 [ %i.0.lcssa, %7 ], [ %i.6, %9 ] ; [#uses=2 type=i64]
  store i8 %tmp.20, i8* @h, align 1, !dbg !104    ; [debug line = 24:24]
  %tmp.21 = sext i8 %tmp.20 to i64, !dbg !101     ; [#uses=2 type=i64] [debug line = 24:7]
  %tmp.22 = icmp sgt i64 %tmp.21, %f1, !dbg !101  ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp.22, label %.loopexit.loopexit14, label %9, !dbg !101 ; [debug line = 24:7]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !105 ; [debug line = 25:2]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !105 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !107 ; [debug line = 26:1]
  %arr.addr.3 = getelementptr inbounds i64* %arr, i64 %tmp.21, !dbg !108 ; [#uses=1 type=i64*] [debug line = 25:1]
  %arr.load.3 = load i64* %arr.addr.3, align 8, !dbg !108 ; [#uses=2 type=i64] [debug line = 25:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.3) nounwind
  %i.6 = add nsw i64 %i.2, 1, !dbg !108           ; [#uses=1 type=i64] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i64 %i.6}, i64 0, metadata !98), !dbg !108 ; [debug line = 25:1] [debug variable = i]
  %x.addr.3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.2, !dbg !108 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %arr.load.3, i64* %x.addr.3, align 8, !dbg !108 ; [debug line = 25:1]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !109 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp.26 = add i8 %tmp.20, 1, !dbg !104          ; [#uses=1 type=i8] [debug line = 24:24]
  br label %8, !dbg !104                          ; [debug line = 24:24]

; <label>:10                                      ; preds = %6
  %tmp.15 = trunc i64 %i2.0.lcssa to i8, !dbg !110 ; [#uses=1 type=i8] [debug line = 29:7]
  br label %11, !dbg !110                         ; [debug line = 29:7]

; <label>:11                                      ; preds = %12, %10
  %tmp.17 = phi i8 [ %tmp.15, %10 ], [ %tmp.24, %12 ] ; [#uses=3 type=i8]
  %i.3 = phi i64 [ %i.0.lcssa, %10 ], [ %i.5, %12 ] ; [#uses=2 type=i64]
  store i8 %tmp.17, i8* @h, align 1, !dbg !113    ; [debug line = 29:24]
  %tmp.18 = sext i8 %tmp.17 to i64, !dbg !110     ; [#uses=2 type=i64] [debug line = 29:7]
  %tmp.19 = icmp sgt i64 %tmp.18, %f2, !dbg !110  ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp.19, label %.loopexit.loopexit, label %12, !dbg !110 ; [debug line = 29:7]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !114 ; [debug line = 30:2]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !114 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 31:1]
  %arr.addr.2 = getelementptr inbounds i64* %arr, i64 %tmp.18, !dbg !117 ; [#uses=1 type=i64*] [debug line = 30:1]
  %arr.load.2 = load i64* %arr.addr.2, align 8, !dbg !117 ; [#uses=2 type=i64] [debug line = 30:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.2) nounwind
  %i.5 = add nsw i64 %i.3, 1, !dbg !117           ; [#uses=1 type=i64] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i64 %i.5}, i64 0, metadata !98), !dbg !117 ; [debug line = 30:1] [debug variable = i]
  %x.addr.2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.3, !dbg !117 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %arr.load.2, i64* %x.addr.2, align 8, !dbg !117 ; [debug line = 30:1]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !118 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp.24 = add i8 %tmp.17, 1, !dbg !113          ; [#uses=1 type=i8] [debug line = 29:24]
  br label %11, !dbg !113                         ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %11
  br label %.loopexit

.loopexit.loopexit14:                             ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit14, %.loopexit.loopexit
  %tmp.27 = trunc i64 %i1 to i8, !dbg !119        ; [#uses=1 type=i8] [debug line = 34:6]
  br label %13, !dbg !119                         ; [debug line = 34:6]

; <label>:13                                      ; preds = %14, %.loopexit
  %tmp.28 = phi i8 [ %tmp.27, %.loopexit ], [ %tmp.32, %14 ] ; [#uses=3 type=i8]
  %i.4 = phi i64 [ 0, %.loopexit ], [ %i.7, %14 ] ; [#uses=2 type=i64]
  store i8 %tmp.28, i8* @h, align 1, !dbg !121    ; [debug line = 34:33]
  %tmp.29 = sext i8 %tmp.28 to i64, !dbg !119     ; [#uses=2 type=i64] [debug line = 34:6]
  %tmp.30 = icmp sgt i64 %tmp.29, %f2, !dbg !119  ; [#uses=1 type=i1] [debug line = 34:6]
  br i1 %tmp.30, label %15, label %14, !dbg !119  ; [debug line = 34:6]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !122 ; [debug line = 35:2]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !122 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !124 ; [debug line = 36:1]
  %i.7 = add nsw i64 %i.4, 1, !dbg !125           ; [#uses=1 type=i64] [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i64 %i.7}, i64 0, metadata !98), !dbg !125 ; [debug line = 35:1] [debug variable = i]
  %x.addr.4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.4, !dbg !125 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x.load = load i64* %x.addr.4, align 8, !dbg !125 ; [#uses=2 type=i64] [debug line = 35:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %x.load) nounwind
  %arr.addr.4 = getelementptr inbounds i64* %arr, i64 %tmp.29, !dbg !125 ; [#uses=1 type=i64*] [debug line = 35:1]
  store i64 %x.load, i64* %arr.addr.4, align 8, !dbg !125 ; [debug line = 35:1]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !126 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp.32 = add i8 %tmp.28, 1, !dbg !121          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %13, !dbg !121                         ; [debug line = 34:33]

; <label>:15                                      ; preds = %13
  ret void, !dbg !127                             ; [debug line = 36:1]
}

; [#uses=17]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=7]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!26, !33, !39}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/mergesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !21} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"merge", metadata !"merge", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64, i64, i64*)* @merge, null, null, metadata !13, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"min", metadata !"min", metadata !"", metadata !6, i32 39, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !10, metadata !10, metadata !10}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !6, i32 44, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @mergesort, null, null, metadata !13, i32 45} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !11}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !6, i32 3, metadata !24, i32 0, i32 1, i8* @h} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!26 = metadata !{void (i64, i64, i64, i64*)* @merge, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"i1", metadata !"f1", metadata !"f2", metadata !"arr"}
!32 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !32}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"long", metadata !"long"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"c", metadata !"b"}
!39 = metadata !{void (i64*)* @mergesort, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !32}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!45 = metadata !{i32 786689, metadata !15, metadata !"c", metadata !6, i32 16777255, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 39, i32 15, metadata !15, null}
!47 = metadata !{i32 41, i32 2, metadata !48, null}
!48 = metadata !{i32 786443, metadata !15, i32 40, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786689, metadata !18, metadata !"arr", metadata !6, i32 16777260, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 44, i32 28, metadata !18, null}
!51 = metadata !{i32 45, i32 2, metadata !52, null}
!52 = metadata !{i32 786443, metadata !18, i32 45, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 46, i32 1, metadata !52, null}
!54 = metadata !{i32 49, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !52, i32 49, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 50, i32 3, metadata !57, null}
!57 = metadata !{i32 786443, metadata !55, i32 50, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 54, i32 20, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 53, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !57, i32 52, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 52, i32 7, metadata !60, null}
!62 = metadata !{i32 53, i32 4, metadata !59, null}
!63 = metadata !{i32 54, i32 1, metadata !59, null}
!64 = metadata !{i32 54, i32 4, metadata !59, null}
!65 = metadata !{i32 55, i32 4, metadata !59, null}
!66 = metadata !{i32 52, i32 25, metadata !60, null}
!67 = metadata !{i32 786688, metadata !52, metadata !"x", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 56, i32 2, metadata !57, null}
!69 = metadata !{i32 786688, metadata !52, metadata !"m", metadata !6, i32 46, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 49, i32 25, metadata !55, null}
!71 = metadata !{i32 57, i32 1, metadata !52, null}
!72 = metadata !{i32 786689, metadata !5, metadata !"i1", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 6, i32 25, metadata !5, null}
!74 = metadata !{i32 786689, metadata !5, metadata !"f1", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 6, i32 42, metadata !5, null}
!76 = metadata !{i32 786689, metadata !5, metadata !"f2", metadata !6, i32 50331654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 6, i32 59, metadata !5, null}
!78 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 67108870, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 6, i32 75, metadata !5, null}
!80 = metadata !{i32 7, i32 2, metadata !81, null}
!81 = metadata !{i32 786443, metadata !5, i32 7, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"x", metadata !6, i32 8, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !10, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 8, i32 7, metadata !81, null}
!87 = metadata !{i32 9, i32 26, metadata !81, null}
!88 = metadata !{i32 786688, metadata !81, metadata !"i2", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786688, metadata !81, metadata !"start", metadata !6, i32 11, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 11, i32 17, metadata !81, null}
!91 = metadata !{i32 13, i32 2, metadata !81, null}
!92 = metadata !{i32 14, i32 3, metadata !93, null}
!93 = metadata !{i32 786443, metadata !81, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 15, i32 1, metadata !93, null}
!95 = metadata !{i32 15, i32 3, metadata !93, null}
!96 = metadata !{i32 16, i32 4, metadata !93, null}
!97 = metadata !{i32 18, i32 4, metadata !93, null}
!98 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !6, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 19, i32 2, metadata !93, null}
!100 = metadata !{i32 21, i32 2, metadata !81, null}
!101 = metadata !{i32 24, i32 7, metadata !102, null}
!102 = metadata !{i32 786443, metadata !103, i32 24, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !81, i32 22, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 24, i32 24, metadata !102, null}
!105 = metadata !{i32 25, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !102, i32 25, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 26, i32 1, metadata !106, null}
!108 = metadata !{i32 25, i32 1, metadata !106, null}
!109 = metadata !{i32 25, i32 15, metadata !106, null}
!110 = metadata !{i32 29, i32 7, metadata !111, null}
!111 = metadata !{i32 786443, metadata !112, i32 29, i32 3, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !81, i32 27, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 29, i32 24, metadata !111, null}
!114 = metadata !{i32 30, i32 2, metadata !115, null}
!115 = metadata !{i32 786443, metadata !111, i32 30, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 31, i32 1, metadata !115, null}
!117 = metadata !{i32 30, i32 1, metadata !115, null}
!118 = metadata !{i32 30, i32 15, metadata !115, null}
!119 = metadata !{i32 34, i32 6, metadata !120, null}
!120 = metadata !{i32 786443, metadata !81, i32 34, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 34, i32 33, metadata !120, null}
!122 = metadata !{i32 35, i32 2, metadata !123, null}
!123 = metadata !{i32 786443, metadata !120, i32 35, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 36, i32 1, metadata !123, null}
!125 = metadata !{i32 35, i32 1, metadata !123, null}
!126 = metadata !{i32 35, i32 15, metadata !123, null}
!127 = metadata !{i32 36, i32 1, metadata !81, null}
