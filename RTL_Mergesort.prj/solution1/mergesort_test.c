#include "mergesort.h"
#include <stdio.h>

int8_t h = 0;


void sw_merge(int8_t i1, long f1, long f2, long arr[SIZE])
{
	long x[SIZE];
	int8_t i2 = f1 + 1;
	int8_t i = 0;
	long start = i1;

	while(i1 <= f1 && i2 <= f2)
	{
		if(arr[i1] <= arr[i2])
			x[i++] = arr[i1++];
		else
			x[i++] = arr[i2++];
	}

	if(i1 <= f1)
	{
		for(h = i1; h <= f1; h++)
			x[i++] = arr[h];
	}
	else{
		for(h = i2;	h <= f2; h++)
			x[i++] = arr[h];
	}

	for(h = start, i = 0; h <= f2; h++)
		arr[h] = x[i++];
}


long sw_min(long c, long b)
{
	return c < b ? c : b;
}

void sw_mergesort(long arr[SIZE])
{
	long m = 0;
	long x = 0;

	for(m = 1; m <= SIZE-1; m *= 2)
	{
		for(x = 0; x < SIZE-1; x += (2*m))
		{
			sw_merge(x, x+m-1, sw_min(x + 2*m - 1, SIZE-1), arr);
 		}
	}
}


int main(){
	long arr[SIZE] = {732,41,671,2,567,126,123,8,23,2};
	long sw_arr[SIZE] = {732,41,671,2,567,126,123,8,23,2};

	mergesort(arr);
	sw_mergesort(sw_arr);

	int err_cnt = 0;
	for(int i = 0; i<SIZE;i++){
		printf("%ld\n",arr[i]);
		if(sw_arr[i] != arr[i])
			err_cnt++;
	}


	return err_cnt;

}
