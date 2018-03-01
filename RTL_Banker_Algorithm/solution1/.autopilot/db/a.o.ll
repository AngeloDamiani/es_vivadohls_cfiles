; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define i64 @banker_algorithm(i64* %available, [3 x i64]* %allocated, [3 x i64]* %max, [3 x i64]* %need) nounwind uwtable {
  %1 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  %2 = alloca i64*, align 8                       ; [#uses=5 type=i64**]
  %3 = alloca [3 x i64]*, align 8                 ; [#uses=4 type=[3 x i64]**]
  %4 = alloca [3 x i64]*, align 8                 ; [#uses=2 type=[3 x i64]**]
  %5 = alloca [3 x i64]*, align 8                 ; [#uses=5 type=[3 x i64]**]
  %i = alloca i64, align 8                        ; [#uses=9 type=i64*]
  %j = alloca i64, align 8                        ; [#uses=12 type=i64*]
  %found = alloca i64, align 8                    ; [#uses=3 type=i64*]
  store i64* %available, i64** %2, align 8
  call void @llvm.dbg.declare(metadata !{i64** %2}, metadata !35), !dbg !36 ; [debug line = 5:42] [debug variable = available]
  store [3 x i64]* %allocated, [3 x i64]** %3, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i64]** %3}, metadata !37), !dbg !38 ; [debug line = 5:68] [debug variable = allocated]
  store [3 x i64]* %max, [3 x i64]** %4, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i64]** %4}, metadata !39), !dbg !40 ; [debug line = 5:97] [debug variable = max]
  store [3 x i64]* %need, [3 x i64]** %5, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i64]** %5}, metadata !41), !dbg !42 ; [debug line = 5:120] [debug variable = need]
  %6 = load [3 x i64]** %4, align 8, !dbg !43     ; [#uses=1 type=[3 x i64]*] [debug line = 6:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %6, i32 4) nounwind, !dbg !43 ; [debug line = 6:2]
  %7 = load [3 x i64]** %5, align 8, !dbg !45     ; [#uses=1 type=[3 x i64]*] [debug line = 6:32]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %7, i32 4) nounwind, !dbg !45 ; [debug line = 6:32]
  %8 = load i64** %2, align 8, !dbg !46           ; [#uses=1 type=i64*] [debug line = 6:63]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %8, i32 3) nounwind, !dbg !46 ; [debug line = 6:63]
  %9 = load [3 x i64]** %3, align 8, !dbg !47     ; [#uses=1 type=[3 x i64]*] [debug line = 6:99]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i64]* %9, i32 4) nounwind, !dbg !47 ; [debug line = 6:99]
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !48), !dbg !51 ; [debug line = 7:19] [debug variable = i]
  store i64 0, i64* %i, align 8, !dbg !52         ; [debug line = 7:24]
  br label %10, !dbg !52                          ; [debug line = 7:24]

; <label>:10                                      ; preds = %74, %0
  %11 = load i64* %i, align 8, !dbg !52           ; [#uses=1 type=i64] [debug line = 7:24]
  %12 = icmp slt i64 %11, 4, !dbg !52             ; [#uses=1 type=i1] [debug line = 7:24]
  br i1 %12, label %13, label %77, !dbg !52       ; [debug line = 7:24]

; <label>:13                                      ; preds = %10
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !53), !dbg !56 ; [debug line = 12:20] [debug variable = j]
  store i64 0, i64* %j, align 8, !dbg !57         ; [debug line = 12:25]
  br label %14, !dbg !57                          ; [debug line = 12:25]

; <label>:14                                      ; preds = %70, %13
  %15 = load i64* %j, align 8, !dbg !57           ; [#uses=1 type=i64] [debug line = 12:25]
  %16 = icmp slt i64 %15, 3, !dbg !57             ; [#uses=1 type=i1] [debug line = 12:25]
  br i1 %16, label %17, label %73, !dbg !57       ; [debug line = 12:25]

; <label>:17                                      ; preds = %14
  %18 = load i64* %j, align 8, !dbg !58           ; [#uses=1 type=i64] [debug line = 17:4]
  %19 = load i64* %i, align 8, !dbg !58           ; [#uses=1 type=i64] [debug line = 17:4]
  %20 = load [3 x i64]** %5, align 8, !dbg !58    ; [#uses=1 type=[3 x i64]*] [debug line = 17:4]
  %21 = getelementptr inbounds [3 x i64]* %20, i64 %19, !dbg !58 ; [#uses=1 type=[3 x i64]*] [debug line = 17:4]
  %22 = getelementptr inbounds [3 x i64]* %21, i32 0, i64 %18, !dbg !58 ; [#uses=1 type=i64*] [debug line = 17:4]
  %23 = load i64* %22, align 8, !dbg !58          ; [#uses=1 type=i64] [debug line = 17:4]
  %24 = load i64* %j, align 8, !dbg !58           ; [#uses=1 type=i64] [debug line = 17:4]
  %25 = load i64** %2, align 8, !dbg !58          ; [#uses=1 type=i64*] [debug line = 17:4]
  %26 = getelementptr inbounds i64* %25, i64 %24, !dbg !58 ; [#uses=2 type=i64*] [debug line = 17:4]
  %27 = load i64* %26, align 8, !dbg !58          ; [#uses=1 type=i64] [debug line = 17:4]
  %28 = sub nsw i64 %27, %23, !dbg !58            ; [#uses=1 type=i64] [debug line = 17:4]
  store i64 %28, i64* %26, align 8, !dbg !58      ; [debug line = 17:4]
  %29 = load i64* %j, align 8, !dbg !60           ; [#uses=1 type=i64] [debug line = 18:4]
  %30 = load i64* %i, align 8, !dbg !60           ; [#uses=1 type=i64] [debug line = 18:4]
  %31 = load [3 x i64]** %5, align 8, !dbg !60    ; [#uses=1 type=[3 x i64]*] [debug line = 18:4]
  %32 = getelementptr inbounds [3 x i64]* %31, i64 %30, !dbg !60 ; [#uses=1 type=[3 x i64]*] [debug line = 18:4]
  %33 = getelementptr inbounds [3 x i64]* %32, i32 0, i64 %29, !dbg !60 ; [#uses=1 type=i64*] [debug line = 18:4]
  %34 = load i64* %33, align 8, !dbg !60          ; [#uses=1 type=i64] [debug line = 18:4]
  %35 = load i64* %j, align 8, !dbg !60           ; [#uses=1 type=i64] [debug line = 18:4]
  %36 = load i64* %i, align 8, !dbg !60           ; [#uses=1 type=i64] [debug line = 18:4]
  %37 = load [3 x i64]** %3, align 8, !dbg !60    ; [#uses=1 type=[3 x i64]*] [debug line = 18:4]
  %38 = getelementptr inbounds [3 x i64]* %37, i64 %36, !dbg !60 ; [#uses=1 type=[3 x i64]*] [debug line = 18:4]
  %39 = getelementptr inbounds [3 x i64]* %38, i32 0, i64 %35, !dbg !60 ; [#uses=2 type=i64*] [debug line = 18:4]
  %40 = load i64* %39, align 8, !dbg !60          ; [#uses=1 type=i64] [debug line = 18:4]
  %41 = add nsw i64 %40, %34, !dbg !60            ; [#uses=1 type=i64] [debug line = 18:4]
  store i64 %41, i64* %39, align 8, !dbg !60      ; [debug line = 18:4]
  call void @llvm.dbg.declare(metadata !{i64* %found}, metadata !61), !dbg !62 ; [debug line = 20:16] [debug variable = found]
  store i64 0, i64* %found, align 8, !dbg !63     ; [debug line = 20:25]
  %42 = load i64* %j, align 8, !dbg !64           ; [#uses=1 type=i64] [debug line = 21:4]
  %43 = load i64* %i, align 8, !dbg !64           ; [#uses=1 type=i64] [debug line = 21:4]
  %44 = load [3 x i64]** %5, align 8, !dbg !64    ; [#uses=1 type=[3 x i64]*] [debug line = 21:4]
  %45 = getelementptr inbounds [3 x i64]* %44, i64 %43, !dbg !64 ; [#uses=1 type=[3 x i64]*] [debug line = 21:4]
  %46 = getelementptr inbounds [3 x i64]* %45, i32 0, i64 %42, !dbg !64 ; [#uses=1 type=i64*] [debug line = 21:4]
  %47 = load i64* %46, align 8, !dbg !64          ; [#uses=1 type=i64] [debug line = 21:4]
  %48 = load i64* %j, align 8, !dbg !64           ; [#uses=1 type=i64] [debug line = 21:4]
  %49 = load i64** %2, align 8, !dbg !64          ; [#uses=1 type=i64*] [debug line = 21:4]
  %50 = getelementptr inbounds i64* %49, i64 %48, !dbg !64 ; [#uses=1 type=i64*] [debug line = 21:4]
  %51 = load i64* %50, align 8, !dbg !64          ; [#uses=1 type=i64] [debug line = 21:4]
  %52 = icmp sle i64 %47, %51, !dbg !64           ; [#uses=1 type=i1] [debug line = 21:4]
  br i1 %52, label %53, label %65, !dbg !64       ; [debug line = 21:4]

; <label>:53                                      ; preds = %17
  %54 = load i64* %j, align 8, !dbg !65           ; [#uses=1 type=i64] [debug line = 24:5]
  %55 = load i64* %i, align 8, !dbg !65           ; [#uses=1 type=i64] [debug line = 24:5]
  %56 = load [3 x i64]** %3, align 8, !dbg !65    ; [#uses=1 type=[3 x i64]*] [debug line = 24:5]
  %57 = getelementptr inbounds [3 x i64]* %56, i64 %55, !dbg !65 ; [#uses=1 type=[3 x i64]*] [debug line = 24:5]
  %58 = getelementptr inbounds [3 x i64]* %57, i32 0, i64 %54, !dbg !65 ; [#uses=1 type=i64*] [debug line = 24:5]
  %59 = load i64* %58, align 8, !dbg !65          ; [#uses=1 type=i64] [debug line = 24:5]
  %60 = load i64* %j, align 8, !dbg !65           ; [#uses=1 type=i64] [debug line = 24:5]
  %61 = load i64** %2, align 8, !dbg !65          ; [#uses=1 type=i64*] [debug line = 24:5]
  %62 = getelementptr inbounds i64* %61, i64 %60, !dbg !65 ; [#uses=2 type=i64*] [debug line = 24:5]
  %63 = load i64* %62, align 8, !dbg !65          ; [#uses=1 type=i64] [debug line = 24:5]
  %64 = add nsw i64 %63, %59, !dbg !65            ; [#uses=1 type=i64] [debug line = 24:5]
  store i64 %64, i64* %62, align 8, !dbg !65      ; [debug line = 24:5]
  store i64 1, i64* %found, align 8, !dbg !67     ; [debug line = 25:5]
  br label %65, !dbg !68                          ; [debug line = 26:4]

; <label>:65                                      ; preds = %53, %17
  %66 = load i64* %found, align 8, !dbg !69       ; [#uses=1 type=i64] [debug line = 28:4]
  %67 = icmp eq i64 %66, 0, !dbg !69              ; [#uses=1 type=i1] [debug line = 28:4]
  br i1 %67, label %68, label %69, !dbg !69       ; [debug line = 28:4]

; <label>:68                                      ; preds = %65
  store i64 -1, i64* %1, !dbg !70                 ; [debug line = 29:5]
  br label %78, !dbg !70                          ; [debug line = 29:5]

; <label>:69                                      ; preds = %65
  br label %70, !dbg !71                          ; [debug line = 30:3]

; <label>:70                                      ; preds = %69
  %71 = load i64* %j, align 8, !dbg !72           ; [#uses=1 type=i64] [debug line = 14:4]
  %72 = add nsw i64 %71, 1, !dbg !72              ; [#uses=1 type=i64] [debug line = 14:4]
  store i64 %72, i64* %j, align 8, !dbg !72       ; [debug line = 14:4]
  br label %14, !dbg !72                          ; [debug line = 14:4]

; <label>:73                                      ; preds = %14
  br label %74, !dbg !73                          ; [debug line = 32:2]

; <label>:74                                      ; preds = %73
  %75 = load i64* %i, align 8, !dbg !74           ; [#uses=1 type=i64] [debug line = 9:3]
  %76 = add nsw i64 %75, 1, !dbg !74              ; [#uses=1 type=i64] [debug line = 9:3]
  store i64 %76, i64* %i, align 8, !dbg !74       ; [debug line = 9:3]
  br label %10, !dbg !74                          ; [debug line = 9:3]

; <label>:77                                      ; preds = %10
  store i64 1, i64* %1, !dbg !75                  ; [debug line = 34:2]
  br label %78, !dbg !75                          ; [debug line = 34:2]

; <label>:78                                      ; preds = %77, %68
  %79 = load i64* %1, !dbg !76                    ; [#uses=1 type=i64] [debug line = 35:1]
  ret i64 %79, !dbg !76                           ; [debug line = 35:1]
}

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Banker_Algorithm/solution1/.autopilot/db/banker_algorithm.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"banker_algorithm", metadata !"banker_algorithm", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64*, [3 x i64]*, [3 x i64]*, [3 x i64]*)* @banker_algorithm, null, null, metadata !16, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Banker_Algorithm/solution1/banker_algorithm.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 64, i32 0, i32 0, metadata !9, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
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
!28 = metadata !{i64 (i64*, [3 x i64]*, [3 x i64]*, [3 x i64]*)* @banker_algorithm, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*", metadata !"TARGET_TYPE [3]*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"available", metadata !"allocated", metadata !"max", metadata !"need"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{i32 786689, metadata !5, metadata !"available", metadata !6, i32 16777221, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 5, i32 42, metadata !5, null}
!37 = metadata !{i32 786689, metadata !5, metadata !"allocated", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 5, i32 68, metadata !5, null}
!39 = metadata !{i32 786689, metadata !5, metadata !"max", metadata !6, i32 50331653, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 5, i32 97, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"need", metadata !6, i32 67108869, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 5, i32 120, metadata !5, null}
!43 = metadata !{i32 6, i32 2, metadata !44, null}
!44 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 6, i32 32, metadata !44, null}
!46 = metadata !{i32 6, i32 63, metadata !44, null}
!47 = metadata !{i32 6, i32 99, metadata !44, null}
!48 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 7, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786443, metadata !44, i32 7, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 7, i32 19, metadata !49, null}
!52 = metadata !{i32 7, i32 24, metadata !49, null}
!53 = metadata !{i32 786688, metadata !54, metadata !"j", metadata !6, i32 12, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786443, metadata !55, i32 12, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !49, i32 10, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 12, i32 20, metadata !54, null}
!57 = metadata !{i32 12, i32 25, metadata !54, null}
!58 = metadata !{i32 17, i32 4, metadata !59, null}
!59 = metadata !{i32 786443, metadata !54, i32 15, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 18, i32 4, metadata !59, null}
!61 = metadata !{i32 786688, metadata !59, metadata !"found", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 20, i32 16, metadata !59, null}
!63 = metadata !{i32 20, i32 25, metadata !59, null}
!64 = metadata !{i32 21, i32 4, metadata !59, null}
!65 = metadata !{i32 24, i32 5, metadata !66, null}
!66 = metadata !{i32 786443, metadata !59, i32 23, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 25, i32 5, metadata !66, null}
!68 = metadata !{i32 26, i32 4, metadata !66, null}
!69 = metadata !{i32 28, i32 4, metadata !59, null}
!70 = metadata !{i32 29, i32 5, metadata !59, null}
!71 = metadata !{i32 30, i32 3, metadata !59, null}
!72 = metadata !{i32 14, i32 4, metadata !54, null}
!73 = metadata !{i32 32, i32 2, metadata !55, null}
!74 = metadata !{i32 9, i32 3, metadata !49, null}
!75 = metadata !{i32 34, i32 2, metadata !44, null}
!76 = metadata !{i32 35, i32 1, metadata !44, null}
