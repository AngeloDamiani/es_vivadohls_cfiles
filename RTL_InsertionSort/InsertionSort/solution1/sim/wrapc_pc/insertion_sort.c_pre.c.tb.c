// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/insertion_sort.c"
#1 "<built-in>"
#1 "<command-line>"
#1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/insertion_sort.c"
#1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4


#1 "/usr/include/stdint.h" 1 3 4
#25 "/usr/include/stdint.h" 3 4
#1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
#339 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
#410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#340 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#362 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
#10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
#11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#363 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
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
#4 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
#2 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/insertion_sort.c" 2
#1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/insertion_sort.h" 1





typedef float TARGET_TYPE;
typedef int TARGET_INDEX;

void insertion_sort(TARGET_TYPE arr[10]);
#3 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/InsertionSort/insertion_sort.c" 2

void insertion_sort(TARGET_TYPE arr[10]) {

 FOR_LOOP:
    for (TARGET_INDEX i = 1; i < 10; i++) {
     TARGET_TYPE key = arr[i];
     TARGET_INDEX j = i-1;

        WHILE_LOOP:
        while (j >= 0 && arr[j] > key) {

         arr[j+1] = arr[j];
            j = j-1;
        }
        arr[j+1] = key;
    }
}
