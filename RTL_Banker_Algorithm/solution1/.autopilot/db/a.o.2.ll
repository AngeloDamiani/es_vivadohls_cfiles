; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@banker_algorithm.str = internal unnamed_addr constant [17 x i8] c"banker_algorithm\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i64 @banker_algorithm([3 x i64]* %available, [4 x [3 x i64]]* %allocated, [4 x [3 x i64]]* %max, [4 x [3 x i64]]* %need) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i64]* %available) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [3 x i64]]* %allocated) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [3 x i64]]* %max) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [3 x i64]]* %need) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i64 0) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @banker_algorithm.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i64]* %available}, i64 0, metadata !61), !dbg !63 ; [debug line = 5:42] [debug variable = available]
  call void @llvm.dbg.value(metadata !{[4 x [3 x i64]]* %allocated}, i64 0, metadata !64), !dbg !68 ; [debug line = 5:68] [debug variable = allocated]
  call void @llvm.dbg.value(metadata !{[4 x [3 x i64]]* %max}, i64 0, metadata !69), !dbg !70 ; [debug line = 5:97] [debug variable = max]
  call void @llvm.dbg.value(metadata !{[4 x [3 x i64]]* %need}, i64 0, metadata !71), !dbg !72 ; [debug line = 5:120] [debug variable = need]
  br label %1, !dbg !73                           ; [debug line = 7:24]

; <label>:1                                       ; preds = %5, %0
  %i = phi i3 [ 0, %0 ], [ %i.1, %5 ]             ; [#uses=3 type=i3]
  %i.cast2 = zext i3 %i to i64, !dbg !73          ; [#uses=2 type=i64] [debug line = 7:24]
  %tmp = icmp sgt i3 %i, -1, !dbg !73             ; [#uses=1 type=i1] [debug line = 7:24]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %.loopexit.loopexit4, !dbg !73 ; [debug line = 7:24]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !76                  ; [debug line = 12:25]

.preheader:                                       ; preds = %.critedge, %.preheader.preheader
  %j = phi i2 [ %j.1, %.critedge ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i2]
  %j.cast1 = zext i2 %j to i64, !dbg !76          ; [#uses=3 type=i64] [debug line = 12:25]
  %tmp.1 = icmp eq i2 %j, -1, !dbg !76            ; [#uses=1 type=i1] [debug line = 12:25]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %5, label %4, !dbg !76      ; [debug line = 12:25]

; <label>:4                                       ; preds = %.preheader
  %need.addr = getelementptr [4 x [3 x i64]]* %need, i64 0, i64 %i.cast2, i64 %j.cast1, !dbg !79 ; [#uses=1 type=i64*] [debug line = 17:4]
  %need.load = load i64* %need.addr, align 8, !dbg !79 ; [#uses=3 type=i64] [debug line = 17:4]
  %available.addr = getelementptr [3 x i64]* %available, i64 0, i64 %j.cast1, !dbg !79 ; [#uses=3 type=i64*] [debug line = 17:4]
  %available.load = load i64* %available.addr, align 8, !dbg !79 ; [#uses=2 type=i64] [debug line = 17:4]
  %tmp.2 = sub nsw i64 %available.load, %need.load, !dbg !79 ; [#uses=2 type=i64] [debug line = 17:4]
  store i64 %tmp.2, i64* %available.addr, align 8, !dbg !79 ; [debug line = 17:4]
  %allocated.addr = getelementptr [4 x [3 x i64]]* %allocated, i64 0, i64 %i.cast2, i64 %j.cast1, !dbg !81 ; [#uses=2 type=i64*] [debug line = 18:4]
  %allocated.load = load i64* %allocated.addr, align 8, !dbg !81 ; [#uses=2 type=i64] [debug line = 18:4]
  %tmp.3 = add nsw i64 %need.load, %allocated.load, !dbg !81 ; [#uses=1 type=i64] [debug line = 18:4]
  store i64 %tmp.3, i64* %allocated.addr, align 8, !dbg !81 ; [debug line = 18:4]
  %tmp.4 = icmp sgt i64 %need.load, %tmp.2, !dbg !82 ; [#uses=1 type=i1] [debug line = 21:4]
  br i1 %tmp.4, label %.loopexit.loopexit, label %.critedge, !dbg !82 ; [debug line = 21:4]

.critedge:                                        ; preds = %4
  %tmp.6 = add i64 %available.load, %allocated.load, !dbg !83 ; [#uses=1 type=i64] [debug line = 24:5]
  store i64 %tmp.6, i64* %available.addr, align 8, !dbg !83 ; [debug line = 24:5]
  %j.1 = add i2 %j, 1, !dbg !85                   ; [#uses=1 type=i2] [debug line = 14:4]
  call void @llvm.dbg.value(metadata !{i2 %j.1}, i64 0, metadata !86), !dbg !85 ; [debug line = 14:4] [debug variable = j]
  br label %.preheader, !dbg !85                  ; [debug line = 14:4]

; <label>:5                                       ; preds = %.preheader
  %i.1 = add i3 %i, 1, !dbg !88                   ; [#uses=1 type=i3] [debug line = 9:3]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !89), !dbg !88 ; [debug line = 9:3] [debug variable = i]
  br label %1, !dbg !88                           ; [debug line = 9:3]

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit4:                              ; preds = %1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit4, %.loopexit.loopexit
  %.0 = phi i2 [ -1, %.loopexit.loopexit ], [ 1, %.loopexit.loopexit4 ] ; [#uses=1 type=i2]
  %.0.cast = sext i2 %.0 to i64, !dbg !90         ; [#uses=1 type=i64] [debug line = 35:1]
  ret i64 %.0.cast, !dbg !90                      ; [debug line = 35:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/banker_algorithm.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"banker_algorithm", metadata !"banker_algorithm", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !16, i32 6} ; [ DW_TAG_subprogram ]
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
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"available", metadata !"allocated", metadata !"max", metadata !"need"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 63, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"available", metadata !39, metadata !"long int", i32 0, i32 63}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 2, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 63, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"allocated", metadata !45, metadata !"long int", i32 0, i32 63}
!45 = metadata !{metadata !46, metadata !40}
!46 = metadata !{i32 0, i32 3, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 63, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"max", metadata !45, metadata !"long int", i32 0, i32 63}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"need", metadata !45, metadata !"long int", i32 0, i32 63}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 63, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"return", metadata !59, metadata !"TARGET_TYPE", i32 0, i32 63}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 1, i32 0}
!61 = metadata !{i32 786689, metadata !5, metadata !"available", null, i32 5, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !9, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{i32 5, i32 42, metadata !5, null}
!64 = metadata !{i32 786689, metadata !5, metadata !"allocated", null, i32 5, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 64, i32 0, i32 0, metadata !9, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{metadata !67, metadata !15}
!67 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!68 = metadata !{i32 5, i32 68, metadata !5, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"max", null, i32 5, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 5, i32 97, metadata !5, null}
!71 = metadata !{i32 786689, metadata !5, metadata !"need", null, i32 5, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 5, i32 120, metadata !5, null}
!73 = metadata !{i32 7, i32 24, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 7, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 12, i32 25, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 12, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !74, i32 10, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 17, i32 4, metadata !80, null}
!80 = metadata !{i32 786443, metadata !77, i32 15, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 18, i32 4, metadata !80, null}
!82 = metadata !{i32 21, i32 4, metadata !80, null}
!83 = metadata !{i32 24, i32 5, metadata !84, null}
!84 = metadata !{i32 786443, metadata !80, i32 23, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 14, i32 4, metadata !77, null}
!86 = metadata !{i32 786688, metadata !77, metadata !"j", metadata !6, i32 12, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 9, i32 3, metadata !74, null}
!89 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 7, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 35, i32 1, metadata !75, null}
