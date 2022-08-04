BEGIN ~63NEWJAE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @37388
  IF ~~ THEN REPLY @37389 GOTO 1
  IF ~Global("SH_Seek_Jae","GLOBAL",1)~ THEN REPLY @37390 DO ~AddJournalEntry(@37383,QUEST)~ GOTO 2
  IF ~Global("SH_Seek_Jae","GLOBAL",1)~ THEN REPLY @37391 GOTO 4
  IF ~~ THEN REPLY @37392 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @37393
  IF ~Global("SH_Seek_Jae","GLOBAL",1)~ THEN REPLY @37390 DO ~AddJournalEntry(@37383,QUEST)~ GOTO 2
  IF ~Global("SH_Seek_Jae","GLOBAL",1)~ THEN REPLY @37391 GOTO 4
  IF ~~ THEN REPLY @37394 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @37395
  IF ~~ THEN REPLY @37396 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @37397
  IF ~~ THEN REPLY @37398 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @37399
  IF ~~ THEN REPLY @37398 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @37400
  IF ~~ THEN REPLY @37401 GOTO 6
  IF ~~ THEN REPLY @37853 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @37402
  IF ~~ THEN REPLY @37403 GOTO 7
  IF ~~ THEN REPLY @37404 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @37405
  IF ~~ THEN REPLY @37406 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @37407
  IF ~~ THEN REPLY @37406 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @37408
  IF ~~ THEN REPLY @37409 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @37410
  IF ~~ THEN REPLY @37411 GOTO 11
  IF ~~ THEN REPLY @37854 GOTO 21
END

IF ~~ THEN BEGIN 11
  SAY @37412
  IF ~~ THEN REPLY @37413 DO ~AddJournalEntry(@37384,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @37858 DO ~AddJournalEntry(@37384,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @37414
  IF ~~ THEN REPLY @37415 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @37416
  IF ~Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37417 DO ~SetGlobal("SH_Jae_Clue","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @37418 DO ~SetGlobal("SH_Jae_Clue","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @37419
  IF ~~ THEN REPLY @37420 GOTO 15
  IF ~~ THEN REPLY @37418 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @37421
  IF ~~ THEN REPLY @37422 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @37423
  IF ~~ THEN REPLY @37424 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37425
  IF ~~ THEN REPLY @37426 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @37427
  IF ~~ THEN REPLY @37428 DO ~SetGlobal("SH_Know_Cedrin_Murderer","GLOBAL",1)
                              AddJournalEntry(@37385,QUEST)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 19
  SAY @37429
  IF ~Global("SH_Seek_Jae","GLOBAL",1)
      !Global("SH_Jae_Clue","GLOBAL",1)~ THEN REPLY @37390 DO ~AddJournalEntry(@37383,QUEST)~ GOTO 2
  IF ~Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Jae_XP","GLOBAL",1)~ THEN REPLY @37430 DO ~AddXP2DA("IW2EX14E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@37387)
                                                             SetGlobal("SH_Jae_XP","GLOBAL",1)
                                                             EraseJournalEntry(@37142)
                                                             EraseJournalEntry(@36979)
                                                             EraseJournalEntry(@36980)
                                                             EraseJournalEntry(@36981)
                                                             EraseJournalEntry(@36982)
                                                             EraseJournalEntry(@36983)
                                                             EraseJournalEntry(@36984)
                                                             EraseJournalEntry(@36985)
                                                             EraseJournalEntry(@36986)
                                                             EraseJournalEntry(@36991)
                                                             EraseJournalEntry(@36990)
                                                             EraseJournalEntry(@37300)
                                                             EraseJournalEntry(@37301)
                                                             EraseJournalEntry(@37302)
                                                             EraseJournalEntry(@30326)
                                                             EraseJournalEntry(@30324)
                                                             EraseJournalEntry(@30325)
                                                             EraseJournalEntry(@37383)
                                                             EraseJournalEntry(@37384)
                                                             AddJournalEntry(@37386,QUEST_DONE)~ GOTO 20
  IF ~~ THEN REPLY @37431 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @37432
  IF ~~ THEN REPLY @37433 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @37857
  IF ~~ THEN REPLY @37413 DO ~AddJournalEntry(@37384,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @37858 DO ~AddJournalEntry(@37384,QUEST)~ GOTO 12
END
