#include "floyd_warshall.h"

/*
 * The graph is represented by a distance matrix containing the costs of edges between nodes
 */

void floyd_warshall(TARGET_TYPE A[N][N]) {

	TARGET_INDEX i, j, h;

	OUTER_LOOP:
	for(h = 0; h < N; h++) {
		MIDDLE_LOOP:
		for(i = 0; i < N; i++) {
			INNER_LOOP:
			for(j = 0; j < N; j++) {
				if((A[i][h] + A[h][j]) < A[i][j])
					A[i][j] = A[i][h] + A[h][j];
			}
		}
	}
}
