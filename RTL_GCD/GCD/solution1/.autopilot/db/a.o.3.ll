; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcd_str = internal unnamed_addr constant [4 x i8] c"gcd\00" ; [#uses=1 type=[4 x i8]*]
@p_str1 = private unnamed_addr constant [9 x i8] c"GCDWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"MODULOWHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define float @gcd(float %m, float %n) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(float %m) nounwind, !map !9
  call void (...)* @_ssdm_op_SpecBitsMap(float %n) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gcd_str) nounwind
  %n_read = call float @_ssdm_op_Read.ap_auto.float(float %n) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %n_read}, i64 0, metadata !25), !dbg !34 ; [debug line = 14:44] [debug variable = n]
  %m_read = call float @_ssdm_op_Read.ap_auto.float(float %m) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %m_read}, i64 0, metadata !35), !dbg !36 ; [debug line = 14:29] [debug variable = m]
  call void @llvm.dbg.value(metadata !{float %m}, i64 0, metadata !35), !dbg !36 ; [debug line = 14:29] [debug variable = m]
  call void @llvm.dbg.value(metadata !{float %n}, i64 0, metadata !25), !dbg !34 ; [debug line = 14:44] [debug variable = n]
  %m_to_int = bitcast float %m_read to i32        ; [#uses=3 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_1 = trunc i32 %m_to_int to i23             ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_1, 0                 ; [#uses=1 type=i1]
  %tmp_2 = or i1 %notrhs, %notlhs                 ; [#uses=2 type=i1]
  %tmp_3 = fcmp oeq float %m_read, 0.000000e+00, !dbg !37 ; [#uses=1 type=i1] [debug line = 18:5]
  %tmp_4 = and i1 %tmp_2, %tmp_3, !dbg !37        ; [#uses=1 type=i1] [debug line = 18:5]
  %n_to_int = bitcast float %n_read to i32        ; [#uses=3 type=i32]
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_6 = trunc i32 %n_to_int to i23             ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_5, -1                ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_6, 0                ; [#uses=1 type=i1]
  %tmp_7 = or i1 %notrhs9, %notlhs8               ; [#uses=2 type=i1]
  %tmp_8 = fcmp oeq float %n_read, 0.000000e+00, !dbg !37 ; [#uses=1 type=i1] [debug line = 18:5]
  %tmp_9 = and i1 %tmp_7, %tmp_8, !dbg !37        ; [#uses=1 type=i1] [debug line = 18:5]
  %or_cond = and i1 %tmp_4, %tmp_9, !dbg !37      ; [#uses=1 type=i1] [debug line = 18:5]
  br i1 %or_cond, label %.loopexit, label %_ifconv, !dbg !37 ; [debug line = 18:5]

_ifconv:                                          ; preds = %0
  %tmp_s = fcmp olt float %m_read, 0.000000e+00, !dbg !39 ; [#uses=1 type=i1] [debug line = 21:5]
  %tmp_10 = and i1 %tmp_2, %tmp_s, !dbg !39       ; [#uses=1 type=i1] [debug line = 21:5]
  %m_assign_neg = xor i32 %m_to_int, -2147483648, !dbg !40 ; [#uses=1 type=i32] [debug line = 22:9]
  %m_assign = bitcast i32 %m_assign_neg to float, !dbg !40 ; [#uses=1 type=float] [debug line = 22:9]
  call void @llvm.dbg.value(metadata !{float %m_assign}, i64 0, metadata !35), !dbg !40 ; [debug line = 22:9] [debug variable = m]
  %m_assign_1 = select i1 %tmp_10, float %m_assign, float %m_read ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %m_assign_1}, i64 0, metadata !35), !dbg !36 ; [debug line = 14:29] [debug variable = m]
  %tmp_11 = fcmp olt float %n_read, 0.000000e+00, !dbg !41 ; [#uses=1 type=i1] [debug line = 23:5]
  %tmp_12 = and i1 %tmp_7, %tmp_11, !dbg !41      ; [#uses=1 type=i1] [debug line = 23:5]
  %n_assign_neg = xor i32 %n_to_int, -2147483648, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %n_assign = bitcast i32 %n_assign_neg to float, !dbg !42 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %n_assign}, i64 0, metadata !25), !dbg !42 ; [debug line = 24:9] [debug variable = n]
  %n_assign_1 = select i1 %tmp_12, float %n_assign, float %n_read ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %n_assign_1}, i64 0, metadata !25), !dbg !42 ; [debug line = 24:9] [debug variable = n]
  br label %.preheader, !dbg !43                  ; [debug line = 29:9]

.preheader.loopexit:                              ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ifconv
  %m_assign_3 = phi float [ %n_assign_1, %_ifconv ], [ %r, %.preheader.loopexit ] ; [#uses=5 type=float]
  %result = phi float [ %m_assign_1, %_ifconv ], [ %m_assign_3, %.preheader.loopexit ] ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %m_assign_3}, i64 0, metadata !35), !dbg !43 ; [debug line = 29:9] [debug variable = m]
  %m_assign_2_to_int = bitcast float %m_assign_3 to i32 ; [#uses=2 type=i32]
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_assign_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_14 = trunc i32 %m_assign_2_to_int to i23   ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_13, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_14, 0               ; [#uses=1 type=i1]
  %tmp_15 = or i1 %notrhs3, %notlhs3              ; [#uses=2 type=i1]
  %tmp_16 = fcmp oeq float %m_assign_3, 0.000000e+00, !dbg !45 ; [#uses=1 type=i1] [debug line = 27:5]
  %tmp_17 = and i1 %tmp_15, %tmp_16, !dbg !45     ; [#uses=1 type=i1] [debug line = 27:5]
  br i1 %tmp_17, label %.loopexit.loopexit, label %1, !dbg !45 ; [debug line = 27:5]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1) nounwind, !dbg !46 ; [debug line = 27:15]
  call void @llvm.dbg.value(metadata !{float %result}, i64 0, metadata !47) nounwind, !dbg !50 ; [debug line = 3:32@28:13] [debug variable = x]
  call void @llvm.dbg.value(metadata !{float %m_assign_3}, i64 0, metadata !51) nounwind, !dbg !52 ; [debug line = 3:47@28:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{float %result}, i64 0, metadata !53) nounwind, !dbg !55 ; [debug line = 5:27@28:13] [debug variable = result]
  br label %2, !dbg !56                           ; [debug line = 8:5@28:13]

; <label>:2                                       ; preds = %3, %1
  %r = phi float [ %result, %1 ], [ %result_1, %3 ] ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !25), !dbg !57 ; [debug line = 30:9] [debug variable = n]
  call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !58), !dbg !49 ; [debug line = 28:13] [debug variable = r]
  %n_assign_2_to_int = bitcast float %r to i32    ; [#uses=2 type=i32]
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_assign_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_19 = trunc i32 %n_assign_2_to_int to i23   ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp_18, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_19, 0               ; [#uses=1 type=i1]
  %tmp_20 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %tmp_21 = and i1 %tmp_20, %tmp_15               ; [#uses=1 type=i1]
  %tmp_22 = fcmp oge float %r, %m_assign_3, !dbg !56 ; [#uses=1 type=i1] [debug line = 8:5@28:13]
  %tmp_23 = and i1 %tmp_21, %tmp_22, !dbg !56     ; [#uses=1 type=i1] [debug line = 8:5@28:13]
  br i1 %tmp_23, label %3, label %.preheader.loopexit, !dbg !56 ; [debug line = 8:5@28:13]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind, !dbg !59 ; [debug line = 9:9@28:13]
  %result_1 = fsub float %r, %m_assign_3, !dbg !59 ; [#uses=1 type=float] [debug line = 9:9@28:13]
  call void @llvm.dbg.value(metadata !{float %result_1}, i64 0, metadata !53) nounwind, !dbg !59 ; [debug line = 9:9@28:13] [debug variable = result]
  br label %2, !dbg !61                           ; [debug line = 9:19@28:13]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %p_0 = phi float [ -1.000000e+00, %0 ], [ %result, %.loopexit.loopexit ] ; [#uses=1 type=float]
  ret float %p_0, !dbg !62                        ; [debug line = 34:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=4]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE", metadata !"TARGET_TYPE"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{float (float, float)* @gcd, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"m", metadata !"n"}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 0, i32 31, metadata !11}
!11 = metadata !{metadata !12}
!12 = metadata !{metadata !"m", metadata !13, metadata !"float", i32 0, i32 31}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, i32 0}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"n", metadata !13, metadata !"float", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"return", metadata !23, metadata !"TARGET_TYPE", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 1, i32 0}
!25 = metadata !{i32 786689, metadata !26, metadata !"n", metadata !27, i32 33554446, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"gcd", metadata !"gcd", metadata !"", metadata !27, i32 14, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float, float)* @gcd, null, null, metadata !32, i32 14} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"gcd.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{metadata !30, metadata !30, metadata !30}
!30 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !27, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 14, i32 44, metadata !26, null}
!35 = metadata !{i32 786689, metadata !26, metadata !"m", metadata !27, i32 16777230, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 14, i32 29, metadata !26, null}
!37 = metadata !{i32 18, i32 5, metadata !38, null}
!38 = metadata !{i32 786443, metadata !26, i32 14, i32 47, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 21, i32 5, metadata !38, null}
!40 = metadata !{i32 22, i32 9, metadata !38, null}
!41 = metadata !{i32 23, i32 5, metadata !38, null}
!42 = metadata !{i32 24, i32 9, metadata !38, null}
!43 = metadata !{i32 29, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !38, i32 27, i32 14, metadata !27, i32 3} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 27, i32 5, metadata !38, null}
!46 = metadata !{i32 27, i32 15, metadata !44, null}
!47 = metadata !{i32 786689, metadata !48, metadata !"x", metadata !27, i32 16777219, metadata !30, i32 0, metadata !49} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786478, i32 0, metadata !27, metadata !"modulo", metadata !"modulo", metadata !"", metadata !27, i32 3, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 3} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 28, i32 13, metadata !44, null}
!50 = metadata !{i32 3, i32 32, metadata !48, metadata !49}
!51 = metadata !{i32 786689, metadata !48, metadata !"y", metadata !27, i32 33554435, metadata !30, i32 0, metadata !49} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 3, i32 47, metadata !48, metadata !49}
!53 = metadata !{i32 786688, metadata !54, metadata !"result", metadata !27, i32 5, metadata !30, i32 0, metadata !49} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786443, metadata !48, i32 3, i32 50, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 5, i32 27, metadata !54, metadata !49}
!56 = metadata !{i32 8, i32 5, metadata !54, metadata !49}
!57 = metadata !{i32 30, i32 9, metadata !44, null}
!58 = metadata !{i32 786688, metadata !38, metadata !"r", metadata !27, i32 16, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 9, i32 9, metadata !60, metadata !49}
!60 = metadata !{i32 786443, metadata !54, i32 9, i32 9, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 19, metadata !60, metadata !49}
!62 = metadata !{i32 34, i32 1, metadata !38, null}
