#include <stdint.h>
#include "insertion_sort.h"

void insertion_sort(TARGET_TYPE arr[N]) {

	FOR_LOOP:
    for (TARGET_INDEX i = 1; i < N; i++) {
    	TARGET_TYPE key = arr[i];
    	TARGET_INDEX j = i-1;

        WHILE_LOOP:
        while (j >= 0 && arr[j] > key) {

        	arr[j+1] = arr[j];
            j = j-1;
        }
        arr[j+1] = key;
    }
}
