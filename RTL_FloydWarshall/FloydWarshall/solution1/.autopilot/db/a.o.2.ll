; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floyd_warshall.str = internal unnamed_addr constant [15 x i8] c"floyd_warshall\00" ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"MIDDLE_LOOP\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @floyd_warshall([10 x [10 x i32]]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x [10 x i32]]* %A) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @floyd_warshall.str) nounwind
  call void @llvm.dbg.value(metadata !{[10 x [10 x i32]]* %A}, i64 0, metadata !31), !dbg !34 ; [debug line = 7:33] [debug variable = A]
  br label %1, !dbg !35                           ; [debug line = 12:6]

; <label>:1                                       ; preds = %14, %0
  %h = phi i4 [ 0, %0 ], [ %h.1, %14 ]            ; [#uses=3 type=i4]
  %tmp = icmp eq i4 %h, -6, !dbg !35              ; [#uses=1 type=i1] [debug line = 12:6]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %16, label %3, !dbg !35       ; [debug line = 12:6]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str) nounwind, !dbg !38 ; [debug line = 12:27]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str) nounwind, !dbg !38 ; [#uses=1 type=i32] [debug line = 12:27]
  %tmp.1 = zext i4 %h to i64, !dbg !40            ; [#uses=2 type=i64] [debug line = 17:5]
  br label %4, !dbg !45                           ; [debug line = 14:7]

; <label>:4                                       ; preds = %12, %3
  %i = phi i4 [ 0, %3 ], [ %i.1, %12 ]            ; [#uses=3 type=i4]
  %tmp.2 = icmp eq i4 %i, -6, !dbg !45            ; [#uses=1 type=i1] [debug line = 14:7]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %14, label %6, !dbg !45     ; [debug line = 14:7]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str2) nounwind, !dbg !46 ; [debug line = 14:28]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 14:28]
  %tmp.4 = zext i4 %i to i64, !dbg !40            ; [#uses=2 type=i64] [debug line = 17:5]
  %A.addr = getelementptr [10 x [10 x i32]]* %A, i64 0, i64 %tmp.4, i64 %tmp.1, !dbg !40 ; [#uses=1 type=i32*] [debug line = 17:5]
  br label %7, !dbg !47                           ; [debug line = 16:8]

; <label>:7                                       ; preds = %._crit_edge, %6
  %j = phi i4 [ 0, %6 ], [ %j.1, %._crit_edge ]   ; [#uses=3 type=i4]
  %tmp.5 = icmp eq i4 %j, -6, !dbg !47            ; [#uses=1 type=i1] [debug line = 16:8]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %12, label %9, !dbg !47     ; [debug line = 16:8]

; <label>:9                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str3) nounwind, !dbg !48 ; [debug line = 16:29]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str3) nounwind, !dbg !48 ; [#uses=1 type=i32] [debug line = 16:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !49 ; [debug line = 17:1]
  %A.load = load i32* %A.addr, align 4, !dbg !40  ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp.7 = zext i4 %j to i64, !dbg !40            ; [#uses=2 type=i64] [debug line = 17:5]
  %A.addr.1 = getelementptr [10 x [10 x i32]]* %A, i64 0, i64 %tmp.1, i64 %tmp.7, !dbg !40 ; [#uses=1 type=i32*] [debug line = 17:5]
  %A.load.1 = load i32* %A.addr.1, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp.8 = add i32 %A.load, %A.load.1, !dbg !40   ; [#uses=2 type=i32] [debug line = 17:5]
  %A.addr.2 = getelementptr [10 x [10 x i32]]* %A, i64 0, i64 %tmp.4, i64 %tmp.7, !dbg !40 ; [#uses=2 type=i32*] [debug line = 17:5]
  %A.load.2 = load i32* %A.addr.2, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 17:5]
  %tmp.9 = icmp ult i32 %tmp.8, %A.load.2, !dbg !40 ; [#uses=1 type=i1] [debug line = 17:5]
  br i1 %tmp.9, label %10, label %._crit_edge, !dbg !40 ; [debug line = 17:5]

; <label>:10                                      ; preds = %9
  store i32 %tmp.8, i32* %A.addr.2, align 4, !dbg !50 ; [debug line = 18:6]
  br label %._crit_edge, !dbg !50                 ; [debug line = 18:6]

._crit_edge:                                      ; preds = %10, %9
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str3, i32 %tmp.) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 19:4]
  %j.1 = add i4 %j, 1, !dbg !52                   ; [#uses=1 type=i4] [debug line = 16:23]
  call void @llvm.dbg.value(metadata !{i4 %j.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 16:23] [debug variable = j]
  br label %7, !dbg !52                           ; [debug line = 16:23]

; <label>:12                                      ; preds = %7
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.6) nounwind, !dbg !57 ; [#uses=0 type=i32] [debug line = 20:3]
  %i.1 = add i4 %i, 1, !dbg !58                   ; [#uses=1 type=i4] [debug line = 14:22]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !59), !dbg !58 ; [debug line = 14:22] [debug variable = i]
  br label %4, !dbg !58                           ; [debug line = 14:22]

; <label>:14                                      ; preds = %4
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str, i32 %tmp.3) nounwind, !dbg !60 ; [#uses=0 type=i32] [debug line = 21:2]
  %h.1 = add i4 %h, 1, !dbg !61                   ; [#uses=1 type=i4] [debug line = 12:21]
  call void @llvm.dbg.value(metadata !{i4 %h.1}, i64 0, metadata !62), !dbg !61 ; [debug line = 12:21] [debug variable = h]
  br label %1, !dbg !61                           ; [debug line = 12:21]

; <label>:16                                      ; preds = %1
  ret void, !dbg !63                              ; [debug line = 22:1]
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
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/floyd_warshall.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"floyd_warshall", metadata !"floyd_warshall", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !16, i32 7} ; [ DW_TAG_subprogram ]
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
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE [10]*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"A"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"A", metadata !29, metadata !"unsigned int", i32 0, i32 31}
!29 = metadata !{metadata !30, metadata !30}
!30 = metadata !{i32 0, i32 9, i32 1}
!31 = metadata !{i32 786689, metadata !5, metadata !"A", null, i32 7, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !11, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !15, metadata !15}
!34 = metadata !{i32 7, i32 33, metadata !5, null}
!35 = metadata !{i32 12, i32 6, metadata !36, null}
!36 = metadata !{i32 786443, metadata !37, i32 12, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !5, i32 7, i32 44, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 12, i32 27, metadata !39, null}
!39 = metadata !{i32 786443, metadata !36, i32 12, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 17, i32 5, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 16, i32 28, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 16, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !44, i32 14, i32 27, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786443, metadata !39, i32 14, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 14, i32 7, metadata !44, null}
!46 = metadata !{i32 14, i32 28, metadata !43, null}
!47 = metadata !{i32 16, i32 8, metadata !42, null}
!48 = metadata !{i32 16, i32 29, metadata !41, null}
!49 = metadata !{i32 17, i32 1, metadata !41, null}
!50 = metadata !{i32 18, i32 6, metadata !41, null}
!51 = metadata !{i32 19, i32 4, metadata !41, null}
!52 = metadata !{i32 16, i32 23, metadata !42, null}
!53 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 9, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ]
!56 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 20, i32 3, metadata !43, null}
!58 = metadata !{i32 14, i32 22, metadata !44, null}
!59 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !6, i32 9, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 21, i32 2, metadata !39, null}
!61 = metadata !{i32 12, i32 21, metadata !36, null}
!62 = metadata !{i32 786688, metadata !37, metadata !"h", metadata !6, i32 9, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 22, i32 1, metadata !37, null}
