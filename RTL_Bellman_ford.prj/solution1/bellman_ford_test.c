#include "bellman_ford.h"


void make_oriented(float graph[SIZE][SIZE])
{
	for(TARGET_INDEX i = 0; i < SIZE; i++)
	{
		graph[i][i] = -1;

		/* Makes the last node the goal node */
		graph[SIZE-1][i] = -1;

		for(TARGET_INDEX j = 0;
			j < SIZE;
			j++)
		{
			if(graph[i][j] < 0
				&& i != j
				&& graph[i][j] != -1 )
			{
				graph[i][j] *= -1;
				graph[j][i] = -1;
			}
			else
			{

				if(graph[j][i] >= 0)
					graph[i][j] = -1;
			}
		}
	}
}

int check_errors(TARGET_TYPE swdist[SIZE], TARGET_TYPE hwdist[SIZE])
{
	int8_t err_cnt;
	for(int8_t i=0;
		i<SIZE;
		i++)
	{
		if(swdist[i]!=hwdist[i])
			err_cnt++;
	}
	return err_cnt;
}

void sw_bellman_ford(float graph[SIZE][SIZE], TARGET_TYPE swdist[SIZE])
{
	TARGET_TYPE total_edges = 0;
	for(TARGET_INDEX it = 0;
			it < SIZE;
			it++)
		{
			for(TARGET_INDEX jt = 0;
				jt < SIZE;
				jt++)
			{
				if(graph[it][jt] != -1)
					++total_edges;
			}
		}

	for(TARGET_INDEX k = 0;
		k < SIZE;
		k++)
	{
		swdist[k] = 127;
	}

	swdist[0] = 0;

	for(TARGET_INDEX i = 0;
		i < SIZE;
		i++)
	{
		for(TARGET_INDEX j = 0;
			j < total_edges;
			j++)
		{
			if(swdist[j] + graph[j][i] <= swdist[i] &&
				graph[j][i] != -1)
			{
				swdist[i] = swdist[j] + graph[j][i];
			}
		}
	}
}


int main()
{
	float hw_graph[SIZE][SIZE];
	make_oriented(hw_graph);
	float sw_graph[SIZE][SIZE];
	make_oriented(sw_graph);

	TARGET_TYPE swdist[SIZE];
	TARGET_TYPE hwdist[SIZE];

	sw_bellman_ford(sw_graph, swdist);
	bellman_ford(hw_graph, hwdist);

	return check_errors(swdist,hwdist);
}
