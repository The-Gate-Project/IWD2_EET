BEGIN ~62MDARF~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2960
  IF ~~ THEN EXTERN ~62SARALO~ 0
END

IF ~~ THEN BEGIN 1
  SAY @3000
  IF ~~ THEN DO ~SetGlobal("Fight_Saralon","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("62cHlyWr")~ EXIT
END

IF ~Global("Fight_Saralon","GLOBAL",1)~ THEN BEGIN 2
  SAY @3001
  IF ~Global("Kill_Mdarfein_Quest","GLOBAL",1)~ THEN REPLY @3002 GOTO 5
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @35426 GOTO 3
  IF ~//!ClassEx(LastTalkedToBy,Paladin)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @24593 GOTO 3
  IF ~~ THEN REPLY @24596 DO ~StartCutSceneMode()
                              StartCutScene("62cHlyW1")
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @24597
  IF ~~ THEN REPLY @24598 GOTO 4
  IF ~~ THEN REPLY @25730 DO ~StartCutSceneMode()
                              StartCutScene("62cHlyW1")
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @26843
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("62cHlyW1")
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27443
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("62cHlyW1")
                 Enemy()~ EXIT
END
