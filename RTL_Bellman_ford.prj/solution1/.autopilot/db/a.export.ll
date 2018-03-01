; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bellman_ford_str = internal unnamed_addr constant [13 x i8] c"bellman_ford\00"
@p_str5 = private unnamed_addr constant [5 x i8] c"FOR3\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"EFOR2\00", align 1
@p_str = private unnamed_addr constant [6 x i8] c"EFOR1\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i111 @llvm.part.select.i111(i111, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @bellman_ford([100 x float]* %graph, [10 x i64]* %hwdist) nounwind uwtable {
  %total_edges = alloca i64
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %graph) nounwind, !map !468
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %hwdist) nounwind, !map !474
  %hwdist_addr = getelementptr [10 x i64]* %hwdist, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @bellman_ford_str) nounwind
  store i64 0, i64* %total_edges
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i_i = phi i4 [ 0, %0 ], [ %i_1, %5 ]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_i, i3 0)
  %p_shl_cast = zext i7 %tmp_5 to i8
  %tmp_9 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i_i, i1 false)
  %p_shl1_cast = zext i5 %tmp_9 to i8
  %tmp_10 = add i8 %p_shl1_cast, %p_shl_cast
  %exitcond1_i = icmp eq i4 %i_i, -6
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %i_1 = add i4 %i_i, 1
  br i1 %exitcond1_i, label %edge_counter.exit, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j_i = phi i4 [ 0, %2 ], [ %j_1, %4 ]
  %j_i_cast4_cast = zext i4 %j_i to i8
  %tmp_12 = add i8 %tmp_10, %j_i_cast4_cast
  %tmp_27_cast = zext i8 %tmp_12 to i64
  %graph_addr_1 = getelementptr [100 x float]* %graph, i64 0, i64 %tmp_27_cast
  %exitcond_i = icmp eq i4 %j_i, -6
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %j_1 = add i4 %j_i, 1
  br i1 %exitcond_i, label %5, label %4

; <label>:4                                       ; preds = %3
  %total_edges_load_1 = load i64* %total_edges
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str1) nounwind
  %graph_load_1 = load float* %graph_addr_1, align 4
  %graph_load_1_to_int = bitcast float %graph_load_1 to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %graph_load_1_to_int, i32 23, i32 30)
  %tmp_19 = trunc i32 %graph_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_1, -1
  %notrhs = icmp eq i23 %tmp_19, 0
  %tmp_6 = or i1 %notrhs, %notlhs
  %tmp_7 = fcmp oeq float %graph_load_1, -1.000000e+00
  %tmp_8 = and i1 %tmp_6, %tmp_7
  %total_edges_1 = add nsw i64 1, %total_edges_load_1
  %total_edges_2 = select i1 %tmp_8, i64 %total_edges_load_1, i64 %total_edges_1
  store i64 %total_edges_2, i64* %total_edges
  br label %3

; <label>:5                                       ; preds = %3
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str, i32 %tmp_1_i) nounwind
  br label %1

edge_counter.exit:                                ; preds = %1
  %hwdist_addr_1 = getelementptr [10 x i64]* %hwdist, i64 0, i64 1
  store i64 127, i64* %hwdist_addr_1, align 8
  %hwdist_addr_2 = getelementptr [10 x i64]* %hwdist, i64 0, i64 2
  store i64 127, i64* %hwdist_addr_2, align 8
  %hwdist_addr_3 = getelementptr [10 x i64]* %hwdist, i64 0, i64 3
  store i64 127, i64* %hwdist_addr_3, align 8
  %hwdist_addr_4 = getelementptr [10 x i64]* %hwdist, i64 0, i64 4
  store i64 127, i64* %hwdist_addr_4, align 8
  %hwdist_addr_5 = getelementptr [10 x i64]* %hwdist, i64 0, i64 5
  store i64 127, i64* %hwdist_addr_5, align 8
  %hwdist_addr_6 = getelementptr [10 x i64]* %hwdist, i64 0, i64 6
  store i64 127, i64* %hwdist_addr_6, align 8
  %hwdist_addr_7 = getelementptr [10 x i64]* %hwdist, i64 0, i64 7
  store i64 127, i64* %hwdist_addr_7, align 8
  %hwdist_addr_8 = getelementptr [10 x i64]* %hwdist, i64 0, i64 8
  store i64 127, i64* %hwdist_addr_8, align 8
  %hwdist_addr_9 = getelementptr [10 x i64]* %hwdist, i64 0, i64 9
  store i64 127, i64* %hwdist_addr_9, align 8
  store i64 0, i64* %hwdist_addr, align 8
  br label %6

; <label>:6                                       ; preds = %11, %edge_counter.exit
  %i = phi i4 [ 0, %edge_counter.exit ], [ %i_2, %11 ]
  %i_cast3 = zext i4 %i to i64
  %i_cast3_cast = zext i4 %i to i8
  %exitcond = icmp eq i4 %i, -6
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_2 = add i4 %i, 1
  br i1 %exitcond, label %12, label %7

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str4) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str4) nounwind
  %hwdist_addr_10 = getelementptr [10 x i64]* %hwdist, i64 0, i64 %i_cast3
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %7
  %j = phi i63 [ 0, %7 ], [ %j_2, %._crit_edge ]
  %total_edges_load = load i64* %total_edges
  %j_cast = zext i63 %j to i64
  %tmp_24 = trunc i63 %j to i5
  %p_shl2_cast = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_24, i3 0)
  %tmp_25 = trunc i63 %j to i7
  %p_shl3_cast = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_25, i1 false)
  %tmp_26 = add i8 %p_shl3_cast, %p_shl2_cast
  %tmp_27 = add i8 %tmp_26, %i_cast3_cast
  %tmp_30_cast = zext i8 %tmp_27 to i64
  %graph_addr = getelementptr [100 x float]* %graph, i64 0, i64 %tmp_30_cast
  %tmp = icmp slt i64 %j_cast, %total_edges_load
  %j_2 = add i63 1, %j
  br i1 %tmp, label %9, label %11

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 50, i32 25, [1 x i8]* @p_str3) nounwind
  %hwdist_addr_11 = getelementptr [10 x i64]* %hwdist, i64 0, i64 %j_cast
  %hwdist_load = load i64* %hwdist_addr_11, align 8
  %tmp_s = sitofp i64 %hwdist_load to float
  %graph_load = load float* %graph_addr, align 4
  %x_assign = fadd float %tmp_s, %graph_load
  %hwdist_load_1 = load i64* %hwdist_addr_10, align 8
  %tmp_2 = sitofp i64 %hwdist_load_1 to float
  %p_Val2_s = bitcast float %x_assign to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30)
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %tmp_2_to_int = bitcast float %tmp_2 to i32
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_2_to_int, i32 23, i32 30)
  %tmp_29 = trunc i32 %tmp_2_to_int to i23
  %notlhs7 = icmp ne i8 %loc_V, -1
  %notrhs8 = icmp eq i23 %loc_V_1, 0
  %tmp_13 = or i1 %notrhs8, %notlhs7
  %notlhs9 = icmp ne i8 %tmp_11, -1
  %notrhs1 = icmp eq i23 %tmp_29, 0
  %tmp_14 = or i1 %notrhs1, %notlhs9
  %tmp_15 = and i1 %tmp_13, %tmp_14
  %tmp_16 = fcmp ole float %x_assign, %tmp_2
  %tmp_17 = and i1 %tmp_15, %tmp_16
  %graph_load_to_int = bitcast float %graph_load to i32
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %graph_load_to_int, i32 23, i32 30)
  %tmp_30 = trunc i32 %graph_load_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_18, -1
  %notrhs2 = icmp eq i23 %tmp_30, 0
  %tmp_20 = or i1 %notrhs2, %notlhs1
  %tmp_21 = fcmp oeq float %graph_load, -1.000000e+00
  %tmp_22 = and i1 %tmp_20, %tmp_21
  %tmp_23 = xor i1 %tmp_22, true
  %or_cond = and i1 %tmp_17, %tmp_23
  br i1 %or_cond, label %10, label %._crit_edge

; <label>:10                                      ; preds = %9
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %tmp_3_i_i_i = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_1, i1 false)
  %tmp_3_i_i_i_cast2 = zext i25 %tmp_3_i_i_i to i111
  %tmp_i_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 %tmp_i_i_i_i_cast1, -127
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_5_i_i_i = sub i8 127, %loc_V
  %tmp_5_i_i_i_cast = sext i8 %tmp_5_i_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_5_i_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cas = sext i9 %sh_assign_1 to i25
  %tmp_7_i_i_i = zext i32 %sh_assign_1_cast to i111
  %tmp_8_i_i_i = lshr i25 %tmp_3_i_i_i, %sh_assign_1_cast_cas
  %tmp_i_i_i = shl i111 %tmp_3_i_i_i_cast2, %tmp_7_i_i_i
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_8_i_i_i, i32 24)
  %tmp_28 = zext i1 %tmp_35 to i63
  %tmp_31 = call i63 @_ssdm_op_PartSelect.i63.i111.i32.i32(i111 %tmp_i_i_i, i32 24, i32 86)
  %p_Val2_2 = select i1 %isNeg, i63 %tmp_28, i63 %tmp_31
  %tmp_1_i_i_i = zext i63 %p_Val2_2 to i64
  %tmp_10_i_i_i = sub nsw i64 0, %tmp_1_i_i_i
  %p_Val2_4 = select i1 %p_Result_s, i64 %tmp_10_i_i_i, i64 %tmp_1_i_i_i
  store i64 %p_Val2_4, i64* %hwdist_addr_10, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %10, %9
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_4) nounwind
  br label %8

; <label>:11                                      ; preds = %8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str4, i32 %tmp_3) nounwind
  br label %6

; <label>:12                                      ; preds = %6
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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i8
  ret i8 %empty_9
}

declare i7 @_ssdm_op_PartSelect.i7.i63.i32.i32(i63, i32, i32) nounwind readnone

define weak i63 @_ssdm_op_PartSelect.i63.i111.i32.i32(i111, i32, i32) nounwind readnone {
entry:
  %empty = call i111 @llvm.part.select.i111(i111 %0, i32 %1, i32 %2)
  %empty_10 = trunc i111 %empty to i63
  ret i63 %empty_10
}

declare i5 @_ssdm_op_PartSelect.i5.i63.i32.i32(i63, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_11 = shl i9 1, %empty
  %empty_12 = and i9 %0, %empty_11
  %empty_13 = icmp ne i9 %empty_12, 0
  ret i1 %empty_13
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_14 = and i32 %0, %empty
  %empty_15 = icmp ne i32 %empty_14, 0
  ret i1 %empty_15
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_16 = shl i25 1, %empty
  %empty_17 = and i25 %0, %empty_16
  %empty_18 = icmp ne i25 %empty_17, 0
  ret i1 %empty_18
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_19 = zext i1 %1 to i8
  %empty_20 = shl i8 %empty, 1
  %empty_21 = or i8 %empty_20, %empty_19
  ret i8 %empty_21
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_22 = zext i3 %1 to i8
  %empty_23 = shl i8 %empty, 3
  %empty_24 = or i8 %empty_23, %empty_22
  ret i8 %empty_24
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_25 = zext i3 %1 to i7
  %empty_26 = shl i7 %empty, 3
  %empty_27 = or i7 %empty_26, %empty_25
  ret i7 %empty_27
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_28 = zext i1 %1 to i5
  %empty_29 = shl i5 %empty, 1
  %empty_30 = or i5 %empty_29, %empty_28
  ret i5 %empty_30
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1, i23, i1) nounwind readnone {
entry:
  %empty = zext i23 %1 to i24
  %empty_31 = zext i1 %2 to i24
  %empty_32 = shl i24 %empty, 1
  %empty_33 = or i24 %empty_32, %empty_31
  %empty_34 = zext i1 %0 to i25
  %empty_35 = zext i24 %empty_33 to i25
  %empty_36 = shl i25 %empty_34, 24
  %empty_37 = or i25 %empty_36, %empty_35
  ret i25 %empty_37
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !13, !13, !17, !17, !17, !17, !19, !19, !19, !19, !13, !13, !13, !13, !17, !17, !17, !17, !19, !19, !19, !19, !21, !25, !31, !31, !31, !37, !40, !40, !31, !43, !43, !45, !31, !31, !31, !47, !47, !31, !31, !49, !52, !52, !31, !54, !57, !57, !31, !59, !59, !61, !59, !59, !61, !63, !40, !40, !69, !31, !31, !31, !72, !40, !40, !31, !31, !31, !74, !40, !40, !76, !31, !31, !31, !78, !78, !80, !80, !82, !31, !31, !61, !61, !31, !84, !86, !89, !89, !93, !93, !96, !96, !100, !102, !102, !31, !31, !31, !31, !104, !106, !106, !31, !31, !93, !107, !107, !109, !109, !111, !113, !113, !114, !116, !116, !114, !118, !118, !120, !122, !122, !31, !31, !123, !125, !125, !93, !93, !126, !126, !120, !123, !125, !125, !31, !93, !128, !128, !130, !131, !131, !133, !31, !84, !130, !135, !135, !137, !137, !31, !31, !31, !31, !31, !31, !31, !31, !21, !139, !31, !31, !31, !37, !141, !141, !143, !31, !47, !47, !31, !31, !145, !54, !147, !147, !31, !149, !149, !151, !149, !149, !151, !63, !153, !31, !31, !31, !155, !40, !40, !82, !31, !31, !151, !151, !116, !116, !114, !21, !157, !31, !31, !31, !37, !40, !40, !31, !159, !159, !161, !31, !47, !47, !31, !31, !163, !54, !165, !165, !31, !167, !167, !169, !167, !167, !169, !63, !171, !31, !31, !31, !173, !40, !40, !82, !31, !31, !169, !169, !116, !116, !114, !21, !175, !31, !31, !31, !37, !40, !40, !31, !177, !177, !179, !31, !47, !47, !31, !31, !181, !54, !183, !183, !31, !185, !185, !187, !185, !185, !187, !63, !189, !31, !31, !31, !191, !40, !40, !82, !31, !31, !187, !187, !116, !116, !114, !193, !195, !31, !197, !197, !199, !197, !197, !199, !201, !31, !31, !31, !203, !40, !40, !31, !205, !207, !209, !209, !82, !31, !31, !199, !199, !31, !84, !86, !211, !211, !93, !93, !213, !213, !215, !217, !217, !31, !31, !31, !31, !218, !220, !220, !31, !31, !93, !221, !221, !109, !109, !111, !113, !113, !223, !225, !225, !223, !227, !227, !228, !230, !230, !31, !31, !231, !233, !233, !93, !93, !234, !234, !228, !231, !233, !233, !93, !236, !236, !130, !238, !238, !240, !31, !242, !242, !31, !31, !31, !31, !193, !243, !245, !245, !247, !245, !245, !247, !249, !31, !31, !31, !251, !40, !40, !82, !31, !31, !247, !247, !225, !225, !223, !193, !253, !255, !255, !257, !255, !255, !257, !259, !31, !31, !31, !261, !40, !40, !82, !31, !31, !257, !257, !225, !225, !223, !193, !263, !265, !265, !267, !265, !265, !267, !269, !31, !31, !31, !271, !40, !40, !82, !31, !31, !267, !267, !225, !225, !223, !273, !275, !31, !277, !279, !280, !280, !282, !280, !280, !282, !284, !31, !31, !31, !286, !40, !40, !31, !288, !289, !291, !291, !82, !31, !31, !282, !282, !31, !84, !86, !293, !293, !93, !93, !295, !295, !297, !299, !299, !31, !31, !31, !300, !302, !302, !31, !93, !303, !303, !109, !109, !111, !113, !113, !305, !307, !307, !305, !309, !309, !310, !312, !312, !31, !31, !313, !315, !315, !93, !93, !316, !316, !310, !313, !315, !315, !31, !93, !318, !318, !130, !320, !320, !322, !31, !324, !324, !31, !31, !31, !31, !31, !273, !326, !328, !328, !330, !328, !328, !330, !332, !31, !31, !334, !40, !40, !82, !31, !31, !330, !330, !307, !307, !305, !273, !336, !338, !338, !340, !338, !338, !340, !342, !31, !31, !31, !344, !40, !40, !82, !31, !31, !340, !340, !307, !307, !305, !273, !346, !348, !348, !350, !348, !348, !350, !352, !31, !31, !31, !354, !40, !40, !82, !31, !31, !350, !350, !307, !307, !305, !21, !356, !31, !31, !31, !31, !358, !358, !360, !360, !362, !364, !364, !31, !84, !130, !366, !366, !47, !47, !31, !368, !54, !370, !370, !31, !59, !59, !61, !59, !59, !61, !63, !21, !372, !31, !31, !31, !31, !374, !374, !113, !113, !376, !378, !378, !31, !84, !130, !380, !380, !47, !47, !31, !382, !54, !384, !384, !31, !149, !149, !151, !31, !149, !149, !151, !63, !21, !386, !31, !31, !31, !31, !388, !388, !390, !390, !392, !394, !394, !31, !84, !130, !396, !396, !47, !47, !31, !398, !54, !400, !400, !31, !167, !167, !169, !31, !167, !167, !169, !63, !21, !402, !31, !31, !31, !31, !404, !404, !406, !406, !408, !410, !410, !31, !84, !130, !412, !412, !47, !47, !31, !414, !54, !416, !416, !31, !185, !185, !187, !31, !185, !185, !187, !63, !193, !418, !197, !197, !199, !197, !197, !199, !193, !420, !245, !245, !247, !245, !245, !247, !193, !422, !255, !255, !257, !255, !255, !257, !193, !424, !265, !265, !267, !265, !265, !267, !273, !426, !280, !280, !282, !280, !280, !282, !273, !428, !328, !328, !330, !328, !328, !330, !273, !430, !338, !338, !340, !338, !338, !340, !273, !432, !348, !348, !350, !348, !348, !350, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !438, !438, !439, !31, !441, !31, !31, !31, !443, !443, !445, !445, !447, !31, !31, !31, !449, !31, !31, !31, !31, !451, !31, !109, !109, !111, !113, !113, !453, !438, !438, !439, !451, !109, !109, !111, !113, !113, !455, !438, !438, !439, !451, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !457, !457, !457, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !457, !457, !457, !31, !457, !457, !457, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434, !31, !434, !434, !434}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!461}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float [10]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"graph"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"float [10]*", metadata !"TARGET_TYPE*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"graph", metadata !"hwdist"}
!13 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!17 = metadata !{null, metadata !14, metadata !2, metadata !18, metadata !4, metadata !16, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!19 = metadata !{null, metadata !14, metadata !2, metadata !20, metadata !4, metadata !16, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!21 = metadata !{null, metadata !22, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!31 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space"}
!33 = metadata !{metadata !"kernel_arg_access_qual"}
!34 = metadata !{metadata !"kernel_arg_type"}
!35 = metadata !{metadata !"kernel_arg_type_qual"}
!36 = metadata !{metadata !"kernel_arg_name"}
!37 = metadata !{null, metadata !14, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!40 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!43 = metadata !{null, metadata !14, metadata !2, metadata !44, metadata !4, metadata !42, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!45 = metadata !{null, metadata !14, metadata !2, metadata !46, metadata !4, metadata !42, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!47 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !48, metadata !6}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!49 = metadata !{null, metadata !22, metadata !9, metadata !50, metadata !11, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!52 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!54 = metadata !{null, metadata !14, metadata !2, metadata !55, metadata !4, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!57 = metadata !{null, metadata !14, metadata !2, metadata !58, metadata !4, metadata !42, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!59 = metadata !{null, metadata !14, metadata !2, metadata !60, metadata !4, metadata !42, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!61 = metadata !{null, metadata !14, metadata !2, metadata !62, metadata !4, metadata !42, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!63 = metadata !{null, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !6}
!64 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!65 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!67 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!69 = metadata !{null, metadata !22, metadata !9, metadata !70, metadata !11, metadata !71, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!72 = metadata !{null, metadata !14, metadata !2, metadata !73, metadata !4, metadata !56, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!74 = metadata !{null, metadata !22, metadata !9, metadata !75, metadata !11, metadata !51, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!76 = metadata !{null, metadata !22, metadata !9, metadata !77, metadata !11, metadata !71, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!78 = metadata !{null, metadata !14, metadata !2, metadata !79, metadata !4, metadata !42, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!80 = metadata !{null, metadata !14, metadata !2, metadata !81, metadata !4, metadata !42, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!82 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !83, metadata !6}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!84 = metadata !{null, metadata !14, metadata !2, metadata !85, metadata !4, metadata !48, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!86 = metadata !{null, metadata !14, metadata !2, metadata !87, metadata !4, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!89 = metadata !{null, metadata !90, metadata !9, metadata !91, metadata !11, metadata !92, metadata !6}
!90 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!93 = metadata !{null, metadata !22, metadata !9, metadata !94, metadata !11, metadata !95, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!96 = metadata !{null, metadata !97, metadata !27, metadata !98, metadata !29, metadata !99, metadata !6}
!97 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!100 = metadata !{null, metadata !14, metadata !2, metadata !101, metadata !4, metadata !48, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!102 = metadata !{null, metadata !14, metadata !2, metadata !101, metadata !4, metadata !103, metadata !6}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!104 = metadata !{null, metadata !14, metadata !2, metadata !105, metadata !4, metadata !48, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!106 = metadata !{null, metadata !14, metadata !2, metadata !105, metadata !4, metadata !42, metadata !6}
!107 = metadata !{null, metadata !97, metadata !27, metadata !108, metadata !29, metadata !99, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!109 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !110, metadata !6}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!111 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !112, metadata !6}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!113 = metadata !{null, metadata !14, metadata !2, metadata !55, metadata !4, metadata !42, metadata !6}
!114 = metadata !{null, metadata !14, metadata !2, metadata !115, metadata !4, metadata !42, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!116 = metadata !{null, metadata !14, metadata !2, metadata !117, metadata !4, metadata !42, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!118 = metadata !{null, metadata !14, metadata !2, metadata !20, metadata !4, metadata !119, metadata !6}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!120 = metadata !{null, metadata !14, metadata !2, metadata !121, metadata !4, metadata !48, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!122 = metadata !{null, metadata !14, metadata !2, metadata !121, metadata !4, metadata !103, metadata !6}
!123 = metadata !{null, metadata !14, metadata !2, metadata !124, metadata !4, metadata !48, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!125 = metadata !{null, metadata !14, metadata !2, metadata !124, metadata !4, metadata !42, metadata !6}
!126 = metadata !{null, metadata !97, metadata !27, metadata !127, metadata !29, metadata !99, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!128 = metadata !{null, metadata !97, metadata !27, metadata !129, metadata !29, metadata !99, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!130 = metadata !{null, metadata !14, metadata !2, metadata !41, metadata !4, metadata !88, metadata !6}
!131 = metadata !{null, metadata !90, metadata !9, metadata !132, metadata !11, metadata !92, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!133 = metadata !{null, metadata !14, metadata !2, metadata !134, metadata !4, metadata !48, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!135 = metadata !{null, metadata !90, metadata !9, metadata !136, metadata !11, metadata !92, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!137 = metadata !{null, metadata !14, metadata !2, metadata !138, metadata !4, metadata !48, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!139 = metadata !{null, metadata !26, metadata !27, metadata !140, metadata !29, metadata !30, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!141 = metadata !{null, metadata !14, metadata !2, metadata !142, metadata !4, metadata !42, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!143 = metadata !{null, metadata !14, metadata !2, metadata !144, metadata !4, metadata !42, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!145 = metadata !{null, metadata !22, metadata !9, metadata !146, metadata !11, metadata !51, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!147 = metadata !{null, metadata !14, metadata !2, metadata !148, metadata !4, metadata !42, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!149 = metadata !{null, metadata !14, metadata !2, metadata !150, metadata !4, metadata !42, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!151 = metadata !{null, metadata !14, metadata !2, metadata !152, metadata !4, metadata !42, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!153 = metadata !{null, metadata !22, metadata !9, metadata !154, metadata !11, metadata !71, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!155 = metadata !{null, metadata !14, metadata !2, metadata !156, metadata !4, metadata !56, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!157 = metadata !{null, metadata !26, metadata !27, metadata !158, metadata !29, metadata !30, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!159 = metadata !{null, metadata !14, metadata !2, metadata !160, metadata !4, metadata !42, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!161 = metadata !{null, metadata !14, metadata !2, metadata !162, metadata !4, metadata !42, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!163 = metadata !{null, metadata !22, metadata !9, metadata !164, metadata !11, metadata !51, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!165 = metadata !{null, metadata !14, metadata !2, metadata !166, metadata !4, metadata !42, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!167 = metadata !{null, metadata !14, metadata !2, metadata !168, metadata !4, metadata !42, metadata !6}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!169 = metadata !{null, metadata !14, metadata !2, metadata !170, metadata !4, metadata !42, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!171 = metadata !{null, metadata !22, metadata !9, metadata !172, metadata !11, metadata !71, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!173 = metadata !{null, metadata !14, metadata !2, metadata !174, metadata !4, metadata !56, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!175 = metadata !{null, metadata !26, metadata !27, metadata !176, metadata !29, metadata !30, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!177 = metadata !{null, metadata !14, metadata !2, metadata !178, metadata !4, metadata !42, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!179 = metadata !{null, metadata !14, metadata !2, metadata !180, metadata !4, metadata !42, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!181 = metadata !{null, metadata !22, metadata !9, metadata !182, metadata !11, metadata !51, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!183 = metadata !{null, metadata !14, metadata !2, metadata !184, metadata !4, metadata !42, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!185 = metadata !{null, metadata !14, metadata !2, metadata !186, metadata !4, metadata !42, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!187 = metadata !{null, metadata !14, metadata !2, metadata !188, metadata !4, metadata !42, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!189 = metadata !{null, metadata !22, metadata !9, metadata !190, metadata !11, metadata !71, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!191 = metadata !{null, metadata !14, metadata !2, metadata !192, metadata !4, metadata !56, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!193 = metadata !{null, metadata !22, metadata !9, metadata !194, metadata !11, metadata !24, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!195 = metadata !{null, metadata !26, metadata !27, metadata !196, metadata !29, metadata !30, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!197 = metadata !{null, metadata !14, metadata !2, metadata !198, metadata !4, metadata !42, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!199 = metadata !{null, metadata !14, metadata !2, metadata !200, metadata !4, metadata !42, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!201 = metadata !{null, metadata !22, metadata !9, metadata !202, metadata !11, metadata !71, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!203 = metadata !{null, metadata !14, metadata !2, metadata !204, metadata !4, metadata !56, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!205 = metadata !{null, metadata !22, metadata !9, metadata !206, metadata !11, metadata !51, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!207 = metadata !{null, metadata !22, metadata !9, metadata !208, metadata !11, metadata !71, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!209 = metadata !{null, metadata !14, metadata !2, metadata !210, metadata !4, metadata !42, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!211 = metadata !{null, metadata !90, metadata !9, metadata !212, metadata !11, metadata !92, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!213 = metadata !{null, metadata !97, metadata !27, metadata !214, metadata !29, metadata !99, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!215 = metadata !{null, metadata !14, metadata !2, metadata !216, metadata !4, metadata !48, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!217 = metadata !{null, metadata !14, metadata !2, metadata !216, metadata !4, metadata !103, metadata !6}
!218 = metadata !{null, metadata !14, metadata !2, metadata !219, metadata !4, metadata !48, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!220 = metadata !{null, metadata !14, metadata !2, metadata !219, metadata !4, metadata !42, metadata !6}
!221 = metadata !{null, metadata !97, metadata !27, metadata !222, metadata !29, metadata !99, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!223 = metadata !{null, metadata !14, metadata !2, metadata !224, metadata !4, metadata !42, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!225 = metadata !{null, metadata !14, metadata !2, metadata !226, metadata !4, metadata !42, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!227 = metadata !{null, metadata !14, metadata !2, metadata !18, metadata !4, metadata !119, metadata !6}
!228 = metadata !{null, metadata !14, metadata !2, metadata !229, metadata !4, metadata !48, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!230 = metadata !{null, metadata !14, metadata !2, metadata !229, metadata !4, metadata !103, metadata !6}
!231 = metadata !{null, metadata !14, metadata !2, metadata !232, metadata !4, metadata !48, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!233 = metadata !{null, metadata !14, metadata !2, metadata !232, metadata !4, metadata !42, metadata !6}
!234 = metadata !{null, metadata !97, metadata !27, metadata !235, metadata !29, metadata !99, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!236 = metadata !{null, metadata !97, metadata !27, metadata !237, metadata !29, metadata !99, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!238 = metadata !{null, metadata !90, metadata !9, metadata !239, metadata !11, metadata !92, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!240 = metadata !{null, metadata !14, metadata !2, metadata !241, metadata !4, metadata !48, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!242 = metadata !{null, metadata !14, metadata !2, metadata !87, metadata !4, metadata !48, metadata !6}
!243 = metadata !{null, metadata !26, metadata !27, metadata !244, metadata !29, metadata !30, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!245 = metadata !{null, metadata !14, metadata !2, metadata !246, metadata !4, metadata !42, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!247 = metadata !{null, metadata !14, metadata !2, metadata !248, metadata !4, metadata !42, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!249 = metadata !{null, metadata !22, metadata !9, metadata !250, metadata !11, metadata !71, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!251 = metadata !{null, metadata !14, metadata !2, metadata !252, metadata !4, metadata !56, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!253 = metadata !{null, metadata !26, metadata !27, metadata !254, metadata !29, metadata !30, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!255 = metadata !{null, metadata !14, metadata !2, metadata !256, metadata !4, metadata !42, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!257 = metadata !{null, metadata !14, metadata !2, metadata !258, metadata !4, metadata !42, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!259 = metadata !{null, metadata !22, metadata !9, metadata !260, metadata !11, metadata !71, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!261 = metadata !{null, metadata !14, metadata !2, metadata !262, metadata !4, metadata !56, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!263 = metadata !{null, metadata !26, metadata !27, metadata !264, metadata !29, metadata !30, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!265 = metadata !{null, metadata !14, metadata !2, metadata !266, metadata !4, metadata !42, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!267 = metadata !{null, metadata !14, metadata !2, metadata !268, metadata !4, metadata !42, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!269 = metadata !{null, metadata !22, metadata !9, metadata !270, metadata !11, metadata !71, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!271 = metadata !{null, metadata !14, metadata !2, metadata !272, metadata !4, metadata !56, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!273 = metadata !{null, metadata !22, metadata !9, metadata !274, metadata !11, metadata !24, metadata !6}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!275 = metadata !{null, metadata !26, metadata !27, metadata !276, metadata !29, metadata !30, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!277 = metadata !{null, metadata !22, metadata !9, metadata !278, metadata !11, metadata !71, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!279 = metadata !{null, metadata !14, metadata !2, metadata !79, metadata !4, metadata !56, metadata !6}
!280 = metadata !{null, metadata !14, metadata !2, metadata !281, metadata !4, metadata !42, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!282 = metadata !{null, metadata !14, metadata !2, metadata !283, metadata !4, metadata !42, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!284 = metadata !{null, metadata !22, metadata !9, metadata !285, metadata !11, metadata !71, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!286 = metadata !{null, metadata !14, metadata !2, metadata !287, metadata !4, metadata !56, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!288 = metadata !{null, metadata !22, metadata !9, metadata !278, metadata !11, metadata !51, metadata !6}
!289 = metadata !{null, metadata !22, metadata !9, metadata !290, metadata !11, metadata !71, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!291 = metadata !{null, metadata !14, metadata !2, metadata !292, metadata !4, metadata !42, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!293 = metadata !{null, metadata !90, metadata !9, metadata !294, metadata !11, metadata !92, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!295 = metadata !{null, metadata !97, metadata !27, metadata !296, metadata !29, metadata !99, metadata !6}
!296 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!297 = metadata !{null, metadata !14, metadata !2, metadata !298, metadata !4, metadata !48, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!299 = metadata !{null, metadata !14, metadata !2, metadata !298, metadata !4, metadata !103, metadata !6}
!300 = metadata !{null, metadata !14, metadata !2, metadata !301, metadata !4, metadata !48, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!302 = metadata !{null, metadata !14, metadata !2, metadata !301, metadata !4, metadata !42, metadata !6}
!303 = metadata !{null, metadata !97, metadata !27, metadata !304, metadata !29, metadata !99, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!305 = metadata !{null, metadata !14, metadata !2, metadata !306, metadata !4, metadata !42, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!307 = metadata !{null, metadata !14, metadata !2, metadata !308, metadata !4, metadata !42, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!309 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !119, metadata !6}
!310 = metadata !{null, metadata !14, metadata !2, metadata !311, metadata !4, metadata !48, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!312 = metadata !{null, metadata !14, metadata !2, metadata !311, metadata !4, metadata !103, metadata !6}
!313 = metadata !{null, metadata !14, metadata !2, metadata !314, metadata !4, metadata !48, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!315 = metadata !{null, metadata !14, metadata !2, metadata !314, metadata !4, metadata !42, metadata !6}
!316 = metadata !{null, metadata !97, metadata !27, metadata !317, metadata !29, metadata !99, metadata !6}
!317 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!318 = metadata !{null, metadata !97, metadata !27, metadata !319, metadata !29, metadata !99, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!320 = metadata !{null, metadata !90, metadata !9, metadata !321, metadata !11, metadata !92, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!322 = metadata !{null, metadata !14, metadata !2, metadata !323, metadata !4, metadata !48, metadata !6}
!323 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!324 = metadata !{null, metadata !14, metadata !2, metadata !325, metadata !4, metadata !48, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!326 = metadata !{null, metadata !26, metadata !27, metadata !327, metadata !29, metadata !30, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!328 = metadata !{null, metadata !14, metadata !2, metadata !329, metadata !4, metadata !42, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!330 = metadata !{null, metadata !14, metadata !2, metadata !331, metadata !4, metadata !42, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!332 = metadata !{null, metadata !22, metadata !9, metadata !333, metadata !11, metadata !71, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!334 = metadata !{null, metadata !14, metadata !2, metadata !335, metadata !4, metadata !56, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!336 = metadata !{null, metadata !26, metadata !27, metadata !337, metadata !29, metadata !30, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!338 = metadata !{null, metadata !14, metadata !2, metadata !339, metadata !4, metadata !42, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!340 = metadata !{null, metadata !14, metadata !2, metadata !341, metadata !4, metadata !42, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!342 = metadata !{null, metadata !22, metadata !9, metadata !343, metadata !11, metadata !71, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!344 = metadata !{null, metadata !14, metadata !2, metadata !345, metadata !4, metadata !56, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!346 = metadata !{null, metadata !26, metadata !27, metadata !347, metadata !29, metadata !30, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!348 = metadata !{null, metadata !14, metadata !2, metadata !349, metadata !4, metadata !42, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!350 = metadata !{null, metadata !14, metadata !2, metadata !351, metadata !4, metadata !42, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!352 = metadata !{null, metadata !22, metadata !9, metadata !353, metadata !11, metadata !71, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!354 = metadata !{null, metadata !14, metadata !2, metadata !355, metadata !4, metadata !56, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!356 = metadata !{null, metadata !26, metadata !27, metadata !357, metadata !29, metadata !30, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!358 = metadata !{null, metadata !14, metadata !2, metadata !359, metadata !4, metadata !42, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!360 = metadata !{null, metadata !14, metadata !2, metadata !361, metadata !4, metadata !42, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!362 = metadata !{null, metadata !14, metadata !2, metadata !363, metadata !4, metadata !42, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!364 = metadata !{null, metadata !14, metadata !2, metadata !365, metadata !4, metadata !42, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!366 = metadata !{null, metadata !90, metadata !9, metadata !367, metadata !11, metadata !92, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!368 = metadata !{null, metadata !22, metadata !9, metadata !369, metadata !11, metadata !51, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!370 = metadata !{null, metadata !14, metadata !2, metadata !371, metadata !4, metadata !42, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!372 = metadata !{null, metadata !26, metadata !27, metadata !373, metadata !29, metadata !30, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!374 = metadata !{null, metadata !14, metadata !2, metadata !375, metadata !4, metadata !42, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!376 = metadata !{null, metadata !14, metadata !2, metadata !377, metadata !4, metadata !42, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!378 = metadata !{null, metadata !14, metadata !2, metadata !379, metadata !4, metadata !42, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!380 = metadata !{null, metadata !90, metadata !9, metadata !381, metadata !11, metadata !92, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!382 = metadata !{null, metadata !22, metadata !9, metadata !383, metadata !11, metadata !51, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!384 = metadata !{null, metadata !14, metadata !2, metadata !385, metadata !4, metadata !42, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!386 = metadata !{null, metadata !26, metadata !27, metadata !387, metadata !29, metadata !30, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!388 = metadata !{null, metadata !14, metadata !2, metadata !389, metadata !4, metadata !42, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!390 = metadata !{null, metadata !14, metadata !2, metadata !391, metadata !4, metadata !42, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!392 = metadata !{null, metadata !14, metadata !2, metadata !393, metadata !4, metadata !42, metadata !6}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!394 = metadata !{null, metadata !14, metadata !2, metadata !395, metadata !4, metadata !42, metadata !6}
!395 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!396 = metadata !{null, metadata !90, metadata !9, metadata !397, metadata !11, metadata !92, metadata !6}
!397 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!398 = metadata !{null, metadata !22, metadata !9, metadata !399, metadata !11, metadata !51, metadata !6}
!399 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!400 = metadata !{null, metadata !14, metadata !2, metadata !401, metadata !4, metadata !42, metadata !6}
!401 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!402 = metadata !{null, metadata !26, metadata !27, metadata !403, metadata !29, metadata !30, metadata !6}
!403 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!404 = metadata !{null, metadata !14, metadata !2, metadata !405, metadata !4, metadata !42, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!406 = metadata !{null, metadata !14, metadata !2, metadata !407, metadata !4, metadata !42, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!408 = metadata !{null, metadata !14, metadata !2, metadata !409, metadata !4, metadata !42, metadata !6}
!409 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!410 = metadata !{null, metadata !14, metadata !2, metadata !411, metadata !4, metadata !42, metadata !6}
!411 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!412 = metadata !{null, metadata !90, metadata !9, metadata !413, metadata !11, metadata !92, metadata !6}
!413 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!414 = metadata !{null, metadata !22, metadata !9, metadata !415, metadata !11, metadata !51, metadata !6}
!415 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!416 = metadata !{null, metadata !14, metadata !2, metadata !417, metadata !4, metadata !42, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!418 = metadata !{null, metadata !26, metadata !27, metadata !419, metadata !29, metadata !30, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!420 = metadata !{null, metadata !26, metadata !27, metadata !421, metadata !29, metadata !30, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!422 = metadata !{null, metadata !26, metadata !27, metadata !423, metadata !29, metadata !30, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!424 = metadata !{null, metadata !26, metadata !27, metadata !425, metadata !29, metadata !30, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!426 = metadata !{null, metadata !26, metadata !27, metadata !427, metadata !29, metadata !30, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!428 = metadata !{null, metadata !26, metadata !27, metadata !429, metadata !29, metadata !30, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!430 = metadata !{null, metadata !26, metadata !27, metadata !431, metadata !29, metadata !30, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!432 = metadata !{null, metadata !26, metadata !27, metadata !433, metadata !29, metadata !30, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!434 = metadata !{null, metadata !1, metadata !2, metadata !435, metadata !436, metadata !437, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!436 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!437 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!438 = metadata !{null, metadata !14, metadata !2, metadata !20, metadata !4, metadata !110, metadata !6}
!439 = metadata !{null, metadata !14, metadata !2, metadata !20, metadata !4, metadata !440, metadata !6}
!440 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!441 = metadata !{null, metadata !22, metadata !9, metadata !442, metadata !11, metadata !71, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!443 = metadata !{null, metadata !14, metadata !2, metadata !444, metadata !4, metadata !42, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!445 = metadata !{null, metadata !14, metadata !2, metadata !446, metadata !4, metadata !42, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!447 = metadata !{null, metadata !14, metadata !2, metadata !448, metadata !4, metadata !56, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!449 = metadata !{null, metadata !14, metadata !2, metadata !450, metadata !4, metadata !56, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!451 = metadata !{null, metadata !14, metadata !2, metadata !20, metadata !4, metadata !452, metadata !6}
!452 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!453 = metadata !{null, metadata !14, metadata !2, metadata !454, metadata !4, metadata !42, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!455 = metadata !{null, metadata !14, metadata !2, metadata !456, metadata !4, metadata !42, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !90, metadata !9, metadata !458, metadata !459, metadata !460, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!459 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!460 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!461 = metadata !{metadata !462, [1 x i32]* @llvm_global_ctors_0}
!462 = metadata !{metadata !463}
!463 = metadata !{i32 0, i32 31, metadata !464}
!464 = metadata !{metadata !465}
!465 = metadata !{metadata !"llvm.global_ctors.0", metadata !466, metadata !"", i32 0, i32 31}
!466 = metadata !{metadata !467}
!467 = metadata !{i32 0, i32 0, i32 1}
!468 = metadata !{metadata !469}
!469 = metadata !{i32 0, i32 31, metadata !470}
!470 = metadata !{metadata !471}
!471 = metadata !{metadata !"graph", metadata !472, metadata !"float", i32 0, i32 31}
!472 = metadata !{metadata !473, metadata !473}
!473 = metadata !{i32 0, i32 9, i32 1}
!474 = metadata !{metadata !475}
!475 = metadata !{i32 0, i32 63, metadata !476}
!476 = metadata !{metadata !477}
!477 = metadata !{metadata !"hwdist", metadata !478, metadata !"long int", i32 0, i32 63}
!478 = metadata !{metadata !473}
