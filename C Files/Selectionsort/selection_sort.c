#include "selection_sort.h"
#include <stdio.h>

void swap(int8_t index_1, int8_t index_2, float arr[N])
{
  float b = arr[index_1];
  arr[index_1] = arr[index_2];
  arr[index_2] = b;
}

void selection_sort(float arr[N])
{
  int8_t min_idx = 0;

  for (int8_t i = 0;
       i < N-1;
       i++)
  {
    min_idx = i;

    for (int8_t j = i+1;
         j < N;
         j++)
      if (arr[j] < arr[min_idx])
        min_idx = j;

      swap(min_idx, i, arr);
    }
}

