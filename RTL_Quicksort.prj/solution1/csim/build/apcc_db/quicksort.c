/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void swap(signed int llvm_cbe_index_1, signed int llvm_cbe_index_2, signed int *llvm_cbe_a);
signed int partition(signed int llvm_cbe_init, signed int llvm_cbe_end, signed int *llvm_cbe_a);
void quicksort(signed int llvm_cbe_i, signed int llvm_cbe_f, signed int *llvm_cbe_a);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void swap(signed int llvm_cbe_index_1, signed int llvm_cbe_index_2, signed int *llvm_cbe_a) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  signed int *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @swap\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds i32* %%a, i32 %%index_1, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_12_count);
  llvm_cbe_tmp__1 = (signed int *)(&llvm_cbe_a[(((signed int )llvm_cbe_index_1))]);
if (AESL_DEBUG_TRACE) {
printf("\nindex_1 = 0x%X",((signed int )llvm_cbe_index_1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_13_count);
  llvm_cbe_tmp__2 = (unsigned int )*llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i32* %%a, i32 %%index_2, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__3 = (signed int *)(&llvm_cbe_a[(((signed int )llvm_cbe_index_2))]);
if (AESL_DEBUG_TRACE) {
printf("\nindex_2 = 0x%X",((signed int )llvm_cbe_index_2));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__4 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%4, i32* %%1, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_18_count);
  *llvm_cbe_tmp__1 = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%2, i32* %%3, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_19_count);
  *llvm_cbe_tmp__3 = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @swap}\n");
  return;
}


signed int partition(signed int llvm_cbe_init, signed int llvm_cbe_end, signed int *llvm_cbe_a) {
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  signed int *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned int llvm_cbe_tmp__7;
  unsigned int llvm_cbe_tmp__7__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned int llvm_cbe_tmp__8;
  unsigned int llvm_cbe_tmp__8__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__9;
  unsigned int llvm_cbe_tmp__9__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  signed int *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__13;
  unsigned int llvm_cbe_tmp__13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  signed int *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @partition\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds i32* %%a, i32 %%init, !dbg !3 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__5 = (signed int *)(&llvm_cbe_a[(((signed int )llvm_cbe_init))]);
if (AESL_DEBUG_TRACE) {
printf("\ninit = 0x%X",((signed int )llvm_cbe_init));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%1, align 4, !dbg !3 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__6 = (unsigned int )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
  llvm_cbe_tmp__7__PHI_TEMPORARY = (unsigned int )llvm_cbe_init;   /* for PHI node */
  llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned int )llvm_cbe_end;   /* for PHI node */
  goto llvm_cbe_tmp__18;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__18:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = phi i32 [ %%7, %%23 ], [ %%init, %%0  for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__7 = (unsigned int )llvm_cbe_tmp__7__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__7);
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\ninit = 0x%X",llvm_cbe_init);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = phi i32 [ %%15, %%23 ], [ %%end, %%0  for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__8 = (unsigned int )llvm_cbe_tmp__8__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__8);
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\nend = 0x%X",llvm_cbe_end);
}
  llvm_cbe_tmp__9__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__7;   /* for PHI node */
  goto llvm_cbe_tmp__19;

llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @swap(i32 %%7, i32 %%15, i32* %%a), !dbg !4 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_87_count);
   /*tail*/ swap(llvm_cbe_tmp__9, llvm_cbe_tmp__13, (signed int *)llvm_cbe_a);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__9);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__13);
}
  llvm_cbe_tmp__7__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
  llvm_cbe_tmp__8__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__13;   /* for PHI node */
  goto llvm_cbe_tmp__18;

llvm_cbe_tmp__21:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add nsw i32 %%15, 1, !dbg !4 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__9) < ((signed int )llvm_cbe_tmp__17))) {
    goto llvm_cbe_tmp__20;
  } else {
    goto llvm_cbe_tmp__22;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__23:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = phi i32 [ %%19, %%14 ], [ %%5, %%.critedge  for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__13 = (unsigned int )llvm_cbe_tmp__13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\n = 0x%X",llvm_cbe_tmp__16);
printf("\n = 0x%X",llvm_cbe_tmp__8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds i32* %%a, i32 %%15, !dbg !4 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__14 = (signed int *)(&llvm_cbe_a[(((signed int )llvm_cbe_tmp__13))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__13));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i32* %%16, align 4, !dbg !4 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__15 = (unsigned int )*llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add nsw i32 %%15, -1, !dbg !4 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__16&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__15) > ((signed int )llvm_cbe_tmp__6))) {
    llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__16;   /* for PHI node */
    goto llvm_cbe_tmp__23;
  } else {
    goto llvm_cbe_tmp__21;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_critedge:
  llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__8;   /* for PHI node */
  goto llvm_cbe_tmp__23;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = phi i32 [ %%13, %%9 ], [ %%4, %%3  for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__9 = (unsigned int )llvm_cbe_tmp__9__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\n = 0x%X",llvm_cbe_tmp__12);
printf("\n = 0x%X",llvm_cbe_tmp__7);
}
  if ((((signed int )llvm_cbe_tmp__9) > ((signed int )llvm_cbe_end))) {
    goto llvm_cbe__2e_critedge;
  } else {
    goto llvm_cbe_tmp__24;
  }

llvm_cbe_tmp__24:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds i32* %%a, i32 %%7, !dbg !3 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__10 = (signed int *)(&llvm_cbe_a[(((signed int )llvm_cbe_tmp__9))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__9));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i32* %%10, align 4, !dbg !3 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__11 = (unsigned int )*llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%7, 1, !dbg !5 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__11) > ((signed int )llvm_cbe_tmp__6))) {
    goto llvm_cbe__2e_critedge;
  } else {
    llvm_cbe_tmp__9__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__12;   /* for PHI node */
    goto llvm_cbe_tmp__19;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @swap(i32 %%init, i32 %%15, i32* %%a), !dbg !3 for 0x%I64xth hint within @partition  --> \n", ++aesl_llvm_cbe_89_count);
   /*tail*/ swap(llvm_cbe_init, llvm_cbe_tmp__13, (signed int *)llvm_cbe_a);
if (AESL_DEBUG_TRACE) {
printf("\nArgument init = 0x%X",llvm_cbe_init);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__13);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @partition}\n");
  return llvm_cbe_tmp__13;
}


void quicksort(signed int llvm_cbe_i, signed int llvm_cbe_f, signed int *llvm_cbe_a) {
  static  unsigned long long aesl_llvm_cbe_stack_count = 0;
  signed int llvm_cbe_stack[10][2];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  signed int *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned int llvm_cbe_tmp__27;
  unsigned int llvm_cbe_tmp__27__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  signed int *llvm_cbe_tmp__28;
  signed int *llvm_cbe_tmp__28__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  signed int *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  signed int *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  signed int *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  signed int *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned int llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  unsigned int llvm_cbe_tmp__41;
  unsigned int llvm_cbe_tmp__41__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  signed int *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @quicksort\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 0, i32 0, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_stack[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 10 && "Write access out of array 'stack' bound?");
  assert(((signed int )0u) < 2 && "Write access out of array 'stack' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%i, i32* %%1, align 4, !dbg !3 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_130_count);
  *llvm_cbe_tmp__25 = llvm_cbe_i;
if (AESL_DEBUG_TRACE)
printf("\ni = 0x%X\n", llvm_cbe_i);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 0, i32 1, !dbg !3 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__26 = (signed int *)(&llvm_cbe_stack[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 10 && "Write access out of array 'stack' bound?");
  assert(((signed int )1u) < 2 && "Write access out of array 'stack' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%f, i32* %%2, align 4, !dbg !3 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_132_count);
  *llvm_cbe_tmp__26 = llvm_cbe_f;
if (AESL_DEBUG_TRACE)
printf("\nf = 0x%X\n", llvm_cbe_f);
  llvm_cbe_tmp__27__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__28__PHI_TEMPORARY = (signed int *)llvm_cbe_tmp__25;   /* for PHI node */
  goto llvm_cbe_tmp__43;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = phi i32 [ 0, %%0 ], [ %%22, %%21  for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__27 = (unsigned int )llvm_cbe_tmp__27__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__27);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__41);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = phi i32* [ %%1, %%0 ], [ %%23, %%21  for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__28 = (signed int *)llvm_cbe_tmp__28__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__29 = (unsigned int )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i32* %%5, i32 1, !dbg !6 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__30 = (signed int *)(&llvm_cbe_tmp__28[(((signed int )1u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !6 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__31 = (unsigned int )*llvm_cbe_tmp__30;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
  if ((((signed int )llvm_cbe_tmp__29) < ((signed int )llvm_cbe_tmp__31))) {
    goto llvm_cbe_tmp__44;
  } else {
    goto llvm_cbe_tmp__45;
  }

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = phi i32 [ %%20, %%19 ], [ %%15, %%10  for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__41 = (unsigned int )llvm_cbe_tmp__41__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__41);
printf("\n = 0x%X",llvm_cbe_tmp__40);
printf("\n = 0x%X",llvm_cbe_tmp__36);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 %%22, i32 0, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__42 = (signed int *)(&llvm_cbe_stack[(((signed int )llvm_cbe_tmp__41))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__41));
}
  if ((((signed int )llvm_cbe_tmp__41) > ((signed int )4294967295u))) {
    llvm_cbe_tmp__27__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__41;   /* for PHI node */
    llvm_cbe_tmp__28__PHI_TEMPORARY = (signed int *)llvm_cbe_tmp__42;   /* for PHI node */
    goto llvm_cbe_tmp__43;
  } else {
    goto llvm_cbe_tmp__47;
  }

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = call i32 @partition(i32 %%6, i32 %%8, i32* %%a), !dbg !3 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__32 = (unsigned int )partition(llvm_cbe_tmp__29, llvm_cbe_tmp__31, (signed int *)llvm_cbe_a);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__29);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__31);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__32);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%5, align 4, !dbg !6 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__33 = (unsigned int )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%11, 1, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_tmp__32&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 %%4, i32 0, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__35 = (signed int *)(&llvm_cbe_stack[(((signed int )llvm_cbe_tmp__27))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__27));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__27) < 10 && "Write access out of array 'stack' bound?");
  assert(((signed int )0u) < 2 && "Write access out of array 'stack' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%13, i32* %%14, align 4, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_150_count);
  *llvm_cbe_tmp__35 = llvm_cbe_tmp__34;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add nsw i32 %%4, 1, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_151_count);
  llvm_cbe_tmp__36 = (unsigned int )((unsigned int )(llvm_cbe_tmp__27&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__36&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 %%15, i32 0, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__37 = (signed int *)(&llvm_cbe_stack[(((signed int )llvm_cbe_tmp__36))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )0u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__36));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__36) < 10 && "Write access out of array 'stack' bound?");
  assert(((signed int )0u) < 2 && "Write access out of array 'stack' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%12, i32* %%16, align 4, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_163_count);
  *llvm_cbe_tmp__37 = llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%11, -1, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__38 = (unsigned int )((unsigned int )(llvm_cbe_tmp__32&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__38&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds [10 x [2 x i32]]* %%stack, i32 0, i32 %%15, i32 1, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__39 = (signed int *)(&llvm_cbe_stack[(((signed int )llvm_cbe_tmp__36))
#ifdef AESL_BC_SIM
 % 10
#endif
][(((signed int )1u))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__36));
}

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__36) < 10 && "Write access out of array 'stack' bound?");
  assert(((signed int )1u) < 2 && "Write access out of array 'stack' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%17, i32* %%18, align 4, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_166_count);
  *llvm_cbe_tmp__39 = llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
  llvm_cbe_tmp__41__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__36;   /* for PHI node */
  goto llvm_cbe_tmp__46;

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%4, -1, !dbg !5 for 0x%I64xth hint within @quicksort  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__40 = (unsigned int )((unsigned int )(llvm_cbe_tmp__27&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__40&4294967295ull)));
  llvm_cbe_tmp__41__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__40;   /* for PHI node */
  goto llvm_cbe_tmp__46;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__47:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @quicksort}\n");
  return;
}

