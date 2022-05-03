// c code to run Game-of-Life program on an 8x8 matrix

#include <stdio.h>

#define N 8

int main()
{
    // game board represented as an 8x8 matrix
    int board[N][N] = {
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0, 0}
    };

    // game loop
    while (1) {

        // print current game board
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%d ", board[i][j]);
            }
            printf("\n");
        }

        // compute next generation
        int next_board[N][N];

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {

                // count live neighbors
                int live_neighbors = 0;
                for (int ii = -1; ii <= 1; ii++) {
                    for (int jj = -1; jj <= 1; jj++) {
                        if (ii == 0 && jj == 0) continue; // don't count self
                        if (i + ii < 0 || i + ii >= N) continue; // out of bounds
                        if (j + jj < 0 || j + jj >= N) continue; // out of bounds
                        if (board[i+ii][j+jj]) live_neighbors++;
                    }
                }
                
                // apply game rules
                if (board[i][j]) {
                    // live cell
                    if (live_neighbors == 2 || live_neighbors == 3) {
                        // cell lives
                        next_board[i][j] = 1;
                    } else {
                        // cell dies
                        next_board[i][j] = 0;
                    }
                } else {
                    // dead cell
                    if (live_neighbors == 3) {
                        // cell comes to life
                        next_board[i][j] = 1;
                    } else {
                        // cell stays dead
                        next_board[i][j] = 0;
                    }
                }
            }
        }

        // copy next generation into current generation
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                board[i][j] = next_board[i][j];
            }
        }
    }

    return 0;
}
