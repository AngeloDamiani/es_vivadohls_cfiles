#ifndef __BANKERALG_H__
#define __BANKERALG_H__

#include <stdint.h>

#define P 4
#define R 3

uint32_t banker_algorithm(uint32_t available[R], uint32_t allocated[P][R], uint32_t max[P][R], uint32_t need[P][R]);

#endif
