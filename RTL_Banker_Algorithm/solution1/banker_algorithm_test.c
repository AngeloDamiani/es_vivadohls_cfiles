#include "banker_algorithm.h"
#include <stdio.h>


void create_needs(TARGET_TYPE max[P][R], TARGET_TYPE allocated[P][R], TARGET_TYPE need[P][R])
{
	for(TARGET_INDEX i = 0;	i < P; i++)
	{
		for(TARGET_INDEX j = 0; j < R;	j++)
		{
			//Need of instance = maxm instance - allocated instance
			need[i][j] = max[i][j] - allocated[i][j];
		}
	}
}

TARGET_TYPE banker_algorithm2(TARGET_TYPE available[R], TARGET_TYPE allocated[P][R], TARGET_TYPE max[P][R], TARGET_TYPE need[P][R])
{
	for(TARGET_INDEX i = 0;
		i < P;
		i++)
	{
		for(TARGET_INDEX j = 0;
			j < R;
			j++)
		{
			available[j] -= need[i][j];
			allocated[i][j] += need[i][j];

			TARGET_TYPE found = 0;
			if( need[i][j] <= available[j] /*&&*/
				/*need[i][j] >= 0 */ )
			{
				available[j]  += allocated[i][j];
				found = 1;
			}

			if(found == 0)
				return -1;
		}
	}
	return 1;
}


int main()
{
	TARGET_TYPE available[R] = {2, 3, 2};
    TARGET_TYPE max[P][R] = {{6, 4, 2},{3, 2, 2},{7, 0, 1},{3, 3, 3}};
	TARGET_TYPE allocated[P][R] = {{0, 1, 0},{2, 0, 0},{3, 0, 2},{2, 1, 1}};
	TARGET_TYPE need[P][R];
	create_needs(max, allocated, need);
    TARGET_TYPE result_hw = banker_algorithm(available, allocated, max, need);
    TARGET_TYPE result_sw = banker_algorithm2(available, allocated, max, need);


    int error = 0;
    if(result_hw != result_sw)    {
    	error++;
    	printf("I due risultati non combaciano: %d", error);

    }


}

