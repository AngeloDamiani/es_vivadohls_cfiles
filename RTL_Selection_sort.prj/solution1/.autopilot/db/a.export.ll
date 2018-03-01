; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selection_sort_str = internal unnamed_addr constant [15 x i8] c"selection_sort\00"

define void @selection_sort([10 x float]* %arr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10 x float]* %arr) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @selection_sort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %3, %0
  %min_idx = phi i4 [ 0, %0 ], [ %i, %3 ]
  %min_idx_1_cast1 = zext i4 %min_idx to i8
  %exitcond1 = icmp eq i4 %min_idx, -7
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  %i = add i4 %min_idx, 1
  br i1 %exitcond1, label %4, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %2
  %index_1_assign = phi i8 [ %j, %2 ], [ %min_idx_1_cast1, %.preheader.preheader ]
  %j_0_in = phi i8 [ %j_2, %2 ], [ %min_idx_1_cast1, %.preheader.preheader ]
  %j_2 = add i8 %j_0_in, 1
  %exitcond = icmp eq i8 %j_0_in, 9
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 0) nounwind
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp = sext i8 %j_2 to i64
  %arr_addr = getelementptr [10 x float]* %arr, i64 0, i64 %tmp
  %arr_load = load float* %arr_addr, align 4
  %tmp_2 = sext i8 %index_1_assign to i64
  %arr_addr_2 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_2
  %arr_load_1 = load float* %arr_addr_2, align 4
  %arr_load_to_int = bitcast float %arr_load to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %arr_load_to_int, i32 23, i32 30)
  %tmp_3 = trunc i32 %arr_load_to_int to i23
  %arr_load_1_to_int = bitcast float %arr_load_1 to i32
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %arr_load_1_to_int, i32 23, i32 30)
  %tmp_5 = trunc i32 %arr_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_1, -1
  %notrhs = icmp eq i23 %tmp_3, 0
  %tmp_6 = or i1 %notrhs, %notlhs
  %notlhs2 = icmp ne i8 %tmp_4, -1
  %notrhs3 = icmp eq i23 %tmp_5, 0
  %tmp_7 = or i1 %notrhs3, %notlhs2
  %tmp_8 = and i1 %tmp_6, %tmp_7
  %tmp_9 = fcmp olt float %arr_load, %arr_load_1
  %tmp_s = and i1 %tmp_8, %tmp_9
  %j = select i1 %tmp_s, i8 %j_2, i8 %index_1_assign
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %tmp_i = sext i8 %index_1_assign to i64
  %arr_addr_1 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_i
  %b = load float* %arr_addr_1, align 4
  %tmp_1_i = zext i4 %min_idx to i64
  %arr_addr_3 = getelementptr [10 x float]* %arr, i64 0, i64 %tmp_1_i
  %arr_load_3 = load float* %arr_addr_3, align 4
  store float %arr_load_3, float* %arr_addr_1, align 4
  store float %b, float* %arr_addr_3, align 4
  br label %1

; <label>:4                                       ; preds = %1
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"arr", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
