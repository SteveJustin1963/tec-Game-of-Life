10 PRINT "GAME OF LIFE"
20 DIM A(20,20)
30 FOR I=1 TO 20
40 FOR J=1 TO 20
50 READ A(I,J)
60 NEXT J
70 NEXT I
80 FOR I=1 TO 20
90 FOR J=1 TO 20
100 IF A(I,J)=1 THEN COLOR 3:LOCATE I,J:PRINT "*"
110 NEXT J
120 NEXT I
130 COLOR 7:LOCATE 1,1
140 END
