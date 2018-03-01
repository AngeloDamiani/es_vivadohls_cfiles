; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcd_str = internal unnamed_addr constant [4 x i8] c"gcd\00"
@p_str1 = private unnamed_addr constant [9 x i8] c"GCDWHILE\00", align 1
@p_str = private unnamed_addr constant [12 x i8] c"MODULOWHILE\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define float @gcd(float %m, float %n) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(float %m) nounwind, !map !9
  call void (...)* @_ssdm_op_SpecBitsMap(float %n) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gcd_str) nounwind
  %n_read = call float @_ssdm_op_Read.ap_auto.float(float %n) nounwind
  %m_read = call float @_ssdm_op_Read.ap_auto.float(float %m) nounwind
  %m_to_int = bitcast float %m_read to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %m_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_1, 0
  %tmp_2 = or i1 %notrhs, %notlhs
  %tmp_3 = fcmp oeq float %m_read, 0.000000e+00
  %tmp_4 = and i1 %tmp_2, %tmp_3
  %n_to_int = bitcast float %n_read to i32
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_to_int, i32 23, i32 30)
  %tmp_6 = trunc i32 %n_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_5, -1
  %notrhs9 = icmp eq i23 %tmp_6, 0
  %tmp_7 = or i1 %notrhs9, %notlhs8
  %tmp_8 = fcmp oeq float %n_read, 0.000000e+00
  %tmp_9 = and i1 %tmp_7, %tmp_8
  %or_cond = and i1 %tmp_4, %tmp_9
  br i1 %or_cond, label %.loopexit, label %_ifconv

_ifconv:                                          ; preds = %0
  %tmp_s = fcmp olt float %m_read, 0.000000e+00
  %tmp_10 = and i1 %tmp_2, %tmp_s
  %m_assign_neg = xor i32 %m_to_int, -2147483648
  %m_assign = bitcast i32 %m_assign_neg to float
  %m_assign_1 = select i1 %tmp_10, float %m_assign, float %m_read
  %tmp_11 = fcmp olt float %n_read, 0.000000e+00
  %tmp_12 = and i1 %tmp_7, %tmp_11
  %n_assign_neg = xor i32 %n_to_int, -2147483648
  %n_assign = bitcast i32 %n_assign_neg to float
  %n_assign_1 = select i1 %tmp_12, float %n_assign, float %n_read
  br label %.preheader

.preheader.loopexit:                              ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ifconv
  %m_assign_3 = phi float [ %n_assign_1, %_ifconv ], [ %r, %.preheader.loopexit ]
  %result = phi float [ %m_assign_1, %_ifconv ], [ %m_assign_3, %.preheader.loopexit ]
  %m_assign_2_to_int = bitcast float %m_assign_3 to i32
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_assign_2_to_int, i32 23, i32 30)
  %tmp_14 = trunc i32 %m_assign_2_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_13, -1
  %notrhs3 = icmp eq i23 %tmp_14, 0
  %tmp_15 = or i1 %notrhs3, %notlhs3
  %tmp_16 = fcmp oeq float %m_assign_3, 0.000000e+00
  %tmp_17 = and i1 %tmp_15, %tmp_16
  br i1 %tmp_17, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1) nounwind
  br label %2

; <label>:2                                       ; preds = %3, %1
  %r = phi float [ %result, %1 ], [ %result_1, %3 ]
  %n_assign_2_to_int = bitcast float %r to i32
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_assign_2_to_int, i32 23, i32 30)
  %tmp_19 = trunc i32 %n_assign_2_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_18, -1
  %notrhs4 = icmp eq i23 %tmp_19, 0
  %tmp_20 = or i1 %notrhs4, %notlhs4
  %tmp_21 = and i1 %tmp_20, %tmp_15
  %tmp_22 = fcmp oge float %r, %m_assign_3
  %tmp_23 = and i1 %tmp_21, %tmp_22
  br i1 %tmp_23, label %3, label %.preheader.loopexit

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %result_1 = fsub float %r, %m_assign_3
  br label %2

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %p_0 = phi float [ -1.000000e+00, %0 ], [ %result, %.loopexit.loopexit ]
  ret float %p_0
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

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
