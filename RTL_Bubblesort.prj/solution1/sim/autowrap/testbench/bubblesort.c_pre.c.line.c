#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c"
#pragma line 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.h" 1
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
#pragma line 5 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
void bubble_sort(long arr[10]);
#pragma line 2 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c" 2
#pragma empty_line
#pragma empty_line
void swap(int8_t index_1, int8_t index_2, long arr[10])
{
 long b = arr[index_1];
 arr[index_1] = arr[index_2];
 arr[index_2] = b;
}
#pragma empty_line
void bubble_sort(long arr[10])
{
 int8_t i;
 int8_t j;
 int8_t is_sorted;
 int8_t currentSwap;
 int8_t lastSwap = 10 -1;
 FOR1:
 for(j = 0; j < 10; j++)
 {
  is_sorted = (int8_t) 1;
  currentSwap = -1;
  FOR2:
  for(i = 0; i < lastSwap; i++)
  {
   if(arr[i] > arr[i+1])
   {
    swap(i,i+1,arr);
    is_sorted = 0;
    currentSwap = i;
   }
  }
#pragma empty_line
  if(is_sorted) break;
  lastSwap = currentSwap;
 }
}
