#pragma line 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c"
#pragma line 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/stdint.h" 1 3 4
#pragma line 25 "/usr/include/stdint.h" 3 4
#pragma line 1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
#pragma line 339 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
#pragma line 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
#pragma line 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 340 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
#pragma line 362 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
#pragma line 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
#pragma line 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#pragma line 363 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
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
#pragma line 4 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
#pragma line 5 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.h" 2
#pragma empty_line
typedef uint32_t TARGET_TYPE;
typedef uint8_t TARGET_INDEX;
#pragma empty_line
#pragma empty_line
#pragma empty_line
void floyd_warshall(TARGET_TYPE A[10][10]);
#pragma line 2 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void floyd_warshall(TARGET_TYPE A[10][10]) {
#pragma empty_line
 TARGET_INDEX i, j, h;
#pragma empty_line
 OUTER_LOOP:
 for(h = 0; h < 10; h++) {
  MIDDLE_LOOP:
  for(i = 0; i < 10; i++) {
   INNER_LOOP:
   for(j = 0; j < 10; j++) {
    if((A[i][h] + A[h][j]) < A[i][j])
     A[i][j] = A[i][h] + A[h][j];
   }
  }
 }
}
