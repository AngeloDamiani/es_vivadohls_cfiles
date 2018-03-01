; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bubble_sort.str = internal unnamed_addr constant [12 x i8] c"bubble_sort\00" ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=1]
define internal fastcc void @swap(i8 signext %index_1, i8 signext %index_2, i64* %arr) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %index_1}, i64 0, metadata !31), !dbg !32 ; [debug line = 4:18] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i8 %index_2}, i64 0, metadata !33), !dbg !34 ; [debug line = 4:34] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !35), !dbg !36 ; [debug line = 4:48] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !37 ; [debug line = 5:2]
  %tmp = sext i8 %index_1 to i64, !dbg !39        ; [#uses=1 type=i64] [debug line = 6:23]
  %arr.addr = getelementptr inbounds i64* %arr, i64 %tmp, !dbg !39 ; [#uses=2 type=i64*] [debug line = 6:23]
  %b = load i64* %arr.addr, align 8, !dbg !39     ; [#uses=2 type=i64] [debug line = 6:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %b) nounwind
  call void @llvm.dbg.value(metadata !{i64 %b}, i64 0, metadata !40), !dbg !39 ; [debug line = 6:23] [debug variable = b]
  %tmp.1 = sext i8 %index_2 to i64, !dbg !41      ; [#uses=1 type=i64] [debug line = 7:2]
  %arr.addr.1 = getelementptr inbounds i64* %arr, i64 %tmp.1, !dbg !41 ; [#uses=2 type=i64*] [debug line = 7:2]
  %arr.load = load i64* %arr.addr.1, align 8, !dbg !41 ; [#uses=2 type=i64] [debug line = 7:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  store i64 %arr.load, i64* %arr.addr, align 8, !dbg !41 ; [debug line = 7:2]
  store i64 %b, i64* %arr.addr.1, align 8, !dbg !42 ; [debug line = 8:2]
  ret void, !dbg !43                              ; [debug line = 9:1]
}

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @bubble_sort(i64* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @bubble_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{i64* %arr}, i64 0, metadata !44), !dbg !45 ; [debug line = 11:23] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %arr, i32 10) nounwind, !dbg !46 ; [debug line = 12:2]
  br label %1, !dbg !48                           ; [debug line = 19:6]

; <label>:1                                       ; preds = %7, %0
  %j = phi i8 [ 0, %0 ], [ %j.1, %7 ]             ; [#uses=2 type=i8]
  %lastSwap = phi i8 [ 9, %0 ], [ %currentSwap.0.lcssa, %7 ] ; [#uses=1 type=i8]
  %tmp = icmp slt i8 %j, 10, !dbg !48             ; [#uses=1 type=i1] [debug line = 19:6]
  br i1 %tmp, label %2, label %.loopexit, !dbg !48 ; [debug line = 19:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !50 ; [debug line = 20:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 20:3]
  br label %3, !dbg !52                           ; [debug line = 24:7]

; <label>:3                                       ; preds = %._crit_edge, %2
  %lastSwap.1 = phi i8 [ -1, %2 ], [ %currentSwap.1, %._crit_edge ] ; [#uses=2 type=i8]
  %is_sorted = phi i8 [ 1, %2 ], [ %is_sorted.1, %._crit_edge ] ; [#uses=2 type=i8]
  %currentSwap.2 = phi i8 [ 0, %2 ], [ %i, %._crit_edge ] ; [#uses=7 type=i8]
  %tmp.2 = icmp slt i8 %currentSwap.2, %lastSwap, !dbg !52 ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %tmp.2, label %4, label %6, !dbg !52      ; [debug line = 24:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 25:4]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 25:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 0, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !56 ; [debug line = 26:1]
  %tmp.3 = sext i8 %currentSwap.2 to i64, !dbg !57 ; [#uses=1 type=i64] [debug line = 26:4]
  %arr.addr = getelementptr inbounds i64* %arr, i64 %tmp.3, !dbg !57 ; [#uses=1 type=i64*] [debug line = 26:4]
  %arr.load = load i64* %arr.addr, align 8, !dbg !57 ; [#uses=2 type=i64] [debug line = 26:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %tmp.4 = sext i8 %currentSwap.2 to i32, !dbg !57 ; [#uses=1 type=i32] [debug line = 26:4]
  %tmp.5 = add nsw i32 %tmp.4, 1, !dbg !57        ; [#uses=1 type=i32] [debug line = 26:4]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !57       ; [#uses=1 type=i64] [debug line = 26:4]
  %arr.addr.2 = getelementptr inbounds i64* %arr, i64 %tmp.6, !dbg !57 ; [#uses=1 type=i64*] [debug line = 26:4]
  %arr.load.1 = load i64* %arr.addr.2, align 8, !dbg !57 ; [#uses=2 type=i64] [debug line = 26:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %tmp.7 = icmp sgt i64 %arr.load, %arr.load.1, !dbg !57 ; [#uses=1 type=i1] [debug line = 26:4]
  br i1 %tmp.7, label %5, label %._crit_edge, !dbg !57 ; [debug line = 26:4]

; <label>:5                                       ; preds = %4
  %tmp.9 = add i8 %currentSwap.2, 1, !dbg !58     ; [#uses=1 type=i8] [debug line = 28:5]
  call fastcc void @swap(i8 signext %currentSwap.2, i8 signext %tmp.9, i64* %arr), !dbg !58 ; [debug line = 28:5]
  call void @llvm.dbg.value(metadata !{i8 %currentSwap.2}, i64 0, metadata !60), !dbg !61 ; [debug line = 30:5] [debug variable = currentSwap]
  br label %._crit_edge, !dbg !62                 ; [debug line = 31:4]

._crit_edge:                                      ; preds = %5, %4
  %currentSwap.1 = phi i8 [ %currentSwap.2, %5 ], [ %lastSwap.1, %4 ] ; [#uses=1 type=i8]
  %is_sorted.1 = phi i8 [ 0, %5 ], [ %is_sorted, %4 ] ; [#uses=1 type=i8]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !63 ; [#uses=0 type=i32] [debug line = 32:3]
  %i = add i8 %currentSwap.2, 1, !dbg !64         ; [#uses=1 type=i8] [debug line = 24:28]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !65), !dbg !64 ; [debug line = 24:28] [debug variable = i]
  br label %3, !dbg !64                           ; [debug line = 24:28]

; <label>:6                                       ; preds = %3
  %is_sorted.0.lcssa = phi i8 [ %is_sorted, %3 ]  ; [#uses=1 type=i8]
  %currentSwap.0.lcssa = phi i8 [ %lastSwap.1, %3 ] ; [#uses=1 type=i8]
  %tmp.8 = icmp eq i8 %is_sorted.0.lcssa, 0, !dbg !66 ; [#uses=1 type=i1] [debug line = 34:3]
  br i1 %tmp.8, label %7, label %.loopexit, !dbg !66 ; [debug line = 34:3]

; <label>:7                                       ; preds = %6
  call void @llvm.dbg.value(metadata !{i8 %lastSwap.1}, i64 0, metadata !67), !dbg !68 ; [debug line = 35:3] [debug variable = lastSwap]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 36:2]
  %j.1 = add i8 %j, 1, !dbg !70                   ; [#uses=1 type=i8] [debug line = 19:21]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 19:21] [debug variable = j]
  br label %1, !dbg !70                           ; [debug line = 19:21]

.loopexit:                                        ; preds = %6, %1
  ret void, !dbg !72                              ; [debug line = 37:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18, !25}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/.autopilot/db/bubblesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i8, i64*)* @swap, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Bubblesort.prj/solution1/bubblesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"", metadata !6, i32 11, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @bubble_sort, null, null, metadata !13, i32 12} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !11}
!18 = metadata !{void (i8, i8, i64*)* @swap, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"long*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{void (i64*)* @bubble_sort, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !24}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!31 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 4, i32 18, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 4, i32 34, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 50331652, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 4, i32 48, metadata !5, null}
!37 = metadata !{i32 5, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 6, i32 23, metadata !38, null}
!40 = metadata !{i32 786688, metadata !38, metadata !"b", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 7, i32 2, metadata !38, null}
!42 = metadata !{i32 8, i32 2, metadata !38, null}
!43 = metadata !{i32 9, i32 1, metadata !38, null}
!44 = metadata !{i32 786689, metadata !15, metadata !"arr", metadata !6, i32 16777227, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 11, i32 23, metadata !15, null}
!46 = metadata !{i32 12, i32 2, metadata !47, null}
!47 = metadata !{i32 786443, metadata !15, i32 12, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 19, i32 6, metadata !49, null}
!49 = metadata !{i32 786443, metadata !47, i32 19, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 20, i32 3, metadata !51, null}
!51 = metadata !{i32 786443, metadata !49, i32 20, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 24, i32 7, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 24, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 25, i32 4, metadata !55, null}
!55 = metadata !{i32 786443, metadata !53, i32 25, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 26, i32 1, metadata !55, null}
!57 = metadata !{i32 26, i32 4, metadata !55, null}
!58 = metadata !{i32 28, i32 5, metadata !59, null}
!59 = metadata !{i32 786443, metadata !55, i32 27, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786688, metadata !47, metadata !"currentSwap", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 30, i32 5, metadata !59, null}
!62 = metadata !{i32 31, i32 4, metadata !59, null}
!63 = metadata !{i32 32, i32 3, metadata !55, null}
!64 = metadata !{i32 24, i32 28, metadata !53, null}
!65 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !6, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 34, i32 3, metadata !51, null}
!67 = metadata !{i32 786688, metadata !47, metadata !"lastSwap", metadata !6, i32 17, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 35, i32 3, metadata !51, null}
!69 = metadata !{i32 36, i32 2, metadata !51, null}
!70 = metadata !{i32 19, i32 21, metadata !49, null}
!71 = metadata !{i32 786688, metadata !47, metadata !"j", metadata !6, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 37, i32 1, metadata !47, null}
