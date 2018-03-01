; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selection_sort_str = internal unnamed_addr constant [15 x i8] c"selection_sort\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
define void @selection_sort([10 x float]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x float]* %arr) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @selection_sort_str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x float]* %arr}, i64 0, metadata !19), !dbg !31 ; [debug line = 11:27] [debug variable = arr]
  br label %1, !dbg !32                           ; [debug line = 15:20]

; <label>:1                                       ; preds = %3, %0
  %min_idx = phi i4 [ 0, %0 ], [ %i, %3 ]         ; [#uses=4 type=i4]
  %min_idx_1_cast1 = zext i4 %min_idx to i8, !dbg !35 ; [#uses=2 type=i8] [debug line = 19:5]
  call void @llvm.dbg.value(metadata !{i4 %min_idx}, i64 0, metadata !37), !dbg !35 ; [debug line = 19:5] [debug variable = min_idx]
  %exitcond1 = icmp eq i4 %min_idx, -7, !dbg !32  ; [#uses=1 type=i1] [debug line = 15:20]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  %i = add i4 %min_idx, 1, !dbg !40               ; [#uses=1 type=i4] [debug line = 17:8]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !32 ; [debug line = 15:20]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !41                  ; [debug line = 21:24]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %index_1_assign = phi i8 [ %j, %2 ], [ %min_idx_1_cast1, %.preheader.preheader ] ; [#uses=3 type=i8]
  %j_0_in = phi i8 [ %j_2, %2 ], [ %min_idx_1_cast1, %.preheader.preheader ] ; [#uses=2 type=i8]
  %j_2 = add i8 %j_0_in, 1, !dbg !41              ; [#uses=3 type=i8] [debug line = 21:24]
  call void @llvm.dbg.value(metadata !{i8 %j_2}, i64 0, metadata !43), !dbg !41 ; [debug line = 21:24] [debug variable = j]
  %exitcond = icmp eq i8 %j_0_in, 9, !dbg !41     ; [#uses=1 type=i1] [debug line = 21:24]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %2, !dbg !41   ; [debug line = 21:24]

; <label>:2                                       ; preds = %.preheader
  %tmp = sext i8 %j_2 to i64, !dbg !44            ; [#uses=1 type=i64] [debug line = 24:7]
  %arr_addr = getelementptr [10 x float]* %arr, i64 0, i64 %tmp, !dbg !44 ; [#uses=1 type=float*] [debug line = 24:7]
  %arr_load = load float* %arr_addr, align 4, !dbg !44 ; [#uses=2 type=float] [debug line = 24:7]
  %tmp_2 = sext i8 %index_1_assign to i64, !dbg !44 ; [#uses=1 type=i64] [debug line = 24:7]
  %arr_addr_2 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_2, !dbg !44 ; [#uses=1 type=float*] [debug line = 24:7]
  %arr_load_1 = load float* %arr_addr_2, align 4, !dbg !44 ; [#uses=2 type=float] [debug line = 24:7]
  %arr_load_to_int = bitcast float %arr_load to i32 ; [#uses=2 type=i32]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %arr_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_3 = trunc i32 %arr_load_to_int to i23      ; [#uses=1 type=i23]
  %arr_load_1_to_int = bitcast float %arr_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %arr_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_5 = trunc i32 %arr_load_1_to_int to i23    ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_3, 0                 ; [#uses=1 type=i1]
  %tmp_6 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs2 = icmp ne i8 %tmp_4, -1                ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_5, 0                ; [#uses=1 type=i1]
  %tmp_7 = or i1 %notrhs3, %notlhs2               ; [#uses=1 type=i1]
  %tmp_8 = and i1 %tmp_6, %tmp_7                  ; [#uses=1 type=i1]
  %tmp_9 = fcmp olt float %arr_load, %arr_load_1, !dbg !44 ; [#uses=1 type=i1] [debug line = 24:7]
  %tmp_s = and i1 %tmp_8, %tmp_9, !dbg !44        ; [#uses=1 type=i1] [debug line = 24:7]
  call void @llvm.dbg.value(metadata !{i8 %j_2}, i64 0, metadata !37), !dbg !45 ; [debug line = 25:9] [debug variable = min_idx]
  %j = select i1 %tmp_s, i8 %j_2, i8 %index_1_assign, !dbg !44 ; [#uses=1 type=i8] [debug line = 24:7]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !43), !dbg !44 ; [debug line = 24:7] [debug variable = j]
  br label %.preheader, !dbg !46                  ; [debug line = 23:10]

; <label>:3                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i8 %index_1_assign}, i64 0, metadata !47) nounwind, !dbg !52 ; [debug line = 4:18@27:7] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i4 %min_idx}, i64 0, metadata !53) nounwind, !dbg !54 ; [debug line = 4:34@27:7] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x float]* %arr}, i64 0, metadata !55) nounwind, !dbg !56 ; [debug line = 4:49@27:7] [debug variable = arr]
  %tmp_i = sext i8 %index_1_assign to i64, !dbg !57 ; [#uses=1 type=i64] [debug line = 6:25@27:7]
  %arr_addr_1 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_i, !dbg !57 ; [#uses=2 type=float*] [debug line = 6:25@27:7]
  %b = load float* %arr_addr_1, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 6:25@27:7]
  call void @llvm.dbg.value(metadata !{float %b}, i64 0, metadata !59) nounwind, !dbg !57 ; [debug line = 6:25@27:7] [debug variable = b]
  %tmp_1_i = zext i4 %min_idx to i64, !dbg !60    ; [#uses=1 type=i64] [debug line = 7:3@27:7]
  %arr_addr_3 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_1_i, !dbg !60 ; [#uses=2 type=float*] [debug line = 7:3@27:7]
  %arr_load_3 = load float* %arr_addr_3, align 4, !dbg !60 ; [#uses=1 type=float] [debug line = 7:3@27:7]
  store float %arr_load_3, float* %arr_addr_1, align 4, !dbg !60 ; [debug line = 7:3@27:7]
  store float %b, float* %arr_addr_3, align 4, !dbg !61 ; [debug line = 8:3@27:7]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !62), !dbg !40 ; [debug line = 17:8] [debug variable = i]
  br label %1, !dbg !40                           ; [debug line = 17:8]

; <label>:4                                       ; preds = %1
  ret void, !dbg !63                              ; [debug line = 29:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_5
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"arr", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
!19 = metadata !{i32 786689, metadata !20, metadata !"arr", null, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"selection_sort", metadata !"selection_sort", metadata !"", metadata !21, i32 11, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 12} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"RTL_selection_sort.prj/solution1/selection_sort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !25, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 11, i32 27, metadata !20, null}
!32 = metadata !{i32 15, i32 20, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 15, i32 3, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !20, i32 12, i32 1, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 19, i32 5, metadata !36, null}
!36 = metadata !{i32 786443, metadata !33, i32 18, i32 3, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786688, metadata !34, metadata !"min_idx", metadata !21, i32 13, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 786454, null, metadata !"int8_t", metadata !21, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 17, i32 8, metadata !33, null}
!41 = metadata !{i32 21, i32 24, metadata !42, null}
!42 = metadata !{i32 786443, metadata !36, i32 21, i32 5, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786688, metadata !42, metadata !"j", metadata !21, i32 21, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 24, i32 7, metadata !42, null}
!45 = metadata !{i32 25, i32 9, metadata !42, null}
!46 = metadata !{i32 23, i32 10, metadata !42, null}
!47 = metadata !{i32 786689, metadata !48, metadata !"index_1", metadata !21, i32 16777220, metadata !38, i32 0, metadata !51} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786478, i32 0, metadata !21, metadata !"swap", metadata !"swap", metadata !"", metadata !21, i32 4, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 5} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !38, metadata !38, metadata !24}
!51 = metadata !{i32 27, i32 7, metadata !36, null}
!52 = metadata !{i32 4, i32 18, metadata !48, metadata !51}
!53 = metadata !{i32 786689, metadata !48, metadata !"index_2", metadata !21, i32 33554436, metadata !38, i32 0, metadata !51} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 4, i32 34, metadata !48, metadata !51}
!55 = metadata !{i32 786689, metadata !48, metadata !"arr", null, i32 4, metadata !28, i32 0, metadata !51} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 4, i32 49, metadata !48, metadata !51}
!57 = metadata !{i32 6, i32 25, metadata !58, metadata !51}
!58 = metadata !{i32 786443, metadata !48, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786688, metadata !58, metadata !"b", metadata !21, i32 6, metadata !25, i32 0, metadata !51} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 7, i32 3, metadata !58, metadata !51}
!61 = metadata !{i32 8, i32 3, metadata !58, metadata !51}
!62 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !21, i32 15, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 29, i32 1, metadata !34, null}
