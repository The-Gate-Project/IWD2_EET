BEGIN ~50CARYNA~

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8464
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8466 GOTO 3
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8467 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8468 GOTO 8
END

IF WEIGHT #2
~True()~ THEN BEGIN 1
  SAY @8469
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8466 GOTO 3
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8470 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8471 GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY @8472
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8473 GOTO 9
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8474 GOTO 9
  IF ~~ THEN REPLY @8475 GOTO 3
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8476 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8477 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @8478
  IF ~~ THEN REPLY @8479 GOTO 5
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8480 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8481 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @8483
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      OR(2)
        Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @37863 DO ~SetGlobal("50Carynara_Help","GLOBAL",1)
                                                           AddJournalEntry(@37865,QUEST)~ GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @37864 DO ~SetGlobal("50Carynara_Help","GLOBAL",1)
                                                                AddJournalEntry(@37865,QUEST)~ GOTO 10
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8466 GOTO 3
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8468 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @8484
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8486
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8487 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8471 GOTO 8
END

IF WEIGHT #1
~!Global("AR5003_DARK_TREE_CLEAR","GLOBAL",0)~ THEN BEGIN 7
  SAY @27149
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8471 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @27150
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @27151
  IF ~~ THEN REPLY @8466 GOTO 3
  IF ~!Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @8467 GOTO 4
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8477 GOTO 8
END

IF ~~ THEN BEGIN 10
  SAY @37861
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @37862
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      Global("IW5002_Visited","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                AddJournalEntry(@8461,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                     AddJournalEntry(@8462,QUEST)~ GOTO 2
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @8465 DO ~SetGlobal("50Carynara","GLOBAL",1)
                                                                      AddJournalEntry(@8463,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8466 GOTO 3
  IF ~~ THEN REPLY @3212 DO ~StartStore("50Caryna",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8477 EXIT
END
