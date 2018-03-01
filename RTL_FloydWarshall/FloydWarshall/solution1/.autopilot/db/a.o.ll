; ModuleID = '/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"MIDDLE_LOOP\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @floyd_warshall([10 x i32]* %A) nounwind uwtable {
  %1 = alloca [10 x i32]*, align 8                ; [#uses=8 type=[10 x i32]**]
  %i = alloca i8, align 1                         ; [#uses=8 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=8 type=i8*]
  %h = alloca i8, align 1                         ; [#uses=8 type=i8*]
  store [10 x i32]* %A, [10 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[10 x i32]** %1}, metadata !25), !dbg !26 ; [debug line = 7:33] [debug variable = A]
  %2 = load [10 x i32]** %1, align 8, !dbg !27    ; [#uses=1 type=[10 x i32]*] [debug line = 7:45]
  call void (...)* @_ssdm_SpecArrayDimSize([10 x i32]* %2, i32 10) nounwind, !dbg !27 ; [debug line = 7:45]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !29), !dbg !33 ; [debug line = 9:15] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !34), !dbg !35 ; [debug line = 9:18] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i8* %h}, metadata !36), !dbg !37 ; [debug line = 9:21] [debug variable = h]
  br label %3, !dbg !38                           ; [debug line = 9:22]

; <label>:3                                       ; preds = %0
  store i8 0, i8* %h, align 1, !dbg !39           ; [debug line = 12:6]
  br label %4, !dbg !39                           ; [debug line = 12:6]

; <label>:4                                       ; preds = %81, %3
  %5 = load i8* %h, align 1, !dbg !39             ; [#uses=1 type=i8] [debug line = 12:6]
  %6 = zext i8 %5 to i32, !dbg !39                ; [#uses=1 type=i32] [debug line = 12:6]
  %7 = icmp slt i32 %6, 10, !dbg !39              ; [#uses=1 type=i1] [debug line = 12:6]
  br i1 %7, label %8, label %84, !dbg !39         ; [debug line = 12:6]

; <label>:8                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !41 ; [debug line = 12:27]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !41 ; [debug line = 12:27]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 13:1]
  br label %9, !dbg !43                           ; [debug line = 13:1]

; <label>:9                                       ; preds = %8
  store i8 0, i8* %i, align 1, !dbg !44           ; [debug line = 14:7]
  br label %10, !dbg !44                          ; [debug line = 14:7]

; <label>:10                                      ; preds = %77, %9
  %11 = load i8* %i, align 1, !dbg !44            ; [#uses=1 type=i8] [debug line = 14:7]
  %12 = zext i8 %11 to i32, !dbg !44              ; [#uses=1 type=i32] [debug line = 14:7]
  %13 = icmp slt i32 %12, 10, !dbg !44            ; [#uses=1 type=i1] [debug line = 14:7]
  br i1 %13, label %14, label %80, !dbg !44       ; [debug line = 14:7]

; <label>:14                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 14:28]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 14:28]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !48 ; [debug line = 15:1]
  br label %15, !dbg !48                          ; [debug line = 15:1]

; <label>:15                                      ; preds = %14
  store i8 0, i8* %j, align 1, !dbg !49           ; [debug line = 16:8]
  br label %16, !dbg !49                          ; [debug line = 16:8]

; <label>:16                                      ; preds = %73, %15
  %17 = load i8* %j, align 1, !dbg !49            ; [#uses=1 type=i8] [debug line = 16:8]
  %18 = zext i8 %17 to i32, !dbg !49              ; [#uses=1 type=i32] [debug line = 16:8]
  %19 = icmp slt i32 %18, 10, !dbg !49            ; [#uses=1 type=i1] [debug line = 16:8]
  br i1 %19, label %20, label %76, !dbg !49       ; [debug line = 16:8]

; <label>:20                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 16:29]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 16:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 17:1]
  %21 = load i8* %h, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %22 = zext i8 %21 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %23 = load i8* %i, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %24 = zext i8 %23 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %25 = load [10 x i32]** %1, align 8, !dbg !54   ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %26 = getelementptr inbounds [10 x i32]* %25, i64 %24, !dbg !54 ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %27 = getelementptr inbounds [10 x i32]* %26, i32 0, i64 %22, !dbg !54 ; [#uses=1 type=i32*] [debug line = 17:5]
  %28 = load i32* %27, align 4, !dbg !54          ; [#uses=1 type=i32] [debug line = 17:5]
  %29 = load i8* %j, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %30 = zext i8 %29 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %31 = load i8* %h, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %32 = zext i8 %31 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %33 = load [10 x i32]** %1, align 8, !dbg !54   ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %34 = getelementptr inbounds [10 x i32]* %33, i64 %32, !dbg !54 ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %35 = getelementptr inbounds [10 x i32]* %34, i32 0, i64 %30, !dbg !54 ; [#uses=1 type=i32*] [debug line = 17:5]
  %36 = load i32* %35, align 4, !dbg !54          ; [#uses=1 type=i32] [debug line = 17:5]
  %37 = add i32 %28, %36, !dbg !54                ; [#uses=1 type=i32] [debug line = 17:5]
  %38 = load i8* %j, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %39 = zext i8 %38 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %40 = load i8* %i, align 1, !dbg !54            ; [#uses=1 type=i8] [debug line = 17:5]
  %41 = zext i8 %40 to i64, !dbg !54              ; [#uses=1 type=i64] [debug line = 17:5]
  %42 = load [10 x i32]** %1, align 8, !dbg !54   ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %43 = getelementptr inbounds [10 x i32]* %42, i64 %41, !dbg !54 ; [#uses=1 type=[10 x i32]*] [debug line = 17:5]
  %44 = getelementptr inbounds [10 x i32]* %43, i32 0, i64 %39, !dbg !54 ; [#uses=1 type=i32*] [debug line = 17:5]
  %45 = load i32* %44, align 4, !dbg !54          ; [#uses=1 type=i32] [debug line = 17:5]
  %46 = icmp ult i32 %37, %45, !dbg !54           ; [#uses=1 type=i1] [debug line = 17:5]
  br i1 %46, label %47, label %72, !dbg !54       ; [debug line = 17:5]

; <label>:47                                      ; preds = %20
  %48 = load i8* %h, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %49 = zext i8 %48 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %50 = load i8* %i, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %51 = zext i8 %50 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %52 = load [10 x i32]** %1, align 8, !dbg !55   ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %53 = getelementptr inbounds [10 x i32]* %52, i64 %51, !dbg !55 ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %54 = getelementptr inbounds [10 x i32]* %53, i32 0, i64 %49, !dbg !55 ; [#uses=1 type=i32*] [debug line = 18:6]
  %55 = load i32* %54, align 4, !dbg !55          ; [#uses=1 type=i32] [debug line = 18:6]
  %56 = load i8* %j, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %57 = zext i8 %56 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %58 = load i8* %h, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %59 = zext i8 %58 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %60 = load [10 x i32]** %1, align 8, !dbg !55   ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %61 = getelementptr inbounds [10 x i32]* %60, i64 %59, !dbg !55 ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %62 = getelementptr inbounds [10 x i32]* %61, i32 0, i64 %57, !dbg !55 ; [#uses=1 type=i32*] [debug line = 18:6]
  %63 = load i32* %62, align 4, !dbg !55          ; [#uses=1 type=i32] [debug line = 18:6]
  %64 = add i32 %55, %63, !dbg !55                ; [#uses=1 type=i32] [debug line = 18:6]
  %65 = load i8* %j, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %66 = zext i8 %65 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %67 = load i8* %i, align 1, !dbg !55            ; [#uses=1 type=i8] [debug line = 18:6]
  %68 = zext i8 %67 to i64, !dbg !55              ; [#uses=1 type=i64] [debug line = 18:6]
  %69 = load [10 x i32]** %1, align 8, !dbg !55   ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %70 = getelementptr inbounds [10 x i32]* %69, i64 %68, !dbg !55 ; [#uses=1 type=[10 x i32]*] [debug line = 18:6]
  %71 = getelementptr inbounds [10 x i32]* %70, i32 0, i64 %66, !dbg !55 ; [#uses=1 type=i32*] [debug line = 18:6]
  store i32 %64, i32* %71, align 4, !dbg !55      ; [debug line = 18:6]
  br label %72, !dbg !55                          ; [debug line = 18:6]

; <label>:72                                      ; preds = %47, %20
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 19:4]
  br label %73, !dbg !56                          ; [debug line = 19:4]

; <label>:73                                      ; preds = %72
  %74 = load i8* %j, align 1, !dbg !57            ; [#uses=1 type=i8] [debug line = 16:23]
  %75 = add i8 %74, 1, !dbg !57                   ; [#uses=1 type=i8] [debug line = 16:23]
  store i8 %75, i8* %j, align 1, !dbg !57         ; [debug line = 16:23]
  br label %16, !dbg !57                          ; [debug line = 16:23]

; <label>:76                                      ; preds = %16
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !58 ; [debug line = 20:3]
  br label %77, !dbg !58                          ; [debug line = 20:3]

; <label>:77                                      ; preds = %76
  %78 = load i8* %i, align 1, !dbg !59            ; [#uses=1 type=i8] [debug line = 14:22]
  %79 = add i8 %78, 1, !dbg !59                   ; [#uses=1 type=i8] [debug line = 14:22]
  store i8 %79, i8* %i, align 1, !dbg !59         ; [debug line = 14:22]
  br label %10, !dbg !59                          ; [debug line = 14:22]

; <label>:80                                      ; preds = %10
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !60 ; [debug line = 21:2]
  br label %81, !dbg !60                          ; [debug line = 21:2]

; <label>:81                                      ; preds = %80
  %82 = load i8* %h, align 1, !dbg !61            ; [#uses=1 type=i8] [debug line = 12:21]
  %83 = add i8 %82, 1, !dbg !61                   ; [#uses=1 type=i8] [debug line = 12:21]
  store i8 %83, i8* %h, align 1, !dbg !61         ; [debug line = 12:21]
  br label %4, !dbg !61                           ; [debug line = 12:21]

; <label>:84                                      ; preds = %4
  ret void, !dbg !62                              ; [debug line = 22:1]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/FloydWarshall/solution1/.autopilot/db/floyd_warshall.pragma.2.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"floyd_warshall", metadata !"floyd_warshall", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([10 x i32]*)* @floyd_warshall, null, null, metadata !16, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"floyd_warshall.c", metadata !"/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !11, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{void ([10 x i32]*)* @floyd_warshall, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_TYPE [10]*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"A"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 7, i32 33, metadata !5, null}
!27 = metadata !{i32 7, i32 45, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, i32 7, i32 44, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !6, i32 9, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 9, i32 15, metadata !28, null}
!34 = metadata !{i32 786688, metadata !28, metadata !"j", metadata !6, i32 9, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 9, i32 18, metadata !28, null}
!36 = metadata !{i32 786688, metadata !28, metadata !"h", metadata !6, i32 9, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 9, i32 21, metadata !28, null}
!38 = metadata !{i32 9, i32 22, metadata !28, null}
!39 = metadata !{i32 12, i32 6, metadata !40, null}
!40 = metadata !{i32 786443, metadata !28, i32 12, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 12, i32 27, metadata !42, null}
!42 = metadata !{i32 786443, metadata !40, i32 12, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 13, i32 1, metadata !42, null}
!44 = metadata !{i32 14, i32 7, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 14, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 14, i32 28, metadata !47, null}
!47 = metadata !{i32 786443, metadata !45, i32 14, i32 27, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 15, i32 1, metadata !47, null}
!49 = metadata !{i32 16, i32 8, metadata !50, null}
!50 = metadata !{i32 786443, metadata !47, i32 16, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 16, i32 29, metadata !52, null}
!52 = metadata !{i32 786443, metadata !50, i32 16, i32 28, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 17, i32 1, metadata !52, null}
!54 = metadata !{i32 17, i32 5, metadata !52, null}
!55 = metadata !{i32 18, i32 6, metadata !52, null}
!56 = metadata !{i32 19, i32 4, metadata !52, null}
!57 = metadata !{i32 16, i32 23, metadata !50, null}
!58 = metadata !{i32 20, i32 3, metadata !47, null}
!59 = metadata !{i32 14, i32 22, metadata !45, null}
!60 = metadata !{i32 21, i32 2, metadata !42, null}
!61 = metadata !{i32 12, i32 21, metadata !40, null}
!62 = metadata !{i32 22, i32 1, metadata !28, null}
