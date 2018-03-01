; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floyd_warshall.str = internal unnamed_addr constant [15 x i8] c"floyd_warshall\00" ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"MIDDLE_LOOP\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @floyd_warshall([10 x i32]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @floyd_warshall.str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x i32]* %A}, i64 0, metadata !25), !dbg !26 ; [debug line = 7:33] [debug variable = A]
  call void (...)* @_ssdm_SpecArrayDimSize([10 x i32]* %A, i32 10) nounwind, !dbg !27 ; [debug line = 7:45]
  br label %1, !dbg !29                           ; [debug line = 12:6]

; <label>:1                                       ; preds = %9, %0
  %h = phi i8 [ 0, %0 ], [ %h.1, %9 ]             ; [#uses=3 type=i8]
  %tmp = icmp eq i8 %h, 10, !dbg !29              ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %tmp, label %10, label %2, !dbg !29       ; [debug line = 12:6]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !31 ; [debug line = 12:27]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !31 ; [#uses=1 type=i32] [debug line = 12:27]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !33 ; [debug line = 13:1]
  %tmp.1 = zext i8 %h to i64, !dbg !34            ; [#uses=2 type=i64] [debug line = 17:5]
  br label %3, !dbg !39                           ; [debug line = 14:7]

; <label>:3                                       ; preds = %8, %2
  %i = phi i8 [ 0, %2 ], [ %i.1, %8 ]             ; [#uses=3 type=i8]
  %tmp.2 = icmp eq i8 %i, 10, !dbg !39            ; [#uses=1 type=i1] [debug line = 14:7]
  br i1 %tmp.2, label %9, label %4, !dbg !39      ; [debug line = 14:7]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !40 ; [debug line = 14:28]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !40 ; [#uses=1 type=i32] [debug line = 14:28]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !41 ; [debug line = 15:1]
  %tmp.4 = zext i8 %i to i64, !dbg !34            ; [#uses=2 type=i64] [debug line = 17:5]
  %A.addr = getelementptr inbounds [10 x i32]* %A, i64 %tmp.4, i64 %tmp.1, !dbg !34 ; [#uses=1 type=i32*] [debug line = 17:5]
  br label %5, !dbg !42                           ; [debug line = 16:8]

; <label>:5                                       ; preds = %._crit_edge, %4
  %j = phi i8 [ 0, %4 ], [ %j.1, %._crit_edge ]   ; [#uses=3 type=i8]
  %tmp.5 = icmp eq i8 %j, 10, !dbg !42            ; [#uses=1 type=i1] [debug line = 16:8]
  br i1 %tmp.5, label %8, label %6, !dbg !42      ; [debug line = 16:8]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 16:29]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 16:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 17:1]
  %A.load = load i32* %A.addr, align 4, !dbg !34  ; [#uses=3 type=i32] [debug line = 17:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %A.load) nounwind
  %tmp.7 = zext i8 %j to i64, !dbg !34            ; [#uses=2 type=i64] [debug line = 17:5]
  %A.addr.1 = getelementptr inbounds [10 x i32]* %A, i64 %tmp.1, i64 %tmp.7, !dbg !34 ; [#uses=1 type=i32*] [debug line = 17:5]
  %A.load.1 = load i32* %A.addr.1, align 4, !dbg !34 ; [#uses=3 type=i32] [debug line = 17:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %A.load.1) nounwind
  %tmp.8 = add i32 %A.load.1, %A.load, !dbg !34   ; [#uses=2 type=i32] [debug line = 17:5]
  %A.addr.2 = getelementptr inbounds [10 x i32]* %A, i64 %tmp.4, i64 %tmp.7, !dbg !34 ; [#uses=2 type=i32*] [debug line = 17:5]
  %A.load.2 = load i32* %A.addr.2, align 4, !dbg !34 ; [#uses=2 type=i32] [debug line = 17:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %A.load.2) nounwind
  %tmp.9 = icmp ult i32 %tmp.8, %A.load.2, !dbg !34 ; [#uses=1 type=i1] [debug line = 17:5]
  br i1 %tmp.9, label %7, label %._crit_edge, !dbg !34 ; [debug line = 17:5]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %A.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %A.load.1) nounwind
  store i32 %tmp.8, i32* %A.addr.2, align 4, !dbg !45 ; [debug line = 18:6]
  br label %._crit_edge, !dbg !45                 ; [debug line = 18:6]

._crit_edge:                                      ; preds = %7, %6
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !46 ; [#uses=0 type=i32] [debug line = 19:4]
  %j.1 = add i8 %j, 1, !dbg !47                   ; [#uses=1 type=i8] [debug line = 16:23]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !48), !dbg !47 ; [debug line = 16:23] [debug variable = j]
  br label %5, !dbg !47                           ; [debug line = 16:23]

; <label>:8                                       ; preds = %5
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !52 ; [#uses=0 type=i32] [debug line = 20:3]
  %i.1 = add i8 %i, 1, !dbg !53                   ; [#uses=1 type=i8] [debug line = 14:22]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !54), !dbg !53 ; [debug line = 14:22] [debug variable = i]
  br label %3, !dbg !53                           ; [debug line = 14:22]

; <label>:9                                       ; preds = %3
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !55 ; [#uses=0 type=i32] [debug line = 21:2]
  %h.1 = add i8 %h, 1, !dbg !56                   ; [#uses=1 type=i8] [debug line = 12:21]
  call void @llvm.dbg.value(metadata !{i8 %h.1}, i64 0, metadata !57), !dbg !56 ; [debug line = 12:21] [debug variable = h]
  br label %1, !dbg !56                           ; [debug line = 12:21]

; <label>:10                                      ; preds = %1
  ret void, !dbg !58                              ; [debug line = 22:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=5]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_InlineSelf(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/floyd_warshall.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"floyd_warshall", metadata !"floyd_warshall", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([10 x i32]*)* @floyd_warshall, null, null, metadata !16, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"floyd_warshall.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !11, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{void ([10 x i32]*)* @floyd_warshall, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE [10]*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"A"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 7, i32 33, metadata !5, null}
!27 = metadata !{i32 7, i32 45, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, i32 7, i32 44, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 12, i32 6, metadata !30, null}
!30 = metadata !{i32 786443, metadata !28, i32 12, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 12, i32 27, metadata !32, null}
!32 = metadata !{i32 786443, metadata !30, i32 12, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 13, i32 1, metadata !32, null}
!34 = metadata !{i32 17, i32 5, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 16, i32 28, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786443, metadata !37, i32 16, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !38, i32 14, i32 27, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786443, metadata !32, i32 14, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 14, i32 7, metadata !38, null}
!40 = metadata !{i32 14, i32 28, metadata !37, null}
!41 = metadata !{i32 15, i32 1, metadata !37, null}
!42 = metadata !{i32 16, i32 8, metadata !36, null}
!43 = metadata !{i32 16, i32 29, metadata !35, null}
!44 = metadata !{i32 17, i32 1, metadata !35, null}
!45 = metadata !{i32 18, i32 6, metadata !35, null}
!46 = metadata !{i32 19, i32 4, metadata !35, null}
!47 = metadata !{i32 16, i32 23, metadata !36, null}
!48 = metadata !{i32 786688, metadata !28, metadata !"j", metadata !6, i32 9, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 20, i32 3, metadata !37, null}
!53 = metadata !{i32 14, i32 22, metadata !38, null}
!54 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !6, i32 9, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 21, i32 2, metadata !32, null}
!56 = metadata !{i32 12, i32 21, metadata !30, null}
!57 = metadata !{i32 786688, metadata !28, metadata !"h", metadata !6, i32 9, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 22, i32 1, metadata !28, null}
