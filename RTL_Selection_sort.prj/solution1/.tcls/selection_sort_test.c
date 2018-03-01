#include "../selection_sort.h"
#include <stdio.h>

int main(){
	float arr[] = {732,41,671,2,567,126,123,8,23,2};
	float c_arr[] = {2,2,8,23,41,123,126,567,671,732};
	selection_sort(arr);
	int err_cnt = 0;
	for(int i = 0; i<N;i++){
		if(c_arr[i] != arr[i])
			err_cnt++;
	}
	return err_cnt;
}
