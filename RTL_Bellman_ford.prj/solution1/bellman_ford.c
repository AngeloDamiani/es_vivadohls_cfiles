#include "bellman_ford.h"

TARGET_TYPE edge_counter(float graph[SIZE][SIZE])
{
	TARGET_TYPE total_edges = 0;

	EFOR1:
	for(TARGET_INDEX i = 0; i < SIZE; i++)
	{
		EFOR2:
		for(TARGET_INDEX j = 0; j < SIZE; j++)
		{
			if(graph[i][j] != -1)
				++total_edges;
		}
	}
	return total_edges;
}

void bellman_ford(float graph[SIZE][SIZE], TARGET_TYPE hwdist[SIZE])
{
	TARGET_TYPE total_edges = edge_counter(graph);
	FOR1:
	for(TARGET_INDEX k = 0; k < SIZE;	k++)
	{
		hwdist[k] = 127;
	}

	hwdist[0] = 0;
    FOR2:
	for(TARGET_INDEX i = 0; i < SIZE;	i++)
	{
		FOR3:
		for(TARGET_INDEX j = 0; j < total_edges; j++)
		{
			if(hwdist[j] + graph[j][i] <= hwdist[i] && graph[j][i] != -1)
			{
				hwdist[i] = hwdist[j] + graph[j][i];
			}
		}
	}
}

