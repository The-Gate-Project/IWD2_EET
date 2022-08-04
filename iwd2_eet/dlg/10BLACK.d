BEGIN ~10BLACK~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @1508
  IF ~~ THEN EXTERN ~10KICKSH~ 4
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)~ THEN BEGIN 1
  SAY @1508
  IF ~~ THEN EXTERN ~10KICKSH~ 5
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 Global("Know_Iron_Collar","GLOBAL",0)
 !Race(LastTalkedToBy,ELF)
 !Race(LastTalkedToBy,HALF_ELF)
 !Race(LastTalkedToBy,HALFORC)
 !Race(LastTalkedToBy,HUMAN)~ THEN BEGIN 2
  SAY @1508
  IF ~~ THEN EXTERN ~10KICKSH~ 6
END

IF ~~ THEN BEGIN 3
  SAY @1511
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)
      Global("Know_Iron_Collar","GLOBAL",0)~ THEN REPLY @1512 GOTO 14
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)
      Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @28027 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1513 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1514 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1515 GOTO 4
  IF ~~ THEN REPLY @1516 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @1517
  IF ~~ THEN EXTERN ~10BLANC~ 4
END

IF ~~ THEN BEGIN 5
  SAY @1518
  IF ~~ THEN EXTERN ~10BLANC~ 4
END

IF ~~ THEN BEGIN 6
  SAY @1519
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1520 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1521 GOTO 7
  IF ~~ THEN REPLY @1522 GOTO 8
  IF ~~ THEN REPLY @1523 EXTERN ~10KICKSH~ 12
  IF ~~ THEN REPLY @1524 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1525
  IF ~~ THEN DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",2)~ EXTERN ~10KICKSH~ 9
END

IF ~~ THEN BEGIN 8
  SAY @1526
  IF ~~ THEN EXTERN ~10BLANC~ 6
END

IF ~~ THEN BEGIN 9
  SAY @1527
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1520 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1521 GOTO 7
  IF ~~ THEN REPLY @1529 DO ~SetGlobal("Know_Phaen_Cormyr","GLOBAL",1)
                             AddJournalEntry(@1505,QUEST)~ EXTERN ~10KICKSH~ 10
  IF ~~ THEN REPLY @1530 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1531
  IF ~~ THEN EXTERN ~10KICKSH~ 11
END

IF ~~ THEN BEGIN 11
  SAY @1532
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1520 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1521 GOTO 7
  IF ~~ THEN REPLY @1530 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1533
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1520 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1521 GOTO 7
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1514 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1515 GOTO 4
  IF ~~ THEN REPLY @1522 GOTO 8
  IF ~~ THEN REPLY @1530 EXIT
END

IF WEIGHT #4
~True()~ THEN BEGIN 13
  SAY @1534
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)
      Global("Know_Iron_Collar","GLOBAL",0)~ THEN REPLY @1512 GOTO 14
  IF ~Global("Palisade_Iron_Collar_Quest","GLOBAL",1)
      Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @28028 GOTO 14
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("Brogan_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1521 GOTO 7
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1514 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1515 GOTO 4
  IF ~~ THEN REPLY @1522 GOTO 8
  IF ~~ THEN REPLY @1523 EXTERN ~10KICKSH~ 12
  IF ~~ THEN REPLY @1530 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1535
  IF ~~ THEN EXTERN ~10KICKSH~ 13
END

IF ~~ THEN BEGIN 15
  SAY @1536
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @1537
  IF ~~ THEN EXTERN ~10BLANC~ 8
END

IF ~~ THEN BEGIN 17
  SAY @1539
  IF ~~ THEN REPLY @1540 GOTO 18
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @1541 EXTERN ~10KICKSH~ 14
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)
      GlobalGT("Phaen_Loses_It","GLOBAL",0)~ THEN REPLY @28152 GOTO 23
  IF ~~ THEN REPLY @28313 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@11503)
                              DialogInterrupt(FALSE)
                              ActionOverride("Blanchard",DialogInterrupt(FALSE))
                              ActionOverride("Kickshaw",DialogInterrupt(FALSE))
                              AddJournalEntry(@37697,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @1542
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
                 ActionOverride("Blanchard",DialogInterrupt(FALSE))
                 ActionOverride("Kickshaw",DialogInterrupt(FALSE))
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1543
  IF ~~ THEN EXTERN ~10BLANC~ 11
END

IF ~~ THEN BEGIN 20
  SAY @1544
  IF ~~ THEN DO ~AddXP2DA("IW2EX2A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@1507)
                 AddJournalEntry(@1506,QUEST)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @1545
  IF ~~ THEN REPLY @1546 DO ~SetGlobal("Palisade_Iron_Collar_Quest","GLOBAL",2)~ EXIT
END

IF WEIGHT #0
~Global("Palisade_Iron_Collar_Quest","GLOBAL",2)~ THEN BEGIN 22
  SAY @1547
  IF ~~ THEN REPLY @1546 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @28146
  IF ~~ THEN REPLY @28160 EXTERN ~10KICKSH~ 18
END

IF ~~ THEN BEGIN 24
  SAY @28147
  IF ~~ THEN REPLY @28150 DO ~AddXP2DA("IW2EX2A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@1507)
                              AddJournalEntry(@28151,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @28148
  IF ~~ THEN REPLY @28149 DO ~SetGlobal("Palisade_Iron_Collar_Quest","GLOBAL",2)~ EXIT
END
