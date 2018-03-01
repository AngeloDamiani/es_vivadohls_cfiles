; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mergesort_str = internal unnamed_addr constant [10 x i8] c"mergesort\00" ; [#uses=1 type=[10 x i8]*]
@h = global i8 0, align 1                         ; [#uses=1 type=i8*]
@p_str7 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str6 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=3 type=[12 x i8]*]

; [#uses=0]
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
  call void @llvm.dbg.value(metadata !{i64* %arr_0}, i64 0, metadata !86), !dbg !100 ; [debug line = 44:28] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64* %arr_1}, i64 0, metadata !101), !dbg !100 ; [debug line = 44:28] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64* %arr_2}, i64 0, metadata !102), !dbg !100 ; [debug line = 44:28] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64* %arr_3}, i64 0, metadata !103), !dbg !100 ; [debug line = 44:28] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64* %arr_4}, i64 0, metadata !104), !dbg !100 ; [debug line = 44:28] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64* %arr_5}, i64 0, metadata !105), !dbg !100 ; [debug line = 44:28] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64* %arr_6}, i64 0, metadata !106), !dbg !100 ; [debug line = 44:28] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64* %arr_7}, i64 0, metadata !107), !dbg !100 ; [debug line = 44:28] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64* %arr_8}, i64 0, metadata !108), !dbg !100 ; [debug line = 44:28] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64* %arr_9}, i64 0, metadata !109), !dbg !100 ; [debug line = 44:28] [debug variable = arr[9]]
  br label %1, !dbg !110                          ; [debug line = 49:6]

; <label>:1                                       ; preds = %5, %0
  %m = phi i64 [ 1, %0 ], [ %m_1, %5 ]            ; [#uses=3 type=i64]
  %tmp = icmp slt i64 %m, 10, !dbg !110           ; [#uses=1 type=i1] [debug line = 49:6]
  br i1 %tmp, label %2, label %6, !dbg !110       ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind, !dbg !113 ; [debug line = 50:3]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6) nounwind, !dbg !113 ; [#uses=1 type=i32] [debug line = 50:3]
  %m_1 = shl i64 %m, 1, !dbg !115                 ; [#uses=3 type=i64] [debug line = 54:20]
  br label %3, !dbg !118                          ; [debug line = 52:7]

; <label>:3                                       ; preds = %4, %2
  %x = phi i64 [ 0, %2 ], [ %x_1, %4 ]            ; [#uses=4 type=i64]
  %tmp_3 = icmp slt i64 %x, 9, !dbg !118          ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %tmp_3, label %4, label %5, !dbg !118     ; [debug line = 52:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str7) nounwind, !dbg !119 ; [debug line = 53:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str7) nounwind, !dbg !119 ; [#uses=1 type=i32] [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !120 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, [1 x i8]* @p_str1) nounwind, !dbg !120 ; [debug line = 54:1]
  %tmp1 = add i64 %x, -1, !dbg !121               ; [#uses=2 type=i64] [debug line = 54:4]
  %tmp_5 = add i64 %tmp1, %m, !dbg !121           ; [#uses=1 type=i64] [debug line = 54:4]
  %c_assign = add i64 %tmp1, %m_1, !dbg !115      ; [#uses=2 type=i64] [debug line = 54:20]
  call void @llvm.dbg.value(metadata !{i64 %c_assign}, i64 0, metadata !122), !dbg !126 ; [debug line = 39:15@54:20] [debug variable = c]
  %tmp_i = icmp slt i64 %c_assign, 9, !dbg !127   ; [#uses=1 type=i1] [debug line = 41:2@54:20]
  %c_assign_1 = select i1 %tmp_i, i64 %c_assign, i64 9, !dbg !127 ; [#uses=1 type=i64] [debug line = 41:2@54:20]
  call void @llvm.dbg.value(metadata !{i64 %c_assign_1}, i64 0, metadata !122), !dbg !127 ; [debug line = 41:2@54:20] [debug variable = c]
  %arr_0_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_0), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_1_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_1), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_2_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_2), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_3_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_3), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_4_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_4), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_5_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_5), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_6_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_6), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_7_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_7), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_8_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_8), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  %arr_9_read = call i64 @_ssdm_op_Read.ap_auto.i64P(i64* %arr_9), !dbg !115 ; [#uses=1 type=i64] [debug line = 54:20]
  call fastcc void @merge(i64 %x, i64 %tmp_5, i64 %c_assign_1, i64* %arr_0, i64 %arr_0_read, i64* %arr_1, i64 %arr_1_read, i64* %arr_2, i64 %arr_2_read, i64* %arr_3, i64 %arr_3_read, i64* %arr_4, i64 %arr_4_read, i64* %arr_5, i64 %arr_5_read, i64* %arr_6, i64 %arr_6_read, i64* %arr_7, i64 %arr_7_read, i64* %arr_8, i64 %arr_8_read, i64* %arr_9, i64 %arr_9_read), !dbg !115 ; [debug line = 54:20]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str7, i32 %tmp_2) nounwind, !dbg !129 ; [#uses=0 type=i32] [debug line = 55:4]
  %x_1 = add nsw i64 %m_1, %x, !dbg !130          ; [#uses=1 type=i64] [debug line = 52:25]
  call void @llvm.dbg.value(metadata !{i64 %x_1}, i64 0, metadata !131), !dbg !130 ; [debug line = 52:25] [debug variable = x]
  br label %3, !dbg !130                          ; [debug line = 52:25]

; <label>:5                                       ; preds = %3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_1) nounwind, !dbg !133 ; [#uses=0 type=i32] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i64 %m_1}, i64 0, metadata !134), !dbg !135 ; [debug line = 49:25] [debug variable = m]
  br label %1, !dbg !135                          ; [debug line = 49:25]

; <label>:6                                       ; preds = %1
  ret void, !dbg !136                             ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @merge(i64 %i1, i64 %f1, i64 %f2, i64* nocapture %arr_0, i64 %arr_0_read, i64* nocapture %arr_1, i64 %arr_1_read, i64* nocapture %arr_2, i64 %arr_2_read, i64* nocapture %arr_3, i64 %arr_3_read, i64* nocapture %arr_4, i64 %arr_4_read, i64* nocapture %arr_5, i64 %arr_5_read, i64* nocapture %arr_6, i64 %arr_6_read, i64* nocapture %arr_7, i64 %arr_7_read, i64* nocapture %arr_8, i64 %arr_8_read, i64* nocapture %arr_9, i64 %arr_9_read) {
  %p_0 = alloca i64                               ; [#uses=3 type=i64*]
  call void @llvm.dbg.declare(metadata !{i64* %p_0}, metadata !137) ; [debug variable = i1]
  %i2_1 = alloca i64                              ; [#uses=3 type=i64*]
  call void @llvm.dbg.declare(metadata !{i64* %i2_1}, metadata !141) ; [debug variable = i2]
  %arr_9_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_9_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_9_read_1}, i64 0, metadata !143), !dbg !145 ; [debug line = 6:75] [debug variable = arr[9]]
  %arr_8_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_8_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_8_read_1}, i64 0, metadata !146), !dbg !145 ; [debug line = 6:75] [debug variable = arr[8]]
  %arr_7_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_7_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_7_read_1}, i64 0, metadata !147), !dbg !145 ; [debug line = 6:75] [debug variable = arr[7]]
  %arr_6_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_6_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_6_read_1}, i64 0, metadata !148), !dbg !145 ; [debug line = 6:75] [debug variable = arr[6]]
  %arr_5_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_5_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_5_read_1}, i64 0, metadata !149), !dbg !145 ; [debug line = 6:75] [debug variable = arr[5]]
  %arr_4_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_4_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_4_read_1}, i64 0, metadata !150), !dbg !145 ; [debug line = 6:75] [debug variable = arr[4]]
  %arr_3_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_3_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_3_read_1}, i64 0, metadata !151), !dbg !145 ; [debug line = 6:75] [debug variable = arr[3]]
  %arr_2_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_2_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_2_read_1}, i64 0, metadata !152), !dbg !145 ; [debug line = 6:75] [debug variable = arr[2]]
  %arr_1_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_1_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_1_read_1}, i64 0, metadata !153), !dbg !145 ; [debug line = 6:75] [debug variable = arr[1]]
  %arr_0_read_1 = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %arr_0_read) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %arr_0_read_1}, i64 0, metadata !154), !dbg !145 ; [debug line = 6:75] [debug variable = arr[0]]
  %f2_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f2) ; [#uses=3 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %f2_read}, i64 0, metadata !155), !dbg !156 ; [debug line = 6:59] [debug variable = f2]
  %f1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f1) ; [#uses=4 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %f1_read}, i64 0, metadata !157), !dbg !158 ; [debug line = 6:42] [debug variable = f1]
  %i1_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %i1) ; [#uses=2 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %i1_read}, i64 0, metadata !137), !dbg !159 ; [debug line = 6:25] [debug variable = i1]
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !137), !dbg !159 ; [debug line = 6:25] [debug variable = i1]
  call void @llvm.dbg.value(metadata !{i64 %f1}, i64 0, metadata !157), !dbg !158 ; [debug line = 6:42] [debug variable = f1]
  call void @llvm.dbg.value(metadata !{i64 %f2}, i64 0, metadata !155), !dbg !156 ; [debug line = 6:59] [debug variable = f2]
  call void @llvm.dbg.value(metadata !{i64 %arr_0_read}, i64 0, metadata !154), !dbg !145 ; [debug line = 6:75] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64* %arr_0}, i64 0, metadata !160), !dbg !145 ; [debug line = 6:75] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{i64 %arr_1_read}, i64 0, metadata !153), !dbg !145 ; [debug line = 6:75] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64* %arr_1}, i64 0, metadata !161), !dbg !145 ; [debug line = 6:75] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{i64 %arr_2_read}, i64 0, metadata !152), !dbg !145 ; [debug line = 6:75] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64* %arr_2}, i64 0, metadata !162), !dbg !145 ; [debug line = 6:75] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{i64 %arr_3_read}, i64 0, metadata !151), !dbg !145 ; [debug line = 6:75] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64* %arr_3}, i64 0, metadata !163), !dbg !145 ; [debug line = 6:75] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{i64 %arr_4_read}, i64 0, metadata !150), !dbg !145 ; [debug line = 6:75] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64* %arr_4}, i64 0, metadata !164), !dbg !145 ; [debug line = 6:75] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{i64 %arr_5_read}, i64 0, metadata !149), !dbg !145 ; [debug line = 6:75] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64* %arr_5}, i64 0, metadata !165), !dbg !145 ; [debug line = 6:75] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{i64 %arr_6_read}, i64 0, metadata !148), !dbg !145 ; [debug line = 6:75] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64* %arr_6}, i64 0, metadata !166), !dbg !145 ; [debug line = 6:75] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{i64 %arr_7_read}, i64 0, metadata !147), !dbg !145 ; [debug line = 6:75] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64* %arr_7}, i64 0, metadata !167), !dbg !145 ; [debug line = 6:75] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{i64 %arr_8_read}, i64 0, metadata !146), !dbg !145 ; [debug line = 6:75] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64* %arr_8}, i64 0, metadata !168), !dbg !145 ; [debug line = 6:75] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{i64 %arr_9_read}, i64 0, metadata !143), !dbg !145 ; [debug line = 6:75] [debug variable = arr[9]]
  call void @llvm.dbg.value(metadata !{i64* %arr_9}, i64 0, metadata !169), !dbg !145 ; [debug line = 6:75] [debug variable = arr[9]]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !170), !dbg !172 ; [debug line = 8:7] [debug variable = x]
  %i2 = add nsw i64 %f1_read, 1, !dbg !173        ; [#uses=1 type=i64] [debug line = 9:26]
  call void @llvm.dbg.value(metadata !{i64 %i2}, i64 0, metadata !141), !dbg !173 ; [debug line = 9:26] [debug variable = i2]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !174), !dbg !175 ; [debug line = 11:17] [debug variable = start]
  store i64 %i2, i64* %i2_1, !dbg !173            ; [debug line = 9:26]
  store i64 %i1_read, i64* %p_0, !dbg !159        ; [debug line = 6:25]
  br label %1, !dbg !176                          ; [debug line = 13:2]

; <label>:1                                       ; preds = %5, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %5 ]             ; [#uses=2 type=i4]
  %p_0_load = load i64* %p_0, !dbg !177           ; [#uses=5 type=i64] [debug line = 16:4]
  %i2_1_load = load i64* %i2_1, !dbg !179         ; [#uses=4 type=i64] [debug line = 18:4]
  %i_cast = zext i4 %i to i64, !dbg !176          ; [#uses=4 type=i64] [debug line = 13:2]
  %slt = icmp slt i64 %f2_read, %i2_1_load, !dbg !176 ; [#uses=1 type=i1] [debug line = 13:2]
  %rev = xor i1 %slt, true, !dbg !176             ; [#uses=1 type=i1] [debug line = 13:2]
  %slt1 = icmp slt i64 %f1_read, %p_0_load, !dbg !176 ; [#uses=1 type=i1] [debug line = 13:2]
  %rev1 = xor i1 %slt1, true, !dbg !176           ; [#uses=1 type=i1] [debug line = 13:2]
  %tmp_s = and i1 %rev, %rev1, !dbg !176          ; [#uses=1 type=i1] [debug line = 13:2]
  %i_1 = add i4 %i, 1, !dbg !177                  ; [#uses=1 type=i4] [debug line = 16:4]
  br i1 %tmp_s, label %2, label %6

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind, !dbg !180 ; [debug line = 14:3]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str), !dbg !180 ; [#uses=1 type=i32] [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, [1 x i8]* @p_str1) nounwind, !dbg !181 ; [debug line = 15:1]
  %tmp = trunc i64 %p_0_load to i4                ; [#uses=1 type=i4]
  %tmp_4 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp) ; [#uses=2 type=i64]
  %tmp_13 = trunc i64 %i2_1_load to i4            ; [#uses=1 type=i4]
  %tmp_18 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_13) ; [#uses=2 type=i64]
  %tmp_1 = icmp sgt i64 %tmp_4, %tmp_18, !dbg !182 ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %tmp_1, label %4, label %3, !dbg !182     ; [debug line = 15:3]

; <label>:3                                       ; preds = %2
  %i1_assign = add nsw i64 %p_0_load, 1, !dbg !177 ; [#uses=1 type=i64] [debug line = 16:4]
  call void @llvm.dbg.value(metadata !{i64 %i1_assign}, i64 0, metadata !137), !dbg !177 ; [debug line = 16:4] [debug variable = i1]
  %x_addr_1 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_cast, !dbg !177 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %tmp_4, i64* %x_addr_1, align 8, !dbg !177 ; [debug line = 16:4]
  store i64 %i1_assign, i64* %p_0, !dbg !177      ; [debug line = 16:4]
  br label %5, !dbg !177                          ; [debug line = 16:4]

; <label>:4                                       ; preds = %2
  %i2_2 = add nsw i64 %i2_1_load, 1, !dbg !179    ; [#uses=1 type=i64] [debug line = 18:4]
  call void @llvm.dbg.value(metadata !{i64 %i2_2}, i64 0, metadata !141), !dbg !179 ; [debug line = 18:4] [debug variable = i2]
  %x_addr = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_cast, !dbg !179 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %tmp_18, i64* %x_addr, align 8, !dbg !179 ; [debug line = 18:4]
  store i64 %i2_2, i64* %i2_1, !dbg !179          ; [debug line = 18:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !183), !dbg !177 ; [debug line = 16:4] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_3), !dbg !184 ; [#uses=0 type=i32] [debug line = 19:2]
  br label %1, !dbg !184                          ; [debug line = 19:2]

; <label>:6                                       ; preds = %1
  %tmp_2 = icmp sgt i64 %p_0_load, %f1_read, !dbg !185 ; [#uses=1 type=i1] [debug line = 21:2]
  br i1 %tmp_2, label %10, label %7, !dbg !185    ; [debug line = 21:2]

; <label>:7                                       ; preds = %6
  %tmp_20 = trunc i64 %p_0_load to i8, !dbg !186  ; [#uses=1 type=i8] [debug line = 24:7]
  br label %8, !dbg !186                          ; [debug line = 24:7]

; <label>:8                                       ; preds = %9, %7
  %tmp_8 = phi i8 [ %tmp_20, %7 ], [ %tmp_12, %9 ] ; [#uses=3 type=i8]
  %i_2 = phi i64 [ %i_cast, %7 ], [ %i_6, %9 ]    ; [#uses=2 type=i64]
  %tmp_9 = sext i8 %tmp_8 to i64, !dbg !186       ; [#uses=1 type=i64] [debug line = 24:7]
  %tmp_10 = icmp sgt i64 %tmp_9, %f1_read, !dbg !186 ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp_10, label %.loopexit.loopexit46, label %9, !dbg !186 ; [debug line = 24:7]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind, !dbg !189 ; [debug line = 25:2]
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2), !dbg !189 ; [#uses=1 type=i32] [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, [1 x i8]* @p_str1) nounwind, !dbg !191 ; [debug line = 26:1]
  %tmp_27 = trunc i8 %tmp_8 to i4                 ; [#uses=1 type=i4]
  %tmp_24 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_27) ; [#uses=1 type=i64]
  %i_6 = add nsw i64 1, %i_2, !dbg !192           ; [#uses=1 type=i64] [debug line = 25:1]
  call void @llvm.dbg.value(metadata !{i64 %i_6}, i64 0, metadata !183), !dbg !192 ; [debug line = 25:1] [debug variable = i]
  %x_addr_3 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_2, !dbg !192 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %tmp_24, i64* %x_addr_3, align 8, !dbg !192 ; [debug line = 25:1]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_23), !dbg !193 ; [#uses=0 type=i32] [debug line = 25:15]
  %tmp_12 = add i8 1, %tmp_8, !dbg !194           ; [#uses=1 type=i8] [debug line = 24:24]
  br label %8, !dbg !194                          ; [debug line = 24:24]

; <label>:10                                      ; preds = %6
  %tmp_19 = trunc i64 %i2_1_load to i8, !dbg !195 ; [#uses=1 type=i8] [debug line = 29:7]
  br label %11, !dbg !195                         ; [debug line = 29:7]

; <label>:11                                      ; preds = %12, %10
  %tmp_5 = phi i8 [ %tmp_19, %10 ], [ %tmp_11, %12 ] ; [#uses=3 type=i8]
  %i_3 = phi i64 [ %i_cast, %10 ], [ %i_5, %12 ]  ; [#uses=2 type=i64]
  %tmp_6 = sext i8 %tmp_5 to i64, !dbg !195       ; [#uses=1 type=i64] [debug line = 29:7]
  %tmp_7 = icmp sgt i64 %tmp_6, %f2_read, !dbg !195 ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %tmp_7, label %.loopexit.loopexit, label %12, !dbg !195 ; [debug line = 29:7]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind, !dbg !198 ; [debug line = 30:2]
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3), !dbg !198 ; [#uses=1 type=i32] [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, [1 x i8]* @p_str1) nounwind, !dbg !200 ; [debug line = 31:1]
  %tmp_26 = trunc i8 %tmp_5 to i4                 ; [#uses=1 type=i4]
  %tmp_22 = call i64 @_ssdm_op_Mux.ap_auto.10i64.i4(i64 %arr_0_read_1, i64 %arr_1_read_1, i64 %arr_2_read_1, i64 %arr_3_read_1, i64 %arr_4_read_1, i64 %arr_5_read_1, i64 %arr_6_read_1, i64 %arr_7_read_1, i64 %arr_8_read_1, i64 %arr_9_read_1, i4 %tmp_26) ; [#uses=1 type=i64]
  %i_5 = add nsw i64 1, %i_3, !dbg !201           ; [#uses=1 type=i64] [debug line = 30:1]
  call void @llvm.dbg.value(metadata !{i64 %i_5}, i64 0, metadata !183), !dbg !201 ; [debug line = 30:1] [debug variable = i]
  %x_addr_2 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_3, !dbg !201 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %tmp_22, i64* %x_addr_2, align 8, !dbg !201 ; [debug line = 30:1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_21), !dbg !202 ; [#uses=0 type=i32] [debug line = 30:15]
  %tmp_11 = add i8 1, %tmp_5, !dbg !203           ; [#uses=1 type=i8] [debug line = 29:24]
  br label %11, !dbg !203                         ; [debug line = 29:24]

.loopexit.loopexit:                               ; preds = %11
  br label %.loopexit

.loopexit.loopexit46:                             ; preds = %8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit46, %.loopexit.loopexit
  %tmp_28 = trunc i64 %i1_read to i8, !dbg !204   ; [#uses=1 type=i8] [debug line = 34:6]
  br label %13, !dbg !204                         ; [debug line = 34:6]

; <label>:13                                      ; preds = %15, %.loopexit
  %tmp_14 = phi i8 [ %tmp_28, %.loopexit ], [ %tmp_17, %15 ] ; [#uses=4 type=i8]
  %i_4 = phi i64 [ 0, %.loopexit ], [ %i_7, %15 ] ; [#uses=2 type=i64]
  %tmp_15 = sext i8 %tmp_14 to i64, !dbg !204     ; [#uses=1 type=i64] [debug line = 34:6]
  %tmp_16 = icmp sgt i64 %tmp_15, %f2_read, !dbg !204 ; [#uses=1 type=i1] [debug line = 34:6]
  %i_7 = add nsw i64 %i_4, 1, !dbg !206           ; [#uses=1 type=i64] [debug line = 35:1]
  br i1 %tmp_16, label %16, label %14, !dbg !204  ; [debug line = 34:6]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind, !dbg !208 ; [debug line = 35:2]
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4), !dbg !208 ; [#uses=1 type=i32] [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, [1 x i8]* @p_str1) nounwind, !dbg !209 ; [debug line = 36:1]
  call void @llvm.dbg.value(metadata !{i64 %i_7}, i64 0, metadata !183), !dbg !206 ; [debug line = 35:1] [debug variable = i]
  %x_addr_4 = getelementptr inbounds [10 x i64]* %x, i64 0, i64 %i_4, !dbg !206 ; [#uses=1 type=i64*] [debug line = 35:1]
  %x_load = load i64* %x_addr_4, align 8, !dbg !206 ; [#uses=10 type=i64] [debug line = 35:1]
  %tmp_29 = trunc i8 %tmp_14 to i4                ; [#uses=1 type=i4]
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
  ], !dbg !206                                    ; [debug line = 35:1]

; <label>:15                                      ; preds = %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_25), !dbg !210 ; [#uses=0 type=i32] [debug line = 35:15]
  %tmp_17 = add i8 %tmp_14, 1, !dbg !211          ; [#uses=1 type=i8] [debug line = 34:33]
  br label %13, !dbg !211                         ; [debug line = 34:33]

; <label>:16                                      ; preds = %13
  store i8 %tmp_14, i8* @h, align 1, !dbg !211    ; [debug line = 34:33]
  ret void, !dbg !212                             ; [debug line = 36:1]

branch0:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_0, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch1:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_1, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch2:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_2, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch3:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_3, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch4:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_4, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch5:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_5, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch6:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_6, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch7:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_7, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch8:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_8, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]

branch9:                                          ; preds = %14
  call void @_ssdm_op_Write.ap_auto.i64P(i64* %arr_9, i64 %x_load), !dbg !206 ; [debug line = 35:1]
  br label %15, !dbg !206                         ; [debug line = 35:1]
}

; [#uses=58]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=10]
define weak void @_ssdm_op_Write.ap_auto.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
  ret void
}

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

; [#uses=10]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=10]
define weak i64 @_ssdm_op_Read.ap_auto.i64P(i64*) {
entry:
  %empty = load i64* %0                           ; [#uses=1 type=i64]
  ret i64 %empty
}

; [#uses=13]
define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=4]
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
  %merge = phi i64 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ] ; [#uses=1 type=i64]
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

; [#uses=0]
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
!86 = metadata !{i32 790531, metadata !87, metadata !"arr[0]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 786689, metadata !88, metadata !"arr", null, i32 44, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786478, i32 0, metadata !89, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !89, i32 44, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !95, i32 45} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !92}
!92 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !89, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ]
!94 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !93, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!100 = metadata !{i32 44, i32 28, metadata !88, null}
!101 = metadata !{i32 790531, metadata !87, metadata !"arr[1]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!102 = metadata !{i32 790531, metadata !87, metadata !"arr[2]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!103 = metadata !{i32 790531, metadata !87, metadata !"arr[3]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 790531, metadata !87, metadata !"arr[4]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!105 = metadata !{i32 790531, metadata !87, metadata !"arr[5]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!106 = metadata !{i32 790531, metadata !87, metadata !"arr[6]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!107 = metadata !{i32 790531, metadata !87, metadata !"arr[7]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!108 = metadata !{i32 790531, metadata !87, metadata !"arr[8]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!109 = metadata !{i32 790531, metadata !87, metadata !"arr[9]", null, i32 44, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!110 = metadata !{i32 49, i32 6, metadata !111, null}
!111 = metadata !{i32 786443, metadata !112, i32 49, i32 2, metadata !89, i32 12} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !88, i32 45, i32 1, metadata !89, i32 11} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 50, i32 3, metadata !114, null}
!114 = metadata !{i32 786443, metadata !111, i32 50, i32 2, metadata !89, i32 13} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 54, i32 20, metadata !116, null}
!116 = metadata !{i32 786443, metadata !117, i32 53, i32 3, metadata !89, i32 15} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !114, i32 52, i32 3, metadata !89, i32 14} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 52, i32 7, metadata !117, null}
!119 = metadata !{i32 53, i32 4, metadata !116, null}
!120 = metadata !{i32 54, i32 1, metadata !116, null}
!121 = metadata !{i32 54, i32 4, metadata !116, null}
!122 = metadata !{i32 786689, metadata !123, metadata !"c", metadata !89, i32 16777255, metadata !94, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 786478, i32 0, metadata !89, metadata !"min", metadata !"min", metadata !"", metadata !89, i32 39, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !95, i32 40} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !94, metadata !94, metadata !94}
!126 = metadata !{i32 39, i32 15, metadata !123, metadata !115}
!127 = metadata !{i32 41, i32 2, metadata !128, metadata !115}
!128 = metadata !{i32 786443, metadata !123, i32 40, i32 1, metadata !89, i32 10} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 55, i32 4, metadata !116, null}
!130 = metadata !{i32 52, i32 25, metadata !117, null}
!131 = metadata !{i32 786688, metadata !112, metadata !"x", metadata !89, i32 47, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !89, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ]
!133 = metadata !{i32 56, i32 2, metadata !114, null}
!134 = metadata !{i32 786688, metadata !112, metadata !"m", metadata !89, i32 46, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 49, i32 25, metadata !111, null}
!136 = metadata !{i32 57, i32 1, metadata !112, null}
!137 = metadata !{i32 786689, metadata !138, metadata !"i1", metadata !89, i32 16777222, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 786478, i32 0, metadata !89, metadata !"merge", metadata !"merge", metadata !"", metadata !89, i32 6, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !95, i32 7} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{null, metadata !132, metadata !132, metadata !132, metadata !92}
!141 = metadata !{i32 786688, metadata !142, metadata !"i2", metadata !89, i32 9, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786443, metadata !138, i32 7, i32 1, metadata !89, i32 0} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 790533, metadata !144, metadata !"arr[9]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!144 = metadata !{i32 786689, metadata !138, metadata !"arr", null, i32 6, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 6, i32 75, metadata !138, null}
!146 = metadata !{i32 790533, metadata !144, metadata !"arr[8]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!147 = metadata !{i32 790533, metadata !144, metadata !"arr[7]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!148 = metadata !{i32 790533, metadata !144, metadata !"arr[6]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!149 = metadata !{i32 790533, metadata !144, metadata !"arr[5]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!150 = metadata !{i32 790533, metadata !144, metadata !"arr[4]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!151 = metadata !{i32 790533, metadata !144, metadata !"arr[3]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!152 = metadata !{i32 790533, metadata !144, metadata !"arr[2]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!153 = metadata !{i32 790533, metadata !144, metadata !"arr[1]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!154 = metadata !{i32 790533, metadata !144, metadata !"arr[0]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!155 = metadata !{i32 786689, metadata !138, metadata !"f2", metadata !89, i32 50331654, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 6, i32 59, metadata !138, null}
!157 = metadata !{i32 786689, metadata !138, metadata !"f1", metadata !89, i32 33554438, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 6, i32 42, metadata !138, null}
!159 = metadata !{i32 6, i32 25, metadata !138, null}
!160 = metadata !{i32 790531, metadata !144, metadata !"arr[0]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!161 = metadata !{i32 790531, metadata !144, metadata !"arr[1]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!162 = metadata !{i32 790531, metadata !144, metadata !"arr[2]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!163 = metadata !{i32 790531, metadata !144, metadata !"arr[3]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!164 = metadata !{i32 790531, metadata !144, metadata !"arr[4]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!165 = metadata !{i32 790531, metadata !144, metadata !"arr[5]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 790531, metadata !144, metadata !"arr[6]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!167 = metadata !{i32 790531, metadata !144, metadata !"arr[7]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!168 = metadata !{i32 790531, metadata !144, metadata !"arr[8]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!169 = metadata !{i32 790531, metadata !144, metadata !"arr[9]", null, i32 6, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!170 = metadata !{i32 786688, metadata !142, metadata !"x", metadata !89, i32 8, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !94, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ]
!172 = metadata !{i32 8, i32 7, metadata !142, null}
!173 = metadata !{i32 9, i32 26, metadata !142, null}
!174 = metadata !{i32 786688, metadata !142, metadata !"start", metadata !89, i32 11, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 11, i32 17, metadata !142, null}
!176 = metadata !{i32 13, i32 2, metadata !142, null}
!177 = metadata !{i32 16, i32 4, metadata !178, null}
!178 = metadata !{i32 786443, metadata !142, i32 14, i32 2, metadata !89, i32 1} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 18, i32 4, metadata !178, null}
!180 = metadata !{i32 14, i32 3, metadata !178, null}
!181 = metadata !{i32 15, i32 1, metadata !178, null}
!182 = metadata !{i32 15, i32 3, metadata !178, null}
!183 = metadata !{i32 786688, metadata !142, metadata !"i", metadata !89, i32 10, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 19, i32 2, metadata !178, null}
!185 = metadata !{i32 21, i32 2, metadata !142, null}
!186 = metadata !{i32 24, i32 7, metadata !187, null}
!187 = metadata !{i32 786443, metadata !188, i32 24, i32 3, metadata !89, i32 3} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !142, i32 22, i32 2, metadata !89, i32 2} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 25, i32 2, metadata !190, null}
!190 = metadata !{i32 786443, metadata !187, i32 25, i32 1, metadata !89, i32 4} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 26, i32 1, metadata !190, null}
!192 = metadata !{i32 25, i32 1, metadata !190, null}
!193 = metadata !{i32 25, i32 15, metadata !190, null}
!194 = metadata !{i32 24, i32 24, metadata !187, null}
!195 = metadata !{i32 29, i32 7, metadata !196, null}
!196 = metadata !{i32 786443, metadata !197, i32 29, i32 3, metadata !89, i32 6} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786443, metadata !142, i32 27, i32 6, metadata !89, i32 5} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 30, i32 2, metadata !199, null}
!199 = metadata !{i32 786443, metadata !196, i32 30, i32 1, metadata !89, i32 7} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 31, i32 1, metadata !199, null}
!201 = metadata !{i32 30, i32 1, metadata !199, null}
!202 = metadata !{i32 30, i32 15, metadata !199, null}
!203 = metadata !{i32 29, i32 24, metadata !196, null}
!204 = metadata !{i32 34, i32 6, metadata !205, null}
!205 = metadata !{i32 786443, metadata !142, i32 34, i32 2, metadata !89, i32 8} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 35, i32 1, metadata !207, null}
!207 = metadata !{i32 786443, metadata !205, i32 35, i32 1, metadata !89, i32 9} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 35, i32 2, metadata !207, null}
!209 = metadata !{i32 36, i32 1, metadata !207, null}
!210 = metadata !{i32 35, i32 15, metadata !207, null}
!211 = metadata !{i32 34, i32 33, metadata !205, null}
!212 = metadata !{i32 36, i32 1, metadata !142, null}
