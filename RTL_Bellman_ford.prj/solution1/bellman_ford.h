#ifndef __BELLMAN_FORD_H__
#define __BELLMAN_FORD_H__

#include <stdint.h>

#define SIZE 10

typedef long TARGET_TYPE;
typedef long TARGET_INDEX;

void bellman_ford(float graph[SIZE][SIZE], TARGET_TYPE hwdist[SIZE]);

#endif
