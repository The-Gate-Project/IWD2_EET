BEGIN ~67PUSJU~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23105
  IF ~~ THEN DO ~SetGlobal("SH_Pustule_irked","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~Global("SH_Pustule_irked","GLOBAL",1)~ THEN BEGIN 1
  SAY @27321
  IF ~~ THEN DO ~SetGlobal("SH_Pustule_Pissed","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~Global("SH_Pustule_Pissed","GLOBAL",1)~ THEN BEGIN 2
  SAY @28497
  IF ~~ THEN DO ~SetGlobal("SH_Pustule_Ignore","GLOBAL",1)~ EXIT
END

IF WEIGHT #3
~Global("SH_Pustule_Ignore","GLOBAL",1)~ THEN BEGIN 3
  SAY @28498
  IF ~~ THEN EXIT
END
