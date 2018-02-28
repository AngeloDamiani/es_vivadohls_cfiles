#include "banker_algorithm.h"
#include <stdio.h>

int main()
{
	uint32_t available[R] = {2, 3, 2};
    uint32_t max[P][R] = {{6, 4, 2},{3, 2, 2},{7, 0, 1},{3, 3, 3}};
    uint32_t allocated[P][R] = {{0, 1, 0},{2, 0, 0},{3, 0, 2},{2, 1, 1}};
    void create_needs(max, allocated);
    int result_hw = banker_algorithm(available, allocated, max);
    int result_sw = banker_algorithm2(available, allocated, max);


    int error = 0;
    if(result_hw != result_sw)    {
    	error++;
    	printf("I due risultati non combaciano: %d", error);

    }


}

uint32_t banker_algorithm2(uint32_t available[R], uint32_t allocated[P][R], uint32_t max[P][R], uint32_t need[P][R])
    {

    	create_needs(need,max,allocated);
    	for(uint8_t i = 0;
    		i < P;
    		i++)
    	{
    		for(uint8_t j = 0;
    			j < R;
    			j++)
    		{
    			available[j] -= need[i][j];
    			allocated[i][j] += need[i][j];

    			int8_t found = 0;
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
