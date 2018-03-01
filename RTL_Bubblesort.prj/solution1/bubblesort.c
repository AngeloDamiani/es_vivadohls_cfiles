#include "bubblesort.h"


void swap(TARGET_INDEX index_1, TARGET_INDEX index_2, TARGET_TYPE arr[SIZE])
{
	TARGET_INDEX b = arr[index_1];
	arr[index_1] = arr[index_2];
	arr[index_2] = b;
}

void bubble_sort(TARGET_TYPE arr[SIZE])
{
	TARGET_INDEX i;
	TARGET_INDEX j;
	int8_t is_sorted;
	TARGET_INDEX currentSwap;
	TARGET_INDEX lastSwap = SIZE-1;
	FOR1:
	for(j = 0; j < SIZE; j++)
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
