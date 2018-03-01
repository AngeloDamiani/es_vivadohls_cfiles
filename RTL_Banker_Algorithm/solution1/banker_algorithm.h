#ifndef __BANKERALG_H__
#define __BANKERALG_H__

#include <stdint.h>

#define P 4
#define R 3

typedef long TARGET_INDEX;
typedef long TARGET_TYPE;


TARGET_TYPE banker_algorithm(TARGET_TYPE available[R], TARGET_TYPE allocated[P][R], TARGET_TYPE max[P][R], TARGET_TYPE need[P][R]);

#endif
