; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"FOR_LOOP\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"WHILE_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @insertion_sort(float* %arr) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=8 type=float**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %key = alloca float, align 4                    ; [#uses=3 type=float*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store float* %arr, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !21), !dbg !22 ; [debug line = 4:33] [debug variable = arr]
  %2 = load float** %1, align 8, !dbg !23         ; [#uses=1 type=float*] [debug line = 4:43]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %2, i32 10) nounwind, !dbg !23 ; [debug line = 4:43]
  %3 = load float** %1, align 8, !dbg !25         ; [#uses=1 type=float*] [debug line = 5:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %3, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !25 ; [debug line = 5:1]
  br label %4, !dbg !25                           ; [debug line = 5:1]

; <label>:4                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !26), !dbg !30 ; [debug line = 7:23] [debug variable = i]
  store i32 1, i32* %i, align 4, !dbg !31         ; [debug line = 7:28]
  br label %5, !dbg !31                           ; [debug line = 7:28]

; <label>:5                                       ; preds = %50, %4
  %6 = load i32* %i, align 4, !dbg !31            ; [#uses=1 type=i32] [debug line = 7:28]
  %7 = icmp slt i32 %6, 10, !dbg !31              ; [#uses=1 type=i1] [debug line = 7:28]
  br i1 %7, label %8, label %53, !dbg !31         ; [debug line = 7:28]

; <label>:8                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !32 ; [debug line = 7:44]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !32 ; [debug line = 7:44]
  call void @llvm.dbg.declare(metadata !{float* %key}, metadata !34), !dbg !35 ; [debug line = 8:18] [debug variable = key]
  %9 = load i32* %i, align 4, !dbg !36            ; [#uses=1 type=i32] [debug line = 8:30]
  %10 = sext i32 %9 to i64, !dbg !36              ; [#uses=1 type=i64] [debug line = 8:30]
  %11 = load float** %1, align 8, !dbg !36        ; [#uses=1 type=float*] [debug line = 8:30]
  %12 = getelementptr inbounds float* %11, i64 %10, !dbg !36 ; [#uses=1 type=float*] [debug line = 8:30]
  %13 = load float* %12, align 4, !dbg !36        ; [#uses=1 type=float] [debug line = 8:30]
  store float %13, float* %key, align 4, !dbg !36 ; [debug line = 8:30]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !37), !dbg !38 ; [debug line = 9:19] [debug variable = j]
  %14 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 9:26]
  %15 = sub nsw i32 %14, 1, !dbg !39              ; [#uses=1 type=i32] [debug line = 9:26]
  store i32 %15, i32* %j, align 4, !dbg !39       ; [debug line = 9:26]
  br label %16, !dbg !39                          ; [debug line = 9:26]

; <label>:16                                      ; preds = %8
  br label %17, !dbg !40                          ; [debug line = 12:9]

; <label>:17                                      ; preds = %30, %16
  %18 = load i32* %j, align 4, !dbg !40           ; [#uses=1 type=i32] [debug line = 12:9]
  %19 = icmp sge i32 %18, 0, !dbg !40             ; [#uses=1 type=i1] [debug line = 12:9]
  br i1 %19, label %20, label %28, !dbg !40       ; [debug line = 12:9]

; <label>:20                                      ; preds = %17
  %21 = load i32* %j, align 4, !dbg !40           ; [#uses=1 type=i32] [debug line = 12:9]
  %22 = sext i32 %21 to i64, !dbg !40             ; [#uses=1 type=i64] [debug line = 12:9]
  %23 = load float** %1, align 8, !dbg !40        ; [#uses=1 type=float*] [debug line = 12:9]
  %24 = getelementptr inbounds float* %23, i64 %22, !dbg !40 ; [#uses=1 type=float*] [debug line = 12:9]
  %25 = load float* %24, align 4, !dbg !40        ; [#uses=1 type=float] [debug line = 12:9]
  %26 = load float* %key, align 4, !dbg !40       ; [#uses=1 type=float] [debug line = 12:9]
  %27 = fcmp ogt float %25, %26, !dbg !40         ; [#uses=1 type=i1] [debug line = 12:9]
  br label %28

; <label>:28                                      ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]       ; [#uses=1 type=i1]
  br i1 %29, label %30, label %43

; <label>:30                                      ; preds = %28
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !41 ; [debug line = 12:41]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !41 ; [debug line = 12:41]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 13:1]
  %31 = load i32* %j, align 4, !dbg !44           ; [#uses=1 type=i32] [debug line = 14:10]
  %32 = sext i32 %31 to i64, !dbg !44             ; [#uses=1 type=i64] [debug line = 14:10]
  %33 = load float** %1, align 8, !dbg !44        ; [#uses=1 type=float*] [debug line = 14:10]
  %34 = getelementptr inbounds float* %33, i64 %32, !dbg !44 ; [#uses=1 type=float*] [debug line = 14:10]
  %35 = load float* %34, align 4, !dbg !44        ; [#uses=1 type=float] [debug line = 14:10]
  %36 = load i32* %j, align 4, !dbg !44           ; [#uses=1 type=i32] [debug line = 14:10]
  %37 = add nsw i32 %36, 1, !dbg !44              ; [#uses=1 type=i32] [debug line = 14:10]
  %38 = sext i32 %37 to i64, !dbg !44             ; [#uses=1 type=i64] [debug line = 14:10]
  %39 = load float** %1, align 8, !dbg !44        ; [#uses=1 type=float*] [debug line = 14:10]
  %40 = getelementptr inbounds float* %39, i64 %38, !dbg !44 ; [#uses=1 type=float*] [debug line = 14:10]
  store float %35, float* %40, align 4, !dbg !44  ; [debug line = 14:10]
  %41 = load i32* %j, align 4, !dbg !45           ; [#uses=1 type=i32] [debug line = 15:13]
  %42 = sub nsw i32 %41, 1, !dbg !45              ; [#uses=1 type=i32] [debug line = 15:13]
  store i32 %42, i32* %j, align 4, !dbg !45       ; [debug line = 15:13]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 16:9]
  br label %17, !dbg !46                          ; [debug line = 16:9]

; <label>:43                                      ; preds = %28
  %44 = load float* %key, align 4, !dbg !47       ; [#uses=1 type=float] [debug line = 17:9]
  %45 = load i32* %j, align 4, !dbg !47           ; [#uses=1 type=i32] [debug line = 17:9]
  %46 = add nsw i32 %45, 1, !dbg !47              ; [#uses=1 type=i32] [debug line = 17:9]
  %47 = sext i32 %46 to i64, !dbg !47             ; [#uses=1 type=i64] [debug line = 17:9]
  %48 = load float** %1, align 8, !dbg !47        ; [#uses=1 type=float*] [debug line = 17:9]
  %49 = getelementptr inbounds float* %48, i64 %47, !dbg !47 ; [#uses=1 type=float*] [debug line = 17:9]
  store float %44, float* %49, align 4, !dbg !47  ; [debug line = 17:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !48 ; [debug line = 18:5]
  br label %50, !dbg !48                          ; [debug line = 18:5]

; <label>:50                                      ; preds = %43
  %51 = load i32* %i, align 4, !dbg !49           ; [#uses=1 type=i32] [debug line = 7:38]
  %52 = add nsw i32 %51, 1, !dbg !49              ; [#uses=1 type=i32] [debug line = 7:38]
  store i32 %52, i32* %i, align 4, !dbg !49       ; [debug line = 7:38]
  br label %5, !dbg !49                           ; [debug line = 7:38]

; <label>:53                                      ; preds = %5
  ret void, !dbg !50                              ; [debug line = 19:1]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/InsertionSort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @insertion_sort, null, null, metadata !12, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{void (float*)* @insertion_sort, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 4, i32 33, metadata !5, null}
!23 = metadata !{i32 4, i32 43, metadata !24, null}
!24 = metadata !{i32 786443, metadata !5, i32 4, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 5, i32 1, metadata !24, null}
!26 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !6, i32 7, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 786443, metadata !24, i32 7, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 7, i32 23, metadata !27, null}
!31 = metadata !{i32 7, i32 28, metadata !27, null}
!32 = metadata !{i32 7, i32 44, metadata !33, null}
!33 = metadata !{i32 786443, metadata !27, i32 7, i32 43, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786688, metadata !33, metadata !"key", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 8, i32 18, metadata !33, null}
!36 = metadata !{i32 8, i32 30, metadata !33, null}
!37 = metadata !{i32 786688, metadata !33, metadata !"j", metadata !6, i32 9, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 9, i32 19, metadata !33, null}
!39 = metadata !{i32 9, i32 26, metadata !33, null}
!40 = metadata !{i32 12, i32 9, metadata !33, null}
!41 = metadata !{i32 12, i32 41, metadata !42, null}
!42 = metadata !{i32 786443, metadata !33, i32 12, i32 40, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 13, i32 1, metadata !42, null}
!44 = metadata !{i32 14, i32 10, metadata !42, null}
!45 = metadata !{i32 15, i32 13, metadata !42, null}
!46 = metadata !{i32 16, i32 9, metadata !42, null}
!47 = metadata !{i32 17, i32 9, metadata !33, null}
!48 = metadata !{i32 18, i32 5, metadata !33, null}
!49 = metadata !{i32 7, i32 38, metadata !27, null}
!50 = metadata !{i32 19, i32 1, metadata !24, null}
