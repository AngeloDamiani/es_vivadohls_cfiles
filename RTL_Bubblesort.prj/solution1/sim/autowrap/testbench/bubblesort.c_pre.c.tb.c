// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c"
#1 "<built-in>"
#1 "<command-line>"
#1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c"
#1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.h" 1



#1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4


#1 "/usr/include/stdint.h" 1 3 4
#25 "/usr/include/stdint.h" 3 4
#1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
#339 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
#410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#340 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#362 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
#10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
#11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#363 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#26 "/usr/include/stdint.h" 2 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
#27 "/usr/include/stdint.h" 2 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#28 "/usr/include/stdint.h" 2 3 4
#36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
#65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
#90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
#103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
#119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
#134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
#4 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
#5 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.h" 2



void bubble_sort(long arr[10]);
#2 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Bubblesort.prj/solution1/bubblesort.c" 2


void swap(int8_t index_1, int8_t index_2, long arr[10])
{
 long b = arr[index_1];
 arr[index_1] = arr[index_2];
 arr[index_2] = b;
}

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

  if(is_sorted) break;
  lastSwap = currentSwap;
 }
}