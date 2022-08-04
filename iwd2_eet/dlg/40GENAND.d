BEGIN ~40GENAND~

IF WEIGHT #1
~GlobalGT("40AttackGoublika","GLOBAL",0)~ THEN BEGIN 0
  SAY @32932
  IF ~Global("40AttackGoublika","GLOBAL",4)~ THEN GOTO 4
  IF ~!Global("40AttackGoublika","GLOBAL",4)~ THEN EXIT
END

IF WEIGHT #2
~Dead("Odea")~ THEN BEGIN 1
  SAY @32934
  IF ~~ THEN DO ~SetGlobal("GaveWarning","LOCALS",1)~ EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 2
  SAY @32935
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("GaveWarning","LOCALS",1)~ THEN BEGIN 3
  SAY @32936
  IF ~~ THEN DO ~Enemy()
                 SetGlobal("TEAM_2","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @32937
  IF ~~ THEN EXIT
END
