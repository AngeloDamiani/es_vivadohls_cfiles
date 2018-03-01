; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quicksort_str = internal unnamed_addr constant [10 x i8] c"quicksort\00" ; [#uses=1 type=[10 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [7 x i8] c"QWHILE\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str = private unnamed_addr constant [9 x i8] c"PARWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @quicksort(i64 %i, i64 %f, [10 x i64]* %a) nounwind uwtable {
  %stack_size = alloca i64                        ; [#uses=4 type=i64*]
  call void @llvm.dbg.declare(metadata !{i64* %stack_size}, metadata !11) ; [debug variable = stack_size]
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %i) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i64 %f) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i64]* %a) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @quicksort_str) nounwind
  %f_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %f) nounwind ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %f_read}, i64 0, metadata !39), !dbg !40 ; [debug line = 39:45] [debug variable = f]
  %i_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %i) nounwind ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %i_read}, i64 0, metadata !41), !dbg !42 ; [debug line = 39:29] [debug variable = i]
  %stack_0 = alloca [10 x i64], align 16          ; [#uses=3 type=[10 x i64]*]
  %stack_1 = alloca [10 x i64], align 16          ; [#uses=3 type=[10 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %i}, i64 0, metadata !41), !dbg !42 ; [debug line = 39:29] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i64 %f}, i64 0, metadata !39), !dbg !40 ; [debug line = 39:45] [debug variable = f]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !43), !dbg !47 ; [debug line = 39:60] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %stack_0}, metadata !48), !dbg !52 ; [debug line = 41:14] [debug variable = stack[0]]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %stack_1}, metadata !53), !dbg !52 ; [debug line = 41:14] [debug variable = stack[1]]
  %top = getelementptr [10 x i64]* %stack_0, i64 0, i64 0, !dbg !54 ; [#uses=1 type=i64*] [debug line = 45:30]
  call void @llvm.dbg.value(metadata !{i64* %top}, i64 0, metadata !55), !dbg !54 ; [debug line = 45:30] [debug variable = top]
  store i64 %i_read, i64* %top, align 16, !dbg !57 ; [debug line = 50:2]
  %stack_1_addr = getelementptr [10 x i64]* %stack_1, i64 0, i64 0, !dbg !58 ; [#uses=1 type=i64*] [debug line = 51:2]
  store i64 %f_read, i64* %stack_1_addr, align 16, !dbg !58 ; [debug line = 51:2]
  store i64 0, i64* %stack_size
  br label %1, !dbg !59                           ; [debug line = 53:2]

; <label>:1                                       ; preds = %5, %0
  %stack_size_load = load i64* %stack_size, !dbg !60 ; [#uses=5 type=i64] [debug line = 63:4]
  %stack_0_addr = getelementptr [10 x i64]* %stack_0, i64 0, i64 %stack_size_load, !dbg !63 ; [#uses=2 type=i64*] [debug line = 73:3]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %stack_size_load, i32 63), !dbg !59 ; [#uses=1 type=i1] [debug line = 53:2]
  br i1 %tmp, label %6, label %2, !dbg !59        ; [debug line = 53:2]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str1) nounwind, !dbg !64 ; [debug line = 54:3]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str1) nounwind, !dbg !64 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, [1 x i8]* @p_str2) nounwind, !dbg !65 ; [debug line = 55:1]
  %base = load i64* %stack_0_addr, align 16, !dbg !66 ; [#uses=3 type=i64] [debug line = 55:3]
  %stack_1_addr_1 = getelementptr [10 x i64]* %stack_1, i64 0, i64 %stack_size_load, !dbg !66 ; [#uses=1 type=i64*] [debug line = 55:3]
  %stack_1_load = load i64* %stack_1_addr_1, align 8, !dbg !66 ; [#uses=2 type=i64] [debug line = 55:3]
  %tmp_1 = icmp slt i64 %base, %stack_1_load, !dbg !66 ; [#uses=1 type=i1] [debug line = 55:3]
  br i1 %tmp_1, label %3, label %4, !dbg !66      ; [debug line = 55:3]

; <label>:3                                       ; preds = %2
  %pivot_position = call fastcc i64 @partition(i64 %base, i64 %stack_1_load, [10 x i64]* %a) nounwind, !dbg !67 ; [#uses=2 type=i64] [debug line = 57:21]
  call void @llvm.dbg.value(metadata !{i64 %pivot_position}, i64 0, metadata !68), !dbg !67 ; [debug line = 57:21] [debug variable = pivot_position]
  call void @llvm.dbg.value(metadata !{i64 %base}, i64 0, metadata !69), !dbg !70 ; [debug line = 59:4] [debug variable = base]
  %tmp_3 = add nsw i64 %pivot_position, 1, !dbg !71 ; [#uses=1 type=i64] [debug line = 61:4]
  store i64 %tmp_3, i64* %stack_0_addr, align 16, !dbg !71 ; [debug line = 61:4]
  %stack_size_1 = add nsw i64 %stack_size_load, 1, !dbg !60 ; [#uses=3 type=i64] [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size_1}, i64 0, metadata !11), !dbg !60 ; [debug line = 63:4] [debug variable = stack_size]
  %stack_0_addr_1 = getelementptr [10 x i64]* %stack_0, i64 0, i64 %stack_size_1, !dbg !72 ; [#uses=1 type=i64*] [debug line = 64:4]
  store i64 %base, i64* %stack_0_addr_1, align 16, !dbg !72 ; [debug line = 64:4]
  %tmp_5 = add nsw i64 %pivot_position, -1, !dbg !73 ; [#uses=1 type=i64] [debug line = 65:4]
  %stack_1_addr_2 = getelementptr [10 x i64]* %stack_1, i64 0, i64 %stack_size_1, !dbg !73 ; [#uses=1 type=i64*] [debug line = 65:4]
  store i64 %tmp_5, i64* %stack_1_addr_2, align 8, !dbg !73 ; [debug line = 65:4]
  store i64 %stack_size_1, i64* %stack_size, !dbg !60 ; [debug line = 63:4]
  br label %5, !dbg !74                           ; [debug line = 67:3]

; <label>:4                                       ; preds = %2
  %stack_size_2 = add nsw i64 %stack_size_load, -1, !dbg !75 ; [#uses=1 type=i64] [debug line = 69:4]
  call void @llvm.dbg.value(metadata !{i64 %stack_size_2}, i64 0, metadata !11), !dbg !75 ; [debug line = 69:4] [debug variable = stack_size]
  store i64 %stack_size_2, i64* %stack_size, !dbg !75 ; [debug line = 69:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str1, i32 %tmp_2) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 74:2]
  br label %1, !dbg !77                           ; [debug line = 74:2]

; <label>:6                                       ; preds = %1
  ret void, !dbg !78                              ; [debug line = 75:1]
}

; [#uses=1]
define internal fastcc i64 @partition(i64 %init, i64 %end, [10 x i64]* nocapture %a) {
  %inf = alloca i64                               ; [#uses=3 type=i64*]
  call void @llvm.dbg.declare(metadata !{i64* %inf}, metadata !79) ; [debug variable = init]
  %sup = alloca i64                               ; [#uses=3 type=i64*]
  call void @llvm.dbg.declare(metadata !{i64* %sup}, metadata !83) ; [debug variable = end]
  %end_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %end) ; [#uses=2 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %end_read}, i64 0, metadata !83), !dbg !84 ; [debug line = 12:56] [debug variable = end]
  %init_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %init) ; [#uses=2 type=i64]
  call void @llvm.dbg.value(metadata !{i64 %init_read}, i64 0, metadata !79), !dbg !85 ; [debug line = 12:37] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i64 %init_read}, i64 0, metadata !86), !dbg !90 ; [debug line = 4:24@34:2] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !79), !dbg !85 ; [debug line = 12:37] [debug variable = init]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !83), !dbg !84 ; [debug line = 12:56] [debug variable = end]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !91), !dbg !92 ; [debug line = 12:73] [debug variable = a]
  %a_addr = getelementptr [10 x i64]* %a, i64 0, i64 %init_read, !dbg !93 ; [#uses=3 type=i64*] [debug line = 14:29]
  %pivot = load i64* %a_addr, align 8, !dbg !93   ; [#uses=2 type=i64] [debug line = 14:29]
  call void @llvm.dbg.value(metadata !{i64 %pivot}, i64 0, metadata !94), !dbg !93 ; [debug line = 14:29] [debug variable = pivot]
  call void @llvm.dbg.value(metadata !{i64 %end}, i64 0, metadata !95), !dbg !96 ; [debug line = 15:24] [debug variable = sup]
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !97), !dbg !98 ; [debug line = 16:25] [debug variable = inf]
  store i64 %end_read, i64* %sup, !dbg !84        ; [debug line = 12:56]
  store i64 %init_read, i64* %inf, !dbg !85       ; [debug line = 12:37]
  br label %1, !dbg !99                           ; [debug line = 18:2]

; <label>:1                                       ; preds = %8, %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str) nounwind, !dbg !100 ; [debug line = 19:3]
  br label %2, !dbg !102                          ; [debug line = 20:3]

; <label>:2                                       ; preds = %4, %1
  %inf_load = load i64* %inf, !dbg !103           ; [#uses=5 type=i64] [debug line = 21:4]
  %tmp = icmp sgt i64 %inf_load, %end_read, !dbg !102 ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp, label %.critedge, label %3, !dbg !102 ; [debug line = 20:3]

; <label>:3                                       ; preds = %2
  %a_addr_1 = getelementptr [10 x i64]* %a, i64 0, i64 %inf_load, !dbg !102 ; [#uses=1 type=i64*] [debug line = 20:3]
  %a_load = load i64* %a_addr_1, align 8, !dbg !102 ; [#uses=1 type=i64] [debug line = 20:3]
  %tmp_7 = icmp sgt i64 %a_load, %pivot, !dbg !102 ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %tmp_7, label %.critedge, label %4

; <label>:4                                       ; preds = %3
  %inf_1 = add nsw i64 %inf_load, 1, !dbg !103    ; [#uses=1 type=i64] [debug line = 21:4]
  call void @llvm.dbg.value(metadata !{i64 %inf_1}, i64 0, metadata !97), !dbg !103 ; [debug line = 21:4] [debug variable = inf]
  store i64 %inf_1, i64* %inf, !dbg !103          ; [debug line = 21:4]
  br label %2, !dbg !103                          ; [debug line = 21:4]

.critedge:                                        ; preds = %3, %2
  br label %5, !dbg !104                          ; [debug line = 23:3]

; <label>:5                                       ; preds = %6, %.critedge
  %sup_load = load i64* %sup, !dbg !105           ; [#uses=4 type=i64] [debug line = 24:4]
  %a_addr_2 = getelementptr [10 x i64]* %a, i64 0, i64 %sup_load, !dbg !104 ; [#uses=3 type=i64*] [debug line = 23:3]
  %a_load_1 = load i64* %a_addr_2, align 8, !dbg !104 ; [#uses=3 type=i64] [debug line = 23:3]
  %tmp_9 = icmp sgt i64 %a_load_1, %pivot, !dbg !104 ; [#uses=1 type=i1] [debug line = 23:3]
  br i1 %tmp_9, label %6, label %7, !dbg !104     ; [debug line = 23:3]

; <label>:6                                       ; preds = %5
  %sup_1 = add nsw i64 %sup_load, -1, !dbg !105   ; [#uses=1 type=i64] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i64 %sup_1}, i64 0, metadata !95), !dbg !105 ; [debug line = 24:4] [debug variable = sup]
  store i64 %sup_1, i64* %sup, !dbg !105          ; [debug line = 24:4]
  br label %5, !dbg !105                          ; [debug line = 24:4]

; <label>:7                                       ; preds = %5
  %tmp_s = add nsw i64 %sup_load, 1, !dbg !106    ; [#uses=1 type=i64] [debug line = 27:3]
  %tmp_1 = icmp slt i64 %inf_load, %tmp_s, !dbg !106 ; [#uses=1 type=i1] [debug line = 27:3]
  br i1 %tmp_1, label %8, label %9, !dbg !106     ; [debug line = 27:3]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i64 %inf_load}, i64 0, metadata !107), !dbg !109 ; [debug line = 4:24@28:4] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %sup_load}, i64 0, metadata !110), !dbg !111 ; [debug line = 4:46@28:4] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !112), !dbg !113 ; [debug line = 4:66@28:4] [debug variable = a]
  %a_addr_3 = getelementptr [10 x i64]* %a, i64 0, i64 %inf_load, !dbg !114 ; [#uses=2 type=i64*] [debug line = 7:29@28:4]
  %b = load i64* %a_addr_3, align 8, !dbg !114    ; [#uses=1 type=i64] [debug line = 7:29@28:4]
  call void @llvm.dbg.value(metadata !{i64 %b}, i64 0, metadata !116), !dbg !114 ; [debug line = 7:29@28:4] [debug variable = b]
  store i64 %a_load_1, i64* %a_addr_3, align 8, !dbg !117 ; [debug line = 8:2@28:4]
  store i64 %b, i64* %a_addr_2, align 8, !dbg !118 ; [debug line = 9:2@28:4]
  br label %1, !dbg !119                          ; [debug line = 32:2]

; <label>:9                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i64 %init}, i64 0, metadata !86), !dbg !90 ; [debug line = 4:24@34:2] [debug variable = index_1]
  call void @llvm.dbg.value(metadata !{i64 %sup_load}, i64 0, metadata !120), !dbg !121 ; [debug line = 4:46@34:2] [debug variable = index_2]
  call void @llvm.dbg.value(metadata !{[10 x i64]* %a}, i64 0, metadata !122), !dbg !123 ; [debug line = 4:66@34:2] [debug variable = a]
  %b_1 = load i64* %a_addr, align 8, !dbg !124    ; [#uses=1 type=i64] [debug line = 7:29@34:2]
  call void @llvm.dbg.value(metadata !{i64 %b_1}, i64 0, metadata !125), !dbg !124 ; [debug line = 7:29@34:2] [debug variable = b]
  store i64 %a_load_1, i64* %a_addr, align 8, !dbg !126 ; [debug line = 8:2@34:2]
  store i64 %b_1, i64* %a_addr_2, align 8, !dbg !127 ; [debug line = 9:2@34:2]
  ret i64 %sup_load, !dbg !128                    ; [debug line = 35:2]
}

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
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

; [#uses=4]
define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_3 = shl i64 1, %empty                    ; [#uses=1 type=i64]
  %empty_4 = and i64 %0, %empty_3                 ; [#uses=1 type=i64]
  %empty_5 = icmp ne i64 %empty_4, 0              ; [#uses=1 type=i1]
  ret i1 %empty_5
}

!opencl.kernels = !{!0, !7, !9}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"a"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"init", metadata !"end", metadata !"a"}
!9 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !10, metadata !6}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"f", metadata !"a"}
!11 = metadata !{i32 786688, metadata !12, metadata !"stack_size", metadata !14, i32 42, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!12 = metadata !{i32 786443, metadata !13, i32 40, i32 1, metadata !14, i32 3} ; [ DW_TAG_lexical_block ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"quicksort", metadata !"quicksort", metadata !"", metadata !14, i32 39, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"RTL_Quicksort.prj/quicksort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17, metadata !19}
!17 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !14, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !14, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"i", metadata !27, metadata !"long int", i32 0, i32 63}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 63, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"f", metadata !27, metadata !"long int", i32 0, i32 63}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 63, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"a", metadata !37, metadata !"long int", i32 0, i32 63}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 9, i32 1}
!39 = metadata !{i32 786689, metadata !13, metadata !"f", metadata !14, i32 33554471, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 39, i32 45, metadata !13, null}
!41 = metadata !{i32 786689, metadata !13, metadata !"i", metadata !14, i32 16777255, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 39, i32 29, metadata !13, null}
!43 = metadata !{i32 786689, metadata !13, metadata !"a", null, i32 39, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !20, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 39, i32 60, metadata !13, null}
!48 = metadata !{i32 786688, metadata !12, metadata !"stack[0]", null, i32 41, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !20, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !46, metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 41, i32 14, metadata !12, null}
!53 = metadata !{i32 786688, metadata !12, metadata !"stack[1]", null, i32 41, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 45, i32 30, metadata !12, null}
!55 = metadata !{i32 786688, metadata !12, metadata !"top", metadata !14, i32 45, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 50, i32 2, metadata !12, null}
!58 = metadata !{i32 51, i32 2, metadata !12, null}
!59 = metadata !{i32 53, i32 2, metadata !12, null}
!60 = metadata !{i32 63, i32 4, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 56, i32 3, metadata !14, i32 5} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !12, i32 54, i32 2, metadata !14, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 73, i32 3, metadata !62, null}
!64 = metadata !{i32 54, i32 3, metadata !62, null}
!65 = metadata !{i32 55, i32 1, metadata !62, null}
!66 = metadata !{i32 55, i32 3, metadata !62, null}
!67 = metadata !{i32 57, i32 21, metadata !61, null}
!68 = metadata !{i32 786688, metadata !12, metadata !"pivot_position", metadata !14, i32 47, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786688, metadata !12, metadata !"base", metadata !14, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 59, i32 4, metadata !61, null}
!71 = metadata !{i32 61, i32 4, metadata !61, null}
!72 = metadata !{i32 64, i32 4, metadata !61, null}
!73 = metadata !{i32 65, i32 4, metadata !61, null}
!74 = metadata !{i32 67, i32 3, metadata !61, null}
!75 = metadata !{i32 69, i32 4, metadata !76, null}
!76 = metadata !{i32 786443, metadata !62, i32 67, i32 8, metadata !14, i32 6} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 74, i32 2, metadata !62, null}
!78 = metadata !{i32 75, i32 1, metadata !12, null}
!79 = metadata !{i32 786689, metadata !80, metadata !"init", metadata !14, i32 16777228, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 786478, i32 0, metadata !14, metadata !"partition", metadata !"partition", metadata !"", metadata !14, i32 12, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 13} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !17, metadata !17, metadata !17, metadata !19}
!83 = metadata !{i32 786689, metadata !80, metadata !"end", metadata !14, i32 33554444, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 12, i32 56, metadata !80, null}
!85 = metadata !{i32 12, i32 37, metadata !80, null}
!86 = metadata !{i32 786689, metadata !87, metadata !"index_1", metadata !14, i32 16777220, metadata !17, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786478, i32 0, metadata !14, metadata !"swap", metadata !"swap", metadata !"", metadata !14, i32 4, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 34, i32 2, metadata !89, null}
!89 = metadata !{i32 786443, metadata !80, i32 13, i32 1, metadata !14, i32 1} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 4, i32 24, metadata !87, metadata !88}
!91 = metadata !{i32 786689, metadata !80, metadata !"a", null, i32 12, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 12, i32 73, metadata !80, null}
!93 = metadata !{i32 14, i32 29, metadata !89, null}
!94 = metadata !{i32 786688, metadata !89, metadata !"pivot", metadata !14, i32 14, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 786688, metadata !89, metadata !"sup", metadata !14, i32 15, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 15, i32 24, metadata !89, null}
!97 = metadata !{i32 786688, metadata !89, metadata !"inf", metadata !14, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 16, i32 25, metadata !89, null}
!99 = metadata !{i32 18, i32 2, metadata !89, null}
!100 = metadata !{i32 19, i32 3, metadata !101, null}
!101 = metadata !{i32 786443, metadata !89, i32 19, i32 2, metadata !14, i32 2} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 20, i32 3, metadata !101, null}
!103 = metadata !{i32 21, i32 4, metadata !101, null}
!104 = metadata !{i32 23, i32 3, metadata !101, null}
!105 = metadata !{i32 24, i32 4, metadata !101, null}
!106 = metadata !{i32 27, i32 3, metadata !101, null}
!107 = metadata !{i32 786689, metadata !87, metadata !"index_1", metadata !14, i32 16777220, metadata !17, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 28, i32 4, metadata !101, null}
!109 = metadata !{i32 4, i32 24, metadata !87, metadata !108}
!110 = metadata !{i32 786689, metadata !87, metadata !"index_2", metadata !14, i32 33554436, metadata !17, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 4, i32 46, metadata !87, metadata !108}
!112 = metadata !{i32 786689, metadata !87, metadata !"a", null, i32 4, metadata !44, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 4, i32 66, metadata !87, metadata !108}
!114 = metadata !{i32 7, i32 29, metadata !115, metadata !108}
!115 = metadata !{i32 786443, metadata !87, i32 5, i32 1, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786688, metadata !115, metadata !"b", metadata !14, i32 7, metadata !17, i32 0, metadata !108} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 8, i32 2, metadata !115, metadata !108}
!118 = metadata !{i32 9, i32 2, metadata !115, metadata !108}
!119 = metadata !{i32 32, i32 2, metadata !101, null}
!120 = metadata !{i32 786689, metadata !87, metadata !"index_2", metadata !14, i32 33554436, metadata !17, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 4, i32 46, metadata !87, metadata !88}
!122 = metadata !{i32 786689, metadata !87, metadata !"a", null, i32 4, metadata !44, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 4, i32 66, metadata !87, metadata !88}
!124 = metadata !{i32 7, i32 29, metadata !115, metadata !88}
!125 = metadata !{i32 786688, metadata !115, metadata !"b", metadata !14, i32 7, metadata !17, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 8, i32 2, metadata !115, metadata !88}
!127 = metadata !{i32 9, i32 2, metadata !115, metadata !88}
!128 = metadata !{i32 35, i32 2, metadata !89, null}
