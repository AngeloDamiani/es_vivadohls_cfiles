; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = global i8 0, align 1                         ; [#uses=15 type=i8*]
@.str = private unnamed_addr constant [12 x i8] c"MERGE_WHILE\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"MERGE_FOR1\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"MERGE_FOR2\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"MERGE_FOR3\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"FOR1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"FOR2\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=1]
define void @merge(i8 signext %i1, i64 %f1, i64 %f2, i64* %arr) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=8 type=i8*]
  %2 = alloca i64, align 8                        ; [#uses=5 type=i64*]
  %3 = alloca i64, align 8                        ; [#uses=4 type=i64*]
  %4 = alloca i64*, align 8                       ; [#uses=9 type=i64**]
  %x = alloca [10 x i64], align 16                ; [#uses=5 type=[10 x i64]*]
  %i2 = alloca i8, align 1                        ; [#uses=6 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=12 type=i8*]
  %start = alloca i64, align 8                    ; [#uses=2 type=i64*]
  store i8 %i1, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !43), !dbg !44 ; [debug line = 6:19] [debug variable = i1]
  store i64 %f1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !45), !dbg !46 ; [debug line = 6:28] [debug variable = f1]
  store i64 %f2, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !47), !dbg !48 ; [debug line = 6:37] [debug variable = f2]
  store i64* %arr, i64** %4, align 8
  call void @llvm.dbg.declare(metadata !{i64** %4}, metadata !49), !dbg !50 ; [debug line = 6:46] [debug variable = arr]
  %5 = load i64** %4, align 8, !dbg !51           ; [#uses=1 type=i64*] [debug line = 7:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %5, i32 10) nounwind, !dbg !51 ; [debug line = 7:2]
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %x}, metadata !53), !dbg !57 ; [debug line = 8:7] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %i2}, metadata !58), !dbg !59 ; [debug line = 9:9] [debug variable = i2]
  %6 = load i64* %2, align 8, !dbg !60            ; [#uses=1 type=i64] [debug line = 9:20]
  %7 = add nsw i64 %6, 1, !dbg !60                ; [#uses=1 type=i64] [debug line = 9:20]
  %8 = trunc i64 %7 to i8, !dbg !60               ; [#uses=1 type=i8] [debug line = 9:20]
  store i8 %8, i8* %i2, align 1, !dbg !60         ; [debug line = 9:20]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !61), !dbg !62 ; [debug line = 10:9] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !63           ; [debug line = 10:14]
  call void @llvm.dbg.declare(metadata !{i64* %start}, metadata !64), !dbg !65 ; [debug line = 11:7] [debug variable = start]
  %9 = load i8* %1, align 1, !dbg !66             ; [#uses=1 type=i8] [debug line = 11:17]
  %10 = sext i8 %9 to i64, !dbg !66               ; [#uses=1 type=i64] [debug line = 11:17]
  store i64 %10, i64* %start, align 8, !dbg !66   ; [debug line = 11:17]
  br label %11, !dbg !66                          ; [debug line = 11:17]

; <label>:11                                      ; preds = %0
  br label %12, !dbg !67                          ; [debug line = 13:2]

; <label>:12                                      ; preds = %58, %11
  %13 = load i8* %1, align 1, !dbg !67            ; [#uses=1 type=i8] [debug line = 13:2]
  %14 = sext i8 %13 to i64, !dbg !67              ; [#uses=1 type=i64] [debug line = 13:2]
  %15 = load i64* %2, align 8, !dbg !67           ; [#uses=1 type=i64] [debug line = 13:2]
  %16 = icmp sle i64 %14, %15, !dbg !67           ; [#uses=1 type=i1] [debug line = 13:2]
  br i1 %16, label %17, label %22, !dbg !67       ; [debug line = 13:2]

; <label>:17                                      ; preds = %12
  %18 = load i8* %i2, align 1, !dbg !67           ; [#uses=1 type=i8] [debug line = 13:2]
  %19 = sext i8 %18 to i64, !dbg !67              ; [#uses=1 type=i64] [debug line = 13:2]
  %20 = load i64* %3, align 8, !dbg !67           ; [#uses=1 type=i64] [debug line = 13:2]
  %21 = icmp sle i64 %19, %20, !dbg !67           ; [#uses=1 type=i1] [debug line = 13:2]
  br label %22

; <label>:22                                      ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]       ; [#uses=1 type=i1]
  br i1 %23, label %24, label %59

; <label>:24                                      ; preds = %22
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 14:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 14:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 9, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 15:1]
  %25 = load i8* %1, align 1, !dbg !71            ; [#uses=1 type=i8] [debug line = 15:3]
  %26 = sext i8 %25 to i64, !dbg !71              ; [#uses=1 type=i64] [debug line = 15:3]
  %27 = load i64** %4, align 8, !dbg !71          ; [#uses=1 type=i64*] [debug line = 15:3]
  %28 = getelementptr inbounds i64* %27, i64 %26, !dbg !71 ; [#uses=1 type=i64*] [debug line = 15:3]
  %29 = load i64* %28, align 8, !dbg !71          ; [#uses=1 type=i64] [debug line = 15:3]
  %30 = load i8* %i2, align 1, !dbg !71           ; [#uses=1 type=i8] [debug line = 15:3]
  %31 = sext i8 %30 to i64, !dbg !71              ; [#uses=1 type=i64] [debug line = 15:3]
  %32 = load i64** %4, align 8, !dbg !71          ; [#uses=1 type=i64*] [debug line = 15:3]
  %33 = getelementptr inbounds i64* %32, i64 %31, !dbg !71 ; [#uses=1 type=i64*] [debug line = 15:3]
  %34 = load i64* %33, align 8, !dbg !71          ; [#uses=1 type=i64] [debug line = 15:3]
  %35 = icmp sle i64 %29, %34, !dbg !71           ; [#uses=1 type=i1] [debug line = 15:3]
  br i1 %35, label %36, label %47, !dbg !71       ; [debug line = 15:3]

; <label>:36                                      ; preds = %24
  %37 = load i8* %1, align 1, !dbg !72            ; [#uses=2 type=i8] [debug line = 16:4]
  %38 = add i8 %37, 1, !dbg !72                   ; [#uses=1 type=i8] [debug line = 16:4]
  store i8 %38, i8* %1, align 1, !dbg !72         ; [debug line = 16:4]
  %39 = sext i8 %37 to i64, !dbg !72              ; [#uses=1 type=i64] [debug line = 16:4]
  %40 = load i64** %4, align 8, !dbg !72          ; [#uses=1 type=i64*] [debug line = 16:4]
  %41 = getelementptr inbounds i64* %40, i64 %39, !dbg !72 ; [#uses=1 type=i64*] [debug line = 16:4]
  %42 = load i64* %41, align 8, !dbg !72          ; [#uses=1 type=i64] [debug line = 16:4]
  %43 = load i8* %i, align 1, !dbg !72            ; [#uses=2 type=i8] [debug line = 16:4]
  %44 = add i8 %43, 1, !dbg !72                   ; [#uses=1 type=i8] [debug line = 16:4]
  store i8 %44, i8* %i, align 1, !dbg !72         ; [debug line = 16:4]
  %45 = sext i8 %43 to i64, !dbg !72              ; [#uses=1 type=i64] [debug line = 16:4]
  %46 = getelementptr inbounds [10 x i64]* %x, i32 0, i64 %45, !dbg !72 ; [#uses=1 type=i64*] [debug line = 16:4]
  store i64 %42, i64* %46, align 8, !dbg !72      ; [debug line = 16:4]
  br label %58, !dbg !72                          ; [debug line = 16:4]

; <label>:47                                      ; preds = %24
  %48 = load i8* %i2, align 1, !dbg !73           ; [#uses=2 type=i8] [debug line = 18:4]
  %49 = add i8 %48, 1, !dbg !73                   ; [#uses=1 type=i8] [debug line = 18:4]
  store i8 %49, i8* %i2, align 1, !dbg !73        ; [debug line = 18:4]
  %50 = sext i8 %48 to i64, !dbg !73              ; [#uses=1 type=i64] [debug line = 18:4]
  %51 = load i64** %4, align 8, !dbg !73          ; [#uses=1 type=i64*] [debug line = 18:4]
  %52 = getelementptr inbounds i64* %51, i64 %50, !dbg !73 ; [#uses=1 type=i64*] [debug line = 18:4]
  %53 = load i64* %52, align 8, !dbg !73          ; [#uses=1 type=i64] [debug line = 18:4]
  %54 = load i8* %i, align 1, !dbg !73            ; [#uses=2 type=i8] [debug line = 18:4]
  %55 = add i8 %54, 1, !dbg !73                   ; [#uses=1 type=i8] [debug line = 18:4]
  store i8 %55, i8* %i, align 1, !dbg !73         ; [debug line = 18:4]
  %56 = sext i8 %54 to i64, !dbg !73              ; [#uses=1 type=i64] [debug line = 18:4]
  %57 = getelementptr inbounds [10 x i64]* %x, i32 0, i64 %56, !dbg !73 ; [#uses=1 type=i64*] [debug line = 18:4]
  store i64 %53, i64* %57, align 8, !dbg !73      ; [debug line = 18:4]
  br label %58

; <label>:58                                      ; preds = %47, %36
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 19:2]
  br label %12, !dbg !74                          ; [debug line = 19:2]

; <label>:59                                      ; preds = %22
  %60 = load i8* %1, align 1, !dbg !75            ; [#uses=1 type=i8] [debug line = 21:2]
  %61 = sext i8 %60 to i64, !dbg !75              ; [#uses=1 type=i64] [debug line = 21:2]
  %62 = load i64* %2, align 8, !dbg !75           ; [#uses=1 type=i64] [debug line = 21:2]
  %63 = icmp sle i64 %61, %62, !dbg !75           ; [#uses=1 type=i1] [debug line = 21:2]
  br i1 %63, label %64, label %86, !dbg !75       ; [debug line = 21:2]

; <label>:64                                      ; preds = %59
  br label %65, !dbg !76                          ; [debug line = 22:2]

; <label>:65                                      ; preds = %64
  %66 = load i8* %1, align 1, !dbg !78            ; [#uses=1 type=i8] [debug line = 24:7]
  store i8 %66, i8* @h, align 1, !dbg !78         ; [debug line = 24:7]
  br label %67, !dbg !78                          ; [debug line = 24:7]

; <label>:67                                      ; preds = %82, %65
  %68 = load i8* @h, align 1, !dbg !78            ; [#uses=1 type=i8] [debug line = 24:7]
  %69 = sext i8 %68 to i64, !dbg !78              ; [#uses=1 type=i64] [debug line = 24:7]
  %70 = load i64* %2, align 8, !dbg !78           ; [#uses=1 type=i64] [debug line = 24:7]
  %71 = icmp sle i64 %69, %70, !dbg !78           ; [#uses=1 type=i1] [debug line = 24:7]
  br i1 %71, label %72, label %85, !dbg !78       ; [debug line = 24:7]

; <label>:72                                      ; preds = %67
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 25:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 25:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 9, i32 4, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 26:1]
  %73 = load i8* @h, align 1, !dbg !83            ; [#uses=1 type=i8] [debug line = 25:1]
  %74 = sext i8 %73 to i64, !dbg !83              ; [#uses=1 type=i64] [debug line = 25:1]
  %75 = load i64** %4, align 8, !dbg !83          ; [#uses=1 type=i64*] [debug line = 25:1]
  %76 = getelementptr inbounds i64* %75, i64 %74, !dbg !83 ; [#uses=1 type=i64*] [debug line = 25:1]
  %77 = load i64* %76, align 8, !dbg !83          ; [#uses=1 type=i64] [debug line = 25:1]
  %78 = load i8* %i, align 1, !dbg !83            ; [#uses=2 type=i8] [debug line = 25:1]
  %79 = add i8 %78, 1, !dbg !83                   ; [#uses=1 type=i8] [debug line = 25:1]
  store i8 %79, i8* %i, align 1, !dbg !83         ; [debug line = 25:1]
  %80 = sext i8 %78 to i64, !dbg !83              ; [#uses=1 type=i64] [debug line = 25:1]
  %81 = getelementptr inbounds [10 x i64]* %x, i32 0, i64 %80, !dbg !83 ; [#uses=1 type=i64*] [debug line = 25:1]
  store i64 %77, i64* %81, align 8, !dbg !83      ; [debug line = 25:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 25:15]
  br label %82, !dbg !84                          ; [debug line = 25:15]

; <label>:82                                      ; preds = %72
  %83 = load i8* @h, align 1, !dbg !85            ; [#uses=1 type=i8] [debug line = 24:24]
  %84 = add i8 %83, 1, !dbg !85                   ; [#uses=1 type=i8] [debug line = 24:24]
  store i8 %84, i8* @h, align 1, !dbg !85         ; [debug line = 24:24]
  br label %67, !dbg !85                          ; [debug line = 24:24]

; <label>:85                                      ; preds = %67
  br label %108, !dbg !86                         ; [debug line = 26:2]

; <label>:86                                      ; preds = %59
  br label %87, !dbg !87                          ; [debug line = 27:6]

; <label>:87                                      ; preds = %86
  %88 = load i8* %i2, align 1, !dbg !89           ; [#uses=1 type=i8] [debug line = 29:7]
  store i8 %88, i8* @h, align 1, !dbg !89         ; [debug line = 29:7]
  br label %89, !dbg !89                          ; [debug line = 29:7]

; <label>:89                                      ; preds = %104, %87
  %90 = load i8* @h, align 1, !dbg !89            ; [#uses=1 type=i8] [debug line = 29:7]
  %91 = sext i8 %90 to i64, !dbg !89              ; [#uses=1 type=i64] [debug line = 29:7]
  %92 = load i64* %3, align 8, !dbg !89           ; [#uses=1 type=i64] [debug line = 29:7]
  %93 = icmp sle i64 %91, %92, !dbg !89           ; [#uses=1 type=i1] [debug line = 29:7]
  br i1 %93, label %94, label %107, !dbg !89      ; [debug line = 29:7]

; <label>:94                                      ; preds = %89
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !91 ; [debug line = 30:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !91 ; [debug line = 30:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 5, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !93 ; [debug line = 31:1]
  %95 = load i8* @h, align 1, !dbg !94            ; [#uses=1 type=i8] [debug line = 30:1]
  %96 = sext i8 %95 to i64, !dbg !94              ; [#uses=1 type=i64] [debug line = 30:1]
  %97 = load i64** %4, align 8, !dbg !94          ; [#uses=1 type=i64*] [debug line = 30:1]
  %98 = getelementptr inbounds i64* %97, i64 %96, !dbg !94 ; [#uses=1 type=i64*] [debug line = 30:1]
  %99 = load i64* %98, align 8, !dbg !94          ; [#uses=1 type=i64] [debug line = 30:1]
  %100 = load i8* %i, align 1, !dbg !94           ; [#uses=2 type=i8] [debug line = 30:1]
  %101 = add i8 %100, 1, !dbg !94                 ; [#uses=1 type=i8] [debug line = 30:1]
  store i8 %101, i8* %i, align 1, !dbg !94        ; [debug line = 30:1]
  %102 = sext i8 %100 to i64, !dbg !94            ; [#uses=1 type=i64] [debug line = 30:1]
  %103 = getelementptr inbounds [10 x i64]* %x, i32 0, i64 %102, !dbg !94 ; [#uses=1 type=i64*] [debug line = 30:1]
  store i64 %99, i64* %103, align 8, !dbg !94     ; [debug line = 30:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !95 ; [debug line = 30:15]
  br label %104, !dbg !95                         ; [debug line = 30:15]

; <label>:104                                     ; preds = %94
  %105 = load i8* @h, align 1, !dbg !96           ; [#uses=1 type=i8] [debug line = 29:24]
  %106 = add i8 %105, 1, !dbg !96                 ; [#uses=1 type=i8] [debug line = 29:24]
  store i8 %106, i8* @h, align 1, !dbg !96        ; [debug line = 29:24]
  br label %89, !dbg !96                          ; [debug line = 29:24]

; <label>:107                                     ; preds = %89
  br label %108

; <label>:108                                     ; preds = %107, %85
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i64* %start, align 8, !dbg !97      ; [#uses=1 type=i64] [debug line = 34:6]
  %111 = trunc i64 %110 to i8, !dbg !97           ; [#uses=1 type=i8] [debug line = 34:6]
  store i8 %111, i8* @h, align 1, !dbg !97        ; [debug line = 34:6]
  store i8 0, i8* %i, align 1, !dbg !97           ; [debug line = 34:6]
  br label %112, !dbg !97                         ; [debug line = 34:6]

; <label>:112                                     ; preds = %127, %109
  %113 = load i8* @h, align 1, !dbg !97           ; [#uses=1 type=i8] [debug line = 34:6]
  %114 = sext i8 %113 to i64, !dbg !97            ; [#uses=1 type=i64] [debug line = 34:6]
  %115 = load i64* %3, align 8, !dbg !97          ; [#uses=1 type=i64] [debug line = 34:6]
  %116 = icmp sle i64 %114, %115, !dbg !97        ; [#uses=1 type=i1] [debug line = 34:6]
  br i1 %116, label %117, label %130, !dbg !97    ; [debug line = 34:6]

; <label>:117                                     ; preds = %112
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 35:2]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 35:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 2, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 36:1]
  %118 = load i8* %i, align 1, !dbg !102          ; [#uses=2 type=i8] [debug line = 35:1]
  %119 = add i8 %118, 1, !dbg !102                ; [#uses=1 type=i8] [debug line = 35:1]
  store i8 %119, i8* %i, align 1, !dbg !102       ; [debug line = 35:1]
  %120 = sext i8 %118 to i64, !dbg !102           ; [#uses=1 type=i64] [debug line = 35:1]
  %121 = getelementptr inbounds [10 x i64]* %x, i32 0, i64 %120, !dbg !102 ; [#uses=1 type=i64*] [debug line = 35:1]
  %122 = load i64* %121, align 8, !dbg !102       ; [#uses=1 type=i64] [debug line = 35:1]
  %123 = load i8* @h, align 1, !dbg !102          ; [#uses=1 type=i8] [debug line = 35:1]
  %124 = sext i8 %123 to i64, !dbg !102           ; [#uses=1 type=i64] [debug line = 35:1]
  %125 = load i64** %4, align 8, !dbg !102        ; [#uses=1 type=i64*] [debug line = 35:1]
  %126 = getelementptr inbounds i64* %125, i64 %124, !dbg !102 ; [#uses=1 type=i64*] [debug line = 35:1]
  store i64 %122, i64* %126, align 8, !dbg !102   ; [debug line = 35:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !103 ; [debug line = 35:15]
  br label %127, !dbg !103                        ; [debug line = 35:15]

; <label>:127                                     ; preds = %117
  %128 = load i8* @h, align 1, !dbg !104          ; [#uses=1 type=i8] [debug line = 34:33]
  %129 = add i8 %128, 1, !dbg !104                ; [#uses=1 type=i8] [debug line = 34:33]
  store i8 %129, i8* @h, align 1, !dbg !104       ; [debug line = 34:33]
  br label %112, !dbg !104                        ; [debug line = 34:33]

; <label>:130                                     ; preds = %112
  ret void, !dbg !105                             ; [debug line = 36:1]
}

; [#uses=13]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define i64 @min(i64 %c, i64 %b) nounwind uwtable {
  %1 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  %2 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  store i64 %c, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !106), !dbg !107 ; [debug line = 39:15] [debug variable = c]
  store i64 %b, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !108), !dbg !109 ; [debug line = 39:23] [debug variable = b]
  %3 = load i64* %1, align 8, !dbg !110           ; [#uses=1 type=i64] [debug line = 41:2]
  %4 = load i64* %2, align 8, !dbg !110           ; [#uses=1 type=i64] [debug line = 41:2]
  %5 = icmp slt i64 %3, %4, !dbg !110             ; [#uses=1 type=i1] [debug line = 41:2]
  br i1 %5, label %6, label %8, !dbg !110         ; [debug line = 41:2]

; <label>:6                                       ; preds = %0
  %7 = load i64* %1, align 8, !dbg !110           ; [#uses=1 type=i64] [debug line = 41:2]
  br label %10, !dbg !110                         ; [debug line = 41:2]

; <label>:8                                       ; preds = %0
  %9 = load i64* %2, align 8, !dbg !110           ; [#uses=1 type=i64] [debug line = 41:2]
  br label %10, !dbg !110                         ; [debug line = 41:2]

; <label>:10                                      ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ], !dbg !110 ; [#uses=1 type=i64] [debug line = 41:2]
  ret i64 %11, !dbg !110                          ; [debug line = 41:2]
}

; [#uses=0]
define void @mergesort(i64* %arr) nounwind uwtable {
  %1 = alloca i64*, align 8                       ; [#uses=3 type=i64**]
  %m = alloca i64, align 8                        ; [#uses=8 type=i64*]
  %x = alloca i64, align 8                        ; [#uses=8 type=i64*]
  store i64* %arr, i64** %1, align 8
  call void @llvm.dbg.declare(metadata !{i64** %1}, metadata !112), !dbg !113 ; [debug line = 44:21] [debug variable = arr]
  %2 = load i64** %1, align 8, !dbg !114          ; [#uses=1 type=i64*] [debug line = 45:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %2, i32 10) nounwind, !dbg !114 ; [debug line = 45:2]
  call void @llvm.dbg.declare(metadata !{i64* %m}, metadata !116), !dbg !117 ; [debug line = 46:7] [debug variable = m]
  store i64 0, i64* %m, align 8, !dbg !118        ; [debug line = 46:12]
  call void @llvm.dbg.declare(metadata !{i64* %x}, metadata !119), !dbg !120 ; [debug line = 47:7] [debug variable = x]
  store i64 0, i64* %x, align 8, !dbg !121        ; [debug line = 47:12]
  br label %3, !dbg !121                          ; [debug line = 47:12]

; <label>:3                                       ; preds = %0
  store i64 1, i64* %m, align 8, !dbg !122        ; [debug line = 49:6]
  br label %4, !dbg !122                          ; [debug line = 49:6]

; <label>:4                                       ; preds = %32, %3
  %5 = load i64* %m, align 8, !dbg !122           ; [#uses=1 type=i64] [debug line = 49:6]
  %6 = icmp sle i64 %5, 9, !dbg !122              ; [#uses=1 type=i1] [debug line = 49:6]
  br i1 %6, label %7, label %35, !dbg !122        ; [debug line = 49:6]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 50:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 50:3]
  br label %8, !dbg !124                          ; [debug line = 50:3]

; <label>:8                                       ; preds = %7
  store i64 0, i64* %x, align 8, !dbg !126        ; [debug line = 52:7]
  br label %9, !dbg !126                          ; [debug line = 52:7]

; <label>:9                                       ; preds = %26, %8
  %10 = load i64* %x, align 8, !dbg !126          ; [#uses=1 type=i64] [debug line = 52:7]
  %11 = icmp slt i64 %10, 9, !dbg !126            ; [#uses=1 type=i1] [debug line = 52:7]
  br i1 %11, label %12, label %31, !dbg !126      ; [debug line = 52:7]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 53:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 53:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 5, i32 3, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 54:1]
  %13 = load i64* %x, align 8, !dbg !131          ; [#uses=1 type=i64] [debug line = 54:4]
  %14 = trunc i64 %13 to i8, !dbg !131            ; [#uses=1 type=i8] [debug line = 54:4]
  %15 = load i64* %x, align 8, !dbg !131          ; [#uses=1 type=i64] [debug line = 54:4]
  %16 = load i64* %m, align 8, !dbg !131          ; [#uses=1 type=i64] [debug line = 54:4]
  %17 = add nsw i64 %15, %16, !dbg !131           ; [#uses=1 type=i64] [debug line = 54:4]
  %18 = sub nsw i64 %17, 1, !dbg !131             ; [#uses=1 type=i64] [debug line = 54:4]
  %19 = load i64* %x, align 8, !dbg !132          ; [#uses=1 type=i64] [debug line = 54:20]
  %20 = load i64* %m, align 8, !dbg !132          ; [#uses=1 type=i64] [debug line = 54:20]
  %21 = mul nsw i64 2, %20, !dbg !132             ; [#uses=1 type=i64] [debug line = 54:20]
  %22 = add nsw i64 %19, %21, !dbg !132           ; [#uses=1 type=i64] [debug line = 54:20]
  %23 = sub nsw i64 %22, 1, !dbg !132             ; [#uses=1 type=i64] [debug line = 54:20]
  %24 = call i64 @min(i64 %23, i64 9), !dbg !132  ; [#uses=1 type=i64] [debug line = 54:20]
  %25 = load i64** %1, align 8, !dbg !132         ; [#uses=1 type=i64*] [debug line = 54:20]
  call void @merge(i8 signext %14, i64 %18, i64 %24, i64* %25), !dbg !132 ; [debug line = 54:20]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 55:4]
  br label %26, !dbg !133                         ; [debug line = 55:4]

; <label>:26                                      ; preds = %12
  %27 = load i64* %m, align 8, !dbg !134          ; [#uses=1 type=i64] [debug line = 52:25]
  %28 = mul nsw i64 2, %27, !dbg !134             ; [#uses=1 type=i64] [debug line = 52:25]
  %29 = load i64* %x, align 8, !dbg !134          ; [#uses=1 type=i64] [debug line = 52:25]
  %30 = add nsw i64 %29, %28, !dbg !134           ; [#uses=1 type=i64] [debug line = 52:25]
  store i64 %30, i64* %x, align 8, !dbg !134      ; [debug line = 52:25]
  br label %9, !dbg !134                          ; [debug line = 52:25]

; <label>:31                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 56:2]
  br label %32, !dbg !135                         ; [debug line = 56:2]

; <label>:32                                      ; preds = %31
  %33 = load i64* %m, align 8, !dbg !136          ; [#uses=1 type=i64] [debug line = 49:25]
  %34 = mul nsw i64 %33, 2, !dbg !136             ; [#uses=1 type=i64] [debug line = 49:25]
  store i64 %34, i64* %m, align 8, !dbg !136      ; [debug line = 49:25]
  br label %4, !dbg !136                          ; [debug line = 49:25]

; <label>:35                                      ; preds = %4
  ret void, !dbg !137                             ; [debug line = 57:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24, !31, !37}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/.autopilot/db/mergesort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !21} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"merge", metadata !"merge", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i64, i64, i64*)* @merge, null, null, metadata !13, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_mergesort.prj/solution1/mergesort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12}
!9 = metadata !{i32 786454, null, metadata !"int8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"min", metadata !"min", metadata !"", metadata !6, i32 39, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @min, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !11, metadata !11, metadata !11}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mergesort", metadata !"mergesort", metadata !"", metadata !6, i32 44, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64*)* @mergesort, null, null, metadata !13, i32 45} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !12}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !6, i32 3, metadata !9, i32 0, i32 1, i8* @h} ; [ DW_TAG_variable ]
!24 = metadata !{void (i8, i64, i64, i64*)* @merge, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"int8_t", metadata !"long", metadata !"long", metadata !"long*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"i1", metadata !"f1", metadata !"f2", metadata !"arr"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{i64 (i64, i64)* @min, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !30}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"long", metadata !"long"}
!35 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"c", metadata !"b"}
!37 = metadata !{void (i64*)* @mergesort, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !30}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"long*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"arr"}
!43 = metadata !{i32 786689, metadata !5, metadata !"i1", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 6, i32 19, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"f1", metadata !6, i32 33554438, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 6, i32 28, metadata !5, null}
!47 = metadata !{i32 786689, metadata !5, metadata !"f2", metadata !6, i32 50331654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 6, i32 37, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"arr", metadata !6, i32 67108870, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 6, i32 46, metadata !5, null}
!51 = metadata !{i32 7, i32 2, metadata !52, null}
!52 = metadata !{i32 786443, metadata !5, i32 7, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786688, metadata !52, metadata !"x", metadata !6, i32 8, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 64, i32 0, i32 0, metadata !11, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 8, i32 7, metadata !52, null}
!58 = metadata !{i32 786688, metadata !52, metadata !"i2", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 9, i32 9, metadata !52, null}
!60 = metadata !{i32 9, i32 20, metadata !52, null}
!61 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !6, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 10, i32 9, metadata !52, null}
!63 = metadata !{i32 10, i32 14, metadata !52, null}
!64 = metadata !{i32 786688, metadata !52, metadata !"start", metadata !6, i32 11, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 11, i32 7, metadata !52, null}
!66 = metadata !{i32 11, i32 17, metadata !52, null}
!67 = metadata !{i32 13, i32 2, metadata !52, null}
!68 = metadata !{i32 14, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !52, i32 14, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 15, i32 1, metadata !69, null}
!71 = metadata !{i32 15, i32 3, metadata !69, null}
!72 = metadata !{i32 16, i32 4, metadata !69, null}
!73 = metadata !{i32 18, i32 4, metadata !69, null}
!74 = metadata !{i32 19, i32 2, metadata !69, null}
!75 = metadata !{i32 21, i32 2, metadata !52, null}
!76 = metadata !{i32 22, i32 2, metadata !77, null}
!77 = metadata !{i32 786443, metadata !52, i32 22, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 24, i32 7, metadata !79, null}
!79 = metadata !{i32 786443, metadata !77, i32 24, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 25, i32 2, metadata !81, null}
!81 = metadata !{i32 786443, metadata !79, i32 25, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 26, i32 1, metadata !81, null}
!83 = metadata !{i32 25, i32 1, metadata !81, null}
!84 = metadata !{i32 25, i32 15, metadata !81, null}
!85 = metadata !{i32 24, i32 24, metadata !79, null}
!86 = metadata !{i32 26, i32 2, metadata !77, null}
!87 = metadata !{i32 27, i32 6, metadata !88, null}
!88 = metadata !{i32 786443, metadata !52, i32 27, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 29, i32 7, metadata !90, null}
!90 = metadata !{i32 786443, metadata !88, i32 29, i32 3, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 30, i32 2, metadata !92, null}
!92 = metadata !{i32 786443, metadata !90, i32 30, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 31, i32 1, metadata !92, null}
!94 = metadata !{i32 30, i32 1, metadata !92, null}
!95 = metadata !{i32 30, i32 15, metadata !92, null}
!96 = metadata !{i32 29, i32 24, metadata !90, null}
!97 = metadata !{i32 34, i32 6, metadata !98, null}
!98 = metadata !{i32 786443, metadata !52, i32 34, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 35, i32 2, metadata !100, null}
!100 = metadata !{i32 786443, metadata !98, i32 35, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 36, i32 1, metadata !100, null}
!102 = metadata !{i32 35, i32 1, metadata !100, null}
!103 = metadata !{i32 35, i32 15, metadata !100, null}
!104 = metadata !{i32 34, i32 33, metadata !98, null}
!105 = metadata !{i32 36, i32 1, metadata !52, null}
!106 = metadata !{i32 786689, metadata !15, metadata !"c", metadata !6, i32 16777255, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 39, i32 15, metadata !15, null}
!108 = metadata !{i32 786689, metadata !15, metadata !"b", metadata !6, i32 33554471, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 39, i32 23, metadata !15, null}
!110 = metadata !{i32 41, i32 2, metadata !111, null}
!111 = metadata !{i32 786443, metadata !15, i32 40, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786689, metadata !18, metadata !"arr", metadata !6, i32 16777260, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 44, i32 21, metadata !18, null}
!114 = metadata !{i32 45, i32 2, metadata !115, null}
!115 = metadata !{i32 786443, metadata !18, i32 45, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786688, metadata !115, metadata !"m", metadata !6, i32 46, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 46, i32 7, metadata !115, null}
!118 = metadata !{i32 46, i32 12, metadata !115, null}
!119 = metadata !{i32 786688, metadata !115, metadata !"x", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 47, i32 7, metadata !115, null}
!121 = metadata !{i32 47, i32 12, metadata !115, null}
!122 = metadata !{i32 49, i32 6, metadata !123, null}
!123 = metadata !{i32 786443, metadata !115, i32 49, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 50, i32 3, metadata !125, null}
!125 = metadata !{i32 786443, metadata !123, i32 50, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 52, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !125, i32 52, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 53, i32 4, metadata !129, null}
!129 = metadata !{i32 786443, metadata !127, i32 53, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 54, i32 1, metadata !129, null}
!131 = metadata !{i32 54, i32 4, metadata !129, null}
!132 = metadata !{i32 54, i32 20, metadata !129, null}
!133 = metadata !{i32 55, i32 4, metadata !129, null}
!134 = metadata !{i32 52, i32 25, metadata !127, null}
!135 = metadata !{i32 56, i32 2, metadata !125, null}
!136 = metadata !{i32 49, i32 25, metadata !123, null}
!137 = metadata !{i32 57, i32 1, metadata !115, null}
