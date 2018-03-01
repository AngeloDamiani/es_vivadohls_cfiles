; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort.str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=1 type=i8*]
@.str6 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=3 type=[12 x i8]*]

; [#uses=0]
define void @mergesort([10 x i64]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %arr) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort.str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !39), !dbg !50 ; [debug line = 44:21] [debug variable = arr]
  br label %1, !dbg !51                           ; [debug line = 49:6]

; <label>:1                                       ; preds = %6, %0
  %m = phi i64 [ 1, %0 ], [ %m.1, %6 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !51            ; [#uses=1 type=i1] [debug line = 49:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %2, label %8, !dbg !51        ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str5) nounwind, !dbg !54 ; [debug line = 50:3]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str5) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 50:3]
  %m.1 = shl i64 %m, 1, !dbg !56                  ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !59                           ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x.1, %4 ]            ; [#uses=5 type=i64]
  %tmp.3 = icmp slt i64 %x, 9, !dbg !59           ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp.3, label %4, label %6, !dbg !59      ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str6) nounwind, !dbg !60 ; [debug line = 53:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str6) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !61 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @.str1) nounwind, !dbg !61 ; [debug line = 54:1]
  %tmp.4 = trunc i64 %x to i8, !dbg !62           ; [#uses=1 type=i8] [debug line = 54:4]
  %tmp1 = add i64 %x, -1, !dbg !62                ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.6 = add i64 %m, %tmp1, !dbg !62            ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp2 = add i64 %x, -1, !dbg !56                ; [#uses=1 type=i64] [debug line = 54:20]
  %c.assign = add i64 %m.1, %tmp2, !dbg !56       ; [#uses=2 type=i64] [debug line = 54:20]
  call void @llvm.dbg.value(metadata !{i64 %c.assign}, i64 0, metadata !63), !dbg !67 ; [debug line = 39:15@54:20] [debug variable = c]
  %tmp.i = icmp slt i64 %c.assign, 9, !dbg !68    ; [#uses=1 type=i1] [debug line = 41:2@54:20]
  %c.assign.1 = select i1 %tmp.i, i64 %c.assign, i64 9, !dbg !68 ; [#uses=1 type=i64] [debug line = 41:2@54:20]
  call void @llvm.dbg.value(metadata !{i64 %c.assign.1}, i64 0, metadata !63), !dbg !68 ; [debug line = 41:2@54:20] [debug variable = c]
  call fastcc void @merge(i8 signext %tmp.4, i64 %tmp.6, i64 %c.assign.1, [10 x i64]* %arr) nounwind, !dbg !56 ; [debug line = 54:20]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str6, i32 %tmp.2) nounwind, !dbg !70 ; [#uses=0 type=i32] [debug line = 55:4]
  %x.1 = add nsw i64 %x, %m.1, !dbg !71           ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x.1}, i64 0, metadata !72), !dbg !71 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !71                           ; [debug line = 52:25]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str5, i32 %tmp.1) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m.1}, i64 0, metadata !74), !dbg !75 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !75                           ; [debug line = 49:25]

; <label>:8                                       ; preds = %1
  ret void, !dbg !76                              ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i8 signext %i1, i64 %f1, i64 %f2, [10 x i64]* nocapture %arr) {
  call void (...)* @_ssdm_SpecKeepAssert(i64 %f2), !hlsrange !77
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i8 %i1}, i64 0, metadata !78), !dbg !82 ; [debug line = 6:19] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !83), !dbg !84 ; [debug line = 6:28] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !85), !dbg !86 ; [debug line = 6:37] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !87), !dbg !88 ; [debug line = 6:46] [debug variable = arr]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !89), !dbg !91 ; [debug line = 8:7] [debug variable = x]
  %tmp = trunc i64 %f1 to i8, !dbg !92            ; [#uses=1 type=i8] [debug line = 9:20]
  %i2 = add i8 %tmp, 1, !dbg !92                  ; [#uses=1 type=i8] [debug line = 9:20]
  call void @llvm.dbg.value(metadata !{i8 %i2}, i64 0, metadata !93), !dbg !92 ; [debug line = 9:20] [debug variable = i2]
  br label %1, !dbg !94                           ; [debug line = 13:2]

; <label>:1                                       ; preds = %6, %0
  %i3 = phi i8 [ %i2, %0 ], [ %i2.1, %6 ]         ; [#uses=4 type=i8]
  %i = phi i8 [ 0, %0 ], [ %i.1, %6 ]             ; [#uses=5 type=i8]
  %.0 = phi i8 [ %i1, %0 ], [ %.1, %6 ]           ; [#uses=4 type=i8]
  %tmp. = sext i8 %.0 to i64, !dbg !94            ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp.1 = icmp sgt i64 %tmp., %f1, !dbg !94      ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp.1, label %.preheader.preheader, label %2, !dbg !94 ; [debug line = 13:2]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !95                  ; [debug line = 29:7]

; <label>:2                                       ; preds = %1
  %tmp.2 = sext i8 %i3 to i64, !dbg !94           ; [#uses=2 type=i64] [debug line = 13:2]
  %tmp.3 = icmp sgt i64 %tmp.2, %f2, !dbg !94     ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp.3, label %.preheader3.preheader, label %3

.preheader3.preheader:                            ; preds = %2
  br label %.preheader3, !dbg !98                 ; [debug line = 24:7]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str) nounwind, !dbg !101 ; [debug line = 14:3]
  %tmp.23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str), !dbg !101 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @.str1) nounwind, !dbg !103 ; [debug line = 15:1]
  %arr.addr.1 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp., !dbg !104 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load = load i64* %arr.addr.1, align 8, !dbg !104 ; [#uses=2 type=i64] [debug line = 15:3]
  %arr.addr.2 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp.2, !dbg !104 ; [#uses=1 type=i64*] [debug line = 15:3]
  %arr.load.1 = load i64* %arr.addr.2, align 8, !dbg !104 ; [#uses=2 type=i64] [debug line = 15:3]
  %tmp.7 = icmp sgt i64 %arr.load, %arr.load.1, !dbg !104 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp.7, label %5, label %4, !dbg !104     ; [debug line = 15:3]

; <label>:4                                       ; preds = %3
  %i1.assign = add i8 %.0, 1, !dbg !105           ; [#uses=1 type=i8] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i8 %i1.assign}, i64 0, metadata !78), !dbg !105 ; [debug line = 16:4] [debug variable = i1]
  %tmp.14 = sext i8 %i to i64, !dbg !105          ; [#uses=1 type=i64] [debug line = 16:4]
  %x.addr.2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.14, !dbg !105 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %arr.load, i64* %x.addr.2, align 8, !dbg !105 ; [debug line = 16:4]
  br label %6, !dbg !105                          ; [debug line = 16:4]

; <label>:5                                       ; preds = %3
  %i2.2 = add i8 %i3, 1, !dbg !106                ; [#uses=1 type=i8] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i8 %i2.2}, i64 0, metadata !93), !dbg !106 ; [debug line = 18:4] [debug variable = i2]
  %tmp.13 = sext i8 %i to i64, !dbg !106          ; [#uses=1 type=i64] [debug line = 18:4]
  %x.addr.1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.13, !dbg !106 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %arr.load.1, i64* %x.addr.1, align 8, !dbg !106 ; [debug line = 18:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %i2.1 = phi i8 [ %i3, %4 ], [ %i2.2, %5 ]       ; [#uses=1 type=i8]
  %.1 = phi i8 [ %i1.assign, %4 ], [ %.0, %5 ]    ; [#uses=1 type=i8]
  %i.1 = add i8 %i, 1, !dbg !105                  ; [#uses=1 type=i8] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !107), !dbg !105 ; [debug line = 16:4] [debug variable = i]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.23), !dbg !108 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !108                          ; [debug line = 19:2]

.preheader3:                                      ; preds = %8, %.preheader3.preheader
  %tmp.10 = phi i8 [ %tmp.16, %8 ], [ %.0, %.preheader3.preheader ] ; [#uses=2 type=i8]
  %i.2 = phi i8 [ %i.6, %8 ], [ %i, %.preheader3.preheader ] ; [#uses=2 type=i8]
  %tmp.11 = sext i8 %tmp.10 to i64, !dbg !98      ; [#uses=2 type=i64] [debug line = 24:7]
  %tmp.12 = icmp sgt i64 %tmp.11, %f1, !dbg !98   ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp.12, label %.loopexit.loopexit5, label %8, !dbg !98 ; [debug line = 24:7]

; <label>:8                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str2) nounwind, !dbg !109 ; [debug line = 25:2]
  %tmp.24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str2), !dbg !109 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @.str1) nounwind, !dbg !111 ; [debug line = 26:1]
  %arr.addr.3 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp.11, !dbg !112 ; [#uses=1 type=i64*] [debug line = 25:1]
  %arr.load.3 = load i64* %arr.addr.3, align 8, !dbg !112 ; [#uses=1 type=i64] [debug line = 25:1]
  %i.6 = add i8 %i.2, 1, !dbg !112                ; [#uses=1 type=i8] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i8 %i.6}, i64 0, metadata !107), !dbg !112 ; [debug line = 25:1] [debug variable = i]
  %tmp.15 = sext i8 %i.2 to i64, !dbg !112        ; [#uses=1 type=i64] [debug line = 25:1]
  %x.addr.3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.15, !dbg !112 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %arr.load.3, i64* %x.addr.3, align 8, !dbg !112 ; [debug line = 25:1]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str2, i32 %tmp.24), !dbg !113 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp.16 = add i8 %tmp.10, 1, !dbg !114          ; [#uses=1 type=i8] [debug line = 24:24]
  br label %.preheader3, !dbg !114                ; [debug line = 24:24]

.preheader:                                       ; preds = %10, %.preheader.preheader
  %tmp.4 = phi i8 [ %tmp.9, %10 ], [ %i3, %.preheader.preheader ] ; [#uses=2 type=i8]
  %i.3 = phi i8 [ %i.5, %10 ], [ %i, %.preheader.preheader ] ; [#uses=2 type=i8]
  %tmp.5 = sext i8 %tmp.4 to i64, !dbg !95        ; [#uses=2 type=i64] [debug line = 29:7]
  %tmp.6 = icmp sgt i64 %tmp.5, %f2, !dbg !95     ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp.6, label %.loopexit.loopexit, label %10, !dbg !95 ; [debug line = 29:7]

; <label>:10                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str3) nounwind, !dbg !115 ; [debug line = 30:2]
  %tmp.22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str3), !dbg !115 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @.str1) nounwind, !dbg !117 ; [debug line = 31:1]
  %arr.addr = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp.5, !dbg !118 ; [#uses=1 type=i64*] [debug line = 30:1]
  %arr.load.2 = load i64* %arr.addr, align 8, !dbg !118 ; [#uses=1 type=i64] [debug line = 30:1]
  %i.5 = add i8 %i.3, 1, !dbg !118                ; [#uses=1 type=i8] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i8 %i.5}, i64 0, metadata !107), !dbg !118 ; [debug line = 30:1] [debug variable = i]
  %tmp.8 = sext i8 %i.3 to i64, !dbg !118         ; [#uses=1 type=i64] [debug line = 30:1]
  %x.addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.8, !dbg !118 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %arr.load.2, i64* %x.addr, align 8, !dbg !118 ; [debug line = 30:1]
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str3, i32 %tmp.22), !dbg !119 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp.9 = add i8 %tmp.4, 1, !dbg !120            ; [#uses=1 type=i8] [debug line = 29:24]
  br label %.preheader, !dbg !120                 ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit
  br label %12, !dbg !121                         ; [debug line = 34:6]

; <label>:12                                      ; preds = %13, %.loopexit
  %tmp.17 = phi i8 [ %i1, %.loopexit ], [ %tmp.21, %13 ] ; [#uses=3 type=i8]
  %i.4 = phi i8 [ 0, %.loopexit ], [ %i.7, %13 ]  ; [#uses=2 type=i8]
  %tmp.18 = sext i8 %tmp.17 to i64, !dbg !121     ; [#uses=2 type=i64] [debug line = 34:6]
  %tmp.19 = icmp sgt i64 %tmp.18, %f2, !dbg !121  ; [#uses=1 type=i1] [debug line = 34:6]
  br i1 %tmp.19, label %15, label %13, !dbg !121  ; [debug line = 34:6]

; <label>:13                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !123 ; [debug line = 35:2]
  %tmp.25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4), !dbg !123 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @.str1) nounwind, !dbg !125 ; [debug line = 36:1]
  %i.7 = add i8 %i.4, 1, !dbg !126                ; [#uses=1 type=i8] [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i8 %i.7}, i64 0, metadata !107), !dbg !126 ; [debug line = 35:1] [debug variable = i]
  %tmp.20 = sext i8 %i.4 to i64, !dbg !126        ; [#uses=1 type=i64] [debug line = 35:1]
  %x.addr.4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %tmp.20, !dbg !126 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x.load = load i64* %x.addr.4, align 8, !dbg !126 ; [#uses=1 type=i64] [debug line = 35:1]
  %arr.addr.4 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp.18, !dbg !126 ; [#uses=1 type=i64*] [debug line = 35:1]
  store i64 %x.load, i64* %arr.addr.4, align 8, !dbg !126 ; [debug line = 35:1]
  %14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.25), !dbg !127 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp.21 = add i8 %tmp.17, 1, !dbg !128          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %12, !dbg !128                         ; [debug line = 34:33]

; <label>:15                                      ; preds = %12
  %tmp.17.lcssa = phi i8 [ %tmp.17, %12 ]         ; [#uses=1 type=i8]
  store i8 %tmp.17.lcssa, i8* @h, align 1, !dbg !128 ; [debug line = 34:33]
  ret void, !dbg !129                             ; [debug line = 36:1]
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

; [#uses=6]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}
!llvm.dbg.cu = !{!26}

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
!26 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/mergesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !27} ; [ DW_TAG_compile_unit ]
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !30, i32 3, metadata !31, i32 0, i32 1, i8* @h} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786454, null, metadata !"int8_t", metadata !30, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 63, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"arr", metadata !37, metadata !"long int", i32 0, i32 63}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 9, i32 1}
!39 = metadata !{i32 786689, metadata !40, metadata !"arr", null, i32 44, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786478, i32 0, metadata !30, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !30, i32 44, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 45} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !43}
!43 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ]
!44 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !44, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!50 = metadata !{i32 44, i32 21, metadata !40, null}
!51 = metadata !{i32 49, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !53, i32 49, i32 2, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !40, i32 45, i32 1, metadata !30, i32 11} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 50, i32 3, metadata !55, null}
!55 = metadata !{i32 786443, metadata !52, i32 50, i32 2, metadata !30, i32 13} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 54, i32 20, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 53, i32 3, metadata !30, i32 15} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !55, i32 52, i32 3, metadata !30, i32 14} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 52, i32 7, metadata !58, null}
!60 = metadata !{i32 53, i32 4, metadata !57, null}
!61 = metadata !{i32 54, i32 1, metadata !57, null}
!62 = metadata !{i32 54, i32 4, metadata !57, null}
!63 = metadata !{i32 786689, metadata !64, metadata !"c", metadata !30, i32 16777255, metadata !44, i32 0, metadata !56} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786478, i32 0, metadata !30, metadata !"min", metadata !"min", metadata !"", metadata !30, i32 39, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 40} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !44, metadata !44, metadata !44}
!67 = metadata !{i32 39, i32 15, metadata !64, metadata !56}
!68 = metadata !{i32 41, i32 2, metadata !69, metadata !56}
!69 = metadata !{i32 786443, metadata !64, i32 40, i32 1, metadata !30, i32 10} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 55, i32 4, metadata !57, null}
!71 = metadata !{i32 52, i32 25, metadata !58, null}
!72 = metadata !{i32 786688, metadata !53, metadata !"x", metadata !30, i32 47, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 56, i32 2, metadata !55, null}
!74 = metadata !{i32 786688, metadata !53, metadata !"m", metadata !30, i32 46, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 49, i32 25, metadata !52, null}
!76 = metadata !{i32 57, i32 1, metadata !53, null}
!77 = metadata !{i64 -9223372036854775808, i64 9, i64 0, i64 -1} 
!78 = metadata !{i32 786689, metadata !79, metadata !"i1", metadata !30, i32 16777222, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 786478, i32 0, metadata !30, metadata !"merge", metadata !"merge", metadata !"", metadata !30, i32 6, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 7} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !31, metadata !44, metadata !44, metadata !43}
!82 = metadata !{i32 6, i32 19, metadata !79, null}
!83 = metadata !{i32 786689, metadata !79, metadata !"f1", metadata !30, i32 33554438, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 6, i32 28, metadata !79, null}
!85 = metadata !{i32 786689, metadata !79, metadata !"f2", metadata !30, i32 50331654, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 6, i32 37, metadata !79, null}
!87 = metadata !{i32 786689, metadata !79, metadata !"arr", null, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 6, i32 46, metadata !79, null}
!89 = metadata !{i32 786688, metadata !90, metadata !"x", metadata !30, i32 8, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786443, metadata !79, i32 7, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 8, i32 7, metadata !90, null}
!92 = metadata !{i32 9, i32 20, metadata !90, null}
!93 = metadata !{i32 786688, metadata !90, metadata !"i2", metadata !30, i32 9, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 13, i32 2, metadata !90, null}
!95 = metadata !{i32 29, i32 7, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 29, i32 3, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !90, i32 27, i32 6, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 24, i32 7, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 24, i32 3, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !90, i32 22, i32 2, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 14, i32 3, metadata !102, null}
!102 = metadata !{i32 786443, metadata !90, i32 14, i32 2, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 15, i32 1, metadata !102, null}
!104 = metadata !{i32 15, i32 3, metadata !102, null}
!105 = metadata !{i32 16, i32 4, metadata !102, null}
!106 = metadata !{i32 18, i32 4, metadata !102, null}
!107 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !30, i32 10, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 19, i32 2, metadata !102, null}
!109 = metadata !{i32 25, i32 2, metadata !110, null}
!110 = metadata !{i32 786443, metadata !99, i32 25, i32 1, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 26, i32 1, metadata !110, null}
!112 = metadata !{i32 25, i32 1, metadata !110, null}
!113 = metadata !{i32 25, i32 15, metadata !110, null}
!114 = metadata !{i32 24, i32 24, metadata !99, null}
!115 = metadata !{i32 30, i32 2, metadata !116, null}
!116 = metadata !{i32 786443, metadata !96, i32 30, i32 1, metadata !30, i32 7} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 31, i32 1, metadata !116, null}
!118 = metadata !{i32 30, i32 1, metadata !116, null}
!119 = metadata !{i32 30, i32 15, metadata !116, null}
!120 = metadata !{i32 29, i32 24, metadata !96, null}
!121 = metadata !{i32 34, i32 6, metadata !122, null}
!122 = metadata !{i32 786443, metadata !90, i32 34, i32 2, metadata !30, i32 8} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 35, i32 2, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 35, i32 1, metadata !30, i32 9} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 36, i32 1, metadata !124, null}
!126 = metadata !{i32 35, i32 1, metadata !124, null}
!127 = metadata !{i32 35, i32 15, metadata !124, null}
!128 = metadata !{i32 34, i32 33, metadata !122, null}
!129 = metadata !{i32 36, i32 1, metadata !90, null}
