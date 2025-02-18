# tec-Game-of-Life


https://github.com/bchiha/TEC-1D-Stuff/tree/master/code/games
 
## acknowledgement
Craig Hart and Scott Faulkner have both created versions of John Conway's Game of Life using different hardware and programming languages.

- Craig's version uses an SPI2C board and an 84x48 LCD display, Craig has also shared the code for his version on Github.
- Scott's version is on an Arduino mega with a 24x16 LED array.  
- Ken Stone mentions that he has seen an art piece created with a similar concept by someone named Peter W Scott.
- Břīåñ CHIHД,
  - https://github.com/bchiha/TEC-1D-Stuff/blob/master/code/games
 
 
```
Each cell evolves based on the number of cells surrounding it

Basic cell rules:

Any live cell with two or three live neighbours survives
Any dead cell with three live neighbours becomes a live cell
All other live cells die in the next generation, similarly all other dead cells stay dead

To play:
Run the program and watch
Use the keyboard to select random starting cell position or pre-defined cells
Press a key at anytime to start a new animation

Keyboard options include:
0: Random
5: Glider
A: R-pentomino
F: Fumarole
1: Blinkers
6: Why Not
B: Carnival
+: Phoenix
2: Toad
7: Boat
C: Arrow
-: Pacman
3: Beacon
8: Barbers Pole
D: Square
GO: Octagon
4: Pulsar
9: Drummer
E: Face
AD: Heart

To run, the program requires either a 4k7 resistor between the
NMI and D6 or the DAT expansion board fitted to port 3

The 8x8 LED board is fitted to ports 5 and 6 with the port
select strobe of the left hand latch going to port 6

Press 'GO' to start with a random cell placement

Press '+' or '-' to cycle through pre-defined cell placement

Press the above keys at anytime to restart a simulation

Enjoy life taking on its own.
```
