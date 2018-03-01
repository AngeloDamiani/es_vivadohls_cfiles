; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@insertion_sort.str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"WHILE_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"FOR_LOOP\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort(float* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %arr}, i64 0, metadata !21), !dbg !22 ; [debug line = 4:33] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %arr, i32 10) nounwind, !dbg !23 ; [debug line = 4:43]
  call void (...)* @_ssdm_SpecArrayPartition(float* %arr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !25 ; [debug line = 5:1]
  br label %1, !dbg !26                           ; [debug line = 7:28]

; <label>:1                                       ; preds = %.critedge, %0
  %i = phi i32 [ 1, %0 ], [ %i.1, %.critedge ]    ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i, 10, !dbg !26        ; [#uses=1 type=i1] [debug line = 7:28]
  br i1 %exitcond, label %6, label %2, !dbg !26   ; [debug line = 7:28]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !28 ; [debug line = 7:44]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !28 ; [#uses=1 type=i32] [debug line = 7:44]
  %tmp = sext i32 %i to i64, !dbg !30             ; [#uses=1 type=i64] [debug line = 8:30]
  %arr.addr = getelementptr inbounds float* %arr, i64 %tmp, !dbg !30 ; [#uses=1 type=float*] [debug line = 8:30]
  %key = load float* %arr.addr, align 4, !dbg !30 ; [#uses=3 type=float] [debug line = 8:30]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %key) nounwind
  call void @llvm.dbg.value(metadata !{float %key}, i64 0, metadata !31), !dbg !30 ; [debug line = 8:30] [debug variable = key]
  br label %3, !dbg !32                           ; [debug line = 12:9]

; <label>:3                                       ; preds = %5, %2
  %j.0.in = phi i32 [ %i, %2 ], [ %j, %5 ]        ; [#uses=5 type=i32]
  %j = add nsw i32 %j.0.in, -1, !dbg !33          ; [#uses=2 type=i32] [debug line = 9:26]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !34), !dbg !33 ; [debug line = 9:26] [debug variable = j]
  %tmp.1 = icmp sgt i32 %j.0.in, 0, !dbg !32      ; [#uses=1 type=i1] [debug line = 12:9]
  br i1 %tmp.1, label %4, label %.critedge, !dbg !32 ; [debug line = 12:9]

; <label>:4                                       ; preds = %3
  %tmp.2 = sext i32 %j to i64, !dbg !32           ; [#uses=1 type=i64] [debug line = 12:9]
  %arr.addr.1 = getelementptr inbounds float* %arr, i64 %tmp.2, !dbg !32 ; [#uses=1 type=float*] [debug line = 12:9]
  %arr.load = load float* %arr.addr.1, align 4, !dbg !32 ; [#uses=4 type=float] [debug line = 12:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %arr.load) nounwind
  %tmp.3 = fcmp ogt float %arr.load, %key, !dbg !32 ; [#uses=1 type=i1] [debug line = 12:9]
  br i1 %tmp.3, label %5, label %.critedge

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !37 ; [debug line = 12:41]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !37 ; [#uses=1 type=i32] [debug line = 12:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !39 ; [debug line = 13:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %arr.load) nounwind
  %tmp.6 = sext i32 %j.0.in to i64, !dbg !40      ; [#uses=1 type=i64] [debug line = 14:10]
  %arr.addr.3 = getelementptr inbounds float* %arr, i64 %tmp.6, !dbg !40 ; [#uses=1 type=float*] [debug line = 14:10]
  store float %arr.load, float* %arr.addr.3, align 4, !dbg !40 ; [debug line = 14:10]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !41 ; [#uses=0 type=i32] [debug line = 16:9]
  br label %3, !dbg !41                           ; [debug line = 16:9]

.critedge:                                        ; preds = %4, %3
  %j.0.in.lcssa = phi i32 [ %j.0.in, %4 ], [ %j.0.in, %3 ] ; [#uses=1 type=i32]
  %tmp.4 = sext i32 %j.0.in.lcssa to i64, !dbg !42 ; [#uses=1 type=i64] [debug line = 17:9]
  %arr.addr.2 = getelementptr inbounds float* %arr, i64 %tmp.4, !dbg !42 ; [#uses=1 type=float*] [debug line = 17:9]
  store float %key, float* %arr.addr.2, align 4, !dbg !42 ; [debug line = 17:9]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !43 ; [#uses=0 type=i32] [debug line = 18:5]
  %i.1 = add nsw i32 %i, 1, !dbg !44              ; [#uses=1 type=i32] [debug line = 7:38]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !45), !dbg !44 ; [debug line = 7:38] [debug variable = i]
  br label %1, !dbg !44                           ; [debug line = 7:38]

; <label>:6                                       ; preds = %1
  ret void, !dbg !46                              ; [debug line = 19:1]
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

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @insertion_sort, null, null, metadata !12, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{void (float*)* @insertion_sort, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 4, i32 33, metadata !5, null}
!23 = metadata !{i32 4, i32 43, metadata !24, null}
!24 = metadata !{i32 786443, metadata !5, i32 4, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 5, i32 1, metadata !24, null}
!26 = metadata !{i32 7, i32 28, metadata !27, null}
!27 = metadata !{i32 786443, metadata !24, i32 7, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 7, i32 44, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 7, i32 43, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 8, i32 30, metadata !29, null}
!31 = metadata !{i32 786688, metadata !29, metadata !"key", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 12, i32 9, metadata !29, null}
!33 = metadata !{i32 9, i32 26, metadata !29, null}
!34 = metadata !{i32 786688, metadata !29, metadata !"j", metadata !6, i32 9, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 12, i32 41, metadata !38, null}
!38 = metadata !{i32 786443, metadata !29, i32 12, i32 40, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 13, i32 1, metadata !38, null}
!40 = metadata !{i32 14, i32 10, metadata !38, null}
!41 = metadata !{i32 16, i32 9, metadata !38, null}
!42 = metadata !{i32 17, i32 9, metadata !29, null}
!43 = metadata !{i32 18, i32 5, metadata !29, null}
!44 = metadata !{i32 7, i32 38, metadata !27, null}
!45 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !6, i32 7, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 19, i32 1, metadata !24, null}
