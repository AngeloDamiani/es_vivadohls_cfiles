#include "quicksort.h"
#include <stdio.h>

void swap2(TARGET_INDEX index_1, int8_t index_2,TARGET_TYPE a[SIZE])
{

	TARGET_INDEX b = a[index_1];
	a[index_1] = a[index_2];
	a[index_2] = b;
}

TARGET_TYPE partition2(TARGET_INDEX init, TARGET_INDEX end, TARGET_TYPE a[SIZE])
{
	TARGET_TYPE pivot = a[init];
	TARGET_INDEX sup = end;
	TARGET_INDEX inf = init;
	PARWHILE:
	while(1)
	{
		while(inf <= end && a[inf] <= pivot)
			++inf;

		while(a[sup] > pivot)
			--sup;

		//printf("%d, %d", inf, sup);
		if(inf < sup+1)
			swap2(inf, sup,a);
		else
			break;

	}

	swap2(init, sup, a);
	return sup;

}
void quicksort2(TARGET_INDEX i, TARGET_INDEX f, TARGET_TYPE a[SIZE])
{
	TARGET_INDEX stack[SIZE][2];
	TARGET_INDEX stack_size = -1;

	/* This pointer always indicates the head of the stack */
	TARGET_INDEX *top = stack[0];

	TARGET_INDEX pivot_position = 0;
	TARGET_INDEX base = 0;

	stack[++stack_size][0] = i;
	stack[stack_size][1] = f;
	QWHILE:
	while(stack_size >= 0)
	{
		if(top[0] < top[1])
		{
			pivot_position = partition2(top[0], top[1], a);

			base  = top[0];

			stack[stack_size][0] = pivot_position+1;
			//stack[size][1] = top[1];
			++stack_size;
			stack[stack_size][0] = base;
			stack[stack_size][1] = pivot_position-1;

		}else{

			stack_size--;
		}


		top = stack[stack_size];
	}
}

int main(){
	TARGET_TYPE a[] = {23,56,77,1,2,2,5,678,99,55};
	TARGET_TYPE b[] = {23,56,77,1,2,2,5,678,99,55};
	quicksort(0,SIZE-1,a);
	quicksort2(0,SIZE-1,b);
	int error = 0;
	for(int i=0; i<SIZE; i++){
	    	printf("%ld\n", a[i]);
	    	if(a[i]!= b[i]){
	    		error++;
	    	}
	}
};

