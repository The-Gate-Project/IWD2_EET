BEGIN ~60MEZROW~

IF WEIGHT #1
~!Global("Katchmat_Talked","GLOBAL",1)~ THEN BEGIN 0
  SAY @30711
  IF ~~ THEN EXTERN ~60KATCHM~ 0
END

IF WEIGHT #2
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,1)~ THEN BEGIN 1
  SAY @30713
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,2)~ THEN BEGIN 2
  SAY @30714
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,3)~ THEN BEGIN 3
  SAY @30715
  IF ~~ THEN EXIT
END

IF WEIGHT #5
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,4)~ THEN BEGIN 4
  SAY @30716
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,5)~ THEN BEGIN 5
  SAY @30717
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~Global("Katchmat_Talked","GLOBAL",1)
 RandomNum(6,6)~ THEN BEGIN 6
  SAY @30718
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("SPRITE_IS_DEADThe_Guardian","GLOBAL",1)~ THEN BEGIN 7
  SAY @30719
  IF ~~ THEN EXIT
END
