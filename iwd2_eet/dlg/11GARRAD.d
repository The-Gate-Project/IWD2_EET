BEGIN ~11GARRAD~

IF ~NumTimesTalkedTo(0)
    Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 0
  SAY @28453
  IF ~~ THEN REPLY @28454 GOTO 1
  IF ~~ THEN REPLY @28455 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @28456
  IF ~~ THEN REPLY @28457 GOTO 2
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @28459
  IF ~~ THEN REPLY @28460 GOTO 3
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @28461
  IF ~~ THEN REPLY @28462 DO ~SetGlobal("Garradun_Quest","GLOBAL",1)
                              GiveItem("z1gengle",LastTalkedToBy)
                              AddJournalEntry(@28450,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @28463
  IF ~~ THEN REPLY @28457 GOTO 2
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @28464
  IF ~~ THEN REPLY @28465 GOTO 6
  IF ~~ THEN REPLY @28466 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @28467
  IF ~~ THEN REPLY @28468 GOTO 7
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @28456
  IF ~~ THEN REPLY @28457 GOTO 8
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @28469
  IF ~~ THEN REPLY @28460 DO ~SetGlobal("Garradun_Quest","GLOBAL",1)
                              GiveItem("z1gengle",LastTalkedToBy)~ GOTO 3
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28470
  IF ~~ THEN REPLY @28468 GOTO 7
  IF ~~ THEN REPLY @28458 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Garradun_Quest","GLOBAL",0)~ THEN BEGIN 10
  SAY @28471
  IF ~~ THEN REPLY @28472 GOTO 8
  IF ~~ THEN REPLY @28473 EXIT
END

IF ~NumTimesTalkedToGT(0)
    GlobalGT("Garradun_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @28474
  IF ~GlobalGT("Garradun_Quest","GLOBAL",1)~ THEN REPLY @28475 DO ~AddXP2DA("IW2EX1E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@28452)
                                                                   SetGlobal("Garradun_Quest","GLOBAL",3)
                                                                   AddJournalEntry(@28451,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @28476 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @28477
  IF ~~ THEN REPLY @28478 DO ~Enemy()~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @28479
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @28481
  IF ~~ THEN REPLY @28482 GOTO 15
  IF ~~ THEN REPLY @28483 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @28484
  IF ~~ THEN EXIT
END
