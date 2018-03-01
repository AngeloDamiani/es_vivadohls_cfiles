; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort.str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=1 type=i8*]
@.str7 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=3 type=[12 x i8]*]

; [#uses=0]
define void @mergesort(i64* %"arr[0]", i64* %"arr[1]", i64* %"arr[2]", i64* %"arr[3]", i64* %"arr[4]", i64* %"arr[5]", i64* %"arr[6]", i64* %"arr[7]", i64* %"arr[8]", i64* %"arr[9]") {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[9]"), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[8]"), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[7]"), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[6]"), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[5]"), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[4]"), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[3]"), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[2]"), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[1]"), !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %"arr[0]"), !map !87
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mergesort.str) nounwind
  call void @llvm.dbg.value(metadata !{i64* %"arr[0]"}, i64 0, metadata !93), !dbg !106 ; [debug line = 44:28] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[1]"}, i64 0, metadata !107), !dbg !106 ; [debug line = 44:28] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[2]"}, i64 0, metadata !108), !dbg !106 ; [debug line = 44:28] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[3]"}, i64 0, metadata !109), !dbg !106 ; [debug line = 44:28] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[4]"}, i64 0, metadata !110), !dbg !106 ; [debug line = 44:28] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[5]"}, i64 0, metadata !111), !dbg !106 ; [debug line = 44:28] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[6]"}, i64 0, metadata !112), !dbg !106 ; [debug line = 44:28] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[7]"}, i64 0, metadata !113), !dbg !106 ; [debug line = 44:28] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[8]"}, i64 0, metadata !114), !dbg !106 ; [debug line = 44:28] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[9]"}, i64 0, metadata !115), !dbg !106 ; [debug line = 44:28] [debug variable = arr[9]]
  br label %1, !dbg !116                          ; [debug line = 49:6]

; <label>:1                                       ; preds = %6, %0
  %m = phi i64 [ 1, %0 ], [ %m.1, %6 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !116           ; [#uses=1 type=i1] [debug line = 49:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %2, label %8, !dbg !116       ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str6) nounwind, !dbg !119 ; [debug line = 50:3]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str6) nounwind, !dbg !119 ; [#uses=1 type=i32] [debug line = 50:3]
  %m.1 = shl i64 %m, 1, !dbg !121                 ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !124                          ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x.1, %4 ]            ; [#uses=5 type=i64]
  %tmp.3 = icmp slt i64 %x, 9, !dbg !124          ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp.3, label %4, label %6, !dbg !124     ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str7) nounwind, !dbg !125 ; [debug line = 53:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str7) nounwind, !dbg !125 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !126 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @.str1) nounwind, !dbg !126 ; [debug line = 54:1]
  %tmp1 = add i64 %x, -1, !dbg !127               ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.5 = add i64 %m, %tmp1, !dbg !127           ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp2 = add i64 %x, -1, !dbg !121               ; [#uses=1 type=i64] [debug line = 54:20]
  %c.assign = add i64 %m.1, %tmp2, !dbg !121      ; [#uses=2 type=i64] [debug line = 54:20]
  call void @llvm.dbg.value(metadata !{i64 %c.assign}, i64 0, metadata !128), !dbg !132 ; [debug line = 39:15@54:20] [debug variable = c]
  %tmp.i = icmp slt i64 %c.assign, 9, !dbg !133   ; [#uses=1 type=i1] [debug line = 41:2@54:20]
  %c.assign.1 = select i1 %tmp.i, i64 %c.assign, i64 9, !dbg !133 ; [#uses=1 type=i64] [debug line = 41:2@54:20]
  call void @llvm.dbg.value(metadata !{i64 %c.assign.1}, i64 0, metadata !128), !dbg !133 ; [debug line = 41:2@54:20] [debug variable = c]
  %"arr[0].load" = load i64* %"arr[0]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[1].load" = load i64* %"arr[1]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[2].load" = load i64* %"arr[2]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[3].load" = load i64* %"arr[3]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[4].load" = load i64* %"arr[4]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[5].load" = load i64* %"arr[5]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[6].load" = load i64* %"arr[6]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[7].load" = load i64* %"arr[7]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[8].load" = load i64* %"arr[8]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  %"arr[9].load" = load i64* %"arr[9]", align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 54:20]
  call fastcc void @merge(i64 %x, i64 %tmp.5, i64 %c.assign.1, i64* %"arr[0]", i64 %"arr[0].load", i64* %"arr[1]", i64 %"arr[1].load", i64* %"arr[2]", i64 %"arr[2].load", i64* %"arr[3]", i64 %"arr[3].load", i64* %"arr[4]", i64 %"arr[4].load", i64* %"arr[5]", i64 %"arr[5].load", i64* %"arr[6]", i64 %"arr[6].load", i64* %"arr[7]", i64 %"arr[7].load", i64* %"arr[8]", i64 %"arr[8].load", i64* %"arr[9]", i64 %"arr[9].load"), !dbg !121 ; [debug line = 54:20]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str7, i32 %tmp.2) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 55:4]
  %x.1 = add nsw i64 %x, %m.1, !dbg !136          ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x.1}, i64 0, metadata !137), !dbg !136 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !136                          ; [debug line = 52:25]

; <label>:6                                       ; preds = %3
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str6, i32 %tmp.1) nounwind, !dbg !139 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m.1}, i64 0, metadata !140), !dbg !141 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !141                          ; [debug line = 49:25]

; <label>:8                                       ; preds = %1
  ret void, !dbg !142                             ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i64 %i1, i64 %f1, i64 %f2, i64* nocapture %"arr[0]", i64 %"arr[0].read", i64* nocapture %"arr[1]", i64 %"arr[1].read", i64* nocapture %"arr[2]", i64 %"arr[2].read", i64* nocapture %"arr[3]", i64 %"arr[3].read", i64* nocapture %"arr[4]", i64 %"arr[4].read", i64* nocapture %"arr[5]", i64 %"arr[5].read", i64* nocapture %"arr[6]", i64 %"arr[6].read", i64* nocapture %"arr[7]", i64 %"arr[7].read", i64* nocapture %"arr[8]", i64 %"arr[8].read", i64* nocapture %"arr[9]", i64 %"arr[9].read") {
  call void (...)* @_ssdm_SpecKeepAssert(i64 %i1), !hlsrange !143
  call void (...)* @_ssdm_SpecKeepAssert(i64 %f2), !hlsrange !144
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !145), !dbg !149 ; [debug line = 6:25] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !150), !dbg !151 ; [debug line = 6:42] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !152), !dbg !153 ; [debug line = 6:59] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i64 %"arr[0].read"}, i64 0, metadata !154), !dbg !156 ; [debug line = 6:75] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[0]"}, i64 0, metadata !157), !dbg !156 ; [debug line = 6:75] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[1].read"}, i64 0, metadata !158), !dbg !156 ; [debug line = 6:75] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[1]"}, i64 0, metadata !159), !dbg !156 ; [debug line = 6:75] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[2].read"}, i64 0, metadata !160), !dbg !156 ; [debug line = 6:75] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[2]"}, i64 0, metadata !161), !dbg !156 ; [debug line = 6:75] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[3].read"}, i64 0, metadata !162), !dbg !156 ; [debug line = 6:75] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[3]"}, i64 0, metadata !163), !dbg !156 ; [debug line = 6:75] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[4].read"}, i64 0, metadata !164), !dbg !156 ; [debug line = 6:75] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[4]"}, i64 0, metadata !165), !dbg !156 ; [debug line = 6:75] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[5].read"}, i64 0, metadata !166), !dbg !156 ; [debug line = 6:75] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[5]"}, i64 0, metadata !167), !dbg !156 ; [debug line = 6:75] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[6].read"}, i64 0, metadata !168), !dbg !156 ; [debug line = 6:75] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[6]"}, i64 0, metadata !169), !dbg !156 ; [debug line = 6:75] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[7].read"}, i64 0, metadata !170), !dbg !156 ; [debug line = 6:75] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[7]"}, i64 0, metadata !171), !dbg !156 ; [debug line = 6:75] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[8].read"}, i64 0, metadata !172), !dbg !156 ; [debug line = 6:75] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[8]"}, i64 0, metadata !173), !dbg !156 ; [debug line = 6:75] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64 %"arr[9].read"}, i64 0, metadata !174), !dbg !156 ; [debug line = 6:75] [debug variable = arr[9]]
  call void @llvm.dbg.value(metadata !{i64* %"arr[9]"}, i64 0, metadata !175), !dbg !156 ; [debug line = 6:75] [debug variable = arr[9]]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !176), !dbg !179 ; [debug line = 8:7] [debug variable = x]
  %i2 = add nsw i64 %f1, 1, !dbg !180             ; [#uses=1 type=i64] [debug line = 9:26]
  call void @llvm.dbg.value(metadata !{i64 %i2}, i64 0, metadata !181), !dbg !180 ; [debug line = 9:26] [debug variable = i2]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !182), !dbg !183 ; [debug line = 11:17] [debug variable = start]
  br label %1, !dbg !184                          ; [debug line = 13:2]

; <label>:1                                       ; preds = %5, %0
  %i3 = phi i64 [ %i2, %0 ], [ %i2.1, %5 ]        ; [#uses=5 type=i64]
  %i = phi i4 [ 0, %0 ], [ %i.1, %5 ]             ; [#uses=2 type=i4]
  %.0 = phi i64 [ %i1, %0 ], [ %.1, %5 ]          ; [#uses=5 type=i64]
  %i.cast = zext i4 %i to i64, !dbg !184          ; [#uses=3 type=i64] [debug line = 13:2]
  %tmp = icmp sle i64 %i3, %f2, !dbg !184         ; [#uses=1 type=i1] [debug line = 13:2]
  %not. = icmp sle i64 %.0, %f1, !dbg !184        ; [#uses=1 type=i1] [debug line = 13:2]
  %tmp. = and i1 %tmp, %not., !dbg !184           ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %tmp., label %2, label %7

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str) nounwind, !dbg !185 ; [debug line = 14:3]
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str), !dbg !185 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @.str1) nounwind, !dbg !187 ; [debug line = 15:1]
  %.0.t = trunc i64 %.0 to i4                     ; [#uses=1 type=i4]
  %tmp.19 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %"arr[0].read", i64 %"arr[1].read", i64 %"arr[2].read", i64 %"arr[3].read", i64 %"arr[4].read", i64 %"arr[5].read", i64 %"arr[6].read", i64 %"arr[7].read", i64 %"arr[8].read", i64 %"arr[9].read", i4 %.0.t) ; [#uses=2 type=i64]
  %i3.t = trunc i64 %i3 to i4                     ; [#uses=1 type=i4]
  %tmp.20 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %"arr[0].read", i64 %"arr[1].read", i64 %"arr[2].read", i64 %"arr[3].read", i64 %"arr[4].read", i64 %"arr[5].read", i64 %"arr[6].read", i64 %"arr[7].read", i64 %"arr[8].read", i64 %"arr[9].read", i4 %i3.t) ; [#uses=2 type=i64]
  %tmp.1 = icmp sgt i64 %tmp.19, %tmp.20, !dbg !188 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp.1, label %4, label %3, !dbg !188     ; [debug line = 15:3]

; <label>:3                                       ; preds = %2
  %i1.assign = add nsw i64 %.0, 1, !dbg !189      ; [#uses=1 type=i64] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i64 %i1.assign}, i64 0, metadata !145), !dbg !189 ; [debug line = 16:4] [debug variable = i1]
  %x.addr.1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.cast, !dbg !189 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %tmp.19, i64* %x.addr.1, align 8, !dbg !189 ; [debug line = 16:4]
  br label %5, !dbg !189                          ; [debug line = 16:4]

; <label>:4                                       ; preds = %2
  %i2.2 = add nsw i64 %i3, 1, !dbg !190           ; [#uses=1 type=i64] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i64 %i2.2}, i64 0, metadata !181), !dbg !190 ; [debug line = 18:4] [debug variable = i2]
  %x.addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.cast, !dbg !190 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %tmp.20, i64* %x.addr, align 8, !dbg !190 ; [debug line = 18:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %i2.1 = phi i64 [ %i3, %3 ], [ %i2.2, %4 ]      ; [#uses=1 type=i64]
  %.1 = phi i64 [ %i1.assign, %3 ], [ %.0, %4 ]   ; [#uses=1 type=i64]
  %i.1 = add i4 %i, 1, !dbg !189                  ; [#uses=1 type=i4] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !191), !dbg !189 ; [debug line = 16:4] [debug variable = i]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str, i32 %tmp.18), !dbg !192 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !192                          ; [debug line = 19:2]

; <label>:7                                       ; preds = %1
  %i.cast.lcssa = phi i64 [ %i.cast, %1 ]         ; [#uses=2 type=i64]
  %.0.lcssa = phi i64 [ %.0, %1 ]                 ; [#uses=2 type=i64]
  %i3.lcssa = phi i64 [ %i3, %1 ]                 ; [#uses=1 type=i64]
  %tmp.2 = icmp sgt i64 %.0.lcssa, %f1, !dbg !193 ; [#uses=1 type=i1] [debug line = 21:2]
  br i1 %tmp.2, label %12, label %8, !dbg !193    ; [debug line = 21:2]

; <label>:8                                       ; preds = %7
  %tmp.4 = trunc i64 %.0.lcssa to i8, !dbg !194   ; [#uses=1 type=i8] [debug line = 24:7]
  br label %9, !dbg !194                          ; [debug line = 24:7]

; <label>:9                                       ; preds = %10, %8
  %tmp.8 = phi i8 [ %tmp.4, %8 ], [ %tmp.12, %10 ] ; [#uses=3 type=i8]
  %i.2 = phi i64 [ %i.cast.lcssa, %8 ], [ %i.6, %10 ] ; [#uses=2 type=i64]
  %tmp.9 = sext i8 %tmp.8 to i64, !dbg !194       ; [#uses=1 type=i64] [debug line = 24:7]
  %tmp.10 = icmp sgt i64 %tmp.9, %f1, !dbg !194   ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp.10, label %.loopexit.loopexit12, label %10, !dbg !194 ; [debug line = 24:7]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str2) nounwind, !dbg !197 ; [debug line = 25:2]
  %tmp.23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str2), !dbg !197 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @.str1) nounwind, !dbg !199 ; [debug line = 26:1]
  %tmp.8.t = trunc i8 %tmp.8 to i4                ; [#uses=1 type=i4]
  %tmp.24 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %"arr[0].read", i64 %"arr[1].read", i64 %"arr[2].read", i64 %"arr[3].read", i64 %"arr[4].read", i64 %"arr[5].read", i64 %"arr[6].read", i64 %"arr[7].read", i64 %"arr[8].read", i64 %"arr[9].read", i4 %tmp.8.t) ; [#uses=1 type=i64]
  %i.6 = add nsw i64 %i.2, 1, !dbg !200           ; [#uses=1 type=i64] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i64 %i.6}, i64 0, metadata !191), !dbg !200 ; [debug line = 25:1] [debug variable = i]
  %x.addr.3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.2, !dbg !200 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %tmp.24, i64* %x.addr.3, align 8, !dbg !200 ; [debug line = 25:1]
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str2, i32 %tmp.23), !dbg !201 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp.12 = add i8 %tmp.8, 1, !dbg !202           ; [#uses=1 type=i8] [debug line = 24:24]
  br label %9, !dbg !202                          ; [debug line = 24:24]

; <label>:12                                      ; preds = %7
  %tmp.3 = trunc i64 %i3.lcssa to i8, !dbg !203   ; [#uses=1 type=i8] [debug line = 29:7]
  br label %13, !dbg !203                         ; [debug line = 29:7]

; <label>:13                                      ; preds = %14, %12
  %tmp.5 = phi i8 [ %tmp.3, %12 ], [ %tmp.11, %14 ] ; [#uses=3 type=i8]
  %i.3 = phi i64 [ %i.cast.lcssa, %12 ], [ %i.5, %14 ] ; [#uses=2 type=i64]
  %tmp.6 = sext i8 %tmp.5 to i64, !dbg !203       ; [#uses=1 type=i64] [debug line = 29:7]
  %tmp.7 = icmp sgt i64 %tmp.6, %f2, !dbg !203    ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp.7, label %.loopexit.loopexit, label %14, !dbg !203 ; [debug line = 29:7]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str3) nounwind, !dbg !206 ; [debug line = 30:2]
  %tmp.21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str3), !dbg !206 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @.str1) nounwind, !dbg !208 ; [debug line = 31:1]
  %tmp.5.t = trunc i8 %tmp.5 to i4                ; [#uses=1 type=i4]
  %tmp.22 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %"arr[0].read", i64 %"arr[1].read", i64 %"arr[2].read", i64 %"arr[3].read", i64 %"arr[4].read", i64 %"arr[5].read", i64 %"arr[6].read", i64 %"arr[7].read", i64 %"arr[8].read", i64 %"arr[9].read", i4 %tmp.5.t) ; [#uses=1 type=i64]
  %i.5 = add nsw i64 %i.3, 1, !dbg !209           ; [#uses=1 type=i64] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i64 %i.5}, i64 0, metadata !191), !dbg !209 ; [debug line = 30:1] [debug variable = i]
  %x.addr.2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.3, !dbg !209 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %tmp.22, i64* %x.addr.2, align 8, !dbg !209 ; [debug line = 30:1]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str3, i32 %tmp.21), !dbg !210 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp.11 = add i8 %tmp.5, 1, !dbg !211           ; [#uses=1 type=i8] [debug line = 29:24]
  br label %13, !dbg !211                         ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %13
  br label %.loopexit

.loopexit.loopexit12:                             ; preds = %9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit12, %.loopexit.loopexit
  %tmp.13 = trunc i64 %i1 to i8, !dbg !212        ; [#uses=1 type=i8] [debug line = 34:6]
  br label %16, !dbg !212                         ; [debug line = 34:6]

; <label>:16                                      ; preds = %18, %.loopexit
  %tmp.14 = phi i8 [ %tmp.13, %.loopexit ], [ %tmp.17, %18 ] ; [#uses=4 type=i8]
  %i.4 = phi i64 [ 0, %.loopexit ], [ %i.7, %18 ] ; [#uses=2 type=i64]
  %tmp.15 = sext i8 %tmp.14 to i64, !dbg !212     ; [#uses=1 type=i64] [debug line = 34:6]
  %tmp.16 = icmp sgt i64 %tmp.15, %f2, !dbg !212  ; [#uses=1 type=i1] [debug line = 34:6]
  br i1 %tmp.16, label %20, label %17, !dbg !212  ; [debug line = 34:6]

; <label>:17                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !214 ; [debug line = 35:2]
  %tmp.25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4), !dbg !214 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @.str1) nounwind, !dbg !216 ; [debug line = 36:1]
  %i.7 = add nsw i64 %i.4, 1, !dbg !217           ; [#uses=1 type=i64] [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i64 %i.7}, i64 0, metadata !191), !dbg !217 ; [debug line = 35:1] [debug variable = i]
  %x.addr.4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i.4, !dbg !217 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x.load = load i64* %x.addr.4, align 8, !dbg !217 ; [#uses=10 type=i64] [debug line = 35:1]
  %tmp.14.t = trunc i8 %tmp.14 to i4              ; [#uses=1 type=i4]
  switch i4 %tmp.14.t, label %branch9 [
    i4 0, label %branch0
    i4 1, label %branch1
    i4 2, label %branch2
    i4 3, label %branch3
    i4 4, label %branch4
    i4 5, label %branch5
    i4 6, label %branch6
    i4 7, label %branch7
    i4 -8, label %branch8
  ], !dbg !217                                    ; [debug line = 35:1]

; <label>:18                                      ; preds = %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.25), !dbg !218 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp.17 = add i8 %tmp.14, 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %16, !dbg !219                         ; [debug line = 34:33]

; <label>:20                                      ; preds = %16
  %tmp.14.lcssa = phi i8 [ %tmp.14, %16 ]         ; [#uses=1 type=i8]
  store i8 %tmp.14.lcssa, i8* @h, align 1, !dbg !219 ; [debug line = 34:33]
  ret void, !dbg !220                             ; [debug line = 36:1]

branch0:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[0]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch1:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[1]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch2:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[2]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch3:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[3]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch4:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[4]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch5:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[5]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch6:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[6]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch7:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[7]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch8:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[8]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]

branch9:                                          ; preds = %17
  store i64 %x.load, i64* %"arr[9]", align 8, !dbg !217 ; [debug line = 35:1]
  br label %18, !dbg !217                         ; [debug line = 35:1]
}

; [#uses=45]
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

; [#uses=10]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i4)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}
!llvm.dbg.cu = !{!26}

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
!26 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/mergesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !27} ; [ DW_TAG_compile_unit ]
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
!38 = metadata !{i32 9, i32 9, i32 2}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 63, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"arr", metadata !43, metadata !"long int", i32 0, i32 63}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 8, i32 8, i32 2}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 63, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"arr", metadata !49, metadata !"long int", i32 0, i32 63}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 7, i32 7, i32 2}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"arr", metadata !55, metadata !"long int", i32 0, i32 63}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 6, i32 6, i32 2}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 63, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"arr", metadata !61, metadata !"long int", i32 0, i32 63}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 5, i32 5, i32 2}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 63, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"arr", metadata !67, metadata !"long int", i32 0, i32 63}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 4, i32 4, i32 2}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 63, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"arr", metadata !73, metadata !"long int", i32 0, i32 63}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 3, i32 3, i32 2}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 63, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"arr", metadata !79, metadata !"long int", i32 0, i32 63}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 2, i32 2, i32 2}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 63, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"arr", metadata !85, metadata !"long int", i32 0, i32 63}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 1, i32 1, i32 2}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 63, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"arr", metadata !91, metadata !"long int", i32 0, i32 63}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, i32 2}
!93 = metadata !{i32 790531, metadata !94, metadata !"arr[0]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!94 = metadata !{i32 786689, metadata !95, metadata !"arr", null, i32 44, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 786478, i32 0, metadata !30, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !30, i32 44, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 45} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !98}
!98 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !30, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ]
!100 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !99, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ]
!106 = metadata !{i32 44, i32 28, metadata !95, null}
!107 = metadata !{i32 790531, metadata !94, metadata !"arr[1]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!108 = metadata !{i32 790531, metadata !94, metadata !"arr[2]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!109 = metadata !{i32 790531, metadata !94, metadata !"arr[3]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!110 = metadata !{i32 790531, metadata !94, metadata !"arr[4]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!111 = metadata !{i32 790531, metadata !94, metadata !"arr[5]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!112 = metadata !{i32 790531, metadata !94, metadata !"arr[6]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!113 = metadata !{i32 790531, metadata !94, metadata !"arr[7]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!114 = metadata !{i32 790531, metadata !94, metadata !"arr[8]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!115 = metadata !{i32 790531, metadata !94, metadata !"arr[9]", null, i32 44, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!116 = metadata !{i32 49, i32 6, metadata !117, null}
!117 = metadata !{i32 786443, metadata !118, i32 49, i32 2, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786443, metadata !95, i32 45, i32 1, metadata !30, i32 11} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 50, i32 3, metadata !120, null}
!120 = metadata !{i32 786443, metadata !117, i32 50, i32 2, metadata !30, i32 13} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 54, i32 20, metadata !122, null}
!122 = metadata !{i32 786443, metadata !123, i32 53, i32 3, metadata !30, i32 15} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !120, i32 52, i32 3, metadata !30, i32 14} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 52, i32 7, metadata !123, null}
!125 = metadata !{i32 53, i32 4, metadata !122, null}
!126 = metadata !{i32 54, i32 1, metadata !122, null}
!127 = metadata !{i32 54, i32 4, metadata !122, null}
!128 = metadata !{i32 786689, metadata !129, metadata !"c", metadata !30, i32 16777255, metadata !100, i32 0, metadata !121} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 786478, i32 0, metadata !30, metadata !"min", metadata !"min", metadata !"", metadata !30, i32 39, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 40} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !100, metadata !100, metadata !100}
!132 = metadata !{i32 39, i32 15, metadata !129, metadata !121}
!133 = metadata !{i32 41, i32 2, metadata !134, metadata !121}
!134 = metadata !{i32 786443, metadata !129, i32 40, i32 1, metadata !30, i32 10} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 55, i32 4, metadata !122, null}
!136 = metadata !{i32 52, i32 25, metadata !123, null}
!137 = metadata !{i32 786688, metadata !118, metadata !"x", metadata !30, i32 47, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !30, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 56, i32 2, metadata !120, null}
!140 = metadata !{i32 786688, metadata !118, metadata !"m", metadata !30, i32 46, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 49, i32 25, metadata !117, null}
!142 = metadata !{i32 57, i32 1, metadata !118, null}
!143 = metadata !{i64 -9223372036854775808, i64 8, i64 0, i64 -1} 
!144 = metadata !{i64 -9223372036854775808, i64 9, i64 0, i64 -1} 
!145 = metadata !{i32 786689, metadata !146, metadata !"i1", metadata !30, i32 16777222, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 786478, i32 0, metadata !30, metadata !"merge", metadata !"merge", metadata !"", metadata !30, i32 6, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 7} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !138, metadata !138, metadata !138, metadata !98}
!149 = metadata !{i32 6, i32 25, metadata !146, null}
!150 = metadata !{i32 786689, metadata !146, metadata !"f1", metadata !30, i32 33554438, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 6, i32 42, metadata !146, null}
!152 = metadata !{i32 786689, metadata !146, metadata !"f2", metadata !30, i32 50331654, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 6, i32 59, metadata !146, null}
!154 = metadata !{i32 790533, metadata !155, metadata !"arr[0]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!155 = metadata !{i32 786689, metadata !146, metadata !"arr", null, i32 6, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 6, i32 75, metadata !146, null}
!157 = metadata !{i32 790531, metadata !155, metadata !"arr[0]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!158 = metadata !{i32 790533, metadata !155, metadata !"arr[1]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!159 = metadata !{i32 790531, metadata !155, metadata !"arr[1]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!160 = metadata !{i32 790533, metadata !155, metadata !"arr[2]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!161 = metadata !{i32 790531, metadata !155, metadata !"arr[2]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!162 = metadata !{i32 790533, metadata !155, metadata !"arr[3]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!163 = metadata !{i32 790531, metadata !155, metadata !"arr[3]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!164 = metadata !{i32 790533, metadata !155, metadata !"arr[4]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!165 = metadata !{i32 790531, metadata !155, metadata !"arr[4]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 790533, metadata !155, metadata !"arr[5]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!167 = metadata !{i32 790531, metadata !155, metadata !"arr[5]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!168 = metadata !{i32 790533, metadata !155, metadata !"arr[6]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!169 = metadata !{i32 790531, metadata !155, metadata !"arr[6]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!170 = metadata !{i32 790533, metadata !155, metadata !"arr[7]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!171 = metadata !{i32 790531, metadata !155, metadata !"arr[7]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!172 = metadata !{i32 790533, metadata !155, metadata !"arr[8]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!173 = metadata !{i32 790531, metadata !155, metadata !"arr[8]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!174 = metadata !{i32 790533, metadata !155, metadata !"arr[9]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!175 = metadata !{i32 790531, metadata !155, metadata !"arr[9]", null, i32 6, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!176 = metadata !{i32 786688, metadata !177, metadata !"x", metadata !30, i32 8, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 786443, metadata !146, i32 7, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !100, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ]
!179 = metadata !{i32 8, i32 7, metadata !177, null}
!180 = metadata !{i32 9, i32 26, metadata !177, null}
!181 = metadata !{i32 786688, metadata !177, metadata !"i2", metadata !30, i32 9, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 786688, metadata !177, metadata !"start", metadata !30, i32 11, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 11, i32 17, metadata !177, null}
!184 = metadata !{i32 13, i32 2, metadata !177, null}
!185 = metadata !{i32 14, i32 3, metadata !186, null}
!186 = metadata !{i32 786443, metadata !177, i32 14, i32 2, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 15, i32 1, metadata !186, null}
!188 = metadata !{i32 15, i32 3, metadata !186, null}
!189 = metadata !{i32 16, i32 4, metadata !186, null}
!190 = metadata !{i32 18, i32 4, metadata !186, null}
!191 = metadata !{i32 786688, metadata !177, metadata !"i", metadata !30, i32 10, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 19, i32 2, metadata !186, null}
!193 = metadata !{i32 21, i32 2, metadata !177, null}
!194 = metadata !{i32 24, i32 7, metadata !195, null}
!195 = metadata !{i32 786443, metadata !196, i32 24, i32 3, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 786443, metadata !177, i32 22, i32 2, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 25, i32 2, metadata !198, null}
!198 = metadata !{i32 786443, metadata !195, i32 25, i32 1, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 26, i32 1, metadata !198, null}
!200 = metadata !{i32 25, i32 1, metadata !198, null}
!201 = metadata !{i32 25, i32 15, metadata !198, null}
!202 = metadata !{i32 24, i32 24, metadata !195, null}
!203 = metadata !{i32 29, i32 7, metadata !204, null}
!204 = metadata !{i32 786443, metadata !205, i32 29, i32 3, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 786443, metadata !177, i32 27, i32 6, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 30, i32 2, metadata !207, null}
!207 = metadata !{i32 786443, metadata !204, i32 30, i32 1, metadata !30, i32 7} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 31, i32 1, metadata !207, null}
!209 = metadata !{i32 30, i32 1, metadata !207, null}
!210 = metadata !{i32 30, i32 15, metadata !207, null}
!211 = metadata !{i32 29, i32 24, metadata !204, null}
!212 = metadata !{i32 34, i32 6, metadata !213, null}
!213 = metadata !{i32 786443, metadata !177, i32 34, i32 2, metadata !30, i32 8} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 35, i32 2, metadata !215, null}
!215 = metadata !{i32 786443, metadata !213, i32 35, i32 1, metadata !30, i32 9} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 36, i32 1, metadata !215, null}
!217 = metadata !{i32 35, i32 1, metadata !215, null}
!218 = metadata !{i32 35, i32 15, metadata !215, null}
!219 = metadata !{i32 34, i32 33, metadata !213, null}
!220 = metadata !{i32 36, i32 1, metadata !177, null}
