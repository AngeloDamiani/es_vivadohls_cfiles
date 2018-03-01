#include "insertion_sort.h"
#include <stdio.h>

int main() {

	TARGET_TYPE sw_arr[] = {12,25,52,1,82,45,27,10,98,76};
	TARGET_TYPE hw_arr[] = {12,25,52,1,82,45,27,10,98,76};


	// Compute software solution
    for (TARGET_INDEX i = 1; i < N; i++) {

    	TARGET_TYPE key = sw_arr[i];
    	TARGET_INDEX j = i-1;

	    while (j >= 0 && sw_arr[j] > key) {

	    	sw_arr[j+1] = sw_arr[j];
		    j = j-1;
	    }
	    sw_arr[j+1] = key;
    }

	// Compute hardware solution;
	insertion_sort(hw_arr);

	// Check if the results match
	int err_cnt = 0;
	for(int k = 0; k < N; k++) {
		if(sw_arr[k] != hw_arr[k])
			err_cnt++;
	}
	return err_cnt;
}
