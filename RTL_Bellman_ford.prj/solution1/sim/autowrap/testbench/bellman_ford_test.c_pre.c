# 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/bellman_ford_test.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/bellman_ford_test.c"
# 1 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/bellman_ford.h" 1



# 1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 1 3 4


# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 1 3 4
# 339 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 340 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
# 362 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 363 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include-fixed/features.h" 2 3 4
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
# 4 "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado_HLS/2017.2/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stdint.h" 2 3 4
# 5 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/bellman_ford.h" 2



typedef long TARGET_TYPE;
typedef long TARGET_INDEX;

void bellman_ford(float graph[10][10], TARGET_TYPE hwdist[10]);
# 2 "/home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_bellman_ford.prj/solution1/bellman_ford_test.c" 2


void make_oriented(float graph[10][10])
{
 for(TARGET_INDEX i = 0; i < 10; i++)
 {
  graph[i][i] = -1;


  graph[10 -1][i] = -1;

  for(TARGET_INDEX j = 0;
   j < 10;
   j++)
  {
   if(graph[i][j] < 0
    && i != j
    && graph[i][j] != -1 )
   {
    graph[i][j] *= -1;
    graph[j][i] = -1;
   }
   else
   {

    if(graph[j][i] >= 0)
     graph[i][j] = -1;
   }
  }
 }
}

int check_errors(TARGET_TYPE swdist[10], TARGET_TYPE hwdist[10])
{
 int8_t err_cnt;
 for(int8_t i=0;
  i<10;
  i++)
 {
  if(swdist[i]!=hwdist[i])
   err_cnt++;
 }
 return err_cnt;
}

void sw_bellman_ford(float graph[10][10], TARGET_TYPE swdist[10])
{
 TARGET_TYPE total_edges = 0;
 for(TARGET_INDEX it = 0;
   it < 10;
   it++)
  {
   for(TARGET_INDEX jt = 0;
    jt < 10;
    jt++)
   {
    if(graph[it][jt] != -1)
     ++total_edges;
   }
  }

 for(TARGET_INDEX k = 0;
  k < 10;
  k++)
 {
  swdist[k] = 127;
 }

 swdist[0] = 0;

 for(TARGET_INDEX i = 0;
  i < 10;
  i++)
 {
  for(TARGET_INDEX j = 0;
   j < total_edges;
   j++)
  {
   if(swdist[j] + graph[j][i] <= swdist[i] &&
    graph[j][i] != -1)
   {
    swdist[i] = swdist[j] + graph[j][i];
   }
  }
 }
}


int main()
{
 float hw_graph[10][10];
 make_oriented(hw_graph);
 float sw_graph[10][10];
 make_oriented(sw_graph);

 TARGET_TYPE swdist[10];
 TARGET_TYPE hwdist[10];

 sw_bellman_ford(sw_graph, swdist);
 bellman_ford(hw_graph, hwdist);

 return check_errors(swdist,hwdist);
}
