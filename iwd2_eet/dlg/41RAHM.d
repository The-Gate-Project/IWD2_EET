BEGIN ~41RAHM~

IF ~~ THEN BEGIN 0
  SAY @7478
  IF ~~ THEN REPLY @7479 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @7482
  IF ~OR(2)
        Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @37438 EXTERN ~41INGRAT~ 1
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37439 EXTERN ~41INGRAT~ 1
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @37440 EXTERN ~41INGRAT~ 1
  IF ~~ THEN REPLY @7483 EXTERN ~41INGRAT~ 1
  IF ~~ THEN REPLY @7484 EXTERN ~41INGRAT~ 1
  IF ~~ THEN REPLY @7485 EXTERN ~41INGRAT~ 1
END

IF ~~ THEN BEGIN 2
  SAY @7486
  IF ~~ THEN EXTERN ~41INGRAT~ 2
END

IF ~~ THEN BEGIN 3
  SAY @7490
  IF ~~ THEN EXTERN ~41INGRAT~ 3
END

IF ~~ THEN BEGIN 4
  SAY @7491
  IF ~~ THEN REPLY @7492 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @7493
  IF ~~ THEN DO ~AddJournalEntry(@7477,QUEST)~ EXTERN ~41INGRAT~ 4
END

IF ~~ THEN BEGIN 6
  SAY @7494
  IF ~!Global("41Ingrath_Deliver","GLOBAL",2)~ THEN REPLY @7495 EXIT
  IF ~Global("41Ingrath_Deliver","GLOBAL",2)~ THEN REPLY @7495 DO ~EraseJournalEntry(@25120)
                                                                   EraseJournalEntry(@25119)
                                                                   EraseJournalEntry(@28450)
                                                                   AddJournalEntry(@32557,QUEST)
                                                                   StartCutSceneMode()
                                                                   StartCutScene("50Letter")~ EXIT
END

IF WEIGHT #1
~True()~ THEN BEGIN 7
  SAY @7496 
  IF ~~ THEN REPLY @7497 DO ~AddJournalEntry(@7502,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @7495 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7498
  IF ~~ THEN REPLY @7499 EXIT
END

IF WEIGHT #0
~Global("41Rahm","GLOBAL",1)~ THEN BEGIN 9
  SAY @7500
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @7501
  IF ~~ THEN REPLY @7497 DO ~SetGlobal("41Rahm","GLOBAL",2)
                             AddJournalEntry(@7502,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @7495 DO ~SetGlobal("41Rahm","GLOBAL",2)~ EXIT
END
