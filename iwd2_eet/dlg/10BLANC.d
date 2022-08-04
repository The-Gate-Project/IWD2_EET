BEGIN ~10BLANC~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @11504
  IF ~~ THEN EXTERN ~10BLACK~ 0
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)~ THEN BEGIN 1
  SAY @11504
  IF ~~ THEN EXTERN ~10BLACK~ 1
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 !Race(LastTalkedToBy,ELF)
 !Race(LastTalkedToBy,HALF_ELF)
 !Race(LastTalkedToBy,HALFORC)
 !Race(LastTalkedToBy,HUMAN)~ THEN BEGIN 2
  SAY @11504
  IF ~~ THEN EXTERN ~10BLACK~ 2
END

IF WEIGHT #4
~True()~ THEN BEGIN 3
  SAY @11506
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11507
  IF ~~ THEN DO ~SetGlobal("Know_Iron_Collar","GLOBAL",1)~ EXTERN ~10KICKSH~ 7
END

IF ~~ THEN BEGIN 5
  SAY @11508
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11509
  IF ~~ THEN EXTERN ~10BLACK~ 9
END

IF ~~ THEN BEGIN 7
  SAY @11510
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @11511 EXTERN ~10BLACK~ 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @11512 EXTERN ~10BLACK~ 7
  IF ~~ THEN REPLY @11513 EXTERN ~10BLACK~ 10
  IF ~~ THEN REPLY @11514 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @11515
  IF ~~ THEN REPLY @11516 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11503)
                              AddJournalEntry(@1548,QUEST)~ EXTERN ~10BLACK~ 18
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @11517 EXTERN ~10BLACK~ 17
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)
      GlobalGT("Phaen_Loses_It","GLOBAL",0)~ THEN REPLY @28159 EXTERN ~10BLACK~ 23
  IF ~~ THEN REPLY @28318 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11503)
                              DialogInterrupt(FALSE)
                              ActionOverride("Black_Geoffrey",DialogInterrupt(FALSE))
                              ActionOverride("Kickshaw",DialogInterrupt(FALSE))
                              AddJournalEntry(@37697,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @11518
  IF ~~ THEN EXTERN ~10KICKSH~ 15
END

IF ~~ THEN BEGIN 10
  SAY @11519
  IF ~~ THEN EXTERN ~10BLACK~ 19
END

IF ~~ THEN BEGIN 11
  SAY @11520
  IF ~~ THEN EXTERN ~10BLACK~ 20
END

IF WEIGHT #0
~Global("Palisade_Iron_Collar_Quest","GLOBAL",2)~ THEN BEGIN 12
  SAY @11521
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @28157
  IF ~~ THEN REPLY @28158 EXTERN ~10KICKSH~ 19
END
