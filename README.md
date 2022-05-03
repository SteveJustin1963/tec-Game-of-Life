# tec-Game-of-Life

TEC-1 code done in ASM and MINT 
 
### Simple
- Any live cell with fewer than two live neighbours dies, as if by underpopulation.
- Any live cell with two or three live neighbours lives on to the next generation.
- Any live cell with more than three live neighbours dies, as if by overpopulation.
- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction. 
 
### detail
- The program should have a graphical user interface that allows the user to specify the size of the game board, the number of generations to simulate, and the initial state of the game board.
- The program should use a two-dimensional array to represent the game board.
- Each cell on the game board should be represented by a single character.
- The program should allow the user to specify the character that represents a live cell and the character that represents a dead cell.
- The program should display the game board after each generation.
- The program should use the following rules to determine the state of each cell in the next generation:
  - If a cell is alive and has fewer than two live neighbors, it dies of loneliness.
  - If a cell is alive and has more than three live neighbors, it dies of overcrowding.
  - If a cell is alive and has two or three live neighbors, it remains alive.
  - If a cell is dead and has exactly three live neighbors, it becomes alive.
 

## Iterate

## Ref
- https://www.facebook.com/photo/?fbid=5243431972375361&set=gm.654770448946420
- https://github.com/bchiha/TEC-1D-Stuff/tree/master/code/games
- https://rosettacode.org/wiki/Conway%27s_Game_of_Life
- https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

