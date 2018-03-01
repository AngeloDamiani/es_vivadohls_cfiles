; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quicksort.str = internal unnamed_addr constant [10 x i8] c"quicksort\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"QWHILE\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str = private unnamed_addr constant [9 x i8] c"PARWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=2]
define internal fastcc void @swap(i64 %index_1, i64 %index_2, i64* %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64 %index_1}, i64 0, metadata !40), !dbg !41 ; [debug line = 4:24] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %index_2}, i64 0, metadata !42), !dbg !43 ; [debug line = 4:46] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{i64* %a}, i64 0, metadata !44), !dbg !45 ; [debug line = 4:66] [debug variable = a]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %a, i32 10) nounwind, !dbg !46 ; [debug line = 5:2]
  %a.addr = getelementptr inbounds i64* %a, i64 %index_1, !dbg !48 ; [#uses=2 type=i64*] [debug line = 7:29]
  %b = load i64* %a.addr, align 8, !dbg !48       ; [#uses=2 type=i64] [debug line = 7:29]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %b) nounwind
  call void @llvm.dbg.value(metadata !{i64 %b}, i64 0, metadata !49), !dbg !48 ; [debug line = 7:29] [debug variable = b]
  %a.addr.1 = getelementptr inbounds i64* %a, i64 %index_2, !dbg !50 ; [#uses=2 type=i64*] [debug line = 8:2]
  %a.load = load i64* %a.addr.1, align 8, !dbg !50 ; [#uses=2 type=i64] [debug line = 8:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %a.load) nounwind
  store i64 %a.load, i64* %a.addr, align 8, !dbg !50 ; [debug line = 8:2]
  store i64 %b, i64* %a.addr.1, align 8, !dbg !51 ; [debug line = 9:2]
  ret void, !dbg !52                              ; [debug line = 10:1]
}

; [#uses=0]
define void @quicksort(i64 %i, i64 %f, i64* %a) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @quicksort.str) nounwind
  %stack = alloca [10 x [2 x i64]], align 16      ; [#uses=6 type=[10 x [2 x i64]]*]
  call void @llvm.dbg.value(metadata !{i64 %i}, i64 0, metadata !53), !dbg !54 ; [debug line = 39:29] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i64 %f}, i64 0, metadata !55), !dbg !56 ; [debug line = 39:45] [debug variable = f]
  call void @llvm.dbg.value(metadata !{i64* %a}, i64 0, metadata !57), !dbg !58 ; [debug line = 39:60] [debug variable = a]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %a, i32 10) nounwind, !dbg !59 ; [debug line = 40:2]
  call void @llvm.dbg.declare(metadata !{[10 x [2 x i64]]* %stack}, metadata !61), !dbg !66 ; [debug line = 41:14] [debug variable = stack]
  %top = getelementptr inbounds [10 x [2 x i64]]* %stack, i64 0, i64 0, i64 0, !dbg !67 ; [#uses=1 type=i64*] [debug line = 45:30]
  call void @llvm.dbg.value(metadata !{i64* %top}, i64 0, metadata !68), !dbg !67 ; [debug line = 45:30] [debug variable = top]
  store i64 %i, i64* %top, align 16, !dbg !70     ; [debug line = 50:2]
  %stack.addr = getelementptr inbounds [10 x [2 x i64]]* %stack, i64 0, i64 0, i64 1, !dbg !71 ; [#uses=1 type=i64*] [debug line = 51:2]
  store i64 %f, i64* %stack.addr, align 8, !dbg !71 ; [debug line = 51:2]
  br label %1, !dbg !72                           ; [debug line = 53:2]

; <label>:1                                       ; preds = %5, %0
  %stack_size = phi i64 [ 0, %0 ], [ %stack_size.1, %5 ] ; [#uses=4 type=i64]
  %top.0.idx = phi i64 [ 0, %0 ], [ %stack_size.1, %5 ] ; [#uses=1 type=i64]
  %stack.addr.1 = getelementptr [10 x [2 x i64]]* %stack, i64 0, i64 %top.0.idx, i64 0, !dbg !73 ; [#uses=3 type=i64*] [debug line = 73:3]
  %tmp = icmp sgt i64 %stack_size, -1, !dbg !72   ; [#uses=1 type=i1] [debug line = 53:2]
  br i1 %tmp, label %2, label %6, !dbg !72        ; [debug line = 53:2]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 54:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 55:1]
  %stack.load = load i64* %stack.addr.1, align 8, !dbg !77 ; [#uses=4 type=i64] [debug line = 55:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %stack.load) nounwind
  %stack.addr.2 = getelementptr inbounds i64* %stack.addr.1, i64 1, !dbg !77 ; [#uses=1 type=i64*] [debug line = 55:3]
  %stack.load.1 = load i64* %stack.addr.2, align 8, !dbg !77 ; [#uses=4 type=i64] [debug line = 55:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %stack.load.1) nounwind
  %tmp.1 = icmp slt i64 %stack.load, %stack.load.1, !dbg !77 ; [#uses=1 type=i1] [debug line = 55:3]
  br i1 %tmp.1, label %3, label %4, !dbg !77      ; [debug line = 55:3]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %stack.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %stack.load.1) nounwind
  %pivot_position = call fastcc i64 @partition(i64 %stack.load, i64 %stack.load.1, i64* %a), !dbg !78 ; [#uses=2 type=i64] [debug line = 57:21]
  call void @llvm.dbg.value(metadata !{i64 %pivot_position}, i64 0, metadata !80), !dbg !78 ; [debug line = 57:21] [debug variable = pivot_position]
  %base = load i64* %stack.addr.1, align 8, !dbg !81 ; [#uses=2 type=i64] [debug line = 59:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %base) nounwind
  call void @llvm.dbg.value(metadata !{i64 %base}, i64 0, metadata !82), !dbg !81 ; [debug line = 59:4] [debug variable = base]
  %tmp.3 = add nsw i64 %pivot_position, 1, !dbg !83 ; [#uses=1 type=i64] [debug line = 61:4]
  %stack.addr.3 = getelementptr inbounds [10 x [2 x i64]]* %stack, i64 0, i64 %stack_size, i64 0, !dbg !83 ; [#uses=1 type=i64*] [debug line = 61:4]
  store i64 %tmp.3, i64* %stack.addr.3, align 16, !dbg !83 ; [debug line = 61:4]
  %stack_size.2 = add nsw i64 %stack_size, 1, !dbg !84 ; [#uses=3 type=i64] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size.2}, i64 0, metadata !85), !dbg !84 ; [debug line = 63:4] [debug variable = stack_size]
  %stack.addr.4 = getelementptr inbounds [10 x [2 x i64]]* %stack, i64 0, i64 %stack_size.2, i64 0, !dbg !86 ; [#uses=1 type=i64*] [debug line = 64:4]
  store i64 %base, i64* %stack.addr.4, align 16, !dbg !86 ; [debug line = 64:4]
  %tmp.5 = add nsw i64 %pivot_position, -1, !dbg !87 ; [#uses=1 type=i64] [debug line = 65:4]
  %stack.addr.5 = getelementptr inbounds [10 x [2 x i64]]* %stack, i64 0, i64 %stack_size.2, i64 1, !dbg !87 ; [#uses=1 type=i64*] [debug line = 65:4]
  store i64 %tmp.5, i64* %stack.addr.5, align 8, !dbg !87 ; [debug line = 65:4]
  br label %5, !dbg !88                           ; [debug line = 67:3]

; <label>:4                                       ; preds = %2
  %stack_size.3 = add nsw i64 %stack_size, -1, !dbg !89 ; [#uses=1 type=i64] [debug line = 69:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size.3}, i64 0, metadata !85), !dbg !89 ; [debug line = 69:4] [debug variable = stack_size]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %stack_size.1 = phi i64 [ %stack_size.2, %3 ], [ %stack_size.3, %4 ], !dbg !73 ; [#uses=2 type=i64] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !68), !dbg !73 ; [debug line = 73:3] [debug variable = top]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !91 ; [#uses=0 type=i32] [debug line = 74:2]
  br label %1, !dbg !91                           ; [debug line = 74:2]

; <label>:6                                       ; preds = %1
  ret void, !dbg !92                              ; [debug line = 75:1]
}

; [#uses=1]
define internal fastcc i64 @partition(i64 %init, i64 %end, i64* %a) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !93), !dbg !94 ; [debug line = 12:37] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !95), !dbg !96 ; [debug line = 12:56] [debug variable = end]
  call void @llvm.dbg.value(metadata !{i64* %a}, i64 0, metadata !97), !dbg !98 ; [debug line = 12:73] [debug variable = a]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %a, i32 10) nounwind, !dbg !99 ; [debug line = 13:2]
  %a.addr = getelementptr inbounds i64* %a, i64 %init, !dbg !101 ; [#uses=1 type=i64*] [debug line = 14:29]
  %pivot = load i64* %a.addr, align 8, !dbg !101  ; [#uses=3 type=i64] [debug line = 14:29]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %pivot) nounwind
  call void @llvm.dbg.value(metadata !{i64 %pivot}, i64 0, metadata !102), !dbg !101 ; [debug line = 14:29] [debug variable = pivot]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !103), !dbg !104 ; [debug line = 15:24] [debug variable = sup]
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !105), !dbg !106 ; [debug line = 16:25] [debug variable = inf]
  br label %1, !dbg !107                          ; [debug line = 18:2]

; <label>:1                                       ; preds = %8, %0
  %sup = phi i64 [ %end, %0 ], [ %sup.1.lcssa, %8 ] ; [#uses=1 type=i64]
  %inf = phi i64 [ %init, %0 ], [ %inf.1.lcssa, %8 ] ; [#uses=1 type=i64]
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !108 ; [debug line = 19:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 19:3]
  br label %2, !dbg !110                          ; [debug line = 20:3]

; <label>:2                                       ; preds = %4, %1
  %inf.1 = phi i64 [ %inf, %1 ], [ %inf.2, %4 ]   ; [#uses=5 type=i64]
  %tmp = icmp sgt i64 %inf.1, %end, !dbg !110     ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp, label %.critedge, label %3, !dbg !110 ; [debug line = 20:3]

; <label>:3                                       ; preds = %2
  %a.addr.2 = getelementptr inbounds i64* %a, i64 %inf.1, !dbg !110 ; [#uses=1 type=i64*] [debug line = 20:3]
  %a.load = load i64* %a.addr.2, align 8, !dbg !110 ; [#uses=2 type=i64] [debug line = 20:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %a.load) nounwind
  %tmp.7 = icmp sgt i64 %a.load, %pivot, !dbg !110 ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp.7, label %.critedge, label %4

; <label>:4                                       ; preds = %3
  %inf.2 = add nsw i64 %inf.1, 1, !dbg !111       ; [#uses=1 type=i64] [debug line = 21:4]
  call void @llvm.dbg.value(metadata !{i64 %inf.2}, i64 0, metadata !105), !dbg !111 ; [debug line = 21:4] [debug variable = inf]
  br label %2, !dbg !111                          ; [debug line = 21:4]

.critedge:                                        ; preds = %3, %2
  %inf.1.lcssa = phi i64 [ %inf.1, %3 ], [ %inf.1, %2 ] ; [#uses=3 type=i64]
  br label %5, !dbg !112                          ; [debug line = 23:3]

; <label>:5                                       ; preds = %6, %.critedge
  %sup.1 = phi i64 [ %sup, %.critedge ], [ %sup.2, %6 ] ; [#uses=3 type=i64]
  %a.addr.3 = getelementptr inbounds i64* %a, i64 %sup.1, !dbg !112 ; [#uses=1 type=i64*] [debug line = 23:3]
  %a.load.1 = load i64* %a.addr.3, align 8, !dbg !112 ; [#uses=2 type=i64] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %a.load.1) nounwind
  %tmp.9 = icmp sgt i64 %a.load.1, %pivot, !dbg !112 ; [#uses=1 type=i1] [debug line = 23:3]
  br i1 %tmp.9, label %6, label %7, !dbg !112     ; [debug line = 23:3]

; <label>:6                                       ; preds = %5
  %sup.2 = add nsw i64 %sup.1, -1, !dbg !113      ; [#uses=1 type=i64] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i64 %sup.2}, i64 0, metadata !103), !dbg !113 ; [debug line = 24:4] [debug variable = sup]
  br label %5, !dbg !113                          ; [debug line = 24:4]

; <label>:7                                       ; preds = %5
  %sup.1.lcssa = phi i64 [ %sup.1, %5 ]           ; [#uses=4 type=i64]
  %tmp.11 = add nsw i64 %sup.1.lcssa, 1, !dbg !114 ; [#uses=1 type=i64] [debug line = 27:3]
  %tmp.12 = icmp slt i64 %inf.1.lcssa, %tmp.11, !dbg !114 ; [#uses=1 type=i1] [debug line = 27:3]
  br i1 %tmp.12, label %8, label %9, !dbg !114    ; [debug line = 27:3]

; <label>:8                                       ; preds = %7
  call fastcc void @swap(i64 %inf.1.lcssa, i64 %sup.1.lcssa, i64* %a), !dbg !115 ; [debug line = 28:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !116 ; [#uses=0 type=i32] [debug line = 32:2]
  br label %1, !dbg !116                          ; [debug line = 32:2]

; <label>:9                                       ; preds = %7
  %sup.1.lcssa.lcssa = phi i64 [ %sup.1.lcssa, %7 ] ; [#uses=2 type=i64]
  call fastcc void @swap(i64 %init, i64 %sup.1.lcssa.lcssa, i64* %a), !dbg !117 ; [debug line = 34:2]
  ret i64 %sup.1.lcssa.lcssa, !dbg !118           ; [debug line = 35:2]
}

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

; [#uses=10]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29, !36, !38}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/quicksort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64, i64*)* @swap, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Quicksort.prj/quicksort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"partition", metadata !"partition", metadata !"", metadata !6, i32 12, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64*)* @partition, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !9, metadata !9, metadata !9, metadata !11}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"quicksort", metadata !"quicksort", metadata !"", metadata !6, i32 39, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64, i64*)* @quicksort, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
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
!29 = metadata !{void (i64, i64, i64*)* @swap, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"a"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{i64 (i64, i64, i64*)* @partition, metadata !30, metadata !31, metadata !32, metadata !33, metadata !37, metadata !35}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"init", metadata !"end", metadata !"a"}
!38 = metadata !{void (i64, i64, i64*)* @quicksort, metadata !30, metadata !31, metadata !32, metadata !33, metadata !39, metadata !35}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"f", metadata !"a"}
!40 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 4, i32 24, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 4, i32 46, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 50331652, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 4, i32 66, metadata !5, null}
!46 = metadata !{i32 5, i32 2, metadata !47, null}
!47 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 7, i32 29, metadata !47, null}
!49 = metadata !{i32 786688, metadata !47, metadata !"b", metadata !6, i32 7, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 8, i32 2, metadata !47, null}
!51 = metadata !{i32 9, i32 2, metadata !47, null}
!52 = metadata !{i32 10, i32 1, metadata !47, null}
!53 = metadata !{i32 786689, metadata !18, metadata !"i", metadata !6, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 39, i32 29, metadata !18, null}
!55 = metadata !{i32 786689, metadata !18, metadata !"f", metadata !6, i32 33554471, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 39, i32 45, metadata !18, null}
!57 = metadata !{i32 786689, metadata !18, metadata !"a", metadata !6, i32 50331687, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 39, i32 60, metadata !18, null}
!59 = metadata !{i32 40, i32 2, metadata !60, null}
!60 = metadata !{i32 786443, metadata !18, i32 40, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786688, metadata !60, metadata !"stack", metadata !6, i32 41, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !12, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64, metadata !65}
!64 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!66 = metadata !{i32 41, i32 14, metadata !60, null}
!67 = metadata !{i32 45, i32 30, metadata !60, null}
!68 = metadata !{i32 786688, metadata !60, metadata !"top", metadata !6, i32 45, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 50, i32 2, metadata !60, null}
!71 = metadata !{i32 51, i32 2, metadata !60, null}
!72 = metadata !{i32 53, i32 2, metadata !60, null}
!73 = metadata !{i32 73, i32 3, metadata !74, null}
!74 = metadata !{i32 786443, metadata !60, i32 54, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 54, i32 3, metadata !74, null}
!76 = metadata !{i32 55, i32 1, metadata !74, null}
!77 = metadata !{i32 55, i32 3, metadata !74, null}
!78 = metadata !{i32 57, i32 21, metadata !79, null}
!79 = metadata !{i32 786443, metadata !74, i32 56, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786688, metadata !60, metadata !"pivot_position", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 59, i32 4, metadata !79, null}
!82 = metadata !{i32 786688, metadata !60, metadata !"base", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 61, i32 4, metadata !79, null}
!84 = metadata !{i32 63, i32 4, metadata !79, null}
!85 = metadata !{i32 786688, metadata !60, metadata !"stack_size", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 64, i32 4, metadata !79, null}
!87 = metadata !{i32 65, i32 4, metadata !79, null}
!88 = metadata !{i32 67, i32 3, metadata !79, null}
!89 = metadata !{i32 69, i32 4, metadata !90, null}
!90 = metadata !{i32 786443, metadata !74, i32 67, i32 8, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 74, i32 2, metadata !74, null}
!92 = metadata !{i32 75, i32 1, metadata !60, null}
!93 = metadata !{i32 786689, metadata !15, metadata !"init", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 12, i32 37, metadata !15, null}
!95 = metadata !{i32 786689, metadata !15, metadata !"end", metadata !6, i32 33554444, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 12, i32 56, metadata !15, null}
!97 = metadata !{i32 786689, metadata !15, metadata !"a", metadata !6, i32 50331660, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 12, i32 73, metadata !15, null}
!99 = metadata !{i32 13, i32 2, metadata !100, null}
!100 = metadata !{i32 786443, metadata !15, i32 13, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 14, i32 29, metadata !100, null}
!102 = metadata !{i32 786688, metadata !100, metadata !"pivot", metadata !6, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786688, metadata !100, metadata !"sup", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 15, i32 24, metadata !100, null}
!105 = metadata !{i32 786688, metadata !100, metadata !"inf", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 16, i32 25, metadata !100, null}
!107 = metadata !{i32 18, i32 2, metadata !100, null}
!108 = metadata !{i32 19, i32 3, metadata !109, null}
!109 = metadata !{i32 786443, metadata !100, i32 19, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 20, i32 3, metadata !109, null}
!111 = metadata !{i32 21, i32 4, metadata !109, null}
!112 = metadata !{i32 23, i32 3, metadata !109, null}
!113 = metadata !{i32 24, i32 4, metadata !109, null}
!114 = metadata !{i32 27, i32 3, metadata !109, null}
!115 = metadata !{i32 28, i32 4, metadata !109, null}
!116 = metadata !{i32 32, i32 2, metadata !109, null}
!117 = metadata !{i32 34, i32 2, metadata !100, null}
!118 = metadata !{i32 35, i32 2, metadata !100, null}
