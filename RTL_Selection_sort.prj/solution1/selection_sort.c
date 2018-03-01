#include "selection_sort.h"
#include <stdio.h>

void swap(TARGET_INDEX index_1, TARGET_INDEX index_2, TARGET_TYPE arr[N])
{
  float b = arr[index_1];
  arr[index_1] = arr[index_2];
  arr[index_2] = b;
}

void selection_sort(TARGET_TYPE arr[N])
{
  TARGET_INDEX min_idx = 0;

  for (TARGET_INDEX i = 0; i < N-1; i++)
  {
    min_idx = i;

    for (TARGET_INDEX j = i+1; j < N; j++)
      if (arr[j] < arr[min_idx])
        min_idx = j;

      swap(min_idx, i, arr);
    }
}

