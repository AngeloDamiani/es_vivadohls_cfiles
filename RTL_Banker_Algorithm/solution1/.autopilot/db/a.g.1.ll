; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@banker_algorithm.str = internal unnamed_addr constant [17 x i8] c"banker_algorithm\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i64 @banker_algorithm(i64* %available, [3 x i64]* %allocated, [3 x i64]* %max, [3 x i64]* %need) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i64 0) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @banker_algorithm.str) nounwind
  call void @llvm.dbg.value(metadata !{i64* %available}, i64 0, metadata !41), !dbg !42 ; [debug line = 5:42] [debug variable = available]
  call void @llvm.dbg.value(metadata !{[3 x i64]* %allocated}, i64 0, metadata !43), !dbg !44 ; [debug line = 5:68] [debug variable = allocated]
  call void @llvm.dbg.value(metadata !{[3 x i64]* %max}, i64 0, metadata !45), !dbg !46 ; [debug line = 5:97] [debug variable = max]
  call void @llvm.dbg.value(metadata !{[3 x i64]* %need}, i64 0, metadata !47), !dbg !48 ; [debug line = 5:120] [debug variable = need]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %max, i32 4) nounwind, !dbg !49 ; [debug line = 6:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %need, i32 4) nounwind, !dbg !51 ; [debug line = 6:32]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %available, i32 3) nounwind, !dbg !52 ; [debug line = 6:63]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %allocated, i32 4) nounwind, !dbg !53 ; [debug line = 6:99]
  br label %1, !dbg !54                           ; [debug line = 7:24]

; <label>:1                                       ; preds = %3, %0
  %i = phi i64 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=4 type=i64]
  %tmp = icmp slt i64 %i, 4, !dbg !54             ; [#uses=1 type=i1] [debug line = 7:24]
  br i1 %tmp, label %.preheader.preheader, label %.loopexit.loopexit6, !dbg !54 ; [debug line = 7:24]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !56                  ; [debug line = 12:25]

.preheader:                                       ; preds = %.critedge, %.preheader.preheader
  %j = phi i64 [ %j.1, %.critedge ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i64]
  %tmp.1 = icmp slt i64 %j, 3, !dbg !56           ; [#uses=1 type=i1] [debug line = 12:25]
  br i1 %tmp.1, label %2, label %3, !dbg !56      ; [debug line = 12:25]

; <label>:2                                       ; preds = %.preheader
  %need.addr = getelementptr inbounds [3 x i64]* %need, i64 %i, i64 %j, !dbg !59 ; [#uses=3 type=i64*] [debug line = 17:4]
  %need.load = load i64* %need.addr, align 8, !dbg !59 ; [#uses=2 type=i64] [debug line = 17:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %need.load) nounwind
  %available.addr = getelementptr inbounds i64* %available, i64 %j, !dbg !59 ; [#uses=4 type=i64*] [debug line = 17:4]
  %available.load = load i64* %available.addr, align 8, !dbg !59 ; [#uses=2 type=i64] [debug line = 17:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %available.load) nounwind
  %tmp.2 = sub nsw i64 %available.load, %need.load, !dbg !59 ; [#uses=1 type=i64] [debug line = 17:4]
  store i64 %tmp.2, i64* %available.addr, align 8, !dbg !59 ; [debug line = 17:4]
  %need.load.1 = load i64* %need.addr, align 8, !dbg !61 ; [#uses=2 type=i64] [debug line = 18:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %need.load.1) nounwind
  %allocated.addr = getelementptr inbounds [3 x i64]* %allocated, i64 %i, i64 %j, !dbg !61 ; [#uses=2 type=i64*] [debug line = 18:4]
  %allocated.load = load i64* %allocated.addr, align 8, !dbg !61 ; [#uses=2 type=i64] [debug line = 18:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %allocated.load) nounwind
  %tmp.3 = add nsw i64 %allocated.load, %need.load.1, !dbg !61 ; [#uses=3 type=i64] [debug line = 18:4]
  store i64 %tmp.3, i64* %allocated.addr, align 8, !dbg !61 ; [debug line = 18:4]
  %need.load.2 = load i64* %need.addr, align 8, !dbg !62 ; [#uses=2 type=i64] [debug line = 21:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %need.load.2) nounwind
  %available.load.1 = load i64* %available.addr, align 8, !dbg !62 ; [#uses=4 type=i64] [debug line = 21:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %available.load.1) nounwind
  %tmp.4 = icmp sgt i64 %need.load.2, %available.load.1, !dbg !62 ; [#uses=1 type=i1] [debug line = 21:4]
  br i1 %tmp.4, label %.loopexit.loopexit, label %.critedge, !dbg !62 ; [debug line = 21:4]

.critedge:                                        ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %tmp.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %available.load.1) nounwind
  %tmp.6 = add nsw i64 %available.load.1, %tmp.3, !dbg !63 ; [#uses=1 type=i64] [debug line = 24:5]
  store i64 %tmp.6, i64* %available.addr, align 8, !dbg !63 ; [debug line = 24:5]
  %j.1 = add nsw i64 %j, 1, !dbg !65              ; [#uses=1 type=i64] [debug line = 14:4]
  call void @llvm.dbg.value(metadata !{i64 %j.1}, i64 0, metadata !66), !dbg !65 ; [debug line = 14:4] [debug variable = j]
  br label %.preheader, !dbg !65                  ; [debug line = 14:4]

; <label>:3                                       ; preds = %.preheader
  %i.1 = add nsw i64 %i, 1, !dbg !68              ; [#uses=1 type=i64] [debug line = 9:3]
  call void @llvm.dbg.value(metadata !{i64 %i.1}, i64 0, metadata !69), !dbg !68 ; [debug line = 9:3] [debug variable = i]
  br label %1, !dbg !68                           ; [debug line = 9:3]

.loopexit.loopexit:                               ; preds = %2
  br label %.loopexit

.loopexit.loopexit6:                              ; preds = %1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit6, %.loopexit.loopexit
  %.0 = phi i64 [ -1, %.loopexit.loopexit ], [ 1, %.loopexit.loopexit6 ] ; [#uses=1 type=i64]
  ret i64 %.0, !dbg !70                           ; [debug line = 35:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=8]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/banker_algorithm.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"banker_algorithm", metadata !"banker_algorithm", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64*, [3 x i64]*, [3 x i64]*, [3 x i64]*)* @banker_algorithm, null, null, metadata !16, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Banker_Algorithm/solution1/banker_algorithm.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 64, i32 0, i32 0, metadata !9, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
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
!28 = metadata !{i64 (i64*, [3 x i64]*, [3 x i64]*, [3 x i64]*)* @banker_algorithm, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"available", metadata !"allocated", metadata !"max", metadata !"need"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 63, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"return", metadata !39, metadata !"TARGET_TYPE", i32 0, i32 63}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 1, i32 0}
!41 = metadata !{i32 786689, metadata !5, metadata !"available", metadata !6, i32 16777221, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 5, i32 42, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"allocated", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 5, i32 68, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"max", metadata !6, i32 50331653, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 5, i32 97, metadata !5, null}
!47 = metadata !{i32 786689, metadata !5, metadata !"need", metadata !6, i32 67108869, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 5, i32 120, metadata !5, null}
!49 = metadata !{i32 6, i32 2, metadata !50, null}
!50 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 6, i32 32, metadata !50, null}
!52 = metadata !{i32 6, i32 63, metadata !50, null}
!53 = metadata !{i32 6, i32 99, metadata !50, null}
!54 = metadata !{i32 7, i32 24, metadata !55, null}
!55 = metadata !{i32 786443, metadata !50, i32 7, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 12, i32 25, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 12, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !55, i32 10, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 17, i32 4, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 15, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 18, i32 4, metadata !60, null}
!62 = metadata !{i32 21, i32 4, metadata !60, null}
!63 = metadata !{i32 24, i32 5, metadata !64, null}
!64 = metadata !{i32 786443, metadata !60, i32 23, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 14, i32 4, metadata !57, null}
!66 = metadata !{i32 786688, metadata !57, metadata !"j", metadata !6, i32 12, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!68 = metadata !{i32 9, i32 3, metadata !55, null}
!69 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !6, i32 7, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 35, i32 1, metadata !50, null}
