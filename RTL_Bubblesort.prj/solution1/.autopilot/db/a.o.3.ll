; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bubble_sort_str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00" ; [#uses=1 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=3 type=[5 x i8]*]

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bubble_sort([10 x i64]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %arr) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort_str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !19), !dbg !31 ; [debug line = 11:23] [debug variable = arr]
  br label %1, !dbg !32                           ; [debug line = 19:6]

; <label>:1                                       ; preds = %7, %0
  %j = phi i4 [ 0, %0 ], [ %j_1, %7 ]             ; [#uses=2 type=i4]
  %lastSwap = phi i8 [ 9, %0 ], [ %lastSwap_1, %7 ] ; [#uses=1 type=i8]
  %tmp = icmp ult i4 %j, -6, !dbg !32             ; [#uses=1 type=i1] [debug line = 19:6]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 10, i64 5)
  %j_1 = add i4 %j, 1, !dbg !35                   ; [#uses=1 type=i4] [debug line = 19:21]
  br i1 %tmp, label %2, label %.loopexit, !dbg !32 ; [debug line = 19:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str) nounwind, !dbg !36 ; [debug line = 20:3]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str) nounwind, !dbg !36 ; [#uses=1 type=i32] [debug line = 20:3]
  br label %3, !dbg !38                           ; [debug line = 24:7]

; <label>:3                                       ; preds = %._crit_edge, %2
  %lastSwap_1 = phi i8 [ -1, %2 ], [ %currentSwap_1, %._crit_edge ] ; [#uses=2 type=i8]
  %is_sorted = phi i2 [ 1, %2 ], [ %is_sorted_1, %._crit_edge ] ; [#uses=2 type=i2]
  %currentSwap = phi i7 [ 0, %2 ], [ %i, %._crit_edge ] ; [#uses=3 type=i7]
  %index_1_assign_cast = zext i7 %currentSwap to i8, !dbg !38 ; [#uses=2 type=i8] [debug line = 24:7]
  %tmp_2 = icmp slt i8 %index_1_assign_cast, %lastSwap, !dbg !38 ; [#uses=1 type=i1] [debug line = 24:7]
  %i = add i7 %currentSwap, 1, !dbg !40           ; [#uses=2 type=i7] [debug line = 26:4]
  br i1 %tmp_2, label %4, label %6, !dbg !38      ; [debug line = 24:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str1) nounwind, !dbg !42 ; [debug line = 25:4]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str1) nounwind, !dbg !42 ; [#uses=1 type=i32] [debug line = 25:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 0, i32 5, [1 x i8]* @p_str2) nounwind, !dbg !43 ; [debug line = 26:1]
  %tmp_3 = zext i7 %currentSwap to i64, !dbg !40  ; [#uses=1 type=i64] [debug line = 26:4]
  %arr_addr = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_3, !dbg !40 ; [#uses=2 type=i64*] [debug line = 26:4]
  %b = load i64* %arr_addr, align 8, !dbg !40     ; [#uses=2 type=i64] [debug line = 26:4]
  %tmp_6 = zext i7 %i to i64, !dbg !40            ; [#uses=1 type=i64] [debug line = 26:4]
  %arr_addr_1 = getelementptr [10 x i64]* %arr, i64 0, i64 %tmp_6, !dbg !40 ; [#uses=2 type=i64*] [debug line = 26:4]
  %arr_load_1 = load i64* %arr_addr_1, align 8, !dbg !40 ; [#uses=2 type=i64] [debug line = 26:4]
  %tmp_7 = icmp sgt i64 %b, %arr_load_1, !dbg !40 ; [#uses=1 type=i1] [debug line = 26:4]
  br i1 %tmp_7, label %5, label %._crit_edge, !dbg !40 ; [debug line = 26:4]

; <label>:5                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{i7 %currentSwap}, i64 0, metadata !44) nounwind, !dbg !52 ; [debug line = 4:18@28:5] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i7 %i}, i64 0, metadata !53) nounwind, !dbg !54 ; [debug line = 4:34@28:5] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %arr}, i64 0, metadata !55) nounwind, !dbg !56 ; [debug line = 4:48@28:5] [debug variable = arr]
  call void @llvm.dbg.value(metadata !{i64 %b}, i64 0, metadata !57) nounwind, !dbg !59 ; [debug line = 6:23@28:5] [debug variable = b]
  store i64 %arr_load_1, i64* %arr_addr, align 8, !dbg !60 ; [debug line = 7:2@28:5]
  store i64 %b, i64* %arr_addr_1, align 8, !dbg !61 ; [debug line = 8:2@28:5]
  call void @llvm.dbg.value(metadata !{i7 %currentSwap}, i64 0, metadata !62), !dbg !63 ; [debug line = 30:5] [debug variable = currentSwap]
  br label %._crit_edge, !dbg !64                 ; [debug line = 31:4]

._crit_edge:                                      ; preds = %5, %4
  %currentSwap_1 = phi i8 [ %index_1_assign_cast, %5 ], [ %lastSwap_1, %4 ] ; [#uses=1 type=i8]
  %is_sorted_1 = phi i2 [ 0, %5 ], [ %is_sorted, %4 ] ; [#uses=1 type=i2]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str1, i32 %tmp_s) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 32:3]
  call void @llvm.dbg.value(metadata !{i7 %i}, i64 0, metadata !66), !dbg !67 ; [debug line = 24:28] [debug variable = i]
  br label %3, !dbg !67                           ; [debug line = 24:28]

; <label>:6                                       ; preds = %3
  %tmp_8 = icmp eq i2 %is_sorted, 0, !dbg !68     ; [#uses=1 type=i1] [debug line = 34:3]
  br i1 %tmp_8, label %7, label %.loopexit, !dbg !68 ; [debug line = 34:3]

; <label>:7                                       ; preds = %6
  call void @llvm.dbg.value(metadata !{i8 %lastSwap_1}, i64 0, metadata !69), !dbg !70 ; [debug line = 35:3] [debug variable = lastSwap]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str, i32 %tmp_1) nounwind, !dbg !71 ; [#uses=0 type=i32] [debug line = 36:2]
  call void @llvm.dbg.value(metadata !{i4 %j_1}, i64 0, metadata !72), !dbg !35 ; [debug line = 19:21] [debug variable = j]
  br label %1, !dbg !35                           ; [debug line = 19:21]

.loopexit:                                        ; preds = %6, %1
  ret void, !dbg !73                              ; [debug line = 37:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"long*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"arr", metadata !17, metadata !"long int", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
!19 = metadata !{i32 786689, metadata !20, metadata !"arr", null, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"", metadata !21, i32 11, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 12} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"RTL_Bubblesort.prj/solution1/bubblesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !25, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 11, i32 23, metadata !20, null}
!32 = metadata !{i32 19, i32 6, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 19, i32 2, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !20, i32 12, i32 1, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 19, i32 21, metadata !33, null}
!36 = metadata !{i32 20, i32 3, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 20, i32 2, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 24, i32 7, metadata !39, null}
!39 = metadata !{i32 786443, metadata !37, i32 24, i32 3, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 26, i32 4, metadata !41, null}
!41 = metadata !{i32 786443, metadata !39, i32 25, i32 3, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 25, i32 4, metadata !41, null}
!43 = metadata !{i32 26, i32 1, metadata !41, null}
!44 = metadata !{i32 786689, metadata !45, metadata !"index_1", metadata !21, i32 16777220, metadata !48, i32 0, metadata !50} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786478, i32 0, metadata !21, metadata !"swap", metadata !"swap", metadata !"", metadata !21, i32 4, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 5} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !48, metadata !48, metadata !24}
!48 = metadata !{i32 786454, null, metadata !"int8_t", metadata !21, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 28, i32 5, metadata !51, null}
!51 = metadata !{i32 786443, metadata !41, i32 27, i32 4, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 4, i32 18, metadata !45, metadata !50}
!53 = metadata !{i32 786689, metadata !45, metadata !"index_2", metadata !21, i32 33554436, metadata !48, i32 0, metadata !50} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 4, i32 34, metadata !45, metadata !50}
!55 = metadata !{i32 786689, metadata !45, metadata !"arr", null, i32 4, metadata !28, i32 0, metadata !50} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 4, i32 48, metadata !45, metadata !50}
!57 = metadata !{i32 786688, metadata !58, metadata !"b", metadata !21, i32 6, metadata !25, i32 0, metadata !50} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786443, metadata !45, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 6, i32 23, metadata !58, metadata !50}
!60 = metadata !{i32 7, i32 2, metadata !58, metadata !50}
!61 = metadata !{i32 8, i32 2, metadata !58, metadata !50}
!62 = metadata !{i32 786688, metadata !34, metadata !"currentSwap", metadata !21, i32 16, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 30, i32 5, metadata !51, null}
!64 = metadata !{i32 31, i32 4, metadata !51, null}
!65 = metadata !{i32 32, i32 3, metadata !41, null}
!66 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !21, i32 13, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 24, i32 28, metadata !39, null}
!68 = metadata !{i32 34, i32 3, metadata !37, null}
!69 = metadata !{i32 786688, metadata !34, metadata !"lastSwap", metadata !21, i32 17, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 35, i32 3, metadata !37, null}
!71 = metadata !{i32 36, i32 2, metadata !37, null}
!72 = metadata !{i32 786688, metadata !34, metadata !"j", metadata !21, i32 14, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 37, i32 1, metadata !34, null}
