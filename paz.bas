1 P%=0:DIM S$(16):R=RND(-TIME):TM%=10:ON INTERVAL=50 GOSUB 10
2 CLS:PRINT P%"PTS":R=RND(1):L=25*R:IF R>(1-R) THEN M=0:N=L-1:ELSE M=L+1:N=25
3 TM%=10:FOR I%=0 TO 15: R=RND(1) : S$(I%) = CHR$(65+R*(N-M)+M): NEXT I%:K%=0
4 A$=CHR$(65+L):T%=RND(1)*3+1:FOR I%=0 TO T%-1:K%=K%+RND(1)*4+1:S$(K%)=A$:NEXT
5 FOR I%=0 TO 3: FOR J%=0 TO 3: LOCATE 10+(I%*2),5+(J%*2): PRINT S$(I%*4+j%)
6 NEXT J%:NEXT I%:LOCATE 10, 3: PRINT T%"TIMES":INTERVAL ON: rem PRINT A$
7 KR$=INKEY$:if TM%=0 then 2:ELSE if KR$="" OR KR$<"a" OR KR$>"z" then 7
8 KR$=CHR$(ASC(KR$)-32):LOCATE10,15:PRINT KR$:C%=0:FOR I%=0TO15:if S$(I%)=KR$ THEN C%=C%+1
9 NEXT:INTERVAL OFF:LOCATE12,15:PRINT C%:IF C%=T%then P%=P%+TM%:GOTO2:else P%=P%-TM%:goto2
10 IF TM%=0 THEN RETURN: ELSE TM%=TM%-1:LOCATE 15, 0:PRINT TM%" SECS":RETURN


100 SET BEEP 2,3 : BEEP : goto 20

120 for I%=1 to 10: set scroll RND(1)*10, RND(1)*10: next : set scroll 0, 0 : goto 20
