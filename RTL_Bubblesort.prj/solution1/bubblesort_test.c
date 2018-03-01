#include "bubblesort.h"
#include <stdio.h>

void sw_swap(TARGET_INDEX index_1, TARGET_INDEX index_2, TARGET_TYPE arr[SIZE])
{
	TARGET_INDEX b = arr[index_1];
	arr[index_1] = arr[index_2];
	arr[index_2] = b;
}

void sw_bubble_sort(long arr[SIZE])
{
	TARGET_INDEX i;
	TARGET_INDEX j;
	int8_t is_sorted;
	TARGET_INDEX currentSwap;
	TARGET_INDEX lastSwap = SIZE-1;

	for(j = 0; j < SIZE; j++)
	{
		is_sorted = (int8_t) 1;
		currentSwap = -1;
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

int main(){
	TARGET_TYPE arr[SIZE] = {732,41,671,2,567,126,123,8,23,2};
	TARGET_TYPE sw_arr[SIZE] = {732,41,671,2,567,126,123,8,23,2};

	bubble_sort(arr);
	sw_bubble_sort(sw_arr);

	int err_cnt = 0;
	for(int i = 0; i<SIZE;i++){
		printf("%ld\n",arr[i]);
		if(sw_arr[i] != arr[i])
			err_cnt++;
	}


	return err_cnt;

}
