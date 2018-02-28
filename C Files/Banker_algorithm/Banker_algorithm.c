#include "Banker_algorithm.h"
#include <stdint.h>
#include <stdio.h>


//Function to find the need of each process
void create_needs(uint32_t need[P][R], uint32_t max[P][R], uint32_t allocated[P][R])
{
	for(uint8_t i = 0;
		i < P;
		i++)
	{
		for(uint8_t j = 0;
			j < R;
			j++)
		{
			//Need of instance = maxm instance - allocated instance
			need[i][j] = max[i][j] - allocated[i][j];
		}
	}

}

uint32_t banker_algorithm(uint32_t available[R], uint32_t allocated[P][R], uint32_t max[P][R], uint32_t need[P][R])
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
