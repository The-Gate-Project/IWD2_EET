BEGIN ~63DROTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26597
  IF ~~ THEN REPLY @26598 GOTO 1
  IF ~~ THEN REPLY @26599 GOTO 4
  IF ~~ THEN REPLY @26600 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @26601
  IF ~~ THEN REPLY @26602 GOTO 2
  IF ~~ THEN REPLY @26603 GOTO 3
  IF ~~ THEN REPLY @26600 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @26604
  IF ~~ THEN REPLY @26599 GOTO 4
  IF ~~ THEN REPLY @26605 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @26606
  IF ~~ THEN REPLY @26607 GOTO 2
  IF ~~ THEN REPLY @26599 GOTO 4
  IF ~~ THEN REPLY @26600 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @26608
  IF ~~ THEN REPLY @26609 DO ~AddJournalEntry(@26576,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @26610
  IF ~~ THEN REPLY @26607 GOTO 2
  IF ~PartyHasItem("z6bookgk")~ THEN REPLY @26611 GOTO 6
  IF ~~ THEN REPLY @26600 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @26613
  IF ~!Global("SH_Symbol_Xp","GLOBAL",1)~ THEN REPLY @26614 DO ~AddXP2DA("IW2EX14E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@26596)
                                                                SetGlobal("SH_Symbol_Xp","GLOBAL",1)
                                                                AddJournalEntry(@26590,QUEST)~ GOTO 7
  IF ~Global("SH_Symbol_Xp","GLOBAL",1)~ THEN REPLY @26614 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @26615
  IF ~!Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @26616 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@26594)
                                                                     AddJournalEntry(@26591,QUEST)~ GOTO 8
  IF ~Global("SH_SGem_Destroyed","GLOBAL",1)~ THEN REPLY @26607 GOTO 2
  IF ~~ THEN REPLY @2155 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @26617
  IF ~~ THEN REPLY @26618 DO ~AddJournalEntry(@26592,QUEST)~ GOTO 9
  IF ~GlobalGT("SH_Demon_Secret","GLOBAL",0)~ THEN REPLY @26619 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @26620
  IF ~~ THEN REPLY @26621 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @26622
  IF ~~ THEN REPLY @26621 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26623
  IF ~!Global("SH_Globe_Xp","GLOBAL",1)~ THEN REPLY @26624 DO ~AddXP2DA("IW2EX14E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@26595)
                                                               SetGlobal("SH_Globe_Xp","GLOBAL",1)
                                                               AddJournalEntry(@26593,QUEST)~ GOTO 12
  IF ~Global("SH_Globe_Xp","GLOBAL",1)~ THEN REPLY @26624 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @26625
  IF ~~ THEN REPLY @26626 DO ~StartCutScene("63cDroth")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @26627
  IF ~~ THEN REPLY @26621 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 14
  SAY @26628
  IF ~~ THEN REPLY @26598 GOTO 1
  IF ~~ THEN REPLY @26599 GOTO 4
  IF ~~ THEN REPLY @26600 EXIT
END
