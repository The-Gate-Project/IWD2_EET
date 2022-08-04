BEGIN ~63NEWXAV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @37469
  IF ~~ THEN REPLY @37470 GOTO 1
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @37472
  IF ~~ THEN REPLY @37473 DO ~AddJournalEntry(@37459,QUEST)~ GOTO 2
  IF ~!Global("SH_Twins_Away","GLOBAL",1)~ THEN REPLY @37474 GOTO 33
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @37475 GOTO 18
  IF ~Global("SH_Need_Pass","GLOBAL",1)
      !Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37476 GOTO 15
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @37477
  IF ~Global("SH_Jackass_XP","GLOBAL",0)~ THEN REPLY @37478 DO ~AddXP2DA("IW2EX14E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@37465)
                                                                SetGlobal("SH_Jackass_XP","GLOBAL",1)~ GOTO 3
  IF ~Global("SH_Jackass_XP","GLOBAL",1)~ THEN REPLY @37478 GOTO 3
  IF ~~ THEN REPLY @37479 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @37480
  IF ~~ THEN REPLY @37479 GOTO 4
  IF ~~ THEN REPLY @37481 GOTO 39
END

IF ~~ THEN BEGIN 4
  SAY @37482
  IF ~~ THEN REPLY @37483 GOTO 5
  IF ~~ THEN REPLY @37484 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @37485
  IF ~~ THEN REPLY @37486 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @37487
  IF ~~ THEN REPLY @37483 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @37488
  IF ~~ THEN REPLY @37489 DO ~AddJournalEntry(@37460,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @37490
  IF ~~ THEN REPLY @37479 GOTO 9
  IF ~~ THEN REPLY @37491 GOTO 38
  IF ~~ THEN REPLY @37492 GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @37493
  IF ~~ THEN REPLY @37494 DO ~SetGlobal("SH_Know_Envoy","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @37495 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @37496
  IF ~Global("SH_Envoy_Xp","GLOBAL",0)~ THEN REPLY @37497 DO ~AddXP2DA("IW2EX14E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@37466)
                                                              SetGlobal("SH_Envoy_Xp","GLOBAL",1)
                                                              AddJournalEntry(@37461,QUEST)~ GOTO 14
  IF ~Global("SH_Envoy_Xp","GLOBAL",1)~ THEN REPLY @37497 GOTO 14
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @37475 GOTO 18
  IF ~Global("SH_Need_Pass","GLOBAL",1)
      !Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37476 DO ~SetGlobal("SH_Has_Pass","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @37498
  IF ~~ THEN REPLY @37499 GOTO 5
END

IF ~~ THEN BEGIN 12
  SAY @37500
  IF ~~ THEN REPLY @37501 GOTO 9
END

IF ~~ THEN BEGIN 13
  SAY @37502
  IF ~~ THEN REPLY @37494 DO ~SetGlobal("SH_Know_Envoy","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 14
  SAY @37503
  IF ~!Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37504 DO ~SetGlobal("SH_Know_Pudu","GLOBAL",1)
                                                               AddJournalEntry(@37462,QUEST)~ GOTO 15
  IF ~Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37505 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @37506
  IF ~~ THEN REPLY @37507 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @37508
  IF ~~ THEN REPLY @37509 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@37467)
                              SetGlobal("SH_Has_Pass","GLOBAL",1)
                              GiveItemCreate("z6gendp",LastTalkedToBy,1,0,0)
                              EraseJournalEntry(@6231)
                              EraseJournalEntry(@36175)
                              EraseJournalEntry(@36176)
                              EraseJournalEntry(@36177)
                              EraseJournalEntry(@27058)
                              EraseJournalEntry(@27060)
                              AddJournalEntry(@37463,QUEST)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37510
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @37475 GOTO 18
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @37511
  IF ~~ THEN REPLY @37473 GOTO 2
  IF ~~ THEN REPLY @37512 GOTO 30
  IF ~GlobalGT("SH_Demon_Guard","GLOBAL",0)~ THEN REPLY @37513 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @37514
  IF ~~ THEN REPLY @37515 GOTO 20
  IF ~~ THEN REPLY @37516 GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @37517
  IF ~~ THEN REPLY @37518 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @37519
  IF ~Global("SH_Demon_Guard","GLOBAL",1)~ THEN REPLY @37520 DO ~SetGlobal("SH_Xavier_Slaves","GLOBAL",1)~ GOTO 22
  IF ~Global("SH_Demon_Guard","GLOBAL",2)~ THEN REPLY @37521 DO ~SetGlobal("SH_Xavier_Slaves","GLOBAL",1)~ GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @37522
  IF ~~ THEN REPLY @37523 GOTO 24
  IF ~~ THEN REPLY @37524 GOTO 40
END

IF ~~ THEN BEGIN 23
  SAY @37525
  IF ~~ THEN REPLY @37523 GOTO 24
  IF ~~ THEN REPLY @37524 GOTO 40
END

IF ~~ THEN BEGIN 24
  SAY @37526
  IF ~~ THEN REPLY @37527 DO ~AddJournalEntry(@37464,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37528
  IF ~!Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37529 GOTO 26
  IF ~Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37529 GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @37530
  IF ~~ THEN REPLY @37531 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@37468)
                              GiveItemCreate("z6gendp",LastTalkedToBy,1,0,0)
                              StartCutScene("63cXavie")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @37532
  IF ~~ THEN REPLY @37531 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@37468)
                              StartCutScene("63cXavie")~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 28
  SAY @37533
  IF ~~ THEN REPLY @37534 GOTO 29
  IF ~!Global("SH_Twins_Away","GLOBAL",1)~ THEN REPLY @37474 GOTO 33
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @37475 GOTO 18
  IF ~Global("SH_Need_Pass","GLOBAL",1)
      !Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37476 DO ~SetGlobal("SH_Has_Pass","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @37535
  IF ~~ THEN REPLY @37470 GOTO 1
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @37536
  IF ~GlobalGT("SH_Demon_Guard","GLOBAL",0)~ THEN REPLY @37537 GOTO 31
  IF ~~ THEN REPLY @37538 GOTO 32
END

IF ~~ THEN BEGIN 31
  SAY @37539
  IF ~~ THEN REPLY @37513 GOTO 19
END

IF ~~ THEN BEGIN 32
  SAY @37540
  IF ~~ THEN REPLY @37541 GOTO 2
  IF ~Global("SH_Need_Pass","GLOBAL",1)
      !Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37476 DO ~SetGlobal("SH_Has_Pass","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @37542
  IF ~~ THEN REPLY @37543 GOTO 34
  IF ~~ THEN REPLY @37544 GOTO 36
END

IF ~~ THEN BEGIN 34
  SAY @37545
  IF ~~ THEN REPLY @37546 GOTO 36
  IF ~~ THEN REPLY @37547 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @37548
  IF ~~ THEN REPLY @37549 GOTO 36
  IF ~~ THEN REPLY @37550 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @37551
  IF ~~ THEN REPLY @37552 DO ~SetGlobal("SH_Twins_Away","GLOBAL",1)~ GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @37553
  IF ~~ THEN REPLY @37473 DO ~AddJournalEntry(@37459,QUEST)~ GOTO 2
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @37475 GOTO 18
  IF ~Global("SH_Need_Pass","GLOBAL",1)
      !Global("SH_Has_Pass","GLOBAL",1)~ THEN REPLY @37476 GOTO 15
  IF ~~ THEN REPLY @37471 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @37554
  IF ~~ THEN REPLY @37479 GOTO 9
  IF ~~ THEN REPLY @37492 GOTO 12
END

IF ~~ THEN BEGIN 39
  SAY @37555
  IF ~~ THEN REPLY @37556 GOTO 4
END

IF ~~ THEN BEGIN 40
  SAY @37557
  IF ~~ THEN REPLY @37527 DO ~AddJournalEntry(@37464,QUEST)~ GOTO 25
END
