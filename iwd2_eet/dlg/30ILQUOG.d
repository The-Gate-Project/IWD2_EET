BEGIN ~30ILQUOG~

IF WEIGHT #3
~Global("30Know_Pass_Xvim","GLOBAL",1)~ THEN BEGIN 0
  SAY @31863
  IF ~~ THEN REPLY @31864 GOTO 1
  IF ~~ THEN REPLY @31865 GOTO 1
  IF ~~ THEN REPLY @31866 GOTO 2
  IF ~~ THEN REPLY @31868 GOTO 1
  IF ~~ THEN REPLY @32048 GOTO 1
  IF ~~ THEN REPLY @32049 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @32165
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @32168
  IF ~~ THEN DO ~SetGlobal("30Know_Pass_Xvim","GLOBAL",2)~ EXIT
END

IF WEIGHT #2
~Global("30Know_Pass_Xvim","GLOBAL",2)~ THEN BEGIN 3
  SAY @32276
  IF ~~ THEN REPLY @16720 EXIT
  IF ~~ THEN REPLY @31858 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                              Enemy()~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @31863
  IF ~~ THEN REPLY @31864 GOTO 1
  IF ~~ THEN REPLY @31865 GOTO 1
  IF ~~ THEN REPLY @31868 GOTO 1
  IF ~~ THEN REPLY @32048 GOTO 1
  IF ~~ THEN REPLY @32049 DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                              Enemy()~ EXIT
END

IF WEIGHT #1
~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN BEGIN 5
  SAY @32277
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADTequag","GLOBAL",0)~ THEN BEGIN 6
  SAY @33965
  IF ~~ THEN DO ~SetGlobal("Pissed_Off_Lacky","GLOBAL",1)
                 Enemy()~ EXIT
END
