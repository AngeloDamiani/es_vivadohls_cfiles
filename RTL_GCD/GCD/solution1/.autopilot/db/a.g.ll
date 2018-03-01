; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"MODULOWHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"GCDWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
define float @modulo(float %x, float %y) nounwind uwtable {
  %1 = alloca float, align 4                      ; [#uses=2 type=float*]
  %2 = alloca float, align 4                      ; [#uses=3 type=float*]
  %result = alloca float, align 4                 ; [#uses=5 type=float*]
  store float %x, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !23), !dbg !24 ; [debug line = 3:32] [debug variable = x]
  store float %y, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !25), !dbg !26 ; [debug line = 3:47] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !27), !dbg !29 ; [debug line = 5:17] [debug variable = result]
  %3 = load float* %1, align 4, !dbg !30          ; [#uses=1 type=float] [debug line = 5:27]
  store float %3, float* %result, align 4, !dbg !30 ; [debug line = 5:27]
  br label %4, !dbg !30                           ; [debug line = 5:27]

; <label>:4                                       ; preds = %0
  br label %5, !dbg !31                           ; [debug line = 8:5]

; <label>:5                                       ; preds = %9, %4
  %6 = load float* %result, align 4, !dbg !31     ; [#uses=1 type=float] [debug line = 8:5]
  %7 = load float* %2, align 4, !dbg !31          ; [#uses=1 type=float] [debug line = 8:5]
  %8 = fcmp oge float %6, %7, !dbg !31            ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %8, label %9, label %13, !dbg !31         ; [debug line = 8:5]

; <label>:9                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !32 ; [debug line = 9:9]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !32 ; [debug line = 9:9]
  %10 = load float* %2, align 4, !dbg !32         ; [#uses=1 type=float] [debug line = 9:9]
  %11 = load float* %result, align 4, !dbg !32    ; [#uses=1 type=float] [debug line = 9:9]
  %12 = fsub float %11, %10, !dbg !32             ; [#uses=1 type=float] [debug line = 9:9]
  store float %12, float* %result, align 4, !dbg !32 ; [debug line = 9:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !34 ; [debug line = 9:19]
  br label %5, !dbg !34                           ; [debug line = 9:19]

; <label>:13                                      ; preds = %5
  %14 = load float* %result, align 4, !dbg !35    ; [#uses=1 type=float] [debug line = 11:5]
  ret float %14, !dbg !35                         ; [debug line = 11:5]
}

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define float @gcd(float %m, float %n) nounwind uwtable {
  %1 = alloca float, align 4                      ; [#uses=3 type=float*]
  %2 = alloca float, align 4                      ; [#uses=8 type=float*]
  %3 = alloca float, align 4                      ; [#uses=9 type=float*]
  %r = alloca float, align 4                      ; [#uses=3 type=float*]
  store float %m, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !36), !dbg !37 ; [debug line = 14:29] [debug variable = m]
  store float %n, float* %3, align 4
  call void @llvm.dbg.declare(metadata !{float* %3}, metadata !38), !dbg !39 ; [debug line = 14:44] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{float* %r}, metadata !40), !dbg !42 ; [debug line = 16:17] [debug variable = r]
  store float 0.000000e+00, float* %r, align 4, !dbg !43 ; [debug line = 16:22]
  %4 = load float* %2, align 4, !dbg !44          ; [#uses=1 type=float] [debug line = 18:5]
  %5 = fcmp oeq float %4, 0.000000e+00, !dbg !44  ; [#uses=1 type=i1] [debug line = 18:5]
  br i1 %5, label %6, label %10, !dbg !44         ; [debug line = 18:5]

; <label>:6                                       ; preds = %0
  %7 = load float* %3, align 4, !dbg !44          ; [#uses=1 type=float] [debug line = 18:5]
  %8 = fcmp oeq float %7, 0.000000e+00, !dbg !44  ; [#uses=1 type=i1] [debug line = 18:5]
  br i1 %8, label %9, label %10, !dbg !44         ; [debug line = 18:5]

; <label>:9                                       ; preds = %6
  store float -1.000000e+00, float* %1, !dbg !45  ; [debug line = 19:9]
  br label %35, !dbg !45                          ; [debug line = 19:9]

; <label>:10                                      ; preds = %6, %0
  %11 = load float* %2, align 4, !dbg !46         ; [#uses=1 type=float] [debug line = 21:5]
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !46 ; [#uses=1 type=i1] [debug line = 21:5]
  br i1 %12, label %13, label %16, !dbg !46       ; [debug line = 21:5]

; <label>:13                                      ; preds = %10
  %14 = load float* %2, align 4, !dbg !47         ; [#uses=1 type=float] [debug line = 22:9]
  %15 = fsub float -0.000000e+00, %14, !dbg !47   ; [#uses=1 type=float] [debug line = 22:9]
  store float %15, float* %2, align 4, !dbg !47   ; [debug line = 22:9]
  br label %16, !dbg !47                          ; [debug line = 22:9]

; <label>:16                                      ; preds = %13, %10
  %17 = load float* %3, align 4, !dbg !48         ; [#uses=1 type=float] [debug line = 23:5]
  %18 = fcmp olt float %17, 0.000000e+00, !dbg !48 ; [#uses=1 type=i1] [debug line = 23:5]
  br i1 %18, label %19, label %22, !dbg !48       ; [debug line = 23:5]

; <label>:19                                      ; preds = %16
  %20 = load float* %3, align 4, !dbg !49         ; [#uses=1 type=float] [debug line = 24:9]
  %21 = fsub float -0.000000e+00, %20, !dbg !49   ; [#uses=1 type=float] [debug line = 24:9]
  store float %21, float* %3, align 4, !dbg !49   ; [debug line = 24:9]
  br label %22, !dbg !49                          ; [debug line = 24:9]

; <label>:22                                      ; preds = %19, %16
  br label %23, !dbg !49                          ; [debug line = 24:9]

; <label>:23                                      ; preds = %22
  br label %24, !dbg !50                          ; [debug line = 27:5]

; <label>:24                                      ; preds = %27, %23
  %25 = load float* %3, align 4, !dbg !50         ; [#uses=1 type=float] [debug line = 27:5]
  %26 = fcmp une float %25, 0.000000e+00, !dbg !50 ; [#uses=1 type=i1] [debug line = 27:5]
  br i1 %26, label %27, label %33, !dbg !50       ; [debug line = 27:5]

; <label>:27                                      ; preds = %24
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 27:15]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 27:15]
  %28 = load float* %2, align 4, !dbg !53         ; [#uses=1 type=float] [debug line = 28:13]
  %29 = load float* %3, align 4, !dbg !53         ; [#uses=1 type=float] [debug line = 28:13]
  %30 = call float @modulo(float %28, float %29), !dbg !53 ; [#uses=1 type=float] [debug line = 28:13]
  store float %30, float* %r, align 4, !dbg !53   ; [debug line = 28:13]
  %31 = load float* %3, align 4, !dbg !54         ; [#uses=1 type=float] [debug line = 29:9]
  store float %31, float* %2, align 4, !dbg !54   ; [debug line = 29:9]
  %32 = load float* %r, align 4, !dbg !55         ; [#uses=1 type=float] [debug line = 30:9]
  store float %32, float* %3, align 4, !dbg !55   ; [debug line = 30:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 31:5]
  br label %24, !dbg !56                          ; [debug line = 31:5]

; <label>:33                                      ; preds = %24
  %34 = load float* %2, align 4, !dbg !57         ; [#uses=1 type=float] [debug line = 33:5]
  store float %34, float* %1, !dbg !57            ; [debug line = 33:5]
  br label %35, !dbg !57                          ; [debug line = 33:5]

; <label>:35                                      ; preds = %33, %9
  %36 = load float* %1, !dbg !58                  ; [#uses=1 type=float] [debug line = 34:1]
  ret float %36, !dbg !58                         ; [debug line = 34:1]
}

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
!29 = metadata !{i32 5, i32 17, metadata !28, null}
!30 = metadata !{i32 5, i32 27, metadata !28, null}
!31 = metadata !{i32 8, i32 5, metadata !28, null}
!32 = metadata !{i32 9, i32 9, metadata !33, null}
!33 = metadata !{i32 786443, metadata !28, i32 9, i32 9, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 9, i32 19, metadata !33, null}
!35 = metadata !{i32 11, i32 5, metadata !28, null}
!36 = metadata !{i32 786689, metadata !13, metadata !"m", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 14, i32 29, metadata !13, null}
!38 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 14, i32 44, metadata !13, null}
!40 = metadata !{i32 786688, metadata !41, metadata !"r", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 786443, metadata !13, i32 14, i32 47, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 16, i32 17, metadata !41, null}
!43 = metadata !{i32 16, i32 22, metadata !41, null}
!44 = metadata !{i32 18, i32 5, metadata !41, null}
!45 = metadata !{i32 19, i32 9, metadata !41, null}
!46 = metadata !{i32 21, i32 5, metadata !41, null}
!47 = metadata !{i32 22, i32 9, metadata !41, null}
!48 = metadata !{i32 23, i32 5, metadata !41, null}
!49 = metadata !{i32 24, i32 9, metadata !41, null}
!50 = metadata !{i32 27, i32 5, metadata !41, null}
!51 = metadata !{i32 27, i32 15, metadata !52, null}
!52 = metadata !{i32 786443, metadata !41, i32 27, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 28, i32 13, metadata !52, null}
!54 = metadata !{i32 29, i32 9, metadata !52, null}
!55 = metadata !{i32 30, i32 9, metadata !52, null}
!56 = metadata !{i32 31, i32 5, metadata !52, null}
!57 = metadata !{i32 33, i32 5, metadata !41, null}
!58 = metadata !{i32 34, i32 1, metadata !41, null}
