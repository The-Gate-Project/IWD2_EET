BEGIN ~30TEQUOG~

IF WEIGHT #3
~Global("30Know_Pass_Xvim","GLOBAL",1)~ THEN BEGIN 0
  SAY @31850
  IF ~~ THEN REPLY @31851 GOTO 1
  IF ~~ THEN REPLY @31852 GOTO 1
  IF ~~ THEN REPLY @31853 GOTO 2
  IF ~~ THEN REPLY @31854 GOTO 1
  IF ~~ THEN REPLY @31855 GOTO 1
  IF ~~ THEN REPLY @31858 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31859
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31862
  IF ~~ THEN DO ~SetGlobal("30Know_Pass_Xvim","GLOBAL",2)~ EXIT
END

IF WEIGHT #2
~Global("30Know_Pass_Xvim","GLOBAL",2)~ THEN BEGIN 3
  SAY @32278
  IF ~~ THEN REPLY @16720 EXIT
  IF ~~ THEN REPLY @2501 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                             Enemy()~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @31850
  IF ~~ THEN REPLY @31851 GOTO 1
  IF ~~ THEN REPLY @31852 GOTO 1
  IF ~~ THEN REPLY @31854 GOTO 1
  IF ~~ THEN REPLY @31855 GOTO 1
  IF ~~ THEN REPLY @31858 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                              Enemy()~ EXIT
END

IF WEIGHT #1
~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN BEGIN 5
  SAY @32279
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADIlquag","GLOBAL",0)~ THEN BEGIN 6
  SAY @33964
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END
