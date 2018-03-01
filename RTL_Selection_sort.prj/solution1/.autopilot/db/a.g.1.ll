; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selection_sort.str = internal unnamed_addr constant [15 x i8] c"selection_sort\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @swap(i8 signext %index_1, i8 signext %index_2, float* %arr) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %index_1}, i64 0, metadata !41), !dbg !42 ; [debug line = 4:18] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i8 %index_2}, i64 0, metadata !43), !dbg !44 ; [debug line = 4:34] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{float* %arr}, i64 0, metadata !45), !dbg !46 ; [debug line = 4:49] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %arr, i32 10) nounwind, !dbg !47 ; [debug line = 5:2]
  %tmp = sext i8 %index_1 to i64, !dbg !49        ; [#uses=1 type=i64] [debug line = 6:25]
  %arr.addr = getelementptr inbounds float* %arr, i64 %tmp, !dbg !49 ; [#uses=2 type=float*] [debug line = 6:25]
  %b = load float* %arr.addr, align 4, !dbg !49   ; [#uses=2 type=float] [debug line = 6:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %b) nounwind
  call void @llvm.dbg.value(metadata !{float %b}, i64 0, metadata !50), !dbg !49 ; [debug line = 6:25] [debug variable = b]
  %tmp.1 = sext i8 %index_2 to i64, !dbg !51      ; [#uses=1 type=i64] [debug line = 7:3]
  %arr.addr.1 = getelementptr inbounds float* %arr, i64 %tmp.1, !dbg !51 ; [#uses=2 type=float*] [debug line = 7:3]
  %arr.load = load float* %arr.addr.1, align 4, !dbg !51 ; [#uses=2 type=float] [debug line = 7:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %arr.load) nounwind
  store float %arr.load, float* %arr.addr, align 4, !dbg !51 ; [debug line = 7:3]
  store float %b, float* %arr.addr.1, align 4, !dbg !52 ; [debug line = 8:3]
  ret void, !dbg !53                              ; [debug line = 9:1]
}

; [#uses=0]
define void @selection_sort(float* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @selection_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %arr}, i64 0, metadata !54), !dbg !55 ; [debug line = 11:27] [debug variable = arr]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %arr, i32 10) nounwind, !dbg !56 ; [debug line = 12:2]
  br label %1, !dbg !58                           ; [debug line = 15:20]

; <label>:1                                       ; preds = %3, %0
  %min_idx = phi i8 [ 0, %0 ], [ %i, %3 ]         ; [#uses=5 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %min_idx}, i64 0, metadata !60), !dbg !61 ; [debug line = 19:5] [debug variable = min_idx]
  %exitcond1 = icmp eq i8 %min_idx, 9, !dbg !58   ; [#uses=1 type=i1] [debug line = 15:20]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !58 ; [debug line = 15:20]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !63                  ; [debug line = 21:24]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %min_idx1 = phi i8 [ %j, %2 ], [ %min_idx, %.preheader.preheader ] ; [#uses=3 type=i8]
  %j.0.in = phi i8 [ %j.1, %2 ], [ %min_idx, %.preheader.preheader ] ; [#uses=2 type=i8]
  %j.1 = add i8 %j.0.in, 1, !dbg !63              ; [#uses=3 type=i8] [debug line = 21:24]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !65), !dbg !63 ; [debug line = 21:24] [debug variable = j]
  %exitcond = icmp eq i8 %j.0.in, 9, !dbg !63     ; [#uses=1 type=i1] [debug line = 21:24]
  br i1 %exitcond, label %3, label %2, !dbg !63   ; [debug line = 21:24]

; <label>:2                                       ; preds = %.preheader
  %tmp = sext i8 %j.1 to i64, !dbg !66            ; [#uses=1 type=i64] [debug line = 24:7]
  %arr.addr = getelementptr inbounds float* %arr, i64 %tmp, !dbg !66 ; [#uses=1 type=float*] [debug line = 24:7]
  %arr.load = load float* %arr.addr, align 4, !dbg !66 ; [#uses=2 type=float] [debug line = 24:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %arr.load) nounwind
  %tmp.2 = sext i8 %min_idx1 to i64, !dbg !66     ; [#uses=1 type=i64] [debug line = 24:7]
  %arr.addr.2 = getelementptr inbounds float* %arr, i64 %tmp.2, !dbg !66 ; [#uses=1 type=float*] [debug line = 24:7]
  %arr.load.1 = load float* %arr.addr.2, align 4, !dbg !66 ; [#uses=2 type=float] [debug line = 24:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %arr.load.1) nounwind
  %tmp.3 = fcmp olt float %arr.load, %arr.load.1, !dbg !66 ; [#uses=1 type=i1] [debug line = 24:7]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !60), !dbg !67 ; [debug line = 25:9] [debug variable = min_idx]
  %j = select i1 %tmp.3, i8 %j.1, i8 %min_idx1, !dbg !66 ; [#uses=1 type=i8] [debug line = 24:7]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !65), !dbg !66 ; [debug line = 24:7] [debug variable = j]
  br label %.preheader, !dbg !68                  ; [debug line = 23:10]

; <label>:3                                       ; preds = %.preheader
  %min_idx.0.lcssa = phi i8 [ %min_idx1, %.preheader ] ; [#uses=1 type=i8]
  call fastcc void @swap(i8 signext %min_idx.0.lcssa, i8 signext %min_idx, float* %arr), !dbg !69 ; [debug line = 27:7]
  %i = add i8 %min_idx, 1, !dbg !70               ; [#uses=1 type=i8] [debug line = 17:8]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !71), !dbg !70 ; [debug line = 17:8] [debug variable = i]
  br label %1, !dbg !70                           ; [debug line = 17:8]

; <label>:4                                       ; preds = %1
  ret void, !dbg !72                              ; [debug line = 29:1]
}

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28, !35}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/selection_sort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i8, float*)* @swap, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_selection_sort.prj/solution1/selection_sort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"selection_sort", metadata !"selection_sort", metadata !"", metadata !6, i32 11, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @selection_sort, null, null, metadata !13, i32 12} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !11}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !23, metadata !24, metadata !25}
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 315, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 316, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 317, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !27, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{void (i8, i8, float*)* @swap, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"float*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{void (float*)* @selection_sort, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !34}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!37 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!41 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 4, i32 18, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 4, i32 34, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 50331652, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 4, i32 49, metadata !5, null}
!47 = metadata !{i32 5, i32 2, metadata !48, null}
!48 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 6, i32 25, metadata !48, null}
!50 = metadata !{i32 786688, metadata !48, metadata !"b", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 7, i32 3, metadata !48, null}
!52 = metadata !{i32 8, i32 3, metadata !48, null}
!53 = metadata !{i32 9, i32 1, metadata !48, null}
!54 = metadata !{i32 786689, metadata !15, metadata !"arr", metadata !6, i32 16777227, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 11, i32 27, metadata !15, null}
!56 = metadata !{i32 12, i32 2, metadata !57, null}
!57 = metadata !{i32 786443, metadata !15, i32 12, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 15, i32 20, metadata !59, null}
!59 = metadata !{i32 786443, metadata !57, i32 15, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786688, metadata !57, metadata !"min_idx", metadata !6, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 19, i32 5, metadata !62, null}
!62 = metadata !{i32 786443, metadata !59, i32 18, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 21, i32 24, metadata !64, null}
!64 = metadata !{i32 786443, metadata !62, i32 21, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786688, metadata !64, metadata !"j", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 24, i32 7, metadata !64, null}
!67 = metadata !{i32 25, i32 9, metadata !64, null}
!68 = metadata !{i32 23, i32 10, metadata !64, null}
!69 = metadata !{i32 27, i32 7, metadata !62, null}
!70 = metadata !{i32 17, i32 8, metadata !59, null}
!71 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 29, i32 1, metadata !57, null}
