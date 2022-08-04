BEGIN ~50HGHOST~

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8426
  IF ~~ THEN DO ~AddJournalEntry(@8419,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8428
  IF ~~ THEN REPLY @8429 DO ~AddJournalEntry(@8420,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @8430
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8431
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8432
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8433
  IF ~~ THEN REPLY @8434 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8436
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @8437 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      CheckStatGT(LastTalkedToBy,14,WIS)
      !Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @8437 GOTO 7
  IF ~~ THEN REPLY @8438 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @8439
  IF ~Global("50Kurttu_Ghost","GLOBAL",1)
      Global("50HGhost","GLOBAL",0)~ THEN REPLY @8440 DO ~SetGlobal("50HGhost","GLOBAL",1)
                                                          AddJournalEntry(@8421,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @8446 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8447
  IF ~Global("50Kurttu_Ghost","GLOBAL",1)
      Global("50HGhost","GLOBAL",0)~ THEN REPLY @8440 DO ~SetGlobal("50HGhost","GLOBAL",1)
                                                          AddJournalEntry(@8421,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @8446 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8448
  IF ~~ THEN REPLY @8449 GOTO 8
  IF ~~ THEN REPLY @8450 EXIT
END

IF WEIGHT #5
~True()~ THEN BEGIN 10
  SAY @8451
  IF ~Global("50Kurttu_Ghost","GLOBAL",1)
      Global("50HGhost","GLOBAL",0)~ THEN REPLY @8440 DO ~SetGlobal("50HGhost","GLOBAL",1)
                                                          AddJournalEntry(@8421,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @8446 EXIT
END

IF WEIGHT #3
~Global("50HGhost","GLOBAL",1)~ THEN BEGIN 11
  SAY @8452
  IF ~~ THEN REPLY @8453 EXIT
END

IF WEIGHT #2
~GlobalGT("FW_WILL_O_WISPS_DEAD","GLOBAL",0)~ THEN BEGIN 12 // GlobalGT("50WIL_Dead","GLOBAL",2)
  SAY @8454
  IF ~~ THEN DO ~GiveItemCreate("z5genfwr",LastTalkedToBy,0,0,0)
                 AddJournalEntry(@31887,QUEST)~ GOTO 16
END

IF WEIGHT #1
~Global("50HGhost","GLOBAL",2)~ THEN BEGIN 13
  SAY @8457
  IF ~Global("50Kurttu_Ghost","GLOBAL",1)
      Global("50Kyosti","GLOBAL",0)~ THEN REPLY @8440 DO ~SetGlobal("50Kyosti","GLOBAL",1)
                                                          AddJournalEntry(@8422,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @24532 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @24533
  IF ~~ THEN REPLY @8446 EXIT
END

IF WEIGHT #0
~Global("50Kyosti","GLOBAL",1)~ THEN BEGIN 15
  SAY @25674
  IF ~~ THEN REPLY @8450 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @31885
  IF ~Global("50Kurttu_Ghost","GLOBAL",1)
      Global("50Kyosti","GLOBAL",0)~ THEN REPLY @8455 DO ~AddXP2DA("IW2EX9E")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@8424)
                                                          SetGlobal("50HGhost","GLOBAL",2)
                                                          SetGlobal("50Kyosti","GLOBAL",1)
                                                          AddJournalEntry(@8422,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @8456 DO ~AddXP2DA("IW2EX9E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@8424)
                             SetGlobal("50HGhost","GLOBAL",2)~ EXIT
END
