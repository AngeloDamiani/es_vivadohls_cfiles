#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/mergesort.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/mergesort.c"
#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/mergesort.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/stdint.h" 1 3 4
#pragma line 25 "/usr/include/stdint.h" 3 4
#pragma line 1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
#pragma line 339 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
#pragma line 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 340 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#pragma line 362 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
#pragma line 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
#pragma line 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#pragma line 363 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#pragma line 26 "/usr/include/stdint.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
#pragma line 27 "/usr/include/stdint.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 28 "/usr/include/stdint.h" 2 3 4
#pragma line 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
#pragma empty_line
typedef long int int64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
#pragma empty_line
typedef unsigned int uint32_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned long int uint64_t;
#pragma line 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
#pragma empty_line
typedef long int int_least64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
#pragma empty_line
typedef unsigned long int uint_least64_t;
#pragma line 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;
#pragma empty_line
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
#pragma line 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;
#pragma empty_line
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
#pragma line 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;
#pragma empty_line
#pragma empty_line
typedef unsigned long int uintptr_t;
#pragma line 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
#pragma line 4 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
#pragma line 5 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/mergesort.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
void mergesort(long arr[10]);
#pragma line 2 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution1/mergesort.c" 2
#pragma empty_line
int8_t h = 0;
#pragma empty_line
#pragma empty_line
void merge(int8_t i1, long f1, long f2, long arr[10])
{
 long x[10];
 int8_t i2 = f1 + 1;
 int8_t i = 0;
 long start = i1;
 MERGE_WHILE:
 while(i1 <= f1 && i2 <= f2)
 {
  if(arr[i1] <= arr[i2])
   x[i++] = arr[i1++];
  else
   x[i++] = arr[i2++];
 }
#pragma empty_line
 if(i1 <= f1)
 {
  MERGE_FOR1:
  for(h = i1; h <= f1; h++)
   x[i++] = arr[h];
 }
 else{
  MERGE_FOR2:
  for(h = i2; h <= f2; h++)
   x[i++] = arr[h];
 }
#pragma empty_line
 MERGE_FOR3:
 for(h = start, i = 0; h <= f2; h++)
  arr[h] = x[i++];
}
#pragma empty_line
#pragma empty_line
long min(long c, long b)
{
 return c < b ? c : b;
}
#pragma empty_line
void mergesort(long arr[10])
{
 long m = 0;
 long x = 0;
 FOR1:
 for(m = 1; m <= 10 -1; m *= 2)
 {
  FOR2:
  for(x = 0; x < 10 -1; x += (2*m))
  {
   merge(x, x+m-1, min(x + 2*m - 1, 10 -1), arr);
   }
 }
}
