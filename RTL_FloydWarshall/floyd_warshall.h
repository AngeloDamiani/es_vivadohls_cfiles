#ifndef __FLOYD_WARSHALL_H__
#define __FLOYD_WARSHALL_H__

#include <stdint.h>

typedef uint32_t TARGET_TYPE;
typedef uint8_t TARGET_INDEX;

#define N 10

void floyd_warshall(TARGET_TYPE A[N][N]);

#endif
