; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@banker_algorithm_str = internal unnamed_addr constant [17 x i8] c"banker_algorithm\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i64 @banker_algorithm([3 x i64]* %available, [12 x i64]* %allocated, [12 x i64]* %max, [12 x i64]* %need) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i64]* %available) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %allocated) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %max) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i64]* %need) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i64 0) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @banker_algorithm_str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i64]* %available}, i64 0, metadata !33), !dbg !48 ; [debug line = 5:42] [debug variable = available]
  call void @llvm.dbg.value(metadata !{[12 x i64]* %allocated}, i64 0, metadata !49), !dbg !53 ; [debug line = 5:68] [debug variable = allocated]
  call void @llvm.dbg.value(metadata !{[12 x i64]* %max}, i64 0, metadata !54), !dbg !55 ; [debug line = 5:97] [debug variable = max]
  call void @llvm.dbg.value(metadata !{[12 x i64]* %need}, i64 0, metadata !56), !dbg !57 ; [debug line = 5:120] [debug variable = need]
  br label %.loopexit3, !dbg !58                  ; [debug line = 7:24]

.loopexit3.loopexit:                              ; preds = %.preheader
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.loopexit3.loopexit ] ; [#uses=4 type=i3]
  %i_cast2_cast = zext i3 %i to i5                ; [#uses=1 type=i5]
  %tmp_5 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i, i2 0) ; [#uses=1 type=i5]
  %tmp_7 = sub i5 %tmp_5, %i_cast2_cast, !dbg !61 ; [#uses=1 type=i5] [debug line = 18:4]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %i, i32 2), !dbg !58 ; [#uses=1 type=i1] [debug line = 7:24]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind ; [#uses=0 type=i32]
  %i_1 = add i3 %i, 1, !dbg !65                   ; [#uses=1 type=i3] [debug line = 9:3]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !66), !dbg !65 ; [debug line = 9:3] [debug variable = i]
  br i1 %tmp, label %.loopexit.loopexit6, label %.preheader.preheader, !dbg !58 ; [debug line = 7:24]

.preheader.preheader:                             ; preds = %.loopexit3
  br label %.preheader, !dbg !68                  ; [debug line = 12:25]

.preheader:                                       ; preds = %.critedge, %.preheader.preheader
  %j = phi i2 [ %j_1, %.critedge ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i2]
  %j_cast1 = zext i2 %j to i64, !dbg !68          ; [#uses=1 type=i64] [debug line = 12:25]
  %j_cast1_cast = zext i2 %j to i5, !dbg !61      ; [#uses=1 type=i5] [debug line = 18:4]
  %tmp_8 = add i5 %tmp_7, %j_cast1_cast, !dbg !61 ; [#uses=1 type=i5] [debug line = 18:4]
  %tmp_8_cast = sext i5 %tmp_8 to i64, !dbg !61   ; [#uses=2 type=i64] [debug line = 18:4]
  %allocated_addr = getelementptr [12 x i64]* %allocated, i64 0, i64 %tmp_8_cast, !dbg !61 ; [#uses=2 type=i64*] [debug line = 18:4]
  %need_addr = getelementptr [12 x i64]* %need, i64 0, i64 %tmp_8_cast, !dbg !69 ; [#uses=1 type=i64*] [debug line = 17:4]
  %tmp_1 = icmp eq i2 %j, -1, !dbg !68            ; [#uses=1 type=i1] [debug line = 12:25]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2) nounwind ; [#uses=0 type=i32]
  %j_1 = add i2 %j, 1, !dbg !70                   ; [#uses=1 type=i2] [debug line = 14:4]
  br i1 %tmp_1, label %.loopexit3.loopexit, label %1, !dbg !68 ; [debug line = 12:25]

; <label>:1                                       ; preds = %.preheader
  %need_load = load i64* %need_addr, align 8, !dbg !69 ; [#uses=3 type=i64] [debug line = 17:4]
  %available_addr = getelementptr [3 x i64]* %available, i64 0, i64 %j_cast1, !dbg !69 ; [#uses=3 type=i64*] [debug line = 17:4]
  %available_load = load i64* %available_addr, align 8, !dbg !69 ; [#uses=2 type=i64] [debug line = 17:4]
  %tmp_2 = sub nsw i64 %available_load, %need_load, !dbg !69 ; [#uses=2 type=i64] [debug line = 17:4]
  store i64 %tmp_2, i64* %available_addr, align 8, !dbg !69 ; [debug line = 17:4]
  %allocated_load = load i64* %allocated_addr, align 8, !dbg !61 ; [#uses=2 type=i64] [debug line = 18:4]
  %tmp_3 = add nsw i64 %allocated_load, %need_load, !dbg !61 ; [#uses=1 type=i64] [debug line = 18:4]
  store i64 %tmp_3, i64* %allocated_addr, align 8, !dbg !61 ; [debug line = 18:4]
  %tmp_4 = icmp sgt i64 %need_load, %tmp_2, !dbg !71 ; [#uses=1 type=i1] [debug line = 21:4]
  br i1 %tmp_4, label %.loopexit.loopexit, label %.critedge, !dbg !71 ; [debug line = 21:4]

.critedge:                                        ; preds = %1
  %tmp_6 = add i64 %allocated_load, %available_load, !dbg !72 ; [#uses=1 type=i64] [debug line = 24:5]
  store i64 %tmp_6, i64* %available_addr, align 8, !dbg !72 ; [debug line = 24:5]
  call void @llvm.dbg.value(metadata !{i2 %j_1}, i64 0, metadata !74), !dbg !70 ; [debug line = 14:4] [debug variable = j]
  br label %.preheader, !dbg !70                  ; [debug line = 14:4]

.loopexit.loopexit:                               ; preds = %1
  br label %.loopexit

.loopexit.loopexit6:                              ; preds = %.loopexit3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit6, %.loopexit.loopexit
  %p_0 = phi i2 [ -1, %.loopexit.loopexit ], [ 1, %.loopexit.loopexit6 ] ; [#uses=1 type=i2]
  %p_0_cast = sext i2 %p_0 to i64, !dbg !75       ; [#uses=1 type=i64] [debug line = 35:1]
  ret i64 %p_0_cast, !dbg !75                     ; [debug line = 35:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3                     ; [#uses=1 type=i3]
  %empty_3 = shl i3 1, %empty                     ; [#uses=1 type=i3]
  %empty_4 = and i3 %0, %empty_3                  ; [#uses=1 type=i3]
  %empty_5 = icmp ne i3 %empty_4, 0               ; [#uses=1 type=i1]
  ret i1 %empty_5
}

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_6 = zext i2 %1 to i5                     ; [#uses=1 type=i5]
  %empty_7 = shl i5 %empty, 2                     ; [#uses=1 type=i5]
  %empty_8 = or i5 %empty_7, %empty_6             ; [#uses=1 type=i5]
  ret i5 %empty_8
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"available", metadata !"allocated", metadata !"max", metadata !"need"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"available", metadata !11, metadata !"long int", i32 0, i32 63}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 2, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"allocated", metadata !17, metadata !"long int", i32 0, i32 63}
!17 = metadata !{metadata !18, metadata !12}
!18 = metadata !{i32 0, i32 3, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"max", metadata !17, metadata !"long int", i32 0, i32 63}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"need", metadata !17, metadata !"long int", i32 0, i32 63}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 63, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"return", metadata !31, metadata !"TARGET_TYPE", i32 0, i32 63}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 1, i32 0}
!33 = metadata !{i32 786689, metadata !34, metadata !"available", null, i32 5, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"banker_algorithm", metadata !"banker_algorithm", metadata !"", metadata !35, i32 5, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 6} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786473, metadata !"RTL_Banker_Algorithm/solution1/banker_algorithm.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !40, metadata !41, metadata !41, metadata !41}
!38 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !35, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 64, i32 0, i32 0, metadata !38, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !38, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 5, i32 42, metadata !34, null}
!49 = metadata !{i32 786689, metadata !34, metadata !"allocated", null, i32 5, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 64, i32 0, i32 0, metadata !38, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52, metadata !44}
!52 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 5, i32 68, metadata !34, null}
!54 = metadata !{i32 786689, metadata !34, metadata !"max", null, i32 5, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 5, i32 97, metadata !34, null}
!56 = metadata !{i32 786689, metadata !34, metadata !"need", null, i32 5, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 5, i32 120, metadata !34, null}
!58 = metadata !{i32 7, i32 24, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 7, i32 2, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !34, i32 6, i32 1, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 18, i32 4, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 15, i32 3, metadata !35, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 12, i32 3, metadata !35, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !59, i32 10, i32 2, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 9, i32 3, metadata !59, null}
!66 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !35, i32 7, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !35, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!68 = metadata !{i32 12, i32 25, metadata !63, null}
!69 = metadata !{i32 17, i32 4, metadata !62, null}
!70 = metadata !{i32 14, i32 4, metadata !63, null}
!71 = metadata !{i32 21, i32 4, metadata !62, null}
!72 = metadata !{i32 24, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !62, i32 23, i32 4, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786688, metadata !63, metadata !"j", metadata !35, i32 12, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 35, i32 1, metadata !60, null}
