10 A=1

20 X=0

30 A=A+(RND(1)*2)-1

40 IF A<=0 A=1

50 IF A>=40 A=40

60 IF X=A PRINT CHR$(118); : X=X+1

70 PRINT CHR$(205.5+RND(1)); : X=X+1

80 IF X=40 X=0

90 GOTO 30
