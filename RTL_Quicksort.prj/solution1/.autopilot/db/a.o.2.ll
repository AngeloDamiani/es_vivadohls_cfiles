; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quicksort.str = internal unnamed_addr constant [10 x i8] c"quicksort\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"QWHILE\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str = private unnamed_addr constant [9 x i8] c"PARWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @quicksort(i64 %i, i64 %f, [10 x i64]* %a) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %i) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %f) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %a) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @quicksort.str) nounwind
  %"stack[0]" = alloca [10 x i64], align 16       ; [#uses=3 type=[10 x i64]*]
  %"stack[1]" = alloca [10 x i64], align 16       ; [#uses=3 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %i}, i64 0, metadata !56), !dbg !57 ; [debug line = 39:29] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i64 %f}, i64 0, metadata !58), !dbg !59 ; [debug line = 39:45] [debug variable = f]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !60), !dbg !64 ; [debug line = 39:60] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %"stack[0]"}, metadata !65), !dbg !70 ; [debug line = 41:14] [debug variable = stack[0]]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %"stack[1]"}, metadata !71), !dbg !70 ; [debug line = 41:14] [debug variable = stack[1]]
  %top = getelementptr [10 x i64]* %"stack[0]", i64 0, i64 0, !dbg !72 ; [#uses=1 type=i64*] [debug line = 45:30]
  call void @llvm.dbg.value(metadata !{i64* %top}, i64 0, metadata !73), !dbg !72 ; [debug line = 45:30] [debug variable = top]
  store i64 %i, i64* %top, align 16, !dbg !75     ; [debug line = 50:2]
  %"stack[1].addr" = getelementptr [10 x i64]* %"stack[1]", i64 0, i64 0, !dbg !76 ; [#uses=1 type=i64*] [debug line = 51:2]
  store i64 %f, i64* %"stack[1].addr", align 16, !dbg !76 ; [debug line = 51:2]
  br label %1, !dbg !77                           ; [debug line = 53:2]

; <label>:1                                       ; preds = %5, %0
  %stack_size = phi i64 [ 0, %0 ], [ %stack_size.1, %5 ] ; [#uses=5 type=i64]
  %"stack[0].addr" = getelementptr [10 x i64]* %"stack[0]", i64 0, i64 %stack_size, !dbg !78 ; [#uses=2 type=i64*] [debug line = 73:3]
  %tmp = icmp sgt i64 %stack_size, -1, !dbg !77   ; [#uses=1 type=i1] [debug line = 53:2]
  br i1 %tmp, label %2, label %7, !dbg !77        ; [debug line = 53:2]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str1) nounwind, !dbg !80 ; [debug line = 54:3]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str1) nounwind, !dbg !80 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, [1 x i8]* @.str2) nounwind, !dbg !81 ; [debug line = 55:1]
  %base = load i64* %"stack[0].addr", align 16, !dbg !82 ; [#uses=3 type=i64] [debug line = 55:3]
  %"stack[1].addr.1" = getelementptr [10 x i64]* %"stack[1]", i64 0, i64 %stack_size, !dbg !82 ; [#uses=1 type=i64*] [debug line = 55:3]
  %"stack[1].load" = load i64* %"stack[1].addr.1", align 8, !dbg !82 ; [#uses=2 type=i64] [debug line = 55:3]
  %tmp.1 = icmp slt i64 %base, %"stack[1].load", !dbg !82 ; [#uses=1 type=i1] [debug line = 55:3]
  br i1 %tmp.1, label %3, label %4, !dbg !82      ; [debug line = 55:3]

; <label>:3                                       ; preds = %2
  %pivot_position = call fastcc i64 @partition(i64 %base, i64 %"stack[1].load", [10 x i64]* %a) nounwind, !dbg !83 ; [#uses=2 type=i64] [debug line = 57:21]
  call void @llvm.dbg.value(metadata !{i64 %pivot_position}, i64 0, metadata !85), !dbg !83 ; [debug line = 57:21] [debug variable = pivot_position]
  call void @llvm.dbg.value(metadata !{i64 %base}, i64 0, metadata !86), !dbg !87 ; [debug line = 59:4] [debug variable = base]
  %tmp.3 = add nsw i64 %pivot_position, 1, !dbg !88 ; [#uses=1 type=i64] [debug line = 61:4]
  store i64 %tmp.3, i64* %"stack[0].addr", align 16, !dbg !88 ; [debug line = 61:4]
  %stack_size.2 = add nsw i64 %stack_size, 1, !dbg !89 ; [#uses=3 type=i64] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size.2}, i64 0, metadata !90), !dbg !89 ; [debug line = 63:4] [debug variable = stack_size]
  %"stack[0].addr.1" = getelementptr [10 x i64]* %"stack[0]", i64 0, i64 %stack_size.2, !dbg !91 ; [#uses=1 type=i64*] [debug line = 64:4]
  store i64 %base, i64* %"stack[0].addr.1", align 16, !dbg !91 ; [debug line = 64:4]
  %tmp.5 = add nsw i64 %pivot_position, -1, !dbg !92 ; [#uses=1 type=i64] [debug line = 65:4]
  %"stack[1].addr.2" = getelementptr [10 x i64]* %"stack[1]", i64 0, i64 %stack_size.2, !dbg !92 ; [#uses=1 type=i64*] [debug line = 65:4]
  store i64 %tmp.5, i64* %"stack[1].addr.2", align 8, !dbg !92 ; [debug line = 65:4]
  br label %5, !dbg !93                           ; [debug line = 67:3]

; <label>:4                                       ; preds = %2
  %stack_size.3 = add nsw i64 %stack_size, -1, !dbg !94 ; [#uses=1 type=i64] [debug line = 69:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size.3}, i64 0, metadata !90), !dbg !94 ; [debug line = 69:4] [debug variable = stack_size]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %stack_size.1 = phi i64 [ %stack_size.2, %3 ], [ %stack_size.3, %4 ], !dbg !78 ; [#uses=1 type=i64] [debug line = 73:3]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str1, i32 %tmp.2) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 74:2]
  br label %1, !dbg !96                           ; [debug line = 74:2]

; <label>:7                                       ; preds = %1
  ret void, !dbg !97                              ; [debug line = 75:1]
}

; [#uses=1]
define internal fastcc i64 @partition(i64 %init, i64 %end, [10 x i64]* nocapture %a) {
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !98), !dbg !99 ; [debug line = 12:37] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !100), !dbg !101 ; [debug line = 12:56] [debug variable = end]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !102), !dbg !103 ; [debug line = 12:73] [debug variable = a]
  %a.addr = getelementptr [10 x i64]* %a, i64 0, i64 %init, !dbg !104 ; [#uses=3 type=i64*] [debug line = 14:29]
  %pivot = load i64* %a.addr, align 8, !dbg !104  ; [#uses=2 type=i64] [debug line = 14:29]
  call void @llvm.dbg.value(metadata !{i64 %pivot}, i64 0, metadata !106), !dbg !104 ; [debug line = 14:29] [debug variable = pivot]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !107), !dbg !108 ; [debug line = 15:24] [debug variable = sup]
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !109), !dbg !110 ; [debug line = 16:25] [debug variable = inf]
  br label %1, !dbg !111                          ; [debug line = 18:2]

; <label>:1                                       ; preds = %8, %0
  %sup = phi i64 [ %end, %0 ], [ %index_2.assign.lcssa, %8 ] ; [#uses=1 type=i64]
  %inf = phi i64 [ %init, %0 ], [ %index_1.assign.lcssa, %8 ] ; [#uses=1 type=i64]
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str) nounwind, !dbg !112 ; [debug line = 19:3]
  br label %2, !dbg !114                          ; [debug line = 20:3]

; <label>:2                                       ; preds = %4, %1
  %index_1.assign = phi i64 [ %inf, %1 ], [ %inf.1, %4 ] ; [#uses=5 type=i64]
  %tmp = icmp sgt i64 %index_1.assign, %end, !dbg !114 ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp, label %.critedge, label %3, !dbg !114 ; [debug line = 20:3]

; <label>:3                                       ; preds = %2
  %a.addr.1 = getelementptr [10 x i64]* %a, i64 0, i64 %index_1.assign, !dbg !114 ; [#uses=1 type=i64*] [debug line = 20:3]
  %a.load = load i64* %a.addr.1, align 8, !dbg !114 ; [#uses=1 type=i64] [debug line = 20:3]
  %tmp.7 = icmp sgt i64 %a.load, %pivot, !dbg !114 ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp.7, label %.critedge, label %4

; <label>:4                                       ; preds = %3
  %inf.1 = add nsw i64 %index_1.assign, 1, !dbg !115 ; [#uses=1 type=i64] [debug line = 21:4]
  call void @llvm.dbg.value(metadata !{i64 %inf.1}, i64 0, metadata !109), !dbg !115 ; [debug line = 21:4] [debug variable = inf]
  br label %2, !dbg !115                          ; [debug line = 21:4]

.critedge:                                        ; preds = %3, %2
  %index_1.assign.lcssa = phi i64 [ %index_1.assign, %3 ], [ %index_1.assign, %2 ] ; [#uses=3 type=i64]
  br label %5, !dbg !116                          ; [debug line = 23:3]

; <label>:5                                       ; preds = %6, %.critedge
  %index_2.assign = phi i64 [ %sup, %.critedge ], [ %sup.1, %6 ] ; [#uses=3 type=i64]
  %a.addr.2 = getelementptr [10 x i64]* %a, i64 0, i64 %index_2.assign, !dbg !116 ; [#uses=2 type=i64*] [debug line = 23:3]
  %a.load.1 = load i64* %a.addr.2, align 8, !dbg !116 ; [#uses=2 type=i64] [debug line = 23:3]
  %tmp.9 = icmp sgt i64 %a.load.1, %pivot, !dbg !116 ; [#uses=1 type=i1] [debug line = 23:3]
  br i1 %tmp.9, label %6, label %7, !dbg !116     ; [debug line = 23:3]

; <label>:6                                       ; preds = %5
  %sup.1 = add nsw i64 %index_2.assign, -1, !dbg !117 ; [#uses=1 type=i64] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i64 %sup.1}, i64 0, metadata !107), !dbg !117 ; [debug line = 24:4] [debug variable = sup]
  br label %5, !dbg !117                          ; [debug line = 24:4]

; <label>:7                                       ; preds = %5
  %a.load.1.lcssa = phi i64 [ %a.load.1, %5 ]     ; [#uses=2 type=i64]
  %a.addr.2.lcssa = phi i64* [ %a.addr.2, %5 ]    ; [#uses=2 type=i64*]
  %index_2.assign.lcssa = phi i64 [ %index_2.assign, %5 ] ; [#uses=3 type=i64]
  %tmp. = add nsw i64 %index_2.assign.lcssa, 1, !dbg !118 ; [#uses=1 type=i64] [debug line = 27:3]
  %tmp.1 = icmp slt i64 %index_1.assign.lcssa, %tmp., !dbg !118 ; [#uses=1 type=i1] [debug line = 27:3]
  br i1 %tmp.1, label %8, label %9, !dbg !118     ; [debug line = 27:3]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i64 %index_1.assign}, i64 0, metadata !119), !dbg !121 ; [debug line = 4:24@28:4] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %index_2.assign}, i64 0, metadata !122), !dbg !123 ; [debug line = 4:46@28:4] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !124), !dbg !125 ; [debug line = 4:66@28:4] [debug variable = a]
  %a.addr.3 = getelementptr [10 x i64]* %a, i64 0, i64 %index_1.assign.lcssa, !dbg !126 ; [#uses=2 type=i64*] [debug line = 7:29@28:4]
  %b = load i64* %a.addr.3, align 8, !dbg !126    ; [#uses=1 type=i64] [debug line = 7:29@28:4]
  call void @llvm.dbg.value(metadata !{i64 %b}, i64 0, metadata !128), !dbg !126 ; [debug line = 7:29@28:4] [debug variable = b]
  store i64 %a.load.1.lcssa, i64* %a.addr.3, align 8, !dbg !129 ; [debug line = 8:2@28:4]
  store i64 %b, i64* %a.addr.2.lcssa, align 8, !dbg !130 ; [debug line = 9:2@28:4]
  br label %1, !dbg !131                          ; [debug line = 32:2]

; <label>:9                                       ; preds = %7
  %index_2.assign.lcssa.lcssa = phi i64 [ %index_2.assign.lcssa, %7 ] ; [#uses=1 type=i64]
  %a.addr.2.lcssa.lcssa = phi i64* [ %a.addr.2.lcssa, %7 ] ; [#uses=1 type=i64*]
  %a.load.1.lcssa.lcssa = phi i64 [ %a.load.1.lcssa, %7 ] ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !132), !dbg !134 ; [debug line = 4:24@34:2] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %index_2.assign}, i64 0, metadata !135), !dbg !136 ; [debug line = 4:46@34:2] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !137), !dbg !138 ; [debug line = 4:66@34:2] [debug variable = a]
  %b.1 = load i64* %a.addr, align 8, !dbg !139    ; [#uses=1 type=i64] [debug line = 7:29@34:2]
  call void @llvm.dbg.value(metadata !{i64 %b.1}, i64 0, metadata !140), !dbg !139 ; [debug line = 7:29@34:2] [debug variable = b]
  store i64 %a.load.1.lcssa.lcssa, i64* %a.addr, align 8, !dbg !141 ; [debug line = 8:2@34:2]
  store i64 %b.1, i64* %a.addr.2.lcssa.lcssa, align 8, !dbg !142 ; [debug line = 9:2@34:2]
  ret i64 %index_2.assign.lcssa.lcssa, !dbg !143  ; [debug line = 35:2]
}

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29, !36, !38}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/quicksort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Quicksort.prj/quicksort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"partition", metadata !"partition", metadata !"", metadata !6, i32 12, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !9, metadata !9, metadata !9, metadata !11}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"quicksort", metadata !"quicksort", metadata !"", metadata !6, i32 39, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !24, metadata !25, metadata !26}
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !22, i32 315, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !22, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !22, i32 316, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !22, i32 317, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !27, i32 26, metadata !28, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"a"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !37, metadata !35}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"init", metadata !"end", metadata !"a"}
!38 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !39, metadata !35}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"f", metadata !"a"}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 63, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"i", metadata !44, metadata !"long int", i32 0, i32 63}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, i32 0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 63, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"f", metadata !44, metadata !"long int", i32 0, i32 63}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 63, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"a", metadata !54, metadata !"long int", i32 0, i32 63}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 9, i32 1}
!56 = metadata !{i32 786689, metadata !18, metadata !"i", metadata !6, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 39, i32 29, metadata !18, null}
!58 = metadata !{i32 786689, metadata !18, metadata !"f", metadata !6, i32 33554471, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 39, i32 45, metadata !18, null}
!60 = metadata !{i32 786689, metadata !18, metadata !"a", null, i32 39, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !12, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!64 = metadata !{i32 39, i32 60, metadata !18, null}
!65 = metadata !{i32 786688, metadata !66, metadata !"stack[0]", null, i32 41, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786443, metadata !18, i32 40, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !12, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{metadata !63, metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!70 = metadata !{i32 41, i32 14, metadata !66, null}
!71 = metadata !{i32 786688, metadata !66, metadata !"stack[1]", null, i32 41, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 45, i32 30, metadata !66, null}
!73 = metadata !{i32 786688, metadata !66, metadata !"top", metadata !6, i32 45, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!75 = metadata !{i32 50, i32 2, metadata !66, null}
!76 = metadata !{i32 51, i32 2, metadata !66, null}
!77 = metadata !{i32 53, i32 2, metadata !66, null}
!78 = metadata !{i32 73, i32 3, metadata !79, null}
!79 = metadata !{i32 786443, metadata !66, i32 54, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 54, i32 3, metadata !79, null}
!81 = metadata !{i32 55, i32 1, metadata !79, null}
!82 = metadata !{i32 55, i32 3, metadata !79, null}
!83 = metadata !{i32 57, i32 21, metadata !84, null}
!84 = metadata !{i32 786443, metadata !79, i32 56, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !66, metadata !"pivot_position", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786688, metadata !66, metadata !"base", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 59, i32 4, metadata !84, null}
!88 = metadata !{i32 61, i32 4, metadata !84, null}
!89 = metadata !{i32 63, i32 4, metadata !84, null}
!90 = metadata !{i32 786688, metadata !66, metadata !"stack_size", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 64, i32 4, metadata !84, null}
!92 = metadata !{i32 65, i32 4, metadata !84, null}
!93 = metadata !{i32 67, i32 3, metadata !84, null}
!94 = metadata !{i32 69, i32 4, metadata !95, null}
!95 = metadata !{i32 786443, metadata !79, i32 67, i32 8, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 74, i32 2, metadata !79, null}
!97 = metadata !{i32 75, i32 1, metadata !66, null}
!98 = metadata !{i32 786689, metadata !15, metadata !"init", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 12, i32 37, metadata !15, null}
!100 = metadata !{i32 786689, metadata !15, metadata !"end", metadata !6, i32 33554444, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 12, i32 56, metadata !15, null}
!102 = metadata !{i32 786689, metadata !15, metadata !"a", null, i32 12, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 12, i32 73, metadata !15, null}
!104 = metadata !{i32 14, i32 29, metadata !105, null}
!105 = metadata !{i32 786443, metadata !15, i32 13, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786688, metadata !105, metadata !"pivot", metadata !6, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786688, metadata !105, metadata !"sup", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 15, i32 24, metadata !105, null}
!109 = metadata !{i32 786688, metadata !105, metadata !"inf", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 16, i32 25, metadata !105, null}
!111 = metadata !{i32 18, i32 2, metadata !105, null}
!112 = metadata !{i32 19, i32 3, metadata !113, null}
!113 = metadata !{i32 786443, metadata !105, i32 19, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 20, i32 3, metadata !113, null}
!115 = metadata !{i32 21, i32 4, metadata !113, null}
!116 = metadata !{i32 23, i32 3, metadata !113, null}
!117 = metadata !{i32 24, i32 4, metadata !113, null}
!118 = metadata !{i32 27, i32 3, metadata !113, null}
!119 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 28, i32 4, metadata !113, null}
!121 = metadata !{i32 4, i32 24, metadata !5, metadata !120}
!122 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 4, i32 46, metadata !5, metadata !120}
!124 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 4, metadata !61, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 4, i32 66, metadata !5, metadata !120}
!126 = metadata !{i32 7, i32 29, metadata !127, metadata !120}
!127 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786688, metadata !127, metadata !"b", metadata !6, i32 7, metadata !9, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 8, i32 2, metadata !127, metadata !120}
!130 = metadata !{i32 9, i32 2, metadata !127, metadata !120}
!131 = metadata !{i32 32, i32 2, metadata !113, null}
!132 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, metadata !133} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 34, i32 2, metadata !105, null}
!134 = metadata !{i32 4, i32 24, metadata !5, metadata !133}
!135 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, metadata !133} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 4, i32 46, metadata !5, metadata !133}
!137 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 4, metadata !61, i32 0, metadata !133} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 4, i32 66, metadata !5, metadata !133}
!139 = metadata !{i32 7, i32 29, metadata !127, metadata !133}
!140 = metadata !{i32 786688, metadata !127, metadata !"b", metadata !6, i32 7, metadata !9, i32 0, metadata !133} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 8, i32 2, metadata !127, metadata !133}
!142 = metadata !{i32 9, i32 2, metadata !127, metadata !133}
!143 = metadata !{i32 35, i32 2, metadata !105, null}
