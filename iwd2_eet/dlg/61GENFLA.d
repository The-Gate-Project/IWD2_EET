BEGIN ~61GENFLA~

IF WEIGHT #1
~True()~ THEN BEGIN 0
  SAY @36830
  IF ~Global("PlayerSawAmphitheatre","MYAREA",1)~ THEN REPLY @36831 GOTO 1
  IF ~~ THEN REPLY @36832 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @36833
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36834 DO ~AddJournalEntry(@36828,QUEST)~ GOTO 6
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @36834 DO ~AddJournalEntry(@36311,QUEST)~ GOTO 2
  IF ~Global("PerformedPlay","MYAREA",0)
      Global("61CurrentDay","GLOBAL",2)
      Global("PyrosCalmLothar","MYAREA",2)~ THEN REPLY @36835 GOTO 4
  IF ~~ THEN REPLY @36837 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @36838
  IF ~~ THEN REPLY @36842 DO ~AddJournalEntry(@36312,QUEST)~ GOTO 3
  IF ~Global("PerformedPlay","MYAREA",0)
      Global("61CurrentDay","GLOBAL",2)
      Global("PyrosCalmLothar","MYAREA",2)~ THEN REPLY @36843 GOTO 4
  IF ~~ THEN REPLY @36837 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @36844
  IF ~Global("PerformedPlay","MYAREA",0)
      Global("61CurrentDay","GLOBAL",2)
      Global("PyrosCalmLothar","MYAREA",2)~ THEN REPLY @36843 GOTO 4
  IF ~~ THEN REPLY @36837 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @36845
  IF ~~ THEN REPLY @36846 GOTO 5
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @38215 DO ~AddJournalEntry(@36828,QUEST)~ GOTO 6
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @38215 DO ~AddJournalEntry(@36311,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @38216 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @38217
  IF ~~ THEN DO ~SetGlobal("SetNightSequence","MYAREA",1)
                 SetGlobal("PerformedPlay","MYAREA",1)
                 StartCutSceneMode()
                 ClearAllActions()
                 MultiPlayerSync()
                 StartCutScene("61cIzDea")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @38219
  IF ~~ THEN REPLY @36842 DO ~AddJournalEntry(@36829,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @36837 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @38220
  IF ~~ THEN REPLY @36837 EXIT
END

IF WEIGHT #0
~Global("61CurrentDay","GLOBAL",3)
 IsActive("05_AbominationPriest_01")~ THEN BEGIN 8
  SAY @38221
  IF ~~ THEN EXIT
END
