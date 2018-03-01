; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"EFOR1\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"EFOR2\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"FOR3\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=1]
define i64 @edge_counter([10 x float]* %graph) nounwind uwtable {
  %1 = alloca [10 x float]*, align 8              ; [#uses=3 type=[10 x float]**]
  %total_edges = alloca i64, align 8              ; [#uses=4 type=i64*]
  %i = alloca i64, align 8                        ; [#uses=5 type=i64*]
  %j = alloca i64, align 8                        ; [#uses=5 type=i64*]
  store [10 x float]* %graph, [10 x float]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[10 x float]** %1}, metadata !35), !dbg !36 ; [debug line = 3:32] [debug variable = graph]
  %2 = load [10 x float]** %1, align 8, !dbg !37  ; [#uses=1 type=[10 x float]*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize([10 x float]* %2, i32 10) nounwind, !dbg !37 ; [debug line = 4:2]
  call void @llvm.dbg.declare(metadata !{i64* %total_edges}, metadata !39), !dbg !40 ; [debug line = 5:14] [debug variable = total_edges]
  store i64 0, i64* %total_edges, align 8, !dbg !41 ; [debug line = 5:29]
  br label %3, !dbg !41                           ; [debug line = 5:29]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !42), !dbg !45 ; [debug line = 8:19] [debug variable = i]
  store i64 0, i64* %i, align 8, !dbg !46         ; [debug line = 8:24]
  br label %4, !dbg !46                           ; [debug line = 8:24]

; <label>:4                                       ; preds = %28, %3
  %5 = load i64* %i, align 8, !dbg !46            ; [#uses=1 type=i64] [debug line = 8:24]
  %6 = icmp slt i64 %5, 10, !dbg !46              ; [#uses=1 type=i1] [debug line = 8:24]
  br i1 %6, label %7, label %31, !dbg !46         ; [debug line = 8:24]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 9:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 9:3]
  br label %8, !dbg !47                           ; [debug line = 9:3]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !49), !dbg !51 ; [debug line = 11:20] [debug variable = j]
  store i64 0, i64* %j, align 8, !dbg !52         ; [debug line = 11:25]
  br label %9, !dbg !52                           ; [debug line = 11:25]

; <label>:9                                       ; preds = %24, %8
  %10 = load i64* %j, align 8, !dbg !52           ; [#uses=1 type=i64] [debug line = 11:25]
  %11 = icmp slt i64 %10, 10, !dbg !52            ; [#uses=1 type=i1] [debug line = 11:25]
  br i1 %11, label %12, label %27, !dbg !52       ; [debug line = 11:25]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 12:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 12:4]
  %13 = load i64* %j, align 8, !dbg !55           ; [#uses=1 type=i64] [debug line = 13:4]
  %14 = load i64* %i, align 8, !dbg !55           ; [#uses=1 type=i64] [debug line = 13:4]
  %15 = load [10 x float]** %1, align 8, !dbg !55 ; [#uses=1 type=[10 x float]*] [debug line = 13:4]
  %16 = getelementptr inbounds [10 x float]* %15, i64 %14, !dbg !55 ; [#uses=1 type=[10 x float]*] [debug line = 13:4]
  %17 = getelementptr inbounds [10 x float]* %16, i32 0, i64 %13, !dbg !55 ; [#uses=1 type=float*] [debug line = 13:4]
  %18 = load float* %17, align 4, !dbg !55        ; [#uses=1 type=float] [debug line = 13:4]
  %19 = fcmp une float %18, -1.000000e+00, !dbg !55 ; [#uses=1 type=i1] [debug line = 13:4]
  br i1 %19, label %20, label %23, !dbg !55       ; [debug line = 13:4]

; <label>:20                                      ; preds = %12
  %21 = load i64* %total_edges, align 8, !dbg !56 ; [#uses=1 type=i64] [debug line = 14:5]
  %22 = add nsw i64 %21, 1, !dbg !56              ; [#uses=1 type=i64] [debug line = 14:5]
  store i64 %22, i64* %total_edges, align 8, !dbg !56 ; [debug line = 14:5]
  br label %23, !dbg !56                          ; [debug line = 14:5]

; <label>:23                                      ; preds = %20, %12
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !57 ; [debug line = 15:3]
  br label %24, !dbg !57                          ; [debug line = 15:3]

; <label>:24                                      ; preds = %23
  %25 = load i64* %j, align 8, !dbg !58           ; [#uses=1 type=i64] [debug line = 11:35]
  %26 = add nsw i64 %25, 1, !dbg !58              ; [#uses=1 type=i64] [debug line = 11:35]
  store i64 %26, i64* %j, align 8, !dbg !58       ; [debug line = 11:35]
  br label %9, !dbg !58                           ; [debug line = 11:35]

; <label>:27                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !59 ; [debug line = 16:2]
  br label %28, !dbg !59                          ; [debug line = 16:2]

; <label>:28                                      ; preds = %27
  %29 = load i64* %i, align 8, !dbg !60           ; [#uses=1 type=i64] [debug line = 8:34]
  %30 = add nsw i64 %29, 1, !dbg !60              ; [#uses=1 type=i64] [debug line = 8:34]
  store i64 %30, i64* %i, align 8, !dbg !60       ; [debug line = 8:34]
  br label %4, !dbg !60                           ; [debug line = 8:34]

; <label>:31                                      ; preds = %4
  %32 = load i64* %total_edges, align 8, !dbg !61 ; [#uses=1 type=i64] [debug line = 17:2]
  ret i64 %32, !dbg !61                           ; [debug line = 17:2]
}

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=5]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=5]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @bellman_ford([10 x float]* %graph, i64* %hwdist) nounwind uwtable {
  %1 = alloca [10 x float]*, align 8              ; [#uses=6 type=[10 x float]**]
  %2 = alloca i64*, align 8                       ; [#uses=8 type=i64**]
  %total_edges = alloca i64, align 8              ; [#uses=2 type=i64*]
  %k = alloca i64, align 8                        ; [#uses=5 type=i64*]
  %i = alloca i64, align 8                        ; [#uses=9 type=i64*]
  %j = alloca i64, align 8                        ; [#uses=9 type=i64*]
  store [10 x float]* %graph, [10 x float]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[10 x float]** %1}, metadata !62), !dbg !63 ; [debug line = 20:25] [debug variable = graph]
  store i64* %hwdist, i64** %2, align 8
  call void @llvm.dbg.declare(metadata !{i64** %2}, metadata !64), !dbg !65 ; [debug line = 20:52] [debug variable = hwdist]
  %3 = load i64** %2, align 8, !dbg !66           ; [#uses=1 type=i64*] [debug line = 21:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %3, i32 10) nounwind, !dbg !66 ; [debug line = 21:2]
  %4 = load [10 x float]** %1, align 8, !dbg !68  ; [#uses=1 type=[10 x float]*] [debug line = 21:36]
  call void (...)* @_ssdm_SpecArrayDimSize([10 x float]* %4, i32 10) nounwind, !dbg !68 ; [debug line = 21:36]
  call void @llvm.dbg.declare(metadata !{i64* %total_edges}, metadata !69), !dbg !70 ; [debug line = 22:14] [debug variable = total_edges]
  %5 = load [10 x float]** %1, align 8, !dbg !71  ; [#uses=1 type=[10 x float]*] [debug line = 22:28]
  %6 = call i64 @edge_counter([10 x float]* %5), !dbg !71 ; [#uses=1 type=i64] [debug line = 22:28]
  store i64 %6, i64* %total_edges, align 8, !dbg !71 ; [debug line = 22:28]
  br label %7, !dbg !71                           ; [debug line = 22:28]

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %k}, metadata !72), !dbg !74 ; [debug line = 24:19] [debug variable = k]
  store i64 0, i64* %k, align 8, !dbg !75         ; [debug line = 24:24]
  br label %8, !dbg !75                           ; [debug line = 24:24]

; <label>:8                                       ; preds = %15, %7
  %9 = load i64* %k, align 8, !dbg !75            ; [#uses=1 type=i64] [debug line = 24:24]
  %10 = icmp slt i64 %9, 10, !dbg !75             ; [#uses=1 type=i1] [debug line = 24:24]
  br i1 %10, label %11, label %18, !dbg !75       ; [debug line = 24:24]

; <label>:11                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 25:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 25:3]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 26:1]
  %12 = load i64* %k, align 8, !dbg !79           ; [#uses=1 type=i64] [debug line = 26:3]
  %13 = load i64** %2, align 8, !dbg !79          ; [#uses=1 type=i64*] [debug line = 26:3]
  %14 = getelementptr inbounds i64* %13, i64 %12, !dbg !79 ; [#uses=1 type=i64*] [debug line = 26:3]
  store i64 127, i64* %14, align 8, !dbg !79      ; [debug line = 26:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 27:2]
  br label %15, !dbg !80                          ; [debug line = 27:2]

; <label>:15                                      ; preds = %11
  %16 = load i64* %k, align 8, !dbg !81           ; [#uses=1 type=i64] [debug line = 24:34]
  %17 = add nsw i64 %16, 1, !dbg !81              ; [#uses=1 type=i64] [debug line = 24:34]
  store i64 %17, i64* %k, align 8, !dbg !81       ; [debug line = 24:34]
  br label %8, !dbg !81                           ; [debug line = 24:34]

; <label>:18                                      ; preds = %8
  %19 = load i64** %2, align 8, !dbg !82          ; [#uses=1 type=i64*] [debug line = 29:2]
  %20 = getelementptr inbounds i64* %19, i64 0, !dbg !82 ; [#uses=1 type=i64*] [debug line = 29:2]
  store i64 0, i64* %20, align 8, !dbg !82        ; [debug line = 29:2]
  br label %21, !dbg !82                          ; [debug line = 29:2]

; <label>:21                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !83), !dbg !85 ; [debug line = 31:19] [debug variable = i]
  store i64 0, i64* %i, align 8, !dbg !86         ; [debug line = 31:24]
  br label %22, !dbg !86                          ; [debug line = 31:24]

; <label>:22                                      ; preds = %80, %21
  %23 = load i64* %i, align 8, !dbg !86           ; [#uses=1 type=i64] [debug line = 31:24]
  %24 = icmp slt i64 %23, 10, !dbg !86            ; [#uses=1 type=i1] [debug line = 31:24]
  br i1 %24, label %25, label %83, !dbg !86       ; [debug line = 31:24]

; <label>:25                                      ; preds = %22
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 32:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 32:3]
  br label %26, !dbg !87                          ; [debug line = 32:3]

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !89), !dbg !91 ; [debug line = 34:20] [debug variable = j]
  store i64 0, i64* %j, align 8, !dbg !92         ; [debug line = 34:25]
  br label %27, !dbg !92                          ; [debug line = 34:25]

; <label>:27                                      ; preds = %76, %26
  %28 = load i64* %j, align 8, !dbg !92           ; [#uses=1 type=i64] [debug line = 34:25]
  %29 = load i64* %total_edges, align 8, !dbg !92 ; [#uses=1 type=i64] [debug line = 34:25]
  %30 = icmp slt i64 %28, %29, !dbg !92           ; [#uses=1 type=i1] [debug line = 34:25]
  br i1 %30, label %31, label %79, !dbg !92       ; [debug line = 34:25]

; <label>:31                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 35:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 35:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 50, i32 25, i8* getelementptr inbounds ([1 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !95 ; [debug line = 36:1]
  %32 = load i64* %j, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %33 = load i64** %2, align 8, !dbg !96          ; [#uses=1 type=i64*] [debug line = 36:4]
  %34 = getelementptr inbounds i64* %33, i64 %32, !dbg !96 ; [#uses=1 type=i64*] [debug line = 36:4]
  %35 = load i64* %34, align 8, !dbg !96          ; [#uses=1 type=i64] [debug line = 36:4]
  %36 = sitofp i64 %35 to float, !dbg !96         ; [#uses=1 type=float] [debug line = 36:4]
  %37 = load i64* %i, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %38 = load i64* %j, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %39 = load [10 x float]** %1, align 8, !dbg !96 ; [#uses=1 type=[10 x float]*] [debug line = 36:4]
  %40 = getelementptr inbounds [10 x float]* %39, i64 %38, !dbg !96 ; [#uses=1 type=[10 x float]*] [debug line = 36:4]
  %41 = getelementptr inbounds [10 x float]* %40, i32 0, i64 %37, !dbg !96 ; [#uses=1 type=float*] [debug line = 36:4]
  %42 = load float* %41, align 4, !dbg !96        ; [#uses=1 type=float] [debug line = 36:4]
  %43 = fadd float %36, %42, !dbg !96             ; [#uses=1 type=float] [debug line = 36:4]
  %44 = load i64* %i, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %45 = load i64** %2, align 8, !dbg !96          ; [#uses=1 type=i64*] [debug line = 36:4]
  %46 = getelementptr inbounds i64* %45, i64 %44, !dbg !96 ; [#uses=1 type=i64*] [debug line = 36:4]
  %47 = load i64* %46, align 8, !dbg !96          ; [#uses=1 type=i64] [debug line = 36:4]
  %48 = sitofp i64 %47 to float, !dbg !96         ; [#uses=1 type=float] [debug line = 36:4]
  %49 = fcmp ole float %43, %48, !dbg !96         ; [#uses=1 type=i1] [debug line = 36:4]
  br i1 %49, label %50, label %75, !dbg !96       ; [debug line = 36:4]

; <label>:50                                      ; preds = %31
  %51 = load i64* %i, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %52 = load i64* %j, align 8, !dbg !96           ; [#uses=1 type=i64] [debug line = 36:4]
  %53 = load [10 x float]** %1, align 8, !dbg !96 ; [#uses=1 type=[10 x float]*] [debug line = 36:4]
  %54 = getelementptr inbounds [10 x float]* %53, i64 %52, !dbg !96 ; [#uses=1 type=[10 x float]*] [debug line = 36:4]
  %55 = getelementptr inbounds [10 x float]* %54, i32 0, i64 %51, !dbg !96 ; [#uses=1 type=float*] [debug line = 36:4]
  %56 = load float* %55, align 4, !dbg !96        ; [#uses=1 type=float] [debug line = 36:4]
  %57 = fcmp une float %56, -1.000000e+00, !dbg !96 ; [#uses=1 type=i1] [debug line = 36:4]
  br i1 %57, label %58, label %75, !dbg !96       ; [debug line = 36:4]

; <label>:58                                      ; preds = %50
  %59 = load i64* %j, align 8, !dbg !97           ; [#uses=1 type=i64] [debug line = 38:5]
  %60 = load i64** %2, align 8, !dbg !97          ; [#uses=1 type=i64*] [debug line = 38:5]
  %61 = getelementptr inbounds i64* %60, i64 %59, !dbg !97 ; [#uses=1 type=i64*] [debug line = 38:5]
  %62 = load i64* %61, align 8, !dbg !97          ; [#uses=1 type=i64] [debug line = 38:5]
  %63 = sitofp i64 %62 to float, !dbg !97         ; [#uses=1 type=float] [debug line = 38:5]
  %64 = load i64* %i, align 8, !dbg !97           ; [#uses=1 type=i64] [debug line = 38:5]
  %65 = load i64* %j, align 8, !dbg !97           ; [#uses=1 type=i64] [debug line = 38:5]
  %66 = load [10 x float]** %1, align 8, !dbg !97 ; [#uses=1 type=[10 x float]*] [debug line = 38:5]
  %67 = getelementptr inbounds [10 x float]* %66, i64 %65, !dbg !97 ; [#uses=1 type=[10 x float]*] [debug line = 38:5]
  %68 = getelementptr inbounds [10 x float]* %67, i32 0, i64 %64, !dbg !97 ; [#uses=1 type=float*] [debug line = 38:5]
  %69 = load float* %68, align 4, !dbg !97        ; [#uses=1 type=float] [debug line = 38:5]
  %70 = fadd float %63, %69, !dbg !97             ; [#uses=1 type=float] [debug line = 38:5]
  %71 = fptosi float %70 to i64, !dbg !97         ; [#uses=1 type=i64] [debug line = 38:5]
  %72 = load i64* %i, align 8, !dbg !97           ; [#uses=1 type=i64] [debug line = 38:5]
  %73 = load i64** %2, align 8, !dbg !97          ; [#uses=1 type=i64*] [debug line = 38:5]
  %74 = getelementptr inbounds i64* %73, i64 %72, !dbg !97 ; [#uses=1 type=i64*] [debug line = 38:5]
  store i64 %71, i64* %74, align 8, !dbg !97      ; [debug line = 38:5]
  br label %75, !dbg !99                          ; [debug line = 39:4]

; <label>:75                                      ; preds = %58, %50, %31
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !100 ; [debug line = 40:3]
  br label %76, !dbg !100                         ; [debug line = 40:3]

; <label>:76                                      ; preds = %75
  %77 = load i64* %j, align 8, !dbg !101          ; [#uses=1 type=i64] [debug line = 34:44]
  %78 = add nsw i64 %77, 1, !dbg !101             ; [#uses=1 type=i64] [debug line = 34:44]
  store i64 %78, i64* %j, align 8, !dbg !101      ; [debug line = 34:44]
  br label %27, !dbg !101                         ; [debug line = 34:44]

; <label>:79                                      ; preds = %27
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !102 ; [debug line = 41:2]
  br label %80, !dbg !102                         ; [debug line = 41:2]

; <label>:80                                      ; preds = %79
  %81 = load i64* %i, align 8, !dbg !103          ; [#uses=1 type=i64] [debug line = 31:34]
  %82 = add nsw i64 %81, 1, !dbg !103             ; [#uses=1 type=i64] [debug line = 31:34]
  store i64 %82, i64* %i, align 8, !dbg !103      ; [debug line = 31:34]
  br label %22, !dbg !103                         ; [debug line = 31:34]

; <label>:83                                      ; preds = %22
  ret void, !dbg !104                             ; [debug line = 42:1]
}

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!22, !29}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/.autopilot/db/bellman_ford.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"edge_counter", metadata !"edge_counter", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 ([10 x float]*)* @edge_counter, null, null, metadata !16, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_bellman_ford.prj/solution1/bellman_ford.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !13, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!13 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bellman_ford", metadata !"bellman_ford", metadata !"", metadata !6, i32 20, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([10 x float]*, i64*)* @bellman_ford, null, null, metadata !16, i32 21} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !11, metadata !21}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i64 ([10 x float]*)* @edge_counter, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"float [10]*"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"graph"}
!28 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!29 = metadata !{void ([10 x float]*, i64*)* @bellman_ford, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !28}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"float [10]*", metadata !"TARGET_TYPE*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"graph", metadata !"hwdist"}
!35 = metadata !{i32 786689, metadata !5, metadata !"graph", metadata !6, i32 16777219, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 3, i32 32, metadata !5, null}
!37 = metadata !{i32 4, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786688, metadata !38, metadata !"total_edges", metadata !6, i32 5, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 5, i32 14, metadata !38, null}
!41 = metadata !{i32 5, i32 29, metadata !38, null}
!42 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !6, i32 8, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786443, metadata !38, i32 8, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 8, i32 19, metadata !43, null}
!46 = metadata !{i32 8, i32 24, metadata !43, null}
!47 = metadata !{i32 9, i32 3, metadata !48, null}
!48 = metadata !{i32 786443, metadata !43, i32 9, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786688, metadata !50, metadata !"j", metadata !6, i32 11, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 786443, metadata !48, i32 11, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 11, i32 20, metadata !50, null}
!52 = metadata !{i32 11, i32 25, metadata !50, null}
!53 = metadata !{i32 12, i32 4, metadata !54, null}
!54 = metadata !{i32 786443, metadata !50, i32 12, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 13, i32 4, metadata !54, null}
!56 = metadata !{i32 14, i32 5, metadata !54, null}
!57 = metadata !{i32 15, i32 3, metadata !54, null}
!58 = metadata !{i32 11, i32 35, metadata !50, null}
!59 = metadata !{i32 16, i32 2, metadata !48, null}
!60 = metadata !{i32 8, i32 34, metadata !43, null}
!61 = metadata !{i32 17, i32 2, metadata !38, null}
!62 = metadata !{i32 786689, metadata !18, metadata !"graph", metadata !6, i32 16777236, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 20, i32 25, metadata !18, null}
!64 = metadata !{i32 786689, metadata !18, metadata !"hwdist", metadata !6, i32 33554452, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 20, i32 52, metadata !18, null}
!66 = metadata !{i32 21, i32 2, metadata !67, null}
!67 = metadata !{i32 786443, metadata !18, i32 21, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 21, i32 36, metadata !67, null}
!69 = metadata !{i32 786688, metadata !67, metadata !"total_edges", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 22, i32 14, metadata !67, null}
!71 = metadata !{i32 22, i32 28, metadata !67, null}
!72 = metadata !{i32 786688, metadata !73, metadata !"k", metadata !6, i32 24, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786443, metadata !67, i32 24, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 24, i32 19, metadata !73, null}
!75 = metadata !{i32 24, i32 24, metadata !73, null}
!76 = metadata !{i32 25, i32 3, metadata !77, null}
!77 = metadata !{i32 786443, metadata !73, i32 25, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 26, i32 1, metadata !77, null}
!79 = metadata !{i32 26, i32 3, metadata !77, null}
!80 = metadata !{i32 27, i32 2, metadata !77, null}
!81 = metadata !{i32 24, i32 34, metadata !73, null}
!82 = metadata !{i32 29, i32 2, metadata !67, null}
!83 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 31, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786443, metadata !67, i32 31, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 31, i32 19, metadata !84, null}
!86 = metadata !{i32 31, i32 24, metadata !84, null}
!87 = metadata !{i32 32, i32 3, metadata !88, null}
!88 = metadata !{i32 786443, metadata !84, i32 32, i32 2, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786688, metadata !90, metadata !"j", metadata !6, i32 34, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786443, metadata !88, i32 34, i32 3, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 34, i32 20, metadata !90, null}
!92 = metadata !{i32 34, i32 25, metadata !90, null}
!93 = metadata !{i32 35, i32 4, metadata !94, null}
!94 = metadata !{i32 786443, metadata !90, i32 35, i32 3, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 36, i32 1, metadata !94, null}
!96 = metadata !{i32 36, i32 4, metadata !94, null}
!97 = metadata !{i32 38, i32 5, metadata !98, null}
!98 = metadata !{i32 786443, metadata !94, i32 37, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 39, i32 4, metadata !98, null}
!100 = metadata !{i32 40, i32 3, metadata !94, null}
!101 = metadata !{i32 34, i32 44, metadata !90, null}
!102 = metadata !{i32 41, i32 2, metadata !88, null}
!103 = metadata !{i32 31, i32 34, metadata !84, null}
!104 = metadata !{i32 42, i32 1, metadata !67, null}
