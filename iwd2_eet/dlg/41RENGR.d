BEGIN ~41RENGR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @30966
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN REPLY @30970 GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31004 GOTO 2
  IF ~OR(2)
        Kit(LastTalkedToBy,PL_HELM)
        Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @31005 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31006 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @31007 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31008
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31004 GOTO 2
  IF ~OR(2)
        Kit(LastTalkedToBy,PL_HELM)
        Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @31015 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31006 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @31016 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31017
  IF ~~ THEN REPLY @31018 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31019
  IF ~~ THEN REPLY @31022 DO ~Enemy()~ EXIT
END
