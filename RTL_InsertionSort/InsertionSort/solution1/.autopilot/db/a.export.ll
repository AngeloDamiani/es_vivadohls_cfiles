; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@insertion_sort_str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00"
@p_str3 = private unnamed_addr constant [11 x i8] c"WHILE_LOOP\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FOR_LOOP\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @insertion_sort(float* %arr_0, float* %arr_1, float* %arr_2, float* %arr_3, float* %arr_4, float* %arr_5, float* %arr_6, float* %arr_7, float* %arr_8, float* %arr_9) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_9), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_8), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_7), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_6), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_5), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_4), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_3), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_2), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_1), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(float* %arr_0), !map !61
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %.critedge10, %0
  %i = phi i4 [ 1, %0 ], [ %i_1, %.critedge10 ]
  %i_cast = zext i4 %i to i5
  %exitcond = icmp eq i4 %i, -6
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond, label %6, label %_ifconv

_ifconv:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str2) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str2) nounwind
  %arr_9_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_9)
  %arr_1_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_1)
  %arr_2_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_2)
  %arr_3_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_3)
  %arr_4_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_4)
  %arr_5_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_5)
  %arr_6_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_6)
  %arr_7_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_7)
  %arr_8_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_8)
  %sel_tmp = icmp eq i4 %i, 1
  %sel_tmp1 = select i1 %sel_tmp, float %arr_1_read, float %arr_9_read
  %sel_tmp2 = icmp eq i4 %i, 2
  %sel_tmp3 = select i1 %sel_tmp2, float %arr_2_read, float %sel_tmp1
  %sel_tmp4 = icmp eq i4 %i, 3
  %sel_tmp5 = select i1 %sel_tmp4, float %arr_3_read, float %sel_tmp3
  %sel_tmp6 = icmp eq i4 %i, 4
  %sel_tmp7 = select i1 %sel_tmp6, float %arr_4_read, float %sel_tmp5
  %sel_tmp8 = icmp eq i4 %i, 5
  %sel_tmp9 = select i1 %sel_tmp8, float %arr_5_read, float %sel_tmp7
  %sel_tmp10 = icmp eq i4 %i, 6
  %sel_tmp11 = select i1 %sel_tmp10, float %arr_6_read, float %sel_tmp9
  %sel_tmp12 = icmp eq i4 %i, 7
  %sel_tmp13 = select i1 %sel_tmp12, float %arr_7_read, float %sel_tmp11
  %sel_tmp14 = icmp eq i4 %i, -8
  %key = select i1 %sel_tmp14, float %arr_8_read, float %sel_tmp13
  %key_to_int = bitcast float %key to i32
  %tmp_4 = trunc i32 %key_to_int to i23
  %notrhs1 = icmp eq i23 %tmp_4, 0
  br label %2

; <label>:2                                       ; preds = %5, %_ifconv
  %tmp_2 = phi float [ %arr_9_read, %_ifconv ], [ %tmp_22, %5 ]
  %tmp_3 = phi float [ %arr_8_read, %_ifconv ], [ %tmp_23, %5 ]
  %tmp_5 = phi float [ %arr_7_read, %_ifconv ], [ %tmp_24, %5 ]
  %tmp_7 = phi float [ %arr_6_read, %_ifconv ], [ %tmp_25, %5 ]
  %tmp_8 = phi float [ %arr_5_read, %_ifconv ], [ %tmp_26, %5 ]
  %tmp_9 = phi float [ %arr_4_read, %_ifconv ], [ %tmp_27, %5 ]
  %tmp_s = phi float [ %arr_3_read, %_ifconv ], [ %tmp_28, %5 ]
  %tmp_10 = phi float [ %arr_2_read, %_ifconv ], [ %tmp_29, %5 ]
  %tmp_11 = phi float [ %arr_1_read, %_ifconv ], [ %tmp_30, %5 ]
  %j_0_in = phi i5 [ %i_cast, %_ifconv ], [ %j, %5 ]
  %tmp_12 = trunc i5 %j_0_in to i4
  %j = add i5 -1, %j_0_in
  %tmp_1 = icmp sgt i5 %j_0_in, 0
  br i1 %tmp_1, label %3, label %.critedge

; <label>:3                                       ; preds = %2
  %j_t = add i4 -1, %tmp_12
  %arr_0_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %arr_0)
  %tmp_13 = call float @_ssdm_op_Mux.ap_auto.10float.i4(float %arr_0_read, float %tmp_11, float %tmp_10, float %tmp_s, float %tmp_9, float %tmp_8, float %tmp_7, float %tmp_5, float %tmp_3, float %tmp_2, i4 %j_t)
  %p_to_int = bitcast float %tmp_13 to i32
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_to_int, i32 23, i32 30)
  %tmp_15 = trunc i32 %p_to_int to i23
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %key_to_int, i32 23, i32 30)
  %notlhs = icmp ne i8 %tmp_14, -1
  %notrhs = icmp eq i23 %tmp_15, 0
  %tmp_17 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_16, -1
  %tmp_18 = or i1 %notrhs1, %notlhs1
  %tmp_19 = and i1 %tmp_17, %tmp_18
  %tmp_20 = fcmp ogt float %tmp_13, %key
  %tmp_21 = and i1 %tmp_19, %tmp_20
  br i1 %tmp_21, label %4, label %.critedge

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, [1 x i8]* @p_str1) nounwind
  switch i4 %tmp_12, label %branch19 [
    i4 1, label %branch11
    i4 2, label %branch12
    i4 3, label %branch13
    i4 4, label %branch14
    i4 5, label %branch15
    i4 6, label %branch16
    i4 7, label %branch17
    i4 -8, label %branch18
  ]

; <label>:5                                       ; preds = %branch19, %branch18, %branch17, %branch16, %branch15, %branch14, %branch13, %branch12, %branch11
  %tmp_22 = phi float [ %tmp_13, %branch19 ], [ %tmp_2, %branch18 ], [ %tmp_2, %branch17 ], [ %tmp_2, %branch16 ], [ %tmp_2, %branch15 ], [ %tmp_2, %branch14 ], [ %tmp_2, %branch13 ], [ %tmp_2, %branch12 ], [ %tmp_2, %branch11 ]
  %tmp_23 = phi float [ %tmp_3, %branch19 ], [ %tmp_13, %branch18 ], [ %tmp_3, %branch17 ], [ %tmp_3, %branch16 ], [ %tmp_3, %branch15 ], [ %tmp_3, %branch14 ], [ %tmp_3, %branch13 ], [ %tmp_3, %branch12 ], [ %tmp_3, %branch11 ]
  %tmp_24 = phi float [ %tmp_5, %branch19 ], [ %tmp_5, %branch18 ], [ %tmp_13, %branch17 ], [ %tmp_5, %branch16 ], [ %tmp_5, %branch15 ], [ %tmp_5, %branch14 ], [ %tmp_5, %branch13 ], [ %tmp_5, %branch12 ], [ %tmp_5, %branch11 ]
  %tmp_25 = phi float [ %tmp_7, %branch19 ], [ %tmp_7, %branch18 ], [ %tmp_7, %branch17 ], [ %tmp_13, %branch16 ], [ %tmp_7, %branch15 ], [ %tmp_7, %branch14 ], [ %tmp_7, %branch13 ], [ %tmp_7, %branch12 ], [ %tmp_7, %branch11 ]
  %tmp_26 = phi float [ %tmp_8, %branch19 ], [ %tmp_8, %branch18 ], [ %tmp_8, %branch17 ], [ %tmp_8, %branch16 ], [ %tmp_13, %branch15 ], [ %tmp_8, %branch14 ], [ %tmp_8, %branch13 ], [ %tmp_8, %branch12 ], [ %tmp_8, %branch11 ]
  %tmp_27 = phi float [ %tmp_9, %branch19 ], [ %tmp_9, %branch18 ], [ %tmp_9, %branch17 ], [ %tmp_9, %branch16 ], [ %tmp_9, %branch15 ], [ %tmp_13, %branch14 ], [ %tmp_9, %branch13 ], [ %tmp_9, %branch12 ], [ %tmp_9, %branch11 ]
  %tmp_28 = phi float [ %tmp_s, %branch19 ], [ %tmp_s, %branch18 ], [ %tmp_s, %branch17 ], [ %tmp_s, %branch16 ], [ %tmp_s, %branch15 ], [ %tmp_s, %branch14 ], [ %tmp_13, %branch13 ], [ %tmp_s, %branch12 ], [ %tmp_s, %branch11 ]
  %tmp_29 = phi float [ %tmp_10, %branch19 ], [ %tmp_10, %branch18 ], [ %tmp_10, %branch17 ], [ %tmp_10, %branch16 ], [ %tmp_10, %branch15 ], [ %tmp_10, %branch14 ], [ %tmp_10, %branch13 ], [ %tmp_13, %branch12 ], [ %tmp_10, %branch11 ]
  %tmp_30 = phi float [ %tmp_11, %branch19 ], [ %tmp_11, %branch18 ], [ %tmp_11, %branch17 ], [ %tmp_11, %branch16 ], [ %tmp_11, %branch15 ], [ %tmp_11, %branch14 ], [ %tmp_11, %branch13 ], [ %tmp_11, %branch12 ], [ %tmp_13, %branch11 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str3, i32 %tmp_6) nounwind
  br label %2

.critedge:                                        ; preds = %3, %2
  switch i4 %tmp_12, label %branch9 [
    i4 0, label %branch0
    i4 1, label %branch1
    i4 2, label %branch2
    i4 3, label %branch3
    i4 4, label %branch4
    i4 5, label %branch5
    i4 6, label %branch6
    i4 7, label %branch7
    i4 -8, label %branch8
  ]

.critedge10:                                      ; preds = %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str2, i32 %tmp) nounwind
  %i_1 = add i4 %i, 1
  br label %1

; <label>:6                                       ; preds = %1
  ret void

branch0:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_0, float %key)
  br label %.critedge10

branch1:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_1, float %key)
  br label %.critedge10

branch2:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_2, float %key)
  br label %.critedge10

branch3:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_3, float %key)
  br label %.critedge10

branch4:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_4, float %key)
  br label %.critedge10

branch5:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_5, float %key)
  br label %.critedge10

branch6:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_6, float %key)
  br label %.critedge10

branch7:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_7, float %key)
  br label %.critedge10

branch8:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_8, float %key)
  br label %.critedge10

branch9:                                          ; preds = %.critedge
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_9, float %key)
  br label %.critedge10

branch11:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_1, float %tmp_13)
  br label %5

branch12:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_2, float %tmp_13)
  br label %5

branch13:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_3, float %tmp_13)
  br label %5

branch14:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_4, float %tmp_13)
  br label %5

branch15:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_5, float %tmp_13)
  br label %5

branch16:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_6, float %tmp_13)
  br label %5

branch17:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_7, float %tmp_13)
  br label %5

branch18:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_8, float %tmp_13)
  br label %5

branch19:                                         ; preds = %4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %arr_9, float %tmp_13)
  br label %5
}

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
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

define weak float @_ssdm_op_Read.ap_auto.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_Mux.ap_auto.10float.i4(float, float, float, float, float, float, float, float, float, float, i4) {
entry:
  switch i4 %10, label %case9 [
    i4 0, label %case0
    i4 1, label %case1
    i4 2, label %case2
    i4 3, label %case3
    i4 4, label %case4
    i4 5, label %case5
    i4 6, label %case6
    i4 7, label %case7
    i4 -8, label %case8
  ]

case0:                                            ; preds = %case9, %case8, %case7, %case6, %case5, %case4, %case3, %case2, %case1, %entry
  %merge = phi float [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ]
  ret float %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0

case4:                                            ; preds = %entry
  br label %case0

case5:                                            ; preds = %entry
  br label %case0

case6:                                            ; preds = %entry
  br label %case0

case7:                                            ; preds = %entry
  br label %case0

case8:                                            ; preds = %entry
  br label %case0

case9:                                            ; preds = %entry
  br label %case0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"arr", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 9, i32 9, i32 2}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"arr", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 8, i32 8, i32 2}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"arr", metadata !23, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 7, i32 7, i32 2}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"arr", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 6, i32 6, i32 2}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"arr", metadata !35, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 5, i32 5, i32 2}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"arr", metadata !41, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 4, i32 4, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"arr", metadata !47, metadata !"float", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 3, i32 3, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"arr", metadata !53, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 2, i32 2, i32 2}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"arr", metadata !59, metadata !"float", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 1, i32 1, i32 2}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"arr", metadata !65, metadata !"float", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, i32 2}
