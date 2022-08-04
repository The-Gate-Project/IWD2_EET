BEGIN ~10KICKSH~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @11524
  IF ~~ THEN EXTERN ~10BLACK~ 0
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)~ THEN BEGIN 1
  SAY @11524
  IF ~~ THEN EXTERN ~10BLACK~ 1
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 !Race(LastTalkedToBy,ELF)
 !Race(LastTalkedToBy,HALF_ELF)
 !Race(LastTalkedToBy,HALFORC)
 !Race(LastTalkedToBy,HUMAN)~ THEN BEGIN 2
  SAY @11524
  IF ~~ THEN EXTERN ~10BLACK~ 2
END

IF WEIGHT #4
~True()~ THEN BEGIN 3
  SAY @11526
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11527
  IF ~~ THEN EXTERN ~10BLACK~ 3
END

IF ~~ THEN BEGIN 5
  SAY @11528
  IF ~~ THEN EXTERN ~10BLACK~ 3
END

IF ~~ THEN BEGIN 6
  SAY @11529
  IF ~~ THEN EXTERN ~10BLACK~ 3
END

IF ~~ THEN BEGIN 7
  SAY @11530
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @11531
  IF ~~ THEN EXTERN ~10BLACK~ 6
END

IF ~~ THEN BEGIN 9
  SAY @11532
  IF ~~ THEN EXTERN ~10BLANC~ 5
END

IF ~~ THEN BEGIN 10
  SAY @11533
  IF ~~ THEN EXTERN ~10BLANC~ 7
END

IF ~~ THEN BEGIN 11
  SAY @11534
  IF ~~ THEN EXTERN ~10BLACK~ 11
END

IF ~~ THEN BEGIN 12
  SAY @11535
  IF ~~ THEN EXTERN ~10BLACK~ 12
END

IF ~~ THEN BEGIN 13
  SAY @11536
  IF ~~ THEN EXTERN ~10BLACK~ 15
END

IF ~~ THEN BEGIN 14
  SAY @11537
  IF ~~ THEN REPLY @11538 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11523)
                              AddJournalEntry(@11522,QUEST)~ EXTERN ~10BLACK~ 18
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @11539 EXTERN ~10BLANC~ 9
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)
      GlobalGT("Phaen_Loses_It","GLOBAL",0)~ THEN REPLY @28156 EXTERN ~10BLACK~ 23
  IF ~~ THEN REPLY @37770 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11523)
                              DialogInterrupt(FALSE)
                              ActionOverride("Blanchard",DialogInterrupt(FALSE))
                              ActionOverride("Black_Geoffrey",DialogInterrupt(FALSE))
                              AddJournalEntry(@37771,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @11546
  IF ~~ THEN REPLY @11548 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11523)
                              AddJournalEntry(@11522,QUEST)~ EXTERN ~10BLACK~ 18
  IF ~CheckStatLT(LastTalkedToBy,12,CHR)
      CheckStatLT(LastTalkedToBy,18,STR)~ THEN REPLY @11549 GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,12,CHR)
      CheckStatGT(LastTalkedToBy,17,STR)~ THEN REPLY @11549 GOTO 16
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @11550 GOTO 16
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)
      GlobalGT("Phaen_Loses_It","GLOBAL",0)~ THEN REPLY @28155 EXTERN ~10BLACK~ 23
  IF ~~ THEN REPLY @37772 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11523)
                              DialogInterrupt(FALSE)
                              ActionOverride("Blanchard",DialogInterrupt(FALSE))
                              ActionOverride("Black_Geoffrey",DialogInterrupt(FALSE))
                              AddJournalEntry(@37771,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @11551
  IF ~~ THEN EXTERN ~10BLANC~ 10
END

IF WEIGHT #0
~Global("Palisade_Iron_Collar_Quest","GLOBAL",2)~ THEN BEGIN 17
  SAY @11552
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @28153
  IF ~~ THEN EXTERN ~10BLANC~ 13
END

IF ~~ THEN BEGIN 19
  SAY @28154
  IF ~~ THEN EXTERN ~10BLACK~ 24
END
