; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcd.str = internal unnamed_addr constant [4 x i8] c"gcd\00" ; [#uses=1 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"GCDWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"MODULOWHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @gcd(float %m, float %n) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(float %m) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(float %n) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gcd.str) nounwind
  call void @llvm.dbg.value(metadata !{float %m}, i64 0, metadata !39), !dbg !40 ; [debug line = 14:29] [debug variable = m]
  call void @llvm.dbg.value(metadata !{float %n}, i64 0, metadata !41), !dbg !42 ; [debug line = 14:44] [debug variable = n]
  %m_to_int = bitcast float %m to i32             ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.1 = trunc i32 %m_to_int to i23             ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.1, 0                 ; [#uses=1 type=i1]
  %tmp.2 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp.3 = fcmp oeq float %m, 0.000000e+00, !dbg !43 ; [#uses=1 type=i1] [debug line = 18:5]
  %tmp.4 = and i1 %tmp.2, %tmp.3, !dbg !43        ; [#uses=1 type=i1] [debug line = 18:5]
  %n_to_int = bitcast float %n to i32             ; [#uses=2 type=i32]
  %tmp.5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.6 = trunc i32 %n_to_int to i23             ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp.5, -1                ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp.6, 0                ; [#uses=1 type=i1]
  %tmp.7 = or i1 %notrhs9, %notlhs8               ; [#uses=1 type=i1]
  %tmp.8 = fcmp oeq float %n, 0.000000e+00, !dbg !43 ; [#uses=1 type=i1] [debug line = 18:5]
  %tmp.9 = and i1 %tmp.7, %tmp.8, !dbg !43        ; [#uses=1 type=i1] [debug line = 18:5]
  %or.cond = and i1 %tmp.4, %tmp.9, !dbg !43      ; [#uses=1 type=i1] [debug line = 18:5]
  br i1 %or.cond, label %.loopexit, label %_ifconv, !dbg !43 ; [debug line = 18:5]

_ifconv:                                          ; preds = %0
  %m_to_int2 = bitcast float %m to i32            ; [#uses=2 type=i32]
  %tmp.10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_to_int2, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.11 = trunc i32 %m_to_int2 to i23           ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp.10, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp.11, 0               ; [#uses=1 type=i1]
  %tmp.12 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp.13 = fcmp olt float %m, 0.000000e+00, !dbg !45 ; [#uses=1 type=i1] [debug line = 21:5]
  %tmp.14 = and i1 %tmp.12, %tmp.13, !dbg !45     ; [#uses=1 type=i1] [debug line = 21:5]
  %m.assign_to_int = bitcast float %m to i32, !dbg !46 ; [#uses=1 type=i32] [debug line = 22:9]
  %m.assign_neg = xor i32 %m.assign_to_int, -2147483648, !dbg !46 ; [#uses=1 type=i32] [debug line = 22:9]
  %m.assign = bitcast i32 %m.assign_neg to float, !dbg !46 ; [#uses=1 type=float] [debug line = 22:9]
  call void @llvm.dbg.value(metadata !{float %m.assign}, i64 0, metadata !39), !dbg !46 ; [debug line = 22:9] [debug variable = m]
  %m.assign.1 = select i1 %tmp.14, float %m.assign, float %m ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %m.assign.1}, i64 0, metadata !39), !dbg !40 ; [debug line = 14:29] [debug variable = m]
  %n_to_int4 = bitcast float %n to i32            ; [#uses=2 type=i32]
  %tmp.15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_to_int4, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.16 = trunc i32 %n_to_int4 to i23           ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp.15, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.16, 0               ; [#uses=1 type=i1]
  %tmp.17 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp.18 = fcmp olt float %n, 0.000000e+00, !dbg !47 ; [#uses=1 type=i1] [debug line = 23:5]
  %tmp.19 = and i1 %tmp.17, %tmp.18, !dbg !47     ; [#uses=1 type=i1] [debug line = 23:5]
  %n.assign_to_int = bitcast float %n to i32, !dbg !48 ; [#uses=1 type=i32] [debug line = 24:9]
  %n.assign_neg = xor i32 %n.assign_to_int, -2147483648, !dbg !48 ; [#uses=1 type=i32] [debug line = 24:9]
  %n.assign = bitcast i32 %n.assign_neg to float, !dbg !48 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %n.assign}, i64 0, metadata !41), !dbg !48 ; [debug line = 24:9] [debug variable = n]
  %n.assign.1 = select i1 %tmp.19, float %n.assign, float %n ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %n.assign.1}, i64 0, metadata !41), !dbg !48 ; [debug line = 24:9] [debug variable = n]
  br label %.preheader, !dbg !49                  ; [debug line = 29:9]

.preheader.loopexit:                              ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ifconv
  %m.assign.3 = phi float [ %n.assign.1, %_ifconv ], [ %n.assign.3, %.preheader.loopexit ] ; [#uses=6 type=float]
  %x.assign = phi float [ %m.assign.1, %_ifconv ], [ %m.assign.3, %.preheader.loopexit ] ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %m.assign.3}, i64 0, metadata !39), !dbg !49 ; [debug line = 29:9] [debug variable = m]
  %m.assign.2_to_int = bitcast float %m.assign.3 to i32 ; [#uses=2 type=i32]
  %tmp.20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m.assign.2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.21 = trunc i32 %m.assign.2_to_int to i23   ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp.20, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp.21, 0               ; [#uses=1 type=i1]
  %tmp.22 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %tmp.23 = fcmp oeq float %m.assign.3, 0.000000e+00, !dbg !51 ; [#uses=1 type=i1] [debug line = 27:5]
  %tmp.24 = and i1 %tmp.22, %tmp.23, !dbg !51     ; [#uses=1 type=i1] [debug line = 27:5]
  br i1 %tmp.24, label %.loopexit.loopexit, label %1, !dbg !51 ; [debug line = 27:5]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str1) nounwind, !dbg !52 ; [debug line = 27:15]
  call void @llvm.dbg.value(metadata !{float %x.assign}, i64 0, metadata !53) nounwind, !dbg !55 ; [debug line = 3:32@28:13] [debug variable = x]
  call void @llvm.dbg.value(metadata !{float %m.assign.3}, i64 0, metadata !56) nounwind, !dbg !57 ; [debug line = 3:47@28:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{float %x.assign}, i64 0, metadata !58) nounwind, !dbg !60 ; [debug line = 5:27@28:13] [debug variable = result]
  br label %2, !dbg !61                           ; [debug line = 8:5@28:13]

; <label>:2                                       ; preds = %3, %1
  %n.assign.3 = phi float [ %x.assign, %1 ], [ %result.1, %3 ] ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %n.assign.3}, i64 0, metadata !41), !dbg !62 ; [debug line = 30:9] [debug variable = n]
  call void @llvm.dbg.value(metadata !{float %n.assign.3}, i64 0, metadata !63), !dbg !54 ; [debug line = 28:13] [debug variable = r]
  %n.assign.2_to_int = bitcast float %n.assign.3 to i32 ; [#uses=2 type=i32]
  %tmp.25 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n.assign.2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.26 = trunc i32 %n.assign.2_to_int to i23   ; [#uses=1 type=i23]
  %m.assign.2_to_int7 = bitcast float %m.assign.3 to i32 ; [#uses=2 type=i32]
  %tmp.27 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m.assign.2_to_int7, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.28 = trunc i32 %m.assign.2_to_int7 to i23  ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp.25, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp.26, 0               ; [#uses=1 type=i1]
  %tmp.29 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %notlhs5 = icmp ne i8 %tmp.27, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp.28, 0               ; [#uses=1 type=i1]
  %tmp.30 = or i1 %notrhs5, %notlhs5              ; [#uses=1 type=i1]
  %tmp.31 = and i1 %tmp.29, %tmp.30               ; [#uses=1 type=i1]
  %tmp.32 = fcmp oge float %n.assign.3, %m.assign.3, !dbg !61 ; [#uses=1 type=i1] [debug line = 8:5@28:13]
  %tmp.33 = and i1 %tmp.31, %tmp.32, !dbg !61     ; [#uses=1 type=i1] [debug line = 8:5@28:13]
  br i1 %tmp.33, label %3, label %.preheader.loopexit, !dbg !61 ; [debug line = 8:5@28:13]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str) nounwind, !dbg !64 ; [debug line = 9:9@28:13]
  %result.1 = fsub float %n.assign.3, %m.assign.3, !dbg !64 ; [#uses=1 type=float] [debug line = 9:9@28:13]
  call void @llvm.dbg.value(metadata !{float %result.1}, i64 0, metadata !58) nounwind, !dbg !64 ; [debug line = 9:9@28:13] [debug variable = result]
  br label %2, !dbg !66                           ; [debug line = 9:19@28:13]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %.0 = phi float [ -1.000000e+00, %0 ], [ %x.assign, %.loopexit.loopexit ] ; [#uses=1 type=float]
  ret float %.0, !dbg !67                         ; [debug line = 34:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=7]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/gcd.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"modulo", metadata !"modulo", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"gcd.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gcd", metadata !"gcd", metadata !"", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float)* @gcd, null, null, metadata !11, i32 14} ; [ DW_TAG_subprogram ]
!14 = metadata !{null, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE", metadata !"TARGET_TYPE"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{float (float, float)* @gcd, metadata !15, metadata !16, metadata !17, metadata !18, metadata !22, metadata !20}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"m", metadata !"n"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"m", metadata !27, metadata !"float", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"n", metadata !27, metadata !"float", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"return", metadata !37, metadata !"TARGET_TYPE", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 1, i32 0}
!39 = metadata !{i32 786689, metadata !13, metadata !"m", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 14, i32 29, metadata !13, null}
!41 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 14, i32 44, metadata !13, null}
!43 = metadata !{i32 18, i32 5, metadata !44, null}
!44 = metadata !{i32 786443, metadata !13, i32 14, i32 47, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 21, i32 5, metadata !44, null}
!46 = metadata !{i32 22, i32 9, metadata !44, null}
!47 = metadata !{i32 23, i32 5, metadata !44, null}
!48 = metadata !{i32 24, i32 9, metadata !44, null}
!49 = metadata !{i32 29, i32 9, metadata !50, null}
!50 = metadata !{i32 786443, metadata !44, i32 27, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 27, i32 5, metadata !44, null}
!52 = metadata !{i32 27, i32 15, metadata !50, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !9, i32 0, metadata !54} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 28, i32 13, metadata !50, null}
!55 = metadata !{i32 3, i32 32, metadata !5, metadata !54}
!56 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554435, metadata !9, i32 0, metadata !54} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 3, i32 47, metadata !5, metadata !54}
!58 = metadata !{i32 786688, metadata !59, metadata !"result", metadata !6, i32 5, metadata !9, i32 0, metadata !54} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786443, metadata !5, i32 3, i32 50, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 5, i32 27, metadata !59, metadata !54}
!61 = metadata !{i32 8, i32 5, metadata !59, metadata !54}
!62 = metadata !{i32 30, i32 9, metadata !50, null}
!63 = metadata !{i32 786688, metadata !44, metadata !"r", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 9, i32 9, metadata !65, metadata !54}
!65 = metadata !{i32 786443, metadata !59, i32 9, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 9, i32 19, metadata !65, metadata !54}
!67 = metadata !{i32 34, i32 1, metadata !44, null}
