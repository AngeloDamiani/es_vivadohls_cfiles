#include "banker_algorithm.h"
#include <stdint.h>
#include <stdio.h>

TARGET_TYPE banker_algorithm(TARGET_TYPE available[R], TARGET_TYPE allocated[P][R], TARGET_TYPE max[P][R], TARGET_TYPE need[P][R])
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
