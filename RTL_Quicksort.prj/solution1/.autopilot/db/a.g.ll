; ModuleID = '/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [9 x i8] c"PARWHILE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"QWHILE\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=2]
define void @swap(i64 %index_1, i64 %index_2, i64* %a) nounwind uwtable {
  %1 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  %2 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  %3 = alloca i64*, align 8                       ; [#uses=6 type=i64**]
  %b = alloca i64, align 8                        ; [#uses=2 type=i64*]
  store i64 %index_1, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !40), !dbg !41 ; [debug line = 4:24] [debug variable = index_1]
  store i64 %index_2, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !42), !dbg !43 ; [debug line = 4:46] [debug variable = index_2]
  store i64* %a, i64** %3, align 8
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !44), !dbg !45 ; [debug line = 4:66] [debug variable = a]
  %4 = load i64** %3, align 8, !dbg !46           ; [#uses=1 type=i64*] [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %4, i32 10) nounwind, !dbg !46 ; [debug line = 5:2]
  call void @llvm.dbg.declare(metadata !{i64* %b}, metadata !48), !dbg !49 ; [debug line = 7:15] [debug variable = b]
  %5 = load i64* %1, align 8, !dbg !50            ; [#uses=1 type=i64] [debug line = 7:29]
  %6 = load i64** %3, align 8, !dbg !50           ; [#uses=1 type=i64*] [debug line = 7:29]
  %7 = getelementptr inbounds i64* %6, i64 %5, !dbg !50 ; [#uses=1 type=i64*] [debug line = 7:29]
  %8 = load i64* %7, align 8, !dbg !50            ; [#uses=1 type=i64] [debug line = 7:29]
  store i64 %8, i64* %b, align 8, !dbg !50        ; [debug line = 7:29]
  %9 = load i64* %2, align 8, !dbg !51            ; [#uses=1 type=i64] [debug line = 8:2]
  %10 = load i64** %3, align 8, !dbg !51          ; [#uses=1 type=i64*] [debug line = 8:2]
  %11 = getelementptr inbounds i64* %10, i64 %9, !dbg !51 ; [#uses=1 type=i64*] [debug line = 8:2]
  %12 = load i64* %11, align 8, !dbg !51          ; [#uses=1 type=i64] [debug line = 8:2]
  %13 = load i64* %1, align 8, !dbg !51           ; [#uses=1 type=i64] [debug line = 8:2]
  %14 = load i64** %3, align 8, !dbg !51          ; [#uses=1 type=i64*] [debug line = 8:2]
  %15 = getelementptr inbounds i64* %14, i64 %13, !dbg !51 ; [#uses=1 type=i64*] [debug line = 8:2]
  store i64 %12, i64* %15, align 8, !dbg !51      ; [debug line = 8:2]
  %16 = load i64* %b, align 8, !dbg !52           ; [#uses=1 type=i64] [debug line = 9:2]
  %17 = load i64* %2, align 8, !dbg !52           ; [#uses=1 type=i64] [debug line = 9:2]
  %18 = load i64** %3, align 8, !dbg !52          ; [#uses=1 type=i64*] [debug line = 9:2]
  %19 = getelementptr inbounds i64* %18, i64 %17, !dbg !52 ; [#uses=1 type=i64*] [debug line = 9:2]
  store i64 %16, i64* %19, align 8, !dbg !52      ; [debug line = 9:2]
  ret void, !dbg !53                              ; [debug line = 10:1]
}

; [#uses=18]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define i64 @partition(i64 %init, i64 %end, i64* %a) nounwind uwtable {
  %1 = alloca i64, align 8                        ; [#uses=4 type=i64*]
  %2 = alloca i64, align 8                        ; [#uses=3 type=i64*]
  %3 = alloca i64*, align 8                       ; [#uses=7 type=i64**]
  %pivot = alloca i64, align 8                    ; [#uses=3 type=i64*]
  %sup = alloca i64, align 8                      ; [#uses=8 type=i64*]
  %inf = alloca i64, align 8                      ; [#uses=7 type=i64*]
  store i64 %init, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !54), !dbg !55 ; [debug line = 12:37] [debug variable = init]
  store i64 %end, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !56), !dbg !57 ; [debug line = 12:56] [debug variable = end]
  store i64* %a, i64** %3, align 8
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !58), !dbg !59 ; [debug line = 12:73] [debug variable = a]
  %4 = load i64** %3, align 8, !dbg !60           ; [#uses=1 type=i64*] [debug line = 13:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %4, i32 10) nounwind, !dbg !60 ; [debug line = 13:2]
  call void @llvm.dbg.declare(metadata !{i64* %pivot}, metadata !62), !dbg !63 ; [debug line = 14:14] [debug variable = pivot]
  %5 = load i64* %1, align 8, !dbg !64            ; [#uses=1 type=i64] [debug line = 14:29]
  %6 = load i64** %3, align 8, !dbg !64           ; [#uses=1 type=i64*] [debug line = 14:29]
  %7 = getelementptr inbounds i64* %6, i64 %5, !dbg !64 ; [#uses=1 type=i64*] [debug line = 14:29]
  %8 = load i64* %7, align 8, !dbg !64            ; [#uses=1 type=i64] [debug line = 14:29]
  store i64 %8, i64* %pivot, align 8, !dbg !64    ; [debug line = 14:29]
  call void @llvm.dbg.declare(metadata !{i64* %sup}, metadata !65), !dbg !66 ; [debug line = 15:15] [debug variable = sup]
  %9 = load i64* %2, align 8, !dbg !67            ; [#uses=1 type=i64] [debug line = 15:24]
  store i64 %9, i64* %sup, align 8, !dbg !67      ; [debug line = 15:24]
  call void @llvm.dbg.declare(metadata !{i64* %inf}, metadata !68), !dbg !69 ; [debug line = 16:15] [debug variable = inf]
  %10 = load i64* %1, align 8, !dbg !70           ; [#uses=1 type=i64] [debug line = 16:25]
  store i64 %10, i64* %inf, align 8, !dbg !70     ; [debug line = 16:25]
  br label %11, !dbg !70                          ; [debug line = 16:25]

; <label>:11                                      ; preds = %0
  br label %12, !dbg !71                          ; [debug line = 18:2]

; <label>:12                                      ; preds = %50, %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 19:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 19:3]
  br label %13, !dbg !74                          ; [debug line = 20:3]

; <label>:13                                      ; preds = %26, %12
  %14 = load i64* %inf, align 8, !dbg !74         ; [#uses=1 type=i64] [debug line = 20:3]
  %15 = load i64* %2, align 8, !dbg !74           ; [#uses=1 type=i64] [debug line = 20:3]
  %16 = icmp sle i64 %14, %15, !dbg !74           ; [#uses=1 type=i1] [debug line = 20:3]
  br i1 %16, label %17, label %24, !dbg !74       ; [debug line = 20:3]

; <label>:17                                      ; preds = %13
  %18 = load i64* %inf, align 8, !dbg !74         ; [#uses=1 type=i64] [debug line = 20:3]
  %19 = load i64** %3, align 8, !dbg !74          ; [#uses=1 type=i64*] [debug line = 20:3]
  %20 = getelementptr inbounds i64* %19, i64 %18, !dbg !74 ; [#uses=1 type=i64*] [debug line = 20:3]
  %21 = load i64* %20, align 8, !dbg !74          ; [#uses=1 type=i64] [debug line = 20:3]
  %22 = load i64* %pivot, align 8, !dbg !74       ; [#uses=1 type=i64] [debug line = 20:3]
  %23 = icmp sle i64 %21, %22, !dbg !74           ; [#uses=1 type=i1] [debug line = 20:3]
  br label %24

; <label>:24                                      ; preds = %17, %13
  %25 = phi i1 [ false, %13 ], [ %23, %17 ]       ; [#uses=1 type=i1]
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %24
  %27 = load i64* %inf, align 8, !dbg !75         ; [#uses=1 type=i64] [debug line = 21:4]
  %28 = add nsw i64 %27, 1, !dbg !75              ; [#uses=1 type=i64] [debug line = 21:4]
  store i64 %28, i64* %inf, align 8, !dbg !75     ; [debug line = 21:4]
  br label %13, !dbg !75                          ; [debug line = 21:4]

; <label>:29                                      ; preds = %24
  br label %30, !dbg !76                          ; [debug line = 23:3]

; <label>:30                                      ; preds = %37, %29
  %31 = load i64* %sup, align 8, !dbg !76         ; [#uses=1 type=i64] [debug line = 23:3]
  %32 = load i64** %3, align 8, !dbg !76          ; [#uses=1 type=i64*] [debug line = 23:3]
  %33 = getelementptr inbounds i64* %32, i64 %31, !dbg !76 ; [#uses=1 type=i64*] [debug line = 23:3]
  %34 = load i64* %33, align 8, !dbg !76          ; [#uses=1 type=i64] [debug line = 23:3]
  %35 = load i64* %pivot, align 8, !dbg !76       ; [#uses=1 type=i64] [debug line = 23:3]
  %36 = icmp sgt i64 %34, %35, !dbg !76           ; [#uses=1 type=i1] [debug line = 23:3]
  br i1 %36, label %37, label %40, !dbg !76       ; [debug line = 23:3]

; <label>:37                                      ; preds = %30
  %38 = load i64* %sup, align 8, !dbg !77         ; [#uses=1 type=i64] [debug line = 24:4]
  %39 = add nsw i64 %38, -1, !dbg !77             ; [#uses=1 type=i64] [debug line = 24:4]
  store i64 %39, i64* %sup, align 8, !dbg !77     ; [debug line = 24:4]
  br label %30, !dbg !77                          ; [debug line = 24:4]

; <label>:40                                      ; preds = %30
  %41 = load i64* %inf, align 8, !dbg !78         ; [#uses=1 type=i64] [debug line = 27:3]
  %42 = load i64* %sup, align 8, !dbg !78         ; [#uses=1 type=i64] [debug line = 27:3]
  %43 = add nsw i64 %42, 1, !dbg !78              ; [#uses=1 type=i64] [debug line = 27:3]
  %44 = icmp slt i64 %41, %43, !dbg !78           ; [#uses=1 type=i1] [debug line = 27:3]
  br i1 %44, label %45, label %49, !dbg !78       ; [debug line = 27:3]

; <label>:45                                      ; preds = %40
  %46 = load i64* %inf, align 8, !dbg !79         ; [#uses=1 type=i64] [debug line = 28:4]
  %47 = load i64* %sup, align 8, !dbg !79         ; [#uses=1 type=i64] [debug line = 28:4]
  %48 = load i64** %3, align 8, !dbg !79          ; [#uses=1 type=i64*] [debug line = 28:4]
  call void @swap(i64 %46, i64 %47, i64* %48), !dbg !79 ; [debug line = 28:4]
  br label %50, !dbg !79                          ; [debug line = 28:4]

; <label>:49                                      ; preds = %40
  br label %51, !dbg !80                          ; [debug line = 30:4]

; <label>:50                                      ; preds = %45
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 32:2]
  br label %12, !dbg !81                          ; [debug line = 32:2]

; <label>:51                                      ; preds = %49
  %52 = load i64* %1, align 8, !dbg !82           ; [#uses=1 type=i64] [debug line = 34:2]
  %53 = load i64* %sup, align 8, !dbg !82         ; [#uses=1 type=i64] [debug line = 34:2]
  %54 = load i64** %3, align 8, !dbg !82          ; [#uses=1 type=i64*] [debug line = 34:2]
  call void @swap(i64 %52, i64 %53, i64* %54), !dbg !82 ; [debug line = 34:2]
  %55 = load i64* %sup, align 8, !dbg !83         ; [#uses=1 type=i64] [debug line = 35:2]
  ret i64 %55, !dbg !83                           ; [debug line = 35:2]
}

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @quicksort(i64 %i, i64 %f, i64* %a) nounwind uwtable {
  %1 = alloca i64, align 8                        ; [#uses=2 type=i64*]
  %2 = alloca i64, align 8                        ; [#uses=2 type=i64*]
  %3 = alloca i64*, align 8                       ; [#uses=3 type=i64**]
  %stack = alloca [10 x [2 x i64]], align 16      ; [#uses=7 type=[10 x [2 x i64]]*]
  %stack_size = alloca i64, align 8               ; [#uses=13 type=i64*]
  %top = alloca i64*, align 8                     ; [#uses=7 type=i64**]
  %pivot_position = alloca i64, align 8           ; [#uses=4 type=i64*]
  %base = alloca i64, align 8                     ; [#uses=3 type=i64*]
  store i64 %i, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !84), !dbg !85 ; [debug line = 39:29] [debug variable = i]
  store i64 %f, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !86), !dbg !87 ; [debug line = 39:45] [debug variable = f]
  store i64* %a, i64** %3, align 8
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !88), !dbg !89 ; [debug line = 39:60] [debug variable = a]
  %4 = load i64** %3, align 8, !dbg !90           ; [#uses=1 type=i64*] [debug line = 40:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i64* %4, i32 10) nounwind, !dbg !90 ; [debug line = 40:2]
  call void @llvm.dbg.declare(metadata !{[10 x [2 x i64]]* %stack}, metadata !92), !dbg !97 ; [debug line = 41:14] [debug variable = stack]
  call void @llvm.dbg.declare(metadata !{i64* %stack_size}, metadata !98), !dbg !99 ; [debug line = 42:15] [debug variable = stack_size]
  store i64 -1, i64* %stack_size, align 8, !dbg !100 ; [debug line = 42:30]
  call void @llvm.dbg.declare(metadata !{i64** %top}, metadata !101), !dbg !103 ; [debug line = 45:16] [debug variable = top]
  %5 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 0, !dbg !104 ; [#uses=1 type=[2 x i64]*] [debug line = 45:30]
  %6 = getelementptr inbounds [2 x i64]* %5, i32 0, i32 0, !dbg !104 ; [#uses=1 type=i64*] [debug line = 45:30]
  store i64* %6, i64** %top, align 8, !dbg !104   ; [debug line = 45:30]
  call void @llvm.dbg.declare(metadata !{i64* %pivot_position}, metadata !105), !dbg !106 ; [debug line = 47:15] [debug variable = pivot_position]
  store i64 0, i64* %pivot_position, align 8, !dbg !107 ; [debug line = 47:33]
  call void @llvm.dbg.declare(metadata !{i64* %base}, metadata !108), !dbg !109 ; [debug line = 48:15] [debug variable = base]
  store i64 0, i64* %base, align 8, !dbg !110     ; [debug line = 48:23]
  %7 = load i64* %1, align 8, !dbg !111           ; [#uses=1 type=i64] [debug line = 50:2]
  %8 = load i64* %stack_size, align 8, !dbg !111  ; [#uses=1 type=i64] [debug line = 50:2]
  %9 = add nsw i64 %8, 1, !dbg !111               ; [#uses=2 type=i64] [debug line = 50:2]
  store i64 %9, i64* %stack_size, align 8, !dbg !111 ; [debug line = 50:2]
  %10 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %9, !dbg !111 ; [#uses=1 type=[2 x i64]*] [debug line = 50:2]
  %11 = getelementptr inbounds [2 x i64]* %10, i32 0, i64 0, !dbg !111 ; [#uses=1 type=i64*] [debug line = 50:2]
  store i64 %7, i64* %11, align 8, !dbg !111      ; [debug line = 50:2]
  %12 = load i64* %2, align 8, !dbg !112          ; [#uses=1 type=i64] [debug line = 51:2]
  %13 = load i64* %stack_size, align 8, !dbg !112 ; [#uses=1 type=i64] [debug line = 51:2]
  %14 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %13, !dbg !112 ; [#uses=1 type=[2 x i64]*] [debug line = 51:2]
  %15 = getelementptr inbounds [2 x i64]* %14, i32 0, i64 1, !dbg !112 ; [#uses=1 type=i64*] [debug line = 51:2]
  store i64 %12, i64* %15, align 8, !dbg !112     ; [debug line = 51:2]
  br label %16, !dbg !112                         ; [debug line = 51:2]

; <label>:16                                      ; preds = %0
  br label %17, !dbg !113                         ; [debug line = 53:2]

; <label>:17                                      ; preds = %59, %16
  %18 = load i64* %stack_size, align 8, !dbg !113 ; [#uses=1 type=i64] [debug line = 53:2]
  %19 = icmp sge i64 %18, 0, !dbg !113            ; [#uses=1 type=i1] [debug line = 53:2]
  br i1 %19, label %20, label %63, !dbg !113      ; [debug line = 53:2]

; <label>:20                                      ; preds = %17
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 54:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 10, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !116 ; [debug line = 55:1]
  %21 = load i64** %top, align 8, !dbg !117       ; [#uses=1 type=i64*] [debug line = 55:3]
  %22 = getelementptr inbounds i64* %21, i64 0, !dbg !117 ; [#uses=1 type=i64*] [debug line = 55:3]
  %23 = load i64* %22, align 8, !dbg !117         ; [#uses=1 type=i64] [debug line = 55:3]
  %24 = load i64** %top, align 8, !dbg !117       ; [#uses=1 type=i64*] [debug line = 55:3]
  %25 = getelementptr inbounds i64* %24, i64 1, !dbg !117 ; [#uses=1 type=i64*] [debug line = 55:3]
  %26 = load i64* %25, align 8, !dbg !117         ; [#uses=1 type=i64] [debug line = 55:3]
  %27 = icmp slt i64 %23, %26, !dbg !117          ; [#uses=1 type=i1] [debug line = 55:3]
  br i1 %27, label %28, label %56, !dbg !117      ; [debug line = 55:3]

; <label>:28                                      ; preds = %20
  %29 = load i64** %top, align 8, !dbg !118       ; [#uses=1 type=i64*] [debug line = 57:21]
  %30 = getelementptr inbounds i64* %29, i64 0, !dbg !118 ; [#uses=1 type=i64*] [debug line = 57:21]
  %31 = load i64* %30, align 8, !dbg !118         ; [#uses=1 type=i64] [debug line = 57:21]
  %32 = load i64** %top, align 8, !dbg !118       ; [#uses=1 type=i64*] [debug line = 57:21]
  %33 = getelementptr inbounds i64* %32, i64 1, !dbg !118 ; [#uses=1 type=i64*] [debug line = 57:21]
  %34 = load i64* %33, align 8, !dbg !118         ; [#uses=1 type=i64] [debug line = 57:21]
  %35 = load i64** %3, align 8, !dbg !118         ; [#uses=1 type=i64*] [debug line = 57:21]
  %36 = call i64 @partition(i64 %31, i64 %34, i64* %35), !dbg !118 ; [#uses=1 type=i64] [debug line = 57:21]
  store i64 %36, i64* %pivot_position, align 8, !dbg !118 ; [debug line = 57:21]
  %37 = load i64** %top, align 8, !dbg !120       ; [#uses=1 type=i64*] [debug line = 59:4]
  %38 = getelementptr inbounds i64* %37, i64 0, !dbg !120 ; [#uses=1 type=i64*] [debug line = 59:4]
  %39 = load i64* %38, align 8, !dbg !120         ; [#uses=1 type=i64] [debug line = 59:4]
  store i64 %39, i64* %base, align 8, !dbg !120   ; [debug line = 59:4]
  %40 = load i64* %pivot_position, align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 61:4]
  %41 = add nsw i64 %40, 1, !dbg !121             ; [#uses=1 type=i64] [debug line = 61:4]
  %42 = load i64* %stack_size, align 8, !dbg !121 ; [#uses=1 type=i64] [debug line = 61:4]
  %43 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %42, !dbg !121 ; [#uses=1 type=[2 x i64]*] [debug line = 61:4]
  %44 = getelementptr inbounds [2 x i64]* %43, i32 0, i64 0, !dbg !121 ; [#uses=1 type=i64*] [debug line = 61:4]
  store i64 %41, i64* %44, align 8, !dbg !121     ; [debug line = 61:4]
  %45 = load i64* %stack_size, align 8, !dbg !122 ; [#uses=1 type=i64] [debug line = 63:4]
  %46 = add nsw i64 %45, 1, !dbg !122             ; [#uses=1 type=i64] [debug line = 63:4]
  store i64 %46, i64* %stack_size, align 8, !dbg !122 ; [debug line = 63:4]
  %47 = load i64* %base, align 8, !dbg !123       ; [#uses=1 type=i64] [debug line = 64:4]
  %48 = load i64* %stack_size, align 8, !dbg !123 ; [#uses=1 type=i64] [debug line = 64:4]
  %49 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %48, !dbg !123 ; [#uses=1 type=[2 x i64]*] [debug line = 64:4]
  %50 = getelementptr inbounds [2 x i64]* %49, i32 0, i64 0, !dbg !123 ; [#uses=1 type=i64*] [debug line = 64:4]
  store i64 %47, i64* %50, align 8, !dbg !123     ; [debug line = 64:4]
  %51 = load i64* %pivot_position, align 8, !dbg !124 ; [#uses=1 type=i64] [debug line = 65:4]
  %52 = sub nsw i64 %51, 1, !dbg !124             ; [#uses=1 type=i64] [debug line = 65:4]
  %53 = load i64* %stack_size, align 8, !dbg !124 ; [#uses=1 type=i64] [debug line = 65:4]
  %54 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %53, !dbg !124 ; [#uses=1 type=[2 x i64]*] [debug line = 65:4]
  %55 = getelementptr inbounds [2 x i64]* %54, i32 0, i64 1, !dbg !124 ; [#uses=1 type=i64*] [debug line = 65:4]
  store i64 %52, i64* %55, align 8, !dbg !124     ; [debug line = 65:4]
  br label %59, !dbg !125                         ; [debug line = 67:3]

; <label>:56                                      ; preds = %20
  %57 = load i64* %stack_size, align 8, !dbg !126 ; [#uses=1 type=i64] [debug line = 69:4]
  %58 = add nsw i64 %57, -1, !dbg !126            ; [#uses=1 type=i64] [debug line = 69:4]
  store i64 %58, i64* %stack_size, align 8, !dbg !126 ; [debug line = 69:4]
  br label %59

; <label>:59                                      ; preds = %56, %28
  %60 = load i64* %stack_size, align 8, !dbg !128 ; [#uses=1 type=i64] [debug line = 73:3]
  %61 = getelementptr inbounds [10 x [2 x i64]]* %stack, i32 0, i64 %60, !dbg !128 ; [#uses=1 type=[2 x i64]*] [debug line = 73:3]
  %62 = getelementptr inbounds [2 x i64]* %61, i32 0, i32 0, !dbg !128 ; [#uses=1 type=i64*] [debug line = 73:3]
  store i64* %62, i64** %top, align 8, !dbg !128  ; [debug line = 73:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 74:2]
  br label %17, !dbg !129                         ; [debug line = 74:2]

; <label>:63                                      ; preds = %17
  ret void, !dbg !130                             ; [debug line = 75:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29, !36, !38}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/quicksort.pragma.2.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64, i64*)* @swap, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"RTL_Quicksort.prj/quicksort.c", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"TARGET_INDEX", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"TARGET_TYPE", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"partition", metadata !"partition", metadata !"", metadata !6, i32 12, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64*)* @partition, null, null, metadata !13, i32 13} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !9, metadata !9, metadata !9, metadata !11}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"quicksort", metadata !"quicksort", metadata !"", metadata !6, i32 39, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64, i64*)* @quicksort, null, null, metadata !13, i32 40} ; [ DW_TAG_subprogram ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !24, metadata !25, metadata !26}
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !22, i32 315, metadata !23, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !22, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !22, i32 316, metadata !23, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !22, i32 317, metadata !23, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !27, i32 26, metadata !28, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{void (i64, i64, i64*)* @swap, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"TARGET_INDEX", metadata !"TARGET_INDEX", metadata !"TARGET_TYPE*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"index_1", metadata !"index_2", metadata !"a"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{i64 (i64, i64, i64*)* @partition, metadata !30, metadata !31, metadata !32, metadata !33, metadata !37, metadata !35}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"init", metadata !"end", metadata !"a"}
!38 = metadata !{void (i64, i64, i64*)* @quicksort, metadata !30, metadata !31, metadata !32, metadata !33, metadata !39, metadata !35}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"f", metadata !"a"}
!40 = metadata !{i32 786689, metadata !5, metadata !"index_1", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 4, i32 24, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"index_2", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 4, i32 46, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 50331652, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 4, i32 66, metadata !5, null}
!46 = metadata !{i32 5, i32 2, metadata !47, null}
!47 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786688, metadata !47, metadata !"b", metadata !6, i32 7, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 7, i32 15, metadata !47, null}
!50 = metadata !{i32 7, i32 29, metadata !47, null}
!51 = metadata !{i32 8, i32 2, metadata !47, null}
!52 = metadata !{i32 9, i32 2, metadata !47, null}
!53 = metadata !{i32 10, i32 1, metadata !47, null}
!54 = metadata !{i32 786689, metadata !15, metadata !"init", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 12, i32 37, metadata !15, null}
!56 = metadata !{i32 786689, metadata !15, metadata !"end", metadata !6, i32 33554444, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 12, i32 56, metadata !15, null}
!58 = metadata !{i32 786689, metadata !15, metadata !"a", metadata !6, i32 50331660, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 12, i32 73, metadata !15, null}
!60 = metadata !{i32 13, i32 2, metadata !61, null}
!61 = metadata !{i32 786443, metadata !15, i32 13, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786688, metadata !61, metadata !"pivot", metadata !6, i32 14, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 14, i32 14, metadata !61, null}
!64 = metadata !{i32 14, i32 29, metadata !61, null}
!65 = metadata !{i32 786688, metadata !61, metadata !"sup", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 15, i32 15, metadata !61, null}
!67 = metadata !{i32 15, i32 24, metadata !61, null}
!68 = metadata !{i32 786688, metadata !61, metadata !"inf", metadata !6, i32 16, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 16, i32 15, metadata !61, null}
!70 = metadata !{i32 16, i32 25, metadata !61, null}
!71 = metadata !{i32 18, i32 2, metadata !61, null}
!72 = metadata !{i32 19, i32 3, metadata !73, null}
!73 = metadata !{i32 786443, metadata !61, i32 19, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 20, i32 3, metadata !73, null}
!75 = metadata !{i32 21, i32 4, metadata !73, null}
!76 = metadata !{i32 23, i32 3, metadata !73, null}
!77 = metadata !{i32 24, i32 4, metadata !73, null}
!78 = metadata !{i32 27, i32 3, metadata !73, null}
!79 = metadata !{i32 28, i32 4, metadata !73, null}
!80 = metadata !{i32 30, i32 4, metadata !73, null}
!81 = metadata !{i32 32, i32 2, metadata !73, null}
!82 = metadata !{i32 34, i32 2, metadata !61, null}
!83 = metadata !{i32 35, i32 2, metadata !61, null}
!84 = metadata !{i32 786689, metadata !18, metadata !"i", metadata !6, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 39, i32 29, metadata !18, null}
!86 = metadata !{i32 786689, metadata !18, metadata !"f", metadata !6, i32 33554471, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 39, i32 45, metadata !18, null}
!88 = metadata !{i32 786689, metadata !18, metadata !"a", metadata !6, i32 50331687, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 39, i32 60, metadata !18, null}
!90 = metadata !{i32 40, i32 2, metadata !91, null}
!91 = metadata !{i32 786443, metadata !18, i32 40, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786688, metadata !91, metadata !"stack", metadata !6, i32 41, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !12, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!94 = metadata !{metadata !95, metadata !96}
!95 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!96 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!97 = metadata !{i32 41, i32 14, metadata !91, null}
!98 = metadata !{i32 786688, metadata !91, metadata !"stack_size", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 42, i32 15, metadata !91, null}
!100 = metadata !{i32 42, i32 30, metadata !91, null}
!101 = metadata !{i32 786688, metadata !91, metadata !"top", metadata !6, i32 45, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!103 = metadata !{i32 45, i32 16, metadata !91, null}
!104 = metadata !{i32 45, i32 30, metadata !91, null}
!105 = metadata !{i32 786688, metadata !91, metadata !"pivot_position", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 47, i32 15, metadata !91, null}
!107 = metadata !{i32 47, i32 33, metadata !91, null}
!108 = metadata !{i32 786688, metadata !91, metadata !"base", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 48, i32 15, metadata !91, null}
!110 = metadata !{i32 48, i32 23, metadata !91, null}
!111 = metadata !{i32 50, i32 2, metadata !91, null}
!112 = metadata !{i32 51, i32 2, metadata !91, null}
!113 = metadata !{i32 53, i32 2, metadata !91, null}
!114 = metadata !{i32 54, i32 3, metadata !115, null}
!115 = metadata !{i32 786443, metadata !91, i32 54, i32 2, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 55, i32 1, metadata !115, null}
!117 = metadata !{i32 55, i32 3, metadata !115, null}
!118 = metadata !{i32 57, i32 21, metadata !119, null}
!119 = metadata !{i32 786443, metadata !115, i32 56, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 59, i32 4, metadata !119, null}
!121 = metadata !{i32 61, i32 4, metadata !119, null}
!122 = metadata !{i32 63, i32 4, metadata !119, null}
!123 = metadata !{i32 64, i32 4, metadata !119, null}
!124 = metadata !{i32 65, i32 4, metadata !119, null}
!125 = metadata !{i32 67, i32 3, metadata !119, null}
!126 = metadata !{i32 69, i32 4, metadata !127, null}
!127 = metadata !{i32 786443, metadata !115, i32 67, i32 8, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 73, i32 3, metadata !115, null}
!129 = metadata !{i32 74, i32 2, metadata !115, null}
!130 = metadata !{i32 75, i32 1, metadata !91, null}
