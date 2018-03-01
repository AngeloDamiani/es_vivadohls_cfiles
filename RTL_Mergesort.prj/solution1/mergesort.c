#include "mergesort.h"

int8_t h = 0;


void merge(TARGET_INDEX i1, TARGET_INDEX f1, TARGET_INDEX f2, TARGET_TYPE arr[SIZE])
{
	long x[SIZE];
	TARGET_INDEX i2 = f1 + 1;
	TARGET_INDEX i = 0;
	long start = i1;
	MERGE_WHILE:
	while(i1 <= f1 && i2 <= f2)
	{
		if(arr[i1] <= arr[i2])
			x[i++] = arr[i1++];
		else
			x[i++] = arr[i2++];
	}

	if(i1 <= f1)
	{
		MERGE_FOR1:
		for(h = i1; h <= f1; h++)
			x[i++] = arr[h];
	}
	else{
		MERGE_FOR2:
		for(h = i2;	h <= f2; h++)
			x[i++] = arr[h];
	}

	MERGE_FOR3:
	for(h = start, i = 0; h <= f2; h++)
		arr[h] = x[i++];
}


long min(long c, long b)
{
	return c < b ? c : b;
}

void mergesort(TARGET_TYPE arr[SIZE])
{
	TARGET_INDEX m = 0;
	TARGET_INDEX x = 0;
	FOR1:
	for(m = 1; m <= SIZE-1; m *= 2)
	{
		FOR2:
		for(x = 0; x < SIZE-1; x += (2*m))
		{
			merge(x, x+m-1, min(x + 2*m - 1, SIZE-1), arr);
 		}
	}
}
