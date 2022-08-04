BEGIN ~11DEAGLE~

IF WEIGHT #1
~Global("Know_Deagle","GLOBAL",0)~ THEN BEGIN 0
  SAY @27039
  IF ~~ THEN REPLY @27040 DO ~SetGlobal("Know_Deagle","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @27041 DO ~SetGlobal("Know_Deagle","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @27043
  IF ~~ THEN REPLY @27044 EXIT
  IF ~~ THEN REPLY @27045 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @27046
  IF ~~ THEN REPLY @27047 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @27048
  IF ~~ THEN REPLY @27044 EXIT
  IF ~~ THEN REPLY @27045 GOTO 2
END

IF WEIGHT #2
~GlobalGT("Know_Deagle","GLOBAL",0)~ THEN BEGIN 4
  SAY @27049
  IF ~~ THEN REPLY @27047 EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADGarradun","GLOBAL",0)
 Global("Deagle_Dop","GLOBAL",0)~ THEN BEGIN 5
  SAY @27050
  IF ~Global("Know_Deagle","GLOBAL",0)~ THEN REPLY @27051 DO ~SetGlobal("Know_Deagle","GLOBAL",1)
                                                              SetGlobal("Deagle_Dop","GLOBAL",1)~ GOTO 1
  IF ~Global("Know_Deagle","GLOBAL",0)~ THEN REPLY @27052 DO ~SetGlobal("Know_Deagle","GLOBAL",1)
                                                              SetGlobal("Deagle_Dop","GLOBAL",1)~ GOTO 3
  IF ~Global("Know_Deagle","GLOBAL",1)~ THEN REPLY @27053 DO ~SetGlobal("Deagle_Dop","GLOBAL",1)~ EXIT
END
