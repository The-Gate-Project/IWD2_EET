BEGIN ~41CMOLML~

IF WEIGHT #1
~NumTimesTalkedToGT(0)~ THEN BEGIN 0
  SAY @41002
  IF ~~ THEN REPLY @41003 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @41004
  IF ~~ THEN REPLY @41005 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @41006
  IF ~~ THEN EXTERN ~41CMOLB1~ 12
END

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @41016
  IF ~~ THEN DO ~//JumpToPointInstant(Protagonist,[290.2340])
                 StartCutSceneMode()
                 StartCutScene("41cMOLo3")~ EXIT
END
