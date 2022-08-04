BEGIN ~61LOTHAR~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @36059
  IF ~~ THEN REPLY @36060 GOTO 2
  IF ~Global("PyrosMentionedIzbelah","MYAREA",1)
      !Global("61CurrentDay","GLOBAL",0)
      Global("SetNightSequence","MYAREA",0)~ THEN REPLY @36061 GOTO 3
  IF ~~ THEN REPLY @36062 EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 1
  SAY @36063
  IF ~~ THEN REPLY @36060 GOTO 2
  IF ~Global("PyrosMentionedIzbelah","MYAREA",1)
      !Global("61CurrentDay","GLOBAL",0)
      Global("SetNightSequence","MYAREA",0)~ THEN REPLY @36061 GOTO 3
  IF ~~ THEN REPLY @36064 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @36065
  IF ~Global("PyrosMentionedIzbelah","MYAREA",1)
      !Global("61CurrentDay","GLOBAL",0)
      Global("SetNightSequence","MYAREA",0)~ THEN REPLY @36061 GOTO 3
  IF ~~ THEN REPLY @36066 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @36067
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @36070
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36071 DO ~AddJournalEntry(@36055,QUEST)~ GOTO 5
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36071 DO ~AddJournalEntry(@36056,QUEST)~ GOTO 6
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @36071 DO ~AddJournalEntry(@36057,QUEST)~ GOTO 7
  IF ~Global("61CurrentDay","GLOBAL",1)~ THEN REPLY @36071 DO ~AddJournalEntry(@36058,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @36066 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @36073
  IF ~~ THEN REPLY @36074 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @36075
  IF ~~ THEN REPLY @36074 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @38339
  IF ~~ THEN REPLY @36074 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @38499
  IF ~~ THEN REPLY @36074 EXIT
END

IF WEIGHT #0
~GlobalGT("LotharDestroyEmbassy","MYAREA",0)~ THEN BEGIN 9
  SAY @41165
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(1)
 Global("PlayerCanRequestExit","MYAREA",1)~ THEN BEGIN 10
  SAY @41166
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @41167
  IF ~~ THEN EXTERN ~61PYROS~ 22
END

IF ~~ THEN BEGIN 12
  SAY @41168
  IF ~~ THEN EXTERN ~61VENOMI~ 15
END

IF ~~ THEN BEGIN 13
  SAY @41169
  IF ~~ THEN EXTERN ~61VENOMI~ 16
END

IF ~~ THEN BEGIN 14
  SAY @41170
  IF ~~ THEN DO ~StartCutSceneMode()
                 ClearAllActions()
                 MultiPlayerSync()
                 StartCutScene("61cVeSol")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @41171
  IF ~~ THEN EXTERN ~61PYROS~ 24
END

IF ~~ THEN BEGIN 16
  SAY @41373
  IF ~~ THEN EXIT
END
