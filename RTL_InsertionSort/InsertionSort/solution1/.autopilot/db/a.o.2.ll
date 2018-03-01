; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@insertion_sort.str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"WHILE_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"FOR_LOOP\00", align 1 ; [#uses=3 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort(float* %"arr[0]", float* %"arr[1]", float* %"arr[2]", float* %"arr[3]", float* %"arr[4]", float* %"arr[5]", float* %"arr[6]", float* %"arr[7]", float* %"arr[8]", float* %"arr[9]") {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[9]"), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[8]"), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[7]"), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[6]"), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[5]"), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[4]"), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[3]"), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[2]"), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[1]"), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(float* %"arr[0]"), !map !75
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %"arr[0]"}, i64 0, metadata !81), !dbg !86 ; [debug line = 4:33] [debug variable = arr[0]]
  call void @llvm.dbg.value(metadata !{float* %"arr[1]"}, i64 0, metadata !87), !dbg !86 ; [debug line = 4:33] [debug variable = arr[1]]
  call void @llvm.dbg.value(metadata !{float* %"arr[2]"}, i64 0, metadata !88), !dbg !86 ; [debug line = 4:33] [debug variable = arr[2]]
  call void @llvm.dbg.value(metadata !{float* %"arr[3]"}, i64 0, metadata !89), !dbg !86 ; [debug line = 4:33] [debug variable = arr[3]]
  call void @llvm.dbg.value(metadata !{float* %"arr[4]"}, i64 0, metadata !90), !dbg !86 ; [debug line = 4:33] [debug variable = arr[4]]
  call void @llvm.dbg.value(metadata !{float* %"arr[5]"}, i64 0, metadata !91), !dbg !86 ; [debug line = 4:33] [debug variable = arr[5]]
  call void @llvm.dbg.value(metadata !{float* %"arr[6]"}, i64 0, metadata !92), !dbg !86 ; [debug line = 4:33] [debug variable = arr[6]]
  call void @llvm.dbg.value(metadata !{float* %"arr[7]"}, i64 0, metadata !93), !dbg !86 ; [debug line = 4:33] [debug variable = arr[7]]
  call void @llvm.dbg.value(metadata !{float* %"arr[8]"}, i64 0, metadata !94), !dbg !86 ; [debug line = 4:33] [debug variable = arr[8]]
  call void @llvm.dbg.value(metadata !{float* %"arr[9]"}, i64 0, metadata !95), !dbg !86 ; [debug line = 4:33] [debug variable = arr[9]]
  br label %1, !dbg !96                           ; [debug line = 7:28]

; <label>:1                                       ; preds = %.critedge10, %0
  %i = phi i4 [ 1, %0 ], [ %i.1, %.critedge10 ]   ; [#uses=11 type=i4]
  %i.cast = zext i4 %i to i5, !dbg !96            ; [#uses=1 type=i5] [debug line = 7:28]
  %exitcond = icmp eq i4 %i, -6, !dbg !96         ; [#uses=1 type=i1] [debug line = 7:28]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond, label %8, label %_ifconv, !dbg !96 ; [debug line = 7:28]

_ifconv:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str2) nounwind, !dbg !99 ; [debug line = 7:44]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @.str2) nounwind, !dbg !99 ; [#uses=1 type=i32] [debug line = 7:44]
  %"arr[9].load" = load float* %"arr[9]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[1].load" = load float* %"arr[1]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[2].load" = load float* %"arr[2]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[3].load" = load float* %"arr[3]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[4].load" = load float* %"arr[4]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[5].load" = load float* %"arr[5]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[6].load" = load float* %"arr[6]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[7].load" = load float* %"arr[7]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %"arr[8].load" = load float* %"arr[8]", align 4, !dbg !101 ; [#uses=2 type=float] [debug line = 8:30]
  %sel_tmp = icmp eq i4 %i, 1, !dbg !101          ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp1 = select i1 %sel_tmp, float %"arr[1].load", float %"arr[9].load", !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp2 = icmp eq i4 %i, 2, !dbg !101         ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp3 = select i1 %sel_tmp2, float %"arr[2].load", float %sel_tmp1, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp4 = icmp eq i4 %i, 3, !dbg !101         ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp5 = select i1 %sel_tmp4, float %"arr[3].load", float %sel_tmp3, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp6 = icmp eq i4 %i, 4, !dbg !101         ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp7 = select i1 %sel_tmp6, float %"arr[4].load", float %sel_tmp5, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp8 = icmp eq i4 %i, 5, !dbg !101         ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp9 = select i1 %sel_tmp8, float %"arr[5].load", float %sel_tmp7, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp10 = icmp eq i4 %i, 6, !dbg !101        ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp11 = select i1 %sel_tmp10, float %"arr[6].load", float %sel_tmp9, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp12 = icmp eq i4 %i, 7, !dbg !101        ; [#uses=1 type=i1] [debug line = 8:30]
  %sel_tmp13 = select i1 %sel_tmp12, float %"arr[7].load", float %sel_tmp11, !dbg !101 ; [#uses=1 type=float] [debug line = 8:30]
  %sel_tmp14 = icmp eq i4 %i, -8, !dbg !101       ; [#uses=1 type=i1] [debug line = 8:30]
  %key = select i1 %sel_tmp14, float %"arr[8].load", float %sel_tmp13, !dbg !101 ; [#uses=12 type=float] [debug line = 8:30]
  call void @llvm.dbg.value(metadata !{float %key}, i64 0, metadata !102), !dbg !101 ; [debug line = 8:30] [debug variable = key]
  br label %2, !dbg !103                          ; [debug line = 12:9]

; <label>:2                                       ; preds = %5, %_ifconv
  %tmp.2 = phi float [ %"arr[9].load", %_ifconv ], [ %tmp.23, %5 ] ; [#uses=9 type=float]
  %tmp.3 = phi float [ %"arr[8].load", %_ifconv ], [ %tmp.24, %5 ] ; [#uses=9 type=float]
  %tmp.5 = phi float [ %"arr[7].load", %_ifconv ], [ %tmp.25, %5 ] ; [#uses=9 type=float]
  %tmp.7 = phi float [ %"arr[6].load", %_ifconv ], [ %tmp.26, %5 ] ; [#uses=9 type=float]
  %tmp.8 = phi float [ %"arr[5].load", %_ifconv ], [ %tmp.27, %5 ] ; [#uses=9 type=float]
  %tmp.9 = phi float [ %"arr[4].load", %_ifconv ], [ %tmp.28, %5 ] ; [#uses=9 type=float]
  %tmp.10 = phi float [ %"arr[3].load", %_ifconv ], [ %tmp.29, %5 ] ; [#uses=9 type=float]
  %tmp.11 = phi float [ %"arr[2].load", %_ifconv ], [ %tmp.30, %5 ] ; [#uses=9 type=float]
  %tmp.12 = phi float [ %"arr[1].load", %_ifconv ], [ %tmp.31, %5 ] ; [#uses=9 type=float]
  %j.0.in = phi i5 [ %i.cast, %_ifconv ], [ %j, %5 ] ; [#uses=3 type=i5]
  %tmp.4 = trunc i5 %j.0.in to i4                 ; [#uses=4 type=i4]
  %j = add i5 %j.0.in, -1, !dbg !104              ; [#uses=1 type=i5] [debug line = 9:26]
  call void @llvm.dbg.value(metadata !{i5 %j}, i64 0, metadata !105), !dbg !104 ; [debug line = 9:26] [debug variable = j]
  %tmp.1 = icmp sgt i5 %j.0.in, 0, !dbg !103      ; [#uses=1 type=i1] [debug line = 12:9]
  br i1 %tmp.1, label %3, label %.critedge, !dbg !103 ; [debug line = 12:9]

; <label>:3                                       ; preds = %2
  %j.t = add i4 %tmp.4, -1                        ; [#uses=1 type=i4]
  %"arr[0].load" = load float* %"arr[0]", align 4 ; [#uses=1 type=float]
  %tmp.13 = call float @_ssdm_op_Mux.ap_auto.10float.i4(float %"arr[0].load", float %tmp.12, float %tmp.11, float %tmp.10, float %tmp.9, float %tmp.8, float %tmp.7, float %tmp.5, float %tmp.3, float %tmp.2, i4 %j.t) ; [#uses=20 type=float]
  %_to_int = bitcast float %tmp.13 to i32         ; [#uses=2 type=i32]
  %tmp.14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.15 = trunc i32 %_to_int to i23             ; [#uses=1 type=i23]
  %key_to_int = bitcast float %key to i32         ; [#uses=2 type=i32]
  %tmp.16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %key_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.17 = trunc i32 %key_to_int to i23          ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.14, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.15, 0                ; [#uses=1 type=i1]
  %tmp.18 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.16, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp.17, 0               ; [#uses=1 type=i1]
  %tmp.19 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp.20 = and i1 %tmp.18, %tmp.19               ; [#uses=1 type=i1]
  %tmp.21 = fcmp ogt float %tmp.13, %key, !dbg !103 ; [#uses=1 type=i1] [debug line = 12:9]
  %tmp.22 = and i1 %tmp.20, %tmp.21, !dbg !103    ; [#uses=1 type=i1] [debug line = 12:9]
  br i1 %tmp.22, label %4, label %.critedge

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str3) nounwind, !dbg !108 ; [debug line = 12:41]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str3) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 12:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, [1 x i8]* @.str1) nounwind, !dbg !110 ; [debug line = 13:1]
  switch i4 %tmp.4, label %branch19 [
    i4 1, label %branch11
    i4 2, label %branch12
    i4 3, label %branch13
    i4 4, label %branch14
    i4 5, label %branch15
    i4 6, label %branch16
    i4 7, label %branch17
    i4 -8, label %branch18
  ], !dbg !111                                    ; [debug line = 14:10]

; <label>:5                                       ; preds = %branch19, %branch18, %branch17, %branch16, %branch15, %branch14, %branch13, %branch12, %branch11
  %tmp.23 = phi float [ %tmp.13, %branch19 ], [ %tmp.2, %branch18 ], [ %tmp.2, %branch17 ], [ %tmp.2, %branch16 ], [ %tmp.2, %branch15 ], [ %tmp.2, %branch14 ], [ %tmp.2, %branch13 ], [ %tmp.2, %branch12 ], [ %tmp.2, %branch11 ] ; [#uses=1 type=float]
  %tmp.24 = phi float [ %tmp.3, %branch19 ], [ %tmp.13, %branch18 ], [ %tmp.3, %branch17 ], [ %tmp.3, %branch16 ], [ %tmp.3, %branch15 ], [ %tmp.3, %branch14 ], [ %tmp.3, %branch13 ], [ %tmp.3, %branch12 ], [ %tmp.3, %branch11 ] ; [#uses=1 type=float]
  %tmp.25 = phi float [ %tmp.5, %branch19 ], [ %tmp.5, %branch18 ], [ %tmp.13, %branch17 ], [ %tmp.5, %branch16 ], [ %tmp.5, %branch15 ], [ %tmp.5, %branch14 ], [ %tmp.5, %branch13 ], [ %tmp.5, %branch12 ], [ %tmp.5, %branch11 ] ; [#uses=1 type=float]
  %tmp.26 = phi float [ %tmp.7, %branch19 ], [ %tmp.7, %branch18 ], [ %tmp.7, %branch17 ], [ %tmp.13, %branch16 ], [ %tmp.7, %branch15 ], [ %tmp.7, %branch14 ], [ %tmp.7, %branch13 ], [ %tmp.7, %branch12 ], [ %tmp.7, %branch11 ] ; [#uses=1 type=float]
  %tmp.27 = phi float [ %tmp.8, %branch19 ], [ %tmp.8, %branch18 ], [ %tmp.8, %branch17 ], [ %tmp.8, %branch16 ], [ %tmp.13, %branch15 ], [ %tmp.8, %branch14 ], [ %tmp.8, %branch13 ], [ %tmp.8, %branch12 ], [ %tmp.8, %branch11 ] ; [#uses=1 type=float]
  %tmp.28 = phi float [ %tmp.9, %branch19 ], [ %tmp.9, %branch18 ], [ %tmp.9, %branch17 ], [ %tmp.9, %branch16 ], [ %tmp.9, %branch15 ], [ %tmp.13, %branch14 ], [ %tmp.9, %branch13 ], [ %tmp.9, %branch12 ], [ %tmp.9, %branch11 ] ; [#uses=1 type=float]
  %tmp.29 = phi float [ %tmp.10, %branch19 ], [ %tmp.10, %branch18 ], [ %tmp.10, %branch17 ], [ %tmp.10, %branch16 ], [ %tmp.10, %branch15 ], [ %tmp.10, %branch14 ], [ %tmp.13, %branch13 ], [ %tmp.10, %branch12 ], [ %tmp.10, %branch11 ] ; [#uses=1 type=float]
  %tmp.30 = phi float [ %tmp.11, %branch19 ], [ %tmp.11, %branch18 ], [ %tmp.11, %branch17 ], [ %tmp.11, %branch16 ], [ %tmp.11, %branch15 ], [ %tmp.11, %branch14 ], [ %tmp.11, %branch13 ], [ %tmp.13, %branch12 ], [ %tmp.11, %branch11 ] ; [#uses=1 type=float]
  %tmp.31 = phi float [ %tmp.12, %branch19 ], [ %tmp.12, %branch18 ], [ %tmp.12, %branch17 ], [ %tmp.12, %branch16 ], [ %tmp.12, %branch15 ], [ %tmp.12, %branch14 ], [ %tmp.12, %branch13 ], [ %tmp.12, %branch12 ], [ %tmp.13, %branch11 ] ; [#uses=1 type=float]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str3, i32 %tmp.6) nounwind, !dbg !112 ; [#uses=0 type=i32] [debug line = 16:9]
  br label %2, !dbg !112                          ; [debug line = 16:9]

.critedge:                                        ; preds = %3, %2
  %tmp.4.lcssa = phi i4 [ %tmp.4, %3 ], [ %tmp.4, %2 ] ; [#uses=1 type=i4]
  switch i4 %tmp.4.lcssa, label %branch9 [
    i4 0, label %branch0
    i4 1, label %branch1
    i4 2, label %branch2
    i4 3, label %branch3
    i4 4, label %branch4
    i4 5, label %branch5
    i4 6, label %branch6
    i4 7, label %branch7
    i4 -8, label %branch8
  ], !dbg !113                                    ; [debug line = 17:9]

.critedge10:                                      ; preds = %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @.str2, i32 %tmp) nounwind, !dbg !114 ; [#uses=0 type=i32] [debug line = 18:5]
  %i.1 = add i4 %i, 1, !dbg !115                  ; [#uses=1 type=i4] [debug line = 7:38]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !116), !dbg !115 ; [debug line = 7:38] [debug variable = i]
  br label %1, !dbg !115                          ; [debug line = 7:38]

; <label>:8                                       ; preds = %1
  ret void, !dbg !117                             ; [debug line = 19:1]

branch0:                                          ; preds = %.critedge
  store float %key, float* %"arr[0]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch1:                                          ; preds = %.critedge
  store float %key, float* %"arr[1]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch2:                                          ; preds = %.critedge
  store float %key, float* %"arr[2]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch3:                                          ; preds = %.critedge
  store float %key, float* %"arr[3]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch4:                                          ; preds = %.critedge
  store float %key, float* %"arr[4]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch5:                                          ; preds = %.critedge
  store float %key, float* %"arr[5]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch6:                                          ; preds = %.critedge
  store float %key, float* %"arr[6]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch7:                                          ; preds = %.critedge
  store float %key, float* %"arr[7]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch8:                                          ; preds = %.critedge
  store float %key, float* %"arr[8]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch9:                                          ; preds = %.critedge
  store float %key, float* %"arr[9]", align 4, !dbg !113 ; [debug line = 17:9]
  br label %.critedge10, !dbg !113                ; [debug line = 17:9]

branch11:                                         ; preds = %4
  store float %tmp.13, float* %"arr[1]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch12:                                         ; preds = %4
  store float %tmp.13, float* %"arr[2]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch13:                                         ; preds = %4
  store float %tmp.13, float* %"arr[3]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch14:                                         ; preds = %4
  store float %tmp.13, float* %"arr[4]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch15:                                         ; preds = %4
  store float %tmp.13, float* %"arr[5]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch16:                                         ; preds = %4
  store float %tmp.13, float* %"arr[6]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch17:                                         ; preds = %4
  store float %tmp.13, float* %"arr[7]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch18:                                         ; preds = %4
  store float %tmp.13, float* %"arr[8]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]

branch19:                                         ; preds = %4
  store float %tmp.13, float* %"arr[9]", align 4, !dbg !111 ; [debug line = 14:10]
  br label %5, !dbg !111                          ; [debug line = 14:10]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=10]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare float @_ssdm_op_Mux.ap_auto.10float.i4(float, float, float, float, float, float, float, float, float, float, i4)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{null, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"arr", metadata !25, metadata !"float", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 9, i32 9, i32 2}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"arr", metadata !31, metadata !"float", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 8, i32 8, i32 2}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"arr", metadata !37, metadata !"float", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 7, i32 7, i32 2}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"arr", metadata !43, metadata !"float", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 6, i32 6, i32 2}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"arr", metadata !49, metadata !"float", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 5, i32 5, i32 2}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"arr", metadata !55, metadata !"float", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 4, i32 4, i32 2}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"arr", metadata !61, metadata !"float", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 3, i32 3, i32 2}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"arr", metadata !67, metadata !"float", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 2, i32 2, i32 2}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"arr", metadata !73, metadata !"float", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 1, i32 1, i32 2}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"arr", metadata !79, metadata !"float", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, i32 2}
!81 = metadata !{i32 790531, metadata !82, metadata !"arr[0]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!82 = metadata !{i32 786689, metadata !5, metadata !"arr", null, i32 4, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 4, i32 33, metadata !5, null}
!87 = metadata !{i32 790531, metadata !82, metadata !"arr[1]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!88 = metadata !{i32 790531, metadata !82, metadata !"arr[2]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!89 = metadata !{i32 790531, metadata !82, metadata !"arr[3]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!90 = metadata !{i32 790531, metadata !82, metadata !"arr[4]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!91 = metadata !{i32 790531, metadata !82, metadata !"arr[5]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!92 = metadata !{i32 790531, metadata !82, metadata !"arr[6]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!93 = metadata !{i32 790531, metadata !82, metadata !"arr[7]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!94 = metadata !{i32 790531, metadata !82, metadata !"arr[8]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!95 = metadata !{i32 790531, metadata !82, metadata !"arr[9]", null, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!96 = metadata !{i32 7, i32 28, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 7, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !5, i32 4, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 7, i32 44, metadata !100, null}
!100 = metadata !{i32 786443, metadata !97, i32 7, i32 43, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 8, i32 30, metadata !100, null}
!102 = metadata !{i32 786688, metadata !100, metadata !"key", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 12, i32 9, metadata !100, null}
!104 = metadata !{i32 9, i32 26, metadata !100, null}
!105 = metadata !{i32 786688, metadata !100, metadata !"j", metadata !6, i32 9, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ]
!107 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 12, i32 41, metadata !109, null}
!109 = metadata !{i32 786443, metadata !100, i32 12, i32 40, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 13, i32 1, metadata !109, null}
!111 = metadata !{i32 14, i32 10, metadata !109, null}
!112 = metadata !{i32 16, i32 9, metadata !109, null}
!113 = metadata !{i32 17, i32 9, metadata !100, null}
!114 = metadata !{i32 18, i32 5, metadata !100, null}
!115 = metadata !{i32 7, i32 38, metadata !97, null}
!116 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !6, i32 7, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 19, i32 1, metadata !98, null}
