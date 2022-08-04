BEGIN ~50CHILD~

IF WEIGHT #1
~RandomNum(3,1)
 NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6610
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatGT(LastTalkedToBy,11,CON)~ THEN REPLY @319 DO ~GiveGoldForce(5)
                                                              GiveItemCreate("z0genir",LastTalkedToBy,1,0,0)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @319 DO ~Enemy()~ GOTO 7
  IF ~~ THEN REPLY @37876 EXIT
END

IF WEIGHT #2
~RandomNum(3,2)
 NumberOfTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @6613
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatGT(LastTalkedToBy,11,CON)~ THEN REPLY @319 DO ~GiveGoldForce(5)
                                                              GiveItemCreate("z0genir",LastTalkedToBy,1,0,0)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @319 DO ~Enemy()~ GOTO 7
  IF ~~ THEN REPLY @37876 EXIT
END

IF WEIGHT #3
~RandomNumLT(3,4)
 NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @6614
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatGT(LastTalkedToBy,11,CON)~ THEN REPLY @319 DO ~GiveGoldForce(5)
                                                              GiveItemCreate("z0genir",LastTalkedToBy,1,0,0)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @319 DO ~Enemy()~ GOTO 7
  IF ~~ THEN REPLY @37876 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 3
  SAY @6615
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatGT(LastTalkedToBy,11,CON)~ THEN REPLY @319 DO ~GiveGoldForce(5)
                                                              GiveItemCreate("z0genir",LastTalkedToBy,1,0,0)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @319 DO ~Enemy()~ GOTO 7
  IF ~~ THEN REPLY @37876 EXIT
END

IF WEIGHT #5
~True()~ THEN BEGIN 4
  SAY @6616
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatGT(LastTalkedToBy,11,CON)~ THEN REPLY @319 DO ~GiveGoldForce(5)
                                                              GiveItemCreate("z0genir",LastTalkedToBy,1,0,0)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,MONK)
      CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @319 DO ~Enemy()~ GOTO 7
  IF ~~ THEN REPLY @37876 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 5
  SAY @37870
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @37881
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @37882
  IF ~~ THEN EXIT
END
