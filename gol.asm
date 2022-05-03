
 
; game of life in z80 opcodes ; 
; input: 
; a = number of iterations ; 
; output: 
; hl = address of game board ; 
; game board is a 2-dimensional array of bytes, 
; with dimensions given by constants BOARD_WIDTH and BOARD_HEIGHT ; 
; game board is stored in row-major order, 
; i.e. row 0 is at hl, row 1 is at hl+BOARD_WIDTH, etc. ld hl, game_board 
; load game board address ld a, iterations 
; load number of iterations game_of_life: 
; game loop ; ... ; ; 
; update game board ; ; ... ; ; 
; check for end condition ; ; ... 
; dec a 
; decrement iteration count jr nz, game_of_life 
; continue if not done ; ; 
; done ; ; ...
