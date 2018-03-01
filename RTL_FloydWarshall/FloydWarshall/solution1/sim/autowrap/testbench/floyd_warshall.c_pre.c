# 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c"
# 1 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.h" 1



# 1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4


# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
# 339 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 340 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
# 362 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 363 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 4 "/home/elva/Programs/Xilinx/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
# 5 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.h" 2

typedef uint32_t TARGET_TYPE;
typedef uint8_t TARGET_INDEX;



void floyd_warshall(TARGET_TYPE A[10][10]);
# 2 "/home/elva/Documents/ProgettoEmbedded/VivadoHLS/FloydWarshall/floyd_warshall.c" 2





void floyd_warshall(TARGET_TYPE A[10][10]) {

 TARGET_INDEX i, j, h;

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
