; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floyd_warshall_str = internal unnamed_addr constant [15 x i8] c"floyd_warshall\00" ; [#uses=1 type=[15 x i8]*]
@OUTER_LOOP_MIDDLE_LO = internal unnamed_addr constant [34 x i8] c"OUTER_LOOP_MIDDLE_LOOP_INNER_LOOP\00" ; [#uses=1 type=[34 x i8]*]
@MIDDLE_LOOP_INNER_LO = internal unnamed_addr constant [23 x i8] c"MIDDLE_LOOP_INNER_LOOP\00" ; [#uses=1 type=[23 x i8]*]
@p_str3 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @floyd_warshall([100 x i32]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @floyd_warshall_str) nounwind
  call void @llvm.dbg.value(metadata !{[100 x i32]* %A}, i64 0, metadata !13), !dbg !29 ; [debug line = 7:33] [debug variable = A]
  br label %1, !dbg !30                           ; [debug line = 12:6]

; <label>:1                                       ; preds = %._crit_edge, %0
  %indvar_flatten1 = phi i10 [ 0, %0 ], [ %indvar_flatten_next1, %._crit_edge ] ; [#uses=2 type=i10]
  %h = phi i4 [ 0, %0 ], [ %tmp_1_mid2_v, %._crit_edge ] ; [#uses=2 type=i4]
  %indvar_flatten = phi i8 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ] ; [#uses=2 type=i8]
  %i = phi i4 [ 0, %0 ], [ %tmp_4_mid2, %._crit_edge ] ; [#uses=1 type=i4]
  %j = phi i4 [ 0, %0 ], [ %j_1, %._crit_edge ]   ; [#uses=2 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %h_1}, i64 0, metadata !33), !dbg !37 ; [debug line = 12:21] [debug variable = h]
  %exitcond_flatten1 = icmp eq i10 %indvar_flatten1, -24 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i10 %indvar_flatten1, 1 ; [#uses=1 type=i10]
  br i1 %exitcond_flatten1, label %3, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store i32 %tmp_8, i32* %A_addr_2, align 4, !dbg !38 ; [debug line = 18:6]
  br label %._crit_edge, !dbg !38                 ; [debug line = 18:6]

._crit_edge:                                      ; preds = %.reset7, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_s) nounwind, !dbg !44 ; [#uses=0 type=i32] [debug line = 19:4]
  %j_1 = add i4 %j_mid2, 1, !dbg !45              ; [#uses=1 type=i4] [debug line = 16:23]
  call void @llvm.dbg.value(metadata !{i4 %j_1}, i64 0, metadata !46), !dbg !45 ; [debug line = 16:23] [debug variable = j]
  %indvar_flatten_op = add i8 %indvar_flatten, 1  ; [#uses=1 type=i8]
  %indvar_flatten_next = select i1 %exitcond_flatten9, i8 1, i8 %indvar_flatten_op ; [#uses=1 type=i8]
  br label %1

.reset7:                                          ; preds = %1
  %h_1 = add i4 %h, 1, !dbg !37                   ; [#uses=1 type=i4] [debug line = 12:21]
  call void @llvm.dbg.value(metadata !{i4 %h_1}, i64 0, metadata !33), !dbg !37 ; [debug line = 12:21] [debug variable = h]
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @OUTER_LOOP_MIDDLE_LO)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1000, i64 1000, i64 1000) nounwind ; [#uses=0 type=i32]
  %exitcond_flatten9 = icmp eq i8 %indvar_flatten, 100 ; [#uses=5 type=i1]
  %i_mid = select i1 %exitcond_flatten9, i4 0, i4 %i ; [#uses=2 type=i4]
  %tmp_1_mid2_v = select i1 %exitcond_flatten9, i4 %h_1, i4 %h, !dbg !47 ; [#uses=4 type=i4] [debug line = 17:5]
  %tmp_1_mid2_cast = zext i4 %tmp_1_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_mid2_v, i3 0) ; [#uses=1 type=i7]
  %p_shl2_cast = zext i7 %tmp to i8               ; [#uses=1 type=i8]
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_1_mid2_v, i1 false) ; [#uses=1 type=i5]
  %p_shl3_cast = zext i5 %tmp_1 to i8, !dbg !47   ; [#uses=1 type=i8] [debug line = 17:5]
  %tmp_2 = add i8 %p_shl2_cast, %p_shl3_cast, !dbg !47 ; [#uses=1 type=i8] [debug line = 17:5]
  %not_exitcond_flatten = xor i1 %exitcond_flatten9, true, !dbg !48 ; [#uses=1 type=i1] [debug line = 16:8]
  %tmp_4 = icmp eq i4 %j, -6, !dbg !48            ; [#uses=1 type=i1] [debug line = 16:8]
  %tmp_5_mid = and i1 %tmp_4, %not_exitcond_flatten, !dbg !48 ; [#uses=2 type=i1] [debug line = 16:8]
  %i_1 = add i4 %i_mid, 1, !dbg !49               ; [#uses=1 type=i4] [debug line = 14:22]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !50), !dbg !49 ; [debug line = 14:22] [debug variable = i]
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @MIDDLE_LOOP_INNER_LO)
  %tmp_3 = or i1 %tmp_5_mid, %exitcond_flatten9   ; [#uses=1 type=i1]
  %j_mid2 = select i1 %tmp_3, i4 0, i4 %j         ; [#uses=2 type=i4]
  %tmp_4_mid2 = select i1 %tmp_5_mid, i4 %i_1, i4 %i_mid, !dbg !47 ; [#uses=3 type=i4] [debug line = 17:5]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2, i3 0) ; [#uses=1 type=i7]
  %p_shl_cast = zext i7 %tmp_5 to i8              ; [#uses=1 type=i8]
  %tmp_6 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_4_mid2, i1 false) ; [#uses=1 type=i5]
  %p_shl1_cast = zext i5 %tmp_6 to i8, !dbg !47   ; [#uses=1 type=i8] [debug line = 17:5]
  %tmp_7 = add i8 %p_shl_cast, %p_shl1_cast, !dbg !47 ; [#uses=2 type=i8] [debug line = 17:5]
  %tmp_10 = add i8 %tmp_1_mid2_cast, %tmp_7, !dbg !47 ; [#uses=1 type=i8] [debug line = 17:5]
  %tmp_12_cast = zext i8 %tmp_10 to i64, !dbg !47 ; [#uses=1 type=i64] [debug line = 17:5]
  %A_addr = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_12_cast, !dbg !47 ; [#uses=1 type=i32*] [debug line = 17:5]
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind, !dbg !51 ; [debug line = 16:29]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 16:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !52 ; [debug line = 17:1]
  %A_load = load i32* %A_addr, align 4, !dbg !47  ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp_7_cast = zext i4 %j_mid2 to i8, !dbg !47   ; [#uses=2 type=i8] [debug line = 17:5]
  %tmp_11 = add i8 %tmp_7_cast, %tmp_2, !dbg !47  ; [#uses=1 type=i8] [debug line = 17:5]
  %tmp_13_cast = zext i8 %tmp_11 to i64, !dbg !47 ; [#uses=1 type=i64] [debug line = 17:5]
  %A_addr_1 = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_13_cast, !dbg !47 ; [#uses=1 type=i32*] [debug line = 17:5]
  %tmp_12 = add i8 %tmp_7_cast, %tmp_7, !dbg !47  ; [#uses=1 type=i8] [debug line = 17:5]
  %tmp_14_cast = zext i8 %tmp_12 to i64, !dbg !47 ; [#uses=1 type=i64] [debug line = 17:5]
  %A_addr_2 = getelementptr [100 x i32]* %A, i64 0, i64 %tmp_14_cast, !dbg !47 ; [#uses=2 type=i32*] [debug line = 17:5]
  %A_load_1 = load i32* %A_addr_1, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp_8 = add i32 %A_load_1, %A_load, !dbg !47   ; [#uses=2 type=i32] [debug line = 17:5]
  %A_load_2 = load i32* %A_addr_2, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp_9 = icmp ult i32 %tmp_8, %A_load_2, !dbg !47 ; [#uses=1 type=i1] [debug line = 17:5]
  br i1 %tmp_9, label %2, label %._crit_edge, !dbg !47 ; [debug line = 17:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !53                              ; [debug line = 22:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_3 = zext i3 %1 to i7                     ; [#uses=1 type=i7]
  %empty_4 = shl i7 %empty, 3                     ; [#uses=1 type=i7]
  %empty_5 = or i7 %empty_4, %empty_3             ; [#uses=1 type=i7]
  ret i7 %empty_5
}

; [#uses=2]
define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5                       ; [#uses=1 type=i5]
  %empty_6 = zext i1 %1 to i5                     ; [#uses=1 type=i5]
  %empty_7 = shl i5 %empty, 1                     ; [#uses=1 type=i5]
  %empty_8 = or i5 %empty_7, %empty_6             ; [#uses=1 type=i5]
  ret i5 %empty_8
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE [10]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"A"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"A", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 9, i32 1}
!13 = metadata !{i32 786689, metadata !14, metadata !"A", null, i32 7, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"floyd_warshall", metadata !"floyd_warshall", metadata !"", metadata !15, i32 7, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !25, i32 7} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"floyd_warshall.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !20, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !15, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !15, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !20, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !24, metadata !24}
!29 = metadata !{i32 7, i32 33, metadata !14, null}
!30 = metadata !{i32 12, i32 6, metadata !31, null}
!31 = metadata !{i32 786443, metadata !32, i32 12, i32 2, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 786443, metadata !14, i32 7, i32 44, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 786688, metadata !32, metadata !"h", metadata !15, i32 9, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !15, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !15, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 12, i32 21, metadata !31, null}
!38 = metadata !{i32 18, i32 6, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 16, i32 28, metadata !15, i32 6} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !41, i32 16, i32 4, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 786443, metadata !42, i32 14, i32 27, metadata !15, i32 4} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 14, i32 3, metadata !15, i32 3} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !31, i32 12, i32 26, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 19, i32 4, metadata !39, null}
!45 = metadata !{i32 16, i32 23, metadata !40, null}
!46 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !15, i32 9, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 17, i32 5, metadata !39, null}
!48 = metadata !{i32 16, i32 8, metadata !40, null}
!49 = metadata !{i32 14, i32 22, metadata !42, null}
!50 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !15, i32 9, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 16, i32 29, metadata !39, null}
!52 = metadata !{i32 17, i32 1, metadata !39, null}
!53 = metadata !{i32 22, i32 1, metadata !32, null}
