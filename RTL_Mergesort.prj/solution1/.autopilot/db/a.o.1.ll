; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort.str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=3 type=i8*]
@.str6 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
define internal fastcc i64 @min(i64 %c) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64 %c}, i64 0, metadata !43), !dbg !44 ; [debug line = 39:15] [debug variable = c]
  %tmp = icmp slt i64 %c, 9, !dbg !45             ; [#uses=1 type=i1] [debug line = 41:2]
  %c.assign = select i1 %tmp, i64 %c, i64 9, !dbg !45 ; [#uses=1 type=i64] [debug line = 41:2]
  call void @llvm.dbg.value(metadata !{i64 %c.assign}, i64 0, metadata !43), !dbg !45 ; [debug line = 41:2] [debug variable = c]
  ret i64 %c.assign, !dbg !45                     ; [debug line = 41:2]
}

; [#uses=0]
define void @mergesort(i64* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort.str) nounwind
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !47), !dbg !48 ; [debug line = 44:21] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !49 ; [debug line = 45:2]
  br label %1, !dbg !51                           ; [debug line = 49:6]

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m.1, %5 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !51            ; [#uses=1 type=i1] [debug line = 49:6]
  br i1 %tmp, label %2, label %6, !dbg !51        ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !53 ; [debug line = 50:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !53 ; [#uses=1 type=i32] [debug line = 50:3]
  %m.1 = shl i64 %m, 1, !dbg !55                  ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !58                           ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x.1, %4 ]            ; [#uses=5 type=i64]
  %tmp.3 = icmp slt i64 %x, 9, !dbg !58           ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp.3, label %4, label %5, !dbg !58      ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 53:4]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 54:1]
  %tmp.4 = trunc i64 %x to i8, !dbg !61           ; [#uses=1 type=i8] [debug line = 54:4]
  %tmp.5 = add i64 %m, -1, !dbg !61               ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.6 = add i64 %tmp.5, %x, !dbg !61           ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.7 = add i64 %m.1, -1, !dbg !55             ; [#uses=1 type=i64] [debug line = 54:20]
  %tmp.8 = add i64 %tmp.7, %x, !dbg !55           ; [#uses=1 type=i64] [debug line = 54:20]
  %tmp.9 = call fastcc i64 @min(i64 %tmp.8), !dbg !55 ; [#uses=1 type=i64] [debug line = 54:20]
  call fastcc void @merge(i8 signext %tmp.4, i64 %tmp.6, i64 %tmp.9, i64* %arr), !dbg !55 ; [debug line = 54:20]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !62 ; [#uses=0 type=i32] [debug line = 55:4]
  %x.1 = add nsw i64 %x, %m.1, !dbg !63           ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x.1}, i64 0, metadata !64), !dbg !63 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !63                           ; [debug line = 52:25]

; <label>:5                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m.1}, i64 0, metadata !66), !dbg !67 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !67                           ; [debug line = 49:25]

; <label>:6                                       ; preds = %1
  ret void, !dbg !68                              ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i8 signext %i1, i64 %f1, i64 %f2, i64* %arr) nounwind uwtable {
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i8 %i1}, i64 0, metadata !69), !dbg !70 ; [debug line = 6:19] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !71), !dbg !72 ; [debug line = 6:28] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !73), !dbg !74 ; [debug line = 6:37] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !75), !dbg !76 ; [debug line = 6:46] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !77 ; [debug line = 7:2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !79), !dbg !83 ; [debug line = 8:7] [debug variable = x]
  %tmp = trunc i64 %f1 to i8, !dbg !84            ; [#uses=1 type=i8] [debug line = 9:20]
  %i2 = add i8 %tmp, 1, !dbg !84                  ; [#uses=1 type=i8] [debug line = 9:20]
  call void @llvm.dbg.value(metadata !{i8 %i2}, i64 0, metadata !85), !dbg !84 ; [debug line = 9:20] [debug variable = i2]
  br label %1, !dbg !86                           ; [debug line = 13:2]

; <label>:1                                       ; preds = %6, %0
  %i21 = phi i8 [ %i2, %0 ], [ %i2.1, %6 ]        ; [#uses=4 type=i8]
  %i = phi i8 [ 0, %0 ], [ %i.1, %6 ]             ; [#uses=5 type=i8]
  %.0 = phi i8 [ %i1, %0 ], [ %.1, %6 ]           ; [#uses=4 type=i8]
  %tmp.12 = sext i8 %.0 to i64, !dbg !86          ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp.13 = icmp sgt i64 %tmp.12, %f1, !dbg !86   ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp.13, label %.preheader.preheader, label %2, !dbg !86 ; [debug line = 13:2]

.preheader.preheader:                             ; preds = %1
  %i.0.lcssa = phi i8 [ %i, %1 ]                  ; [#uses=1 type=i8]
  %i2.0.lcssa = phi i8 [ %i21, %1 ]               ; [#uses=1 type=i8]
  br label %.preheader, !dbg !87                  ; [debug line = 29:24]

; <label>:2                                       ; preds = %1
  %tmp.14 = sext i8 %i21 to i64, !dbg !86         ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp.15 = icmp sgt i64 %tmp.14, %f2, !dbg !86   ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp.15, label %.preheader3.preheader, label %3

.preheader3.preheader:                            ; preds = %2
  %.0.lcssa = phi i8 [ %.0, %2 ]                  ; [#uses=1 type=i8]
  %i.0.lcssa1 = phi i8 [ %i, %2 ]                 ; [#uses=1 type=i8]
  br label %.preheader3, !dbg !90                 ; [debug line = 24:24]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 14:3]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !95 ; [debug line = 15:1]
  %arr.addr = getelementptr inbounds i64* %arr, i64 %tmp.12, !dbg !96 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load = load i64* %arr.addr, align 8, !dbg !96 ; [#uses=4 type=i64] [debug line = 15:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %arr.addr.1 = getelementptr inbounds i64* %arr, i64 %tmp.14, !dbg !96 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load.1 = load i64* %arr.addr.1, align 8, !dbg !96 ; [#uses=4 type=i64] [debug line = 15:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %tmp.19 = icmp sgt i64 %arr.load, %arr.load.1, !dbg !96 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp.19, label %5, label %4, !dbg !96     ; [debug line = 15:3]

; <label>:4                                       ; preds = %3
  %i1.assign = add i8 %.0, 1, !dbg !97            ; [#uses=1 type=i8] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i8 %i1.assign}, i64 0, metadata !69), !dbg !97 ; [debug line = 16:4] [debug variable = i1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %tmp.29 = sext i8 %i to i64, !dbg !97           ; [#uses=1 type=i64] [debug line = 16:4]
  %x.addr.2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.29, !dbg !97 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %arr.load, i64* %x.addr.2, align 8, !dbg !97 ; [debug line = 16:4]
  br label %6, !dbg !97                           ; [debug line = 16:4]

; <label>:5                                       ; preds = %3
  %i2.2 = add i8 %i21, 1, !dbg !98                ; [#uses=1 type=i8] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i8 %i2.2}, i64 0, metadata !85), !dbg !98 ; [debug line = 18:4] [debug variable = i2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %tmp.27 = sext i8 %i to i64, !dbg !98           ; [#uses=1 type=i64] [debug line = 18:4]
  %x.addr.1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.27, !dbg !98 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %arr.load.1, i64* %x.addr.1, align 8, !dbg !98 ; [debug line = 18:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %i2.1 = phi i8 [ %i21, %4 ], [ %i2.2, %5 ]      ; [#uses=1 type=i8]
  %.1 = phi i8 [ %i1.assign, %4 ], [ %.0, %5 ]    ; [#uses=1 type=i8]
  %i.1 = add i8 %i, 1, !dbg !97                   ; [#uses=1 type=i8] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !99), !dbg !97 ; [debug line = 16:4] [debug variable = i]
  %rend21 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !100                          ; [debug line = 19:2]

.preheader3:                                      ; preds = %7, %.preheader3.preheader
  %tmp.23 = phi i8 [ %tmp.32, %7 ], [ %.0.lcssa, %.preheader3.preheader ] ; [#uses=3 type=i8]
  %i.2 = phi i8 [ %i.6, %7 ], [ %i.0.lcssa1, %.preheader3.preheader ] ; [#uses=2 type=i8]
  store i8 %tmp.23, i8* @h, align 1, !dbg !90     ; [debug line = 24:24]
  %tmp.24 = sext i8 %tmp.23 to i64, !dbg !101     ; [#uses=2 type=i64] [debug line = 24:7]
  %tmp.25 = icmp sgt i64 %tmp.24, %f1, !dbg !101  ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp.25, label %.loopexit.loopexit22, label %7, !dbg !101 ; [debug line = 24:7]

; <label>:7                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !102 ; [debug line = 25:2]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !104 ; [debug line = 26:1]
  %arr.addr.3 = getelementptr inbounds i64* %arr, i64 %tmp.24, !dbg !105 ; [#uses=1 type=i64*] [debug line = 25:1]
  %arr.load.3 = load i64* %arr.addr.3, align 8, !dbg !105 ; [#uses=2 type=i64] [debug line = 25:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.3) nounwind
  %i.6 = add i8 %i.2, 1, !dbg !105                ; [#uses=1 type=i8] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i8 %i.6}, i64 0, metadata !99), !dbg !105 ; [debug line = 25:1] [debug variable = i]
  %tmp.31 = sext i8 %i.2 to i64, !dbg !105        ; [#uses=1 type=i64] [debug line = 25:1]
  %x.addr.3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.31, !dbg !105 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %arr.load.3, i64* %x.addr.3, align 8, !dbg !105 ; [debug line = 25:1]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp.32 = add i8 %tmp.23, 1, !dbg !90           ; [#uses=1 type=i8] [debug line = 24:24]
  br label %.preheader3, !dbg !90                 ; [debug line = 24:24]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %tmp.16 = phi i8 [ %tmp.22, %8 ], [ %i2.0.lcssa, %.preheader.preheader ] ; [#uses=3 type=i8]
  %i.3 = phi i8 [ %i.5, %8 ], [ %i.0.lcssa, %.preheader.preheader ] ; [#uses=2 type=i8]
  store i8 %tmp.16, i8* @h, align 1, !dbg !87     ; [debug line = 29:24]
  %tmp.17 = sext i8 %tmp.16 to i64, !dbg !107     ; [#uses=2 type=i64] [debug line = 29:7]
  %tmp.18 = icmp sgt i64 %tmp.17, %f2, !dbg !107  ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp.18, label %.loopexit.loopexit, label %8, !dbg !107 ; [debug line = 29:7]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !108 ; [debug line = 30:2]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !110 ; [debug line = 31:1]
  %arr.addr.2 = getelementptr inbounds i64* %arr, i64 %tmp.17, !dbg !111 ; [#uses=1 type=i64*] [debug line = 30:1]
  %arr.load.2 = load i64* %arr.addr.2, align 8, !dbg !111 ; [#uses=2 type=i64] [debug line = 30:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.2) nounwind
  %i.5 = add i8 %i.3, 1, !dbg !111                ; [#uses=1 type=i8] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i8 %i.5}, i64 0, metadata !99), !dbg !111 ; [debug line = 30:1] [debug variable = i]
  %tmp.21 = sext i8 %i.3 to i64, !dbg !111        ; [#uses=1 type=i64] [debug line = 30:1]
  %x.addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.21, !dbg !111 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %arr.load.2, i64* %x.addr, align 8, !dbg !111 ; [debug line = 30:1]
  %rend17 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !112 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp.22 = add i8 %tmp.16, 1, !dbg !87           ; [#uses=1 type=i8] [debug line = 29:24]
  br label %.preheader, !dbg !87                  ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit22:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit22, %.loopexit.loopexit
  br label %9, !dbg !113                          ; [debug line = 34:6]

; <label>:9                                       ; preds = %10, %.loopexit
  %tmp.33 = phi i8 [ %i1, %.loopexit ], [ %tmp.38, %10 ] ; [#uses=3 type=i8]
  %i.4 = phi i8 [ 0, %.loopexit ], [ %i.7, %10 ]  ; [#uses=2 type=i8]
  store i8 %tmp.33, i8* @h, align 1, !dbg !115    ; [debug line = 34:33]
  %tmp.34 = sext i8 %tmp.33 to i64, !dbg !113     ; [#uses=2 type=i64] [debug line = 34:6]
  %tmp.35 = icmp sgt i64 %tmp.34, %f2, !dbg !113  ; [#uses=1 type=i1] [debug line = 34:6]
  br i1 %tmp.35, label %11, label %10, !dbg !113  ; [debug line = 34:6]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 35:2]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !116 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !118 ; [debug line = 36:1]
  %i.7 = add i8 %i.4, 1, !dbg !119                ; [#uses=1 type=i8] [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i8 %i.7}, i64 0, metadata !99), !dbg !119 ; [debug line = 35:1] [debug variable = i]
  %tmp.37 = sext i8 %i.4 to i64, !dbg !119        ; [#uses=1 type=i64] [debug line = 35:1]
  %x.addr.4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.37, !dbg !119 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x.load = load i64* %x.addr.4, align 8, !dbg !119 ; [#uses=2 type=i64] [debug line = 35:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %x.load) nounwind
  %arr.addr.4 = getelementptr inbounds i64* %arr, i64 %tmp.34, !dbg !119 ; [#uses=1 type=i64*] [debug line = 35:1]
  store i64 %x.load, i64* %arr.addr.4, align 8, !dbg !119 ; [debug line = 35:1]
  %rend19 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !120 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp.38 = add i8 %tmp.33, 1, !dbg !115          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %9, !dbg !115                          ; [debug line = 34:33]

; <label>:11                                      ; preds = %9
  ret void, !dbg !121                             ; [debug line = 36:1]
}

; [#uses=16]
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

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24, !31, !37}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/mergesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !21} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"merge", metadata !"merge", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i64, i64, i64*)* @merge, null, null, metadata !13, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12}
!9 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"min", metadata !"min", metadata !"", metadata !6, i32 39, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !11, metadata !11, metadata !11}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !6, i32 44, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @mergesort, null, null, metadata !13, i32 45} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !12}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !6, i32 3, metadata !9, i32 0, i32 1, i8* @h} ; [ DW_TAG_variable ]
!24 = metadata !{void (i8, i64, i64, i64*)* @merge, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"long", metadata !"long", metadata !"long*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"i1", metadata !"f1", metadata !"f2", metadata !"arr"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !30}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"long", metadata !"long"}
!35 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"c", metadata !"b"}
!37 = metadata !{void (i64*)* @mergesort, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !30}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!43 = metadata !{i32 786689, metadata !15, metadata !"c", metadata !6, i32 16777255, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 39, i32 15, metadata !15, null}
!45 = metadata !{i32 41, i32 2, metadata !46, null}
!46 = metadata !{i32 786443, metadata !15, i32 40, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786689, metadata !18, metadata !"arr", metadata !6, i32 16777260, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 44, i32 21, metadata !18, null}
!49 = metadata !{i32 45, i32 2, metadata !50, null}
!50 = metadata !{i32 786443, metadata !18, i32 45, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 49, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !50, i32 49, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 50, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !52, i32 50, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 54, i32 20, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 53, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !54, i32 52, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 52, i32 7, metadata !57, null}
!59 = metadata !{i32 53, i32 4, metadata !56, null}
!60 = metadata !{i32 54, i32 1, metadata !56, null}
!61 = metadata !{i32 54, i32 4, metadata !56, null}
!62 = metadata !{i32 55, i32 4, metadata !56, null}
!63 = metadata !{i32 52, i32 25, metadata !57, null}
!64 = metadata !{i32 786688, metadata !50, metadata !"x", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 56, i32 2, metadata !54, null}
!66 = metadata !{i32 786688, metadata !50, metadata !"m", metadata !6, i32 46, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 49, i32 25, metadata !52, null}
!68 = metadata !{i32 57, i32 1, metadata !50, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"i1", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 6, i32 19, metadata !5, null}
!71 = metadata !{i32 786689, metadata !5, metadata !"f1", metadata !6, i32 33554438, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 6, i32 28, metadata !5, null}
!73 = metadata !{i32 786689, metadata !5, metadata !"f2", metadata !6, i32 50331654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 6, i32 37, metadata !5, null}
!75 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 67108870, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 6, i32 46, metadata !5, null}
!77 = metadata !{i32 7, i32 2, metadata !78, null}
!78 = metadata !{i32 786443, metadata !5, i32 7, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786688, metadata !78, metadata !"x", metadata !6, i32 8, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !11, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!83 = metadata !{i32 8, i32 7, metadata !78, null}
!84 = metadata !{i32 9, i32 20, metadata !78, null}
!85 = metadata !{i32 786688, metadata !78, metadata !"i2", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 13, i32 2, metadata !78, null}
!87 = metadata !{i32 29, i32 24, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 29, i32 3, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !78, i32 27, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 24, i32 24, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 24, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !78, i32 22, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 14, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !78, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 15, i32 1, metadata !94, null}
!96 = metadata !{i32 15, i32 3, metadata !94, null}
!97 = metadata !{i32 16, i32 4, metadata !94, null}
!98 = metadata !{i32 18, i32 4, metadata !94, null}
!99 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !6, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 19, i32 2, metadata !94, null}
!101 = metadata !{i32 24, i32 7, metadata !91, null}
!102 = metadata !{i32 25, i32 2, metadata !103, null}
!103 = metadata !{i32 786443, metadata !91, i32 25, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 26, i32 1, metadata !103, null}
!105 = metadata !{i32 25, i32 1, metadata !103, null}
!106 = metadata !{i32 25, i32 15, metadata !103, null}
!107 = metadata !{i32 29, i32 7, metadata !88, null}
!108 = metadata !{i32 30, i32 2, metadata !109, null}
!109 = metadata !{i32 786443, metadata !88, i32 30, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 31, i32 1, metadata !109, null}
!111 = metadata !{i32 30, i32 1, metadata !109, null}
!112 = metadata !{i32 30, i32 15, metadata !109, null}
!113 = metadata !{i32 34, i32 6, metadata !114, null}
!114 = metadata !{i32 786443, metadata !78, i32 34, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 34, i32 33, metadata !114, null}
!116 = metadata !{i32 35, i32 2, metadata !117, null}
!117 = metadata !{i32 786443, metadata !114, i32 35, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 36, i32 1, metadata !117, null}
!119 = metadata !{i32 35, i32 1, metadata !117, null}
!120 = metadata !{i32 35, i32 15, metadata !117, null}
!121 = metadata !{i32 36, i32 1, metadata !78, null}
