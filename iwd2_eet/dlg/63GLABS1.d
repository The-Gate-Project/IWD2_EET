BEGIN ~63GLABS1~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26493
  IF ~~ THEN REPLY @26506 DO ~AddJournalEntry(@26486,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @26507 DO ~AddJournalEntry(@26486,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @26508 DO ~AddJournalEntry(@26486,QUEST)~ GOTO 3
  IF ~Global("SH_Demon_Guard","GLOBAL",1)~ THEN REPLY @26509 DO ~AddXP2DA("IW2EX14E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@26491)
                                                                 AddJournalEntry(@26487,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @26511
  IF ~~ THEN REPLY @26507 GOTO 2
  IF ~~ THEN REPLY @26508 GOTO 3
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @26512
  IF ~~ THEN REPLY @26506 GOTO 1
  IF ~~ THEN REPLY @26508 GOTO 3
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @26513
  IF ~~ THEN REPLY @26514 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @26515
  IF ~~ THEN REPLY @26516 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @26517
  IF ~~ THEN REPLY @26520 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @26521
  IF ~~ THEN REPLY @26522 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @26523
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @26524
  IF ~~ THEN REPLY @26525 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26492)
                              SetGlobal("SH_Demon_Guard","GLOBAL",2)
                              AddJournalEntry(@26488,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @26532
  IF ~~ THEN REPLY @26533 DO ~AddJournalEntry(@26489,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @26534 DO ~Enemy()
                              SetGlobal("SH_Slain_GlabS1","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @26535
  IF ~~ THEN REPLY @26536 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 11
  SAY @26537
  IF ~~ THEN REPLY @26506 GOTO 1
  IF ~~ THEN REPLY @26507 GOTO 2
  IF ~~ THEN REPLY @26508 GOTO 3
  IF ~Global("SH_Demon_Guard","GLOBAL",1)~ THEN REPLY @26509 DO ~SetGlobal("SH_Demon_Guard","GLOBAL",2)~ GOTO 8
  IF ~Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @26540 GOTO 12
  IF ~Global("SH_Demon_Guard","GLOBAL",2)~ THEN REPLY @34233 GOTO 12
  IF ~~ THEN REPLY @26510 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @26541
  IF ~~ THEN REPLY @26542 DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~Global("SH_Slain_GlabS1","GLOBAL",1)~ THEN BEGIN 13
  SAY @26543
  IF ~Global("SH_Demon_Secret","GLOBAL",0)~ THEN REPLY @26544 GOTO 9
  IF ~Global("SH_Demon_Secret","GLOBAL",1)~ THEN REPLY @26545 GOTO 9
  IF ~~ THEN REPLY @26568 DO ~SetGlobal("SH_Slain_GlabS1","GLOBAL",2)
                              AddJournalEntry(@26490,QUEST)~ EXIT
END

IF WEIGHT #1
~//SubRace(LastTalkedToBy, Human_Aasimar)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))
 NumTimesTalkedTo(0)~ THEN BEGIN 14
  SAY @37798
  IF ~~ THEN REPLY @37799 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @37800
  IF ~~ THEN REPLY @2450 GOTO 1
  IF ~~ THEN REPLY @10683 GOTO 2
  IF ~~ THEN REPLY @26406 GOTO 3
  IF ~Global("SH_Demon_Guard","GLOBAL",1)~ THEN REPLY @26509 GOTO 8
  IF ~~ THEN REPLY @2155 EXIT
END

IF WEIGHT #2
~//SubRace(LastTalkedToBy, Human_Tiefling)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
 NumTimesTalkedTo(0)~ THEN BEGIN 16
  SAY @37805
  IF ~~ THEN REPLY @37806 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37807
  IF ~~ THEN REPLY @2450 GOTO 1
  IF ~~ THEN REPLY @10683 GOTO 2
  IF ~~ THEN REPLY @26406 GOTO 3
  IF ~Global("SH_Demon_Guard","GLOBAL",1)~ THEN REPLY @26509 GOTO 8
  IF ~~ THEN REPLY @2155 EXIT
END
