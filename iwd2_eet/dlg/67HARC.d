BEGIN ~67HARC~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23093
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @23097 GOTO 1
  IF ~~ THEN REPLY @23100 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23102
  IF ~Global("SH_Spoke_To_Toral","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26675 GOTO 2
  IF ~!Global("SH_Spoke_To_Toral","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26676 GOTO 5
  IF ~~ THEN REPLY @27101 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27102
  IF ~~ THEN REPLY @27103 GOTO 3
  IF ~~ THEN REPLY @27104 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @27105
  IF ~Global("Know_Red_Bonds","GLOBAL",1)~ THEN REPLY @27106 GOTO 4
  IF ~~ THEN REPLY @38081 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @27108
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27110
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy, HALFORC)~ THEN BEGIN 6
  SAY @37996
  IF ~~ THEN REPLY @37997 GOTO 1
  IF ~~ THEN REPLY @37998 DO ~Enemy()~ EXIT
END
