BEGIN ~63NEWKAV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @37306
  IF ~~ THEN REPLY @37307 GOTO 1
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 DO ~AddJournalEntry(@37300,QUEST)~ GOTO 11
  IF ~~ THEN REPLY @37309 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @37310
  IF ~~ THEN REPLY @37311 GOTO 2
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 GOTO 11
  IF ~~ THEN REPLY @37309 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @37312
  IF ~~ THEN REPLY @37313 GOTO 4
  IF ~~ THEN REPLY @37314 GOTO 3
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 GOTO 11
  IF ~~ THEN REPLY @37309 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @37315
  IF ~~ THEN REPLY @37316 GOTO 5
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @37317
  IF ~~ THEN REPLY @37316 GOTO 5
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @37318
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37319 GOTO 7
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37320 GOTO 6
  IF ~~ THEN REPLY @37309 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @37321
  IF ~~ THEN REPLY @37322 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @37323
  IF ~~ THEN REPLY @37324 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @37325
  IF ~~ THEN REPLY @37326 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @37327
  IF ~~ THEN REPLY @37328 DO ~TakePartyItem("z6genhp")
                              DestroyItem("z6genhp")
                              GiveItemCreate("z6genap",LastTalkedToBy,1,0,0)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @37329
  IF ~~ THEN REPLY @37330 DO ~AddJournalEntry(@37304,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @37331
  IF ~~ THEN REPLY @37332 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @37333
  IF ~~ THEN REPLY @37334 GOTO 13
  IF ~~ THEN REPLY @37893 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @37335
  IF ~~ THEN REPLY @37336 DO ~AddJournalEntry(@37301,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @37894 DO ~AddJournalEntry(@37301,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @37337
  IF ~~ THEN REPLY @37338 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @37339
  IF ~~ THEN REPLY @37340 GOTO 16
  IF ~~ THEN REPLY @37895 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @37341
  IF ~~ THEN REPLY @37342 GOTO 17
  IF ~~ THEN REPLY @37896 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37343
  IF ~~ THEN REPLY @37344 GOTO 19
  IF ~~ THEN REPLY @37345 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @37346
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37319 GOTO 21
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37320 GOTO 20
  IF ~~ THEN REPLY @37347 GOTO 25
END

IF ~~ THEN BEGIN 19
  SAY @37348
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37319 GOTO 21
  IF ~PartyHasItem("z6genhp")~ THEN REPLY @37320 GOTO 20
  IF ~~ THEN REPLY @37347 GOTO 25
END

IF ~~ THEN BEGIN 20
  SAY @37321
  IF ~~ THEN REPLY @37322 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY @37323
  IF ~~ THEN REPLY @37324 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @37325
  IF ~~ THEN REPLY @37326 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @37327
  IF ~~ THEN REPLY @37328 DO ~TakePartyItem("z6genhp")
                              DestroyItem("z6genhp")
                              GiveItemCreate("z6genap",LastTalkedToBy,1,0,0)~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @37329
  IF ~~ THEN REPLY @37349 DO ~AddJournalEntry(@37304,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37350
  IF ~~ THEN REPLY @37351 GOTO 26
  IF ~~ THEN REPLY @37352 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @37353
  IF ~~ THEN REPLY @37354 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @37355
  IF ~~ THEN REPLY @37356 GOTO 29
  IF ~~ THEN REPLY @37357 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @37358
  IF ~~ THEN REPLY @37359 GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @37360
  IF ~~ THEN REPLY @37359 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @37361
  IF ~~ THEN REPLY @37362 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @37363
  IF ~~ THEN REPLY @37364 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @37365
  IF ~Global("SH_Jae_Clue","GLOBAL",1)~ THEN REPLY @37366 DO ~SetGlobal("SH_Kav_Clue","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @37367 DO ~SetGlobal("SH_Kav_Clue","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @37368
  IF ~~ THEN REPLY @37369 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @37370
  IF ~~ THEN REPLY @37371 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @37372
  IF ~~ THEN REPLY @37373 GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @37374
  IF ~~ THEN REPLY @37375 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @37376
  IF ~~ THEN REPLY @37377 DO ~SetGlobal("SH_Know_Cedrin_Murderer","GLOBAL",1)
                              AddJournalEntry(@37302,QUEST)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 38
  SAY @37378
  IF ~~ THEN REPLY @37307 GOTO 1
  IF ~Global("SH_Seek_Kav","GLOBAL",1)
      !Global("SH_Kav_Clue","GLOBAL",1)~ THEN REPLY @37308 GOTO 11
  IF ~Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Kav_XP","GLOBAL",1)~ THEN REPLY @37379 DO ~AddXP2DA("IW2EX14E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@37305)
                                                             SetGlobal("SH_Kav_XP","GLOBAL",1)
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
                                                             AddJournalEntry(@37303,QUEST_DONE)~ GOTO 39
  IF ~Global("SH_Kav_Clue","GLOBAL",1)
      Global("SH_Jae_Clue","GLOBAL",1)
      !Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      !Global("SH_Cedrin_Done","GLOBAL",1)~ THEN REPLY @39847 GOTO 40
  IF ~~ THEN REPLY @37380 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @37381
  IF ~~ THEN REPLY @37382 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @39850
  IF ~~ THEN REPLY @39851 GOTO 33
END
