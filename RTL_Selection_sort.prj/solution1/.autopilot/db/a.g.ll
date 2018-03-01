; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=1]
define void @swap(i8 signext %index_1, i8 signext %index_2, float* %arr) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %2 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %3 = alloca float*, align 8                     ; [#uses=6 type=float**]
  %b = alloca float, align 4                      ; [#uses=2 type=float*]
  store i8 %index_1, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !41), !dbg !42 ; [debug line = 4:18] [debug variable = index_1]
  store i8 %index_2, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !43), !dbg !44 ; [debug line = 4:34] [debug variable = index_2]
  store float* %arr, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !45), !dbg !46 ; [debug line = 4:49] [debug variable = arr]
  %4 = load float** %3, align 8, !dbg !47         ; [#uses=1 type=float*] [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %4, i32 10) nounwind, !dbg !47 ; [debug line = 5:2]
  call void @llvm.dbg.declare(metadata !{float* %b}, metadata !49), !dbg !50 ; [debug line = 6:9] [debug variable = b]
  %5 = load i8* %1, align 1, !dbg !51             ; [#uses=1 type=i8] [debug line = 6:25]
  %6 = sext i8 %5 to i64, !dbg !51                ; [#uses=1 type=i64] [debug line = 6:25]
  %7 = load float** %3, align 8, !dbg !51         ; [#uses=1 type=float*] [debug line = 6:25]
  %8 = getelementptr inbounds float* %7, i64 %6, !dbg !51 ; [#uses=1 type=float*] [debug line = 6:25]
  %9 = load float* %8, align 4, !dbg !51          ; [#uses=1 type=float] [debug line = 6:25]
  store float %9, float* %b, align 4, !dbg !51    ; [debug line = 6:25]
  %10 = load i8* %2, align 1, !dbg !52            ; [#uses=1 type=i8] [debug line = 7:3]
  %11 = sext i8 %10 to i64, !dbg !52              ; [#uses=1 type=i64] [debug line = 7:3]
  %12 = load float** %3, align 8, !dbg !52        ; [#uses=1 type=float*] [debug line = 7:3]
  %13 = getelementptr inbounds float* %12, i64 %11, !dbg !52 ; [#uses=1 type=float*] [debug line = 7:3]
  %14 = load float* %13, align 4, !dbg !52        ; [#uses=1 type=float] [debug line = 7:3]
  %15 = load i8* %1, align 1, !dbg !52            ; [#uses=1 type=i8] [debug line = 7:3]
  %16 = sext i8 %15 to i64, !dbg !52              ; [#uses=1 type=i64] [debug line = 7:3]
  %17 = load float** %3, align 8, !dbg !52        ; [#uses=1 type=float*] [debug line = 7:3]
  %18 = getelementptr inbounds float* %17, i64 %16, !dbg !52 ; [#uses=1 type=float*] [debug line = 7:3]
  store float %14, float* %18, align 4, !dbg !52  ; [debug line = 7:3]
  %19 = load float* %b, align 4, !dbg !53         ; [#uses=1 type=float] [debug line = 8:3]
  %20 = load i8* %2, align 1, !dbg !53            ; [#uses=1 type=i8] [debug line = 8:3]
  %21 = sext i8 %20 to i64, !dbg !53              ; [#uses=1 type=i64] [debug line = 8:3]
  %22 = load float** %3, align 8, !dbg !53        ; [#uses=1 type=float*] [debug line = 8:3]
  %23 = getelementptr inbounds float* %22, i64 %21, !dbg !53 ; [#uses=1 type=float*] [debug line = 8:3]
  store float %19, float* %23, align 4, !dbg !53  ; [debug line = 8:3]
  ret void, !dbg !54                              ; [debug line = 9:1]
}

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=0]
define void @selection_sort(float* %arr) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=5 type=float**]
  %min_idx = alloca i8, align 1                   ; [#uses=5 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=7 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=6 type=i8*]
  store float* %arr, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !55), !dbg !56 ; [debug line = 11:27] [debug variable = arr]
  %2 = load float** %1, align 8, !dbg !57         ; [#uses=1 type=float*] [debug line = 12:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %2, i32 10) nounwind, !dbg !57 ; [debug line = 12:2]
  call void @llvm.dbg.declare(metadata !{i8* %min_idx}, metadata !59), !dbg !60 ; [debug line = 13:10] [debug variable = min_idx]
  store i8 0, i8* %min_idx, align 1, !dbg !61     ; [debug line = 13:21]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !62), !dbg !64 ; [debug line = 15:15] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !65           ; [debug line = 15:20]
  br label %3, !dbg !65                           ; [debug line = 15:20]

; <label>:3                                       ; preds = %39, %0
  %4 = load i8* %i, align 1, !dbg !65             ; [#uses=1 type=i8] [debug line = 15:20]
  %5 = sext i8 %4 to i32, !dbg !65                ; [#uses=1 type=i32] [debug line = 15:20]
  %6 = icmp slt i32 %5, 9, !dbg !65               ; [#uses=1 type=i1] [debug line = 15:20]
  br i1 %6, label %7, label %42, !dbg !65         ; [debug line = 15:20]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !66             ; [#uses=1 type=i8] [debug line = 19:5]
  store i8 %8, i8* %min_idx, align 1, !dbg !66    ; [debug line = 19:5]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !68), !dbg !70 ; [debug line = 21:17] [debug variable = j]
  %9 = load i8* %i, align 1, !dbg !71             ; [#uses=1 type=i8] [debug line = 21:24]
  %10 = sext i8 %9 to i32, !dbg !71               ; [#uses=1 type=i32] [debug line = 21:24]
  %11 = add nsw i32 %10, 1, !dbg !71              ; [#uses=1 type=i32] [debug line = 21:24]
  %12 = trunc i32 %11 to i8, !dbg !71             ; [#uses=1 type=i8] [debug line = 21:24]
  store i8 %12, i8* %j, align 1, !dbg !71         ; [debug line = 21:24]
  br label %13, !dbg !71                          ; [debug line = 21:24]

; <label>:13                                      ; preds = %32, %7
  %14 = load i8* %j, align 1, !dbg !71            ; [#uses=1 type=i8] [debug line = 21:24]
  %15 = sext i8 %14 to i32, !dbg !71              ; [#uses=1 type=i32] [debug line = 21:24]
  %16 = icmp slt i32 %15, 10, !dbg !71            ; [#uses=1 type=i1] [debug line = 21:24]
  br i1 %16, label %17, label %35, !dbg !71       ; [debug line = 21:24]

; <label>:17                                      ; preds = %13
  %18 = load i8* %j, align 1, !dbg !72            ; [#uses=1 type=i8] [debug line = 24:7]
  %19 = sext i8 %18 to i64, !dbg !72              ; [#uses=1 type=i64] [debug line = 24:7]
  %20 = load float** %1, align 8, !dbg !72        ; [#uses=1 type=float*] [debug line = 24:7]
  %21 = getelementptr inbounds float* %20, i64 %19, !dbg !72 ; [#uses=1 type=float*] [debug line = 24:7]
  %22 = load float* %21, align 4, !dbg !72        ; [#uses=1 type=float] [debug line = 24:7]
  %23 = load i8* %min_idx, align 1, !dbg !72      ; [#uses=1 type=i8] [debug line = 24:7]
  %24 = sext i8 %23 to i64, !dbg !72              ; [#uses=1 type=i64] [debug line = 24:7]
  %25 = load float** %1, align 8, !dbg !72        ; [#uses=1 type=float*] [debug line = 24:7]
  %26 = getelementptr inbounds float* %25, i64 %24, !dbg !72 ; [#uses=1 type=float*] [debug line = 24:7]
  %27 = load float* %26, align 4, !dbg !72        ; [#uses=1 type=float] [debug line = 24:7]
  %28 = fcmp olt float %22, %27, !dbg !72         ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %28, label %29, label %31, !dbg !72       ; [debug line = 24:7]

; <label>:29                                      ; preds = %17
  %30 = load i8* %j, align 1, !dbg !73            ; [#uses=1 type=i8] [debug line = 25:9]
  store i8 %30, i8* %min_idx, align 1, !dbg !73   ; [debug line = 25:9]
  br label %31, !dbg !73                          ; [debug line = 25:9]

; <label>:31                                      ; preds = %29, %17
  br label %32, !dbg !73                          ; [debug line = 25:9]

; <label>:32                                      ; preds = %31
  %33 = load i8* %j, align 1, !dbg !74            ; [#uses=1 type=i8] [debug line = 23:10]
  %34 = add i8 %33, 1, !dbg !74                   ; [#uses=1 type=i8] [debug line = 23:10]
  store i8 %34, i8* %j, align 1, !dbg !74         ; [debug line = 23:10]
  br label %13, !dbg !74                          ; [debug line = 23:10]

; <label>:35                                      ; preds = %13
  %36 = load i8* %min_idx, align 1, !dbg !75      ; [#uses=1 type=i8] [debug line = 27:7]
  %37 = load i8* %i, align 1, !dbg !75            ; [#uses=1 type=i8] [debug line = 27:7]
  %38 = load float** %1, align 8, !dbg !75        ; [#uses=1 type=float*] [debug line = 27:7]
  call void @swap(i8 signext %36, i8 signext %37, float* %38), !dbg !75 ; [debug line = 27:7]
  br label %39, !dbg !76                          ; [debug line = 28:5]

; <label>:39                                      ; preds = %35
  %40 = load i8* %i, align 1, !dbg !77            ; [#uses=1 type=i8] [debug line = 17:8]
  %41 = add i8 %40, 1, !dbg !77                   ; [#uses=1 type=i8] [debug line = 17:8]
  store i8 %41, i8* %i, align 1, !dbg !77         ; [debug line = 17:8]
  br label %3, !dbg !77                           ; [debug line = 17:8]

; <label>:42                                      ; preds = %3
  ret void, !dbg !78                              ; [debug line = 29:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28, !35}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_selection_sort.prj/solution1/.autopilot/db/selection_sort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i8, float*)* @swap, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_selection_sort.prj/solution1/selection_sort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"selection_sort", metadata !"selection_sort", metadata !"", metadata !6, i32 11, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @selection_sort, null, null, metadata !13, i32 12} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !11}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !23, metadata !24, metadata !25}
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 315, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 316, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 317, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !27, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{void (i8, i8, float*)* @swap, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"int8_t", metadata !"float*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"arr"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{void (float*)* @selection_sort, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !34}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!37 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!41 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 4, i32 18, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 4, i32 34, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 50331652, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 4, i32 49, metadata !5, null}
!47 = metadata !{i32 5, i32 2, metadata !48, null}
!48 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786688, metadata !48, metadata !"b", metadata !6, i32 6, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 6, i32 9, metadata !48, null}
!51 = metadata !{i32 6, i32 25, metadata !48, null}
!52 = metadata !{i32 7, i32 3, metadata !48, null}
!53 = metadata !{i32 8, i32 3, metadata !48, null}
!54 = metadata !{i32 9, i32 1, metadata !48, null}
!55 = metadata !{i32 786689, metadata !15, metadata !"arr", metadata !6, i32 16777227, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 11, i32 27, metadata !15, null}
!57 = metadata !{i32 12, i32 2, metadata !58, null}
!58 = metadata !{i32 786443, metadata !15, i32 12, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786688, metadata !58, metadata !"min_idx", metadata !6, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 13, i32 10, metadata !58, null}
!61 = metadata !{i32 13, i32 21, metadata !58, null}
!62 = metadata !{i32 786688, metadata !63, metadata !"i", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786443, metadata !58, i32 15, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 15, i32 15, metadata !63, null}
!65 = metadata !{i32 15, i32 20, metadata !63, null}
!66 = metadata !{i32 19, i32 5, metadata !67, null}
!67 = metadata !{i32 786443, metadata !63, i32 18, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786443, metadata !67, i32 21, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 21, i32 17, metadata !69, null}
!71 = metadata !{i32 21, i32 24, metadata !69, null}
!72 = metadata !{i32 24, i32 7, metadata !69, null}
!73 = metadata !{i32 25, i32 9, metadata !69, null}
!74 = metadata !{i32 23, i32 10, metadata !69, null}
!75 = metadata !{i32 27, i32 7, metadata !67, null}
!76 = metadata !{i32 28, i32 5, metadata !67, null}
!77 = metadata !{i32 17, i32 8, metadata !63, null}
!78 = metadata !{i32 29, i32 1, metadata !58, null}
