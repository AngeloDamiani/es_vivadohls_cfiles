; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcd.str = internal unnamed_addr constant [4 x i8] c"gcd\00" ; [#uses=1 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"GCDWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MODULOWHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
define internal fastcc float @modulo(float %x, float %y) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !23), !dbg !24 ; [debug line = 3:32] [debug variable = x]
  call void @llvm.dbg.value(metadata !{float %y}, i64 0, metadata !25), !dbg !26 ; [debug line = 3:47] [debug variable = y]
  call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !27), !dbg !29 ; [debug line = 5:27] [debug variable = result]
  br label %1, !dbg !30                           ; [debug line = 8:5]

; <label>:1                                       ; preds = %2, %0
  %result = phi float [ %x, %0 ], [ %result.1, %2 ] ; [#uses=3 type=float]
  %tmp = fcmp ult float %result, %y, !dbg !30     ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %tmp, label %3, label %2, !dbg !30        ; [debug line = 8:5]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !31 ; [debug line = 9:9]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !31 ; [#uses=1 type=i32] [debug line = 9:9]
  %result.1 = fsub float %result, %y, !dbg !31    ; [#uses=1 type=float] [debug line = 9:9]
  call void @llvm.dbg.value(metadata !{float %result.1}, i64 0, metadata !27), !dbg !31 ; [debug line = 9:9] [debug variable = result]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !33 ; [#uses=0 type=i32] [debug line = 9:19]
  br label %1, !dbg !33                           ; [debug line = 9:19]

; <label>:3                                       ; preds = %1
  %result.0.lcssa = phi float [ %result, %1 ]     ; [#uses=1 type=float]
  ret float %result.0.lcssa, !dbg !34             ; [debug line = 11:5]
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @gcd(float %m, float %n) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gcd.str) nounwind
  call void @llvm.dbg.value(metadata !{float %m}, i64 0, metadata !41), !dbg !42 ; [debug line = 14:29] [debug variable = m]
  call void @llvm.dbg.value(metadata !{float %n}, i64 0, metadata !43), !dbg !44 ; [debug line = 14:44] [debug variable = n]
  %tmp = fcmp oeq float %m, 0.000000e+00, !dbg !45 ; [#uses=1 type=i1] [debug line = 18:5]
  %tmp.2 = fcmp oeq float %n, 0.000000e+00, !dbg !45 ; [#uses=1 type=i1] [debug line = 18:5]
  %or.cond = and i1 %tmp, %tmp.2, !dbg !45        ; [#uses=1 type=i1] [debug line = 18:5]
  br i1 %or.cond, label %.loopexit, label %1, !dbg !45 ; [debug line = 18:5]

; <label>:1                                       ; preds = %0
  %tmp.3 = fcmp olt float %m, 0.000000e+00, !dbg !47 ; [#uses=1 type=i1] [debug line = 21:5]
  br i1 %tmp.3, label %2, label %._crit_edge, !dbg !47 ; [debug line = 21:5]

; <label>:2                                       ; preds = %1
  %m.assign = fsub float -0.000000e+00, %m, !dbg !48 ; [#uses=1 type=float] [debug line = 22:9]
  call void @llvm.dbg.value(metadata !{float %m.assign}, i64 0, metadata !41), !dbg !48 ; [debug line = 22:9] [debug variable = m]
  br label %._crit_edge, !dbg !48                 ; [debug line = 22:9]

._crit_edge:                                      ; preds = %2, %1
  %. = phi float [ %m.assign, %2 ], [ %m, %1 ]    ; [#uses=1 type=float]
  %tmp.5 = fcmp olt float %n, 0.000000e+00, !dbg !49 ; [#uses=1 type=i1] [debug line = 23:5]
  br i1 %tmp.5, label %3, label %.preheader.preheader, !dbg !49 ; [debug line = 23:5]

; <label>:3                                       ; preds = %._crit_edge
  %n.assign = fsub float -0.000000e+00, %n, !dbg !50 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %n.assign}, i64 0, metadata !43), !dbg !50 ; [debug line = 24:9] [debug variable = n]
  br label %.preheader.preheader, !dbg !50        ; [debug line = 24:9]

.preheader.preheader:                             ; preds = %3, %._crit_edge
  %.13.ph = phi float [ %n.assign, %3 ], [ %n, %._crit_edge ] ; [#uses=1 type=float]
  br label %.preheader, !dbg !51                  ; [debug line = 27:5]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %m.assign.1 = phi float [ %r, %4 ], [ %.13.ph, %.preheader.preheader ] ; [#uses=3 type=float]
  %.1 = phi float [ %m.assign.1, %4 ], [ %., %.preheader.preheader ] ; [#uses=2 type=float]
  %tmp.7 = fcmp une float %m.assign.1, 0.000000e+00, !dbg !51 ; [#uses=1 type=i1] [debug line = 27:5]
  br i1 %tmp.7, label %4, label %.loopexit.loopexit, !dbg !51 ; [debug line = 27:5]

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !52 ; [debug line = 27:15]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 27:15]
  %r = call fastcc float @modulo(float %.1, float %m.assign.1), !dbg !54 ; [#uses=1 type=float] [debug line = 28:13]
  call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !55), !dbg !54 ; [debug line = 28:13] [debug variable = r]
  call void @llvm.dbg.value(metadata !{float %m.assign.1}, i64 0, metadata !41), !dbg !56 ; [debug line = 29:9] [debug variable = m]
  call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !43), !dbg !57 ; [debug line = 30:9] [debug variable = n]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !58 ; [#uses=0 type=i32] [debug line = 31:5]
  br label %.preheader, !dbg !58                  ; [debug line = 31:5]

.loopexit.loopexit:                               ; preds = %.preheader
  %.1.lcssa = phi float [ %.1, %.preheader ]      ; [#uses=1 type=float]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %.0 = phi float [ -1.000000e+00, %0 ], [ %.1.lcssa, %.loopexit.loopexit ] ; [#uses=1 type=float]
  ret float %.0, !dbg !59                         ; [debug line = 34:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14, !21}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/gcd.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"modulo", metadata !"modulo", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float)* @modulo, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"gcd.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gcd", metadata !"gcd", metadata !"", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float)* @gcd, null, null, metadata !11, i32 14} ; [ DW_TAG_subprogram ]
!14 = metadata !{float (float, float)* @modulo, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE", metadata !"TARGET_TYPE"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{float (float, float)* @gcd, metadata !15, metadata !16, metadata !17, metadata !18, metadata !22, metadata !20}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"m", metadata !"n"}
!23 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 3, i32 32, metadata !5, null}
!25 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 3, i32 47, metadata !5, null}
!27 = metadata !{i32 786688, metadata !28, metadata !"result", metadata !6, i32 5, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 786443, metadata !5, i32 3, i32 50, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 5, i32 27, metadata !28, null}
!30 = metadata !{i32 8, i32 5, metadata !28, null}
!31 = metadata !{i32 9, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !28, i32 9, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 9, i32 19, metadata !32, null}
!34 = metadata !{i32 11, i32 5, metadata !28, null}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"return", metadata !39, metadata !"TARGET_TYPE", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 1, i32 0}
!41 = metadata !{i32 786689, metadata !13, metadata !"m", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 14, i32 29, metadata !13, null}
!43 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 14, i32 44, metadata !13, null}
!45 = metadata !{i32 18, i32 5, metadata !46, null}
!46 = metadata !{i32 786443, metadata !13, i32 14, i32 47, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 21, i32 5, metadata !46, null}
!48 = metadata !{i32 22, i32 9, metadata !46, null}
!49 = metadata !{i32 23, i32 5, metadata !46, null}
!50 = metadata !{i32 24, i32 9, metadata !46, null}
!51 = metadata !{i32 27, i32 5, metadata !46, null}
!52 = metadata !{i32 27, i32 15, metadata !53, null}
!53 = metadata !{i32 786443, metadata !46, i32 27, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 28, i32 13, metadata !53, null}
!55 = metadata !{i32 786688, metadata !46, metadata !"r", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 29, i32 9, metadata !53, null}
!57 = metadata !{i32 30, i32 9, metadata !53, null}
!58 = metadata !{i32 31, i32 5, metadata !53, null}
!59 = metadata !{i32 34, i32 1, metadata !46, null}
