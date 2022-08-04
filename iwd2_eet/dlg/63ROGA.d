BEGIN ~63ROGA~

IF WEIGHT #5
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26065
  IF ~~ THEN REPLY @38087 GOTO 37
  IF ~~ THEN REPLY @38088 GOTO 37
END

IF ~~ THEN BEGIN 1
  SAY @26071
  IF ~~ THEN REPLY @26072 GOTO 2
  IF ~~ THEN REPLY @26218 GOTO 13
  IF ~~ THEN REPLY @26219 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @26220
  IF ~~ THEN REPLY @26269 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @26271
  IF ~~ THEN REPLY @26273 DO ~SetGlobal("SH_Roga_Tale","GLOBAL",3)
                              AddJournalEntry(@26057,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @26275 DO ~SetGlobal("SH_Roga_Tale","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @26277
  IF ~~ THEN REPLY @26280 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @26281
  IF ~~ THEN REPLY @26292 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @26293
  IF ~~ THEN REPLY @26295 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @26297
  IF ~~ THEN REPLY @26298 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @26299
  IF ~~ THEN REPLY @26300 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @26302
  IF ~~ THEN REPLY @37970 GOTO 35
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @37971 GOTO 36
  IF ~OR(2)
        Class(LastTalkedToBy,CLERIC_ALL)
        Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @37974 GOTO 36
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @37976 GOTO 36
  IF ~~ THEN REPLY @26316 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @26319
  IF ~~ THEN REPLY @26321 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26323
  IF ~~ THEN REPLY @26325 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",3)
                              AddJournalEntry(@26058,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @26326 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",2)
                              AddJournalEntry(@26059,QUEST)~ EXIT
  IF ~~ THEN REPLY @26327 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",1)
                              AddJournalEntry(@26060,QUEST)~ EXIT
  IF ~Global("SPRITE_IS_DEADVylu_Prehv","GLOBAL",1)~ THEN REPLY @26329 DO ~EraseJournalEntry(@26057)
                                                                           EraseJournalEntry(@26058)
                                                                           EraseJournalEntry(@26059)
                                                                           EraseJournalEntry(@26060)
                                                                           EraseJournalEntry(@26062)
                                                                           EraseJournalEntry(@39735)
                                                                           EraseJournalEntry(@29991)
                                                                           EraseJournalEntry(@29990)
                                                                           EraseJournalEntry(@27061)
                                                                           AddJournalEntry(@26061,QUEST_DONE)~ GOTO 28
END

IF ~~ THEN BEGIN 12
  SAY @26331
  IF ~~ THEN REPLY @26333 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @26335
  IF ~~ THEN REPLY @26336 GOTO 14
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @26340
  IF ~~ THEN REPLY @26341 GOTO 15
  IF ~~ THEN REPLY @26343 GOTO 16
  IF ~~ THEN REPLY @37994 GOTO 17
  IF ~~ THEN REPLY @37995 GOTO 18
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @26348
  IF ~~ THEN REPLY @26343 GOTO 16
  IF ~~ THEN REPLY @37984 GOTO 17
  IF ~~ THEN REPLY @37988 GOTO 18
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @26349
  IF ~~ THEN REPLY @26341 GOTO 15
  IF ~~ THEN REPLY @37991 GOTO 17
  IF ~~ THEN REPLY @37992 GOTO 18
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @26350
  IF ~~ THEN REPLY @26341 GOTO 15
  IF ~~ THEN REPLY @37987 GOTO 16
  IF ~~ THEN REPLY @37988 GOTO 18
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @26351
  IF ~~ THEN REPLY @26341 GOTO 15
  IF ~~ THEN REPLY @37983 GOTO 16
  IF ~~ THEN REPLY @37984 GOTO 17
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @26352
  IF ~~ THEN REPLY @26353 GOTO 14
  IF ~~ THEN REPLY @26339 GOTO 20
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @26354
  IF ~~ THEN REPLY @26353 GOTO 14
  IF ~~ THEN REPLY @26338 GOTO 19
  IF ~Global("SH_Help_Vylu","GLOBAL",0)~ THEN REPLY @24631 GOTO 1
  IF ~~ THEN REPLY @26070 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)~ THEN BEGIN 21
  SAY @26355
  IF ~~ THEN REPLY @26066 GOTO 1
  IF ~~ THEN REPLY @26067 GOTO 13
  IF ~Global("SH_Roga_Tale","GLOBAL",1)~ THEN REPLY @26358 GOTO 3
  IF ~~ THEN REPLY @26070 EXIT
END

IF WEIGHT #0
~Global("SH_Help_Vylu","GLOBAL",1)~ THEN BEGIN 22
  SAY @26359
  IF ~~ THEN REPLY @26325 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",3)
                              AddJournalEntry(@26058,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @26326 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",2)
                              AddJournalEntry(@26059,QUEST)~ EXIT
  IF ~~ THEN REPLY @26327 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",1)
                              AddJournalEntry(@26060,QUEST)~EXIT
  IF ~~ THEN REPLY @39448 GOTO 13
  IF ~Global("SPRITE_IS_DEADVylu_Prehv","GLOBAL",1)~ THEN REPLY @26329 DO ~EraseJournalEntry(@26057)
                                                                           EraseJournalEntry(@26058)
                                                                           EraseJournalEntry(@26059)
                                                                           EraseJournalEntry(@26060)
                                                                           EraseJournalEntry(@26062)
                                                                           EraseJournalEntry(@39735)
                                                                           EraseJournalEntry(@29991)
                                                                           EraseJournalEntry(@29990)
                                                                           EraseJournalEntry(@27061)
                                                                           AddJournalEntry(@26061,QUEST_DONE)~ GOTO 28
END

IF WEIGHT #1
~Global("SH_Help_Vylu","GLOBAL",2)~ THEN BEGIN 23
  SAY @26360
  IF ~~ THEN REPLY @26325 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",3)
                              AddJournalEntry(@26058,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @26326 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",2)
                              AddJournalEntry(@26059,QUEST)~ EXIT
  IF ~~ THEN REPLY @26327 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",1)
                              AddJournalEntry(@26060,QUEST)~ EXIT
  IF ~~ THEN REPLY @39448 GOTO 13
  IF ~Global("SPRITE_IS_DEADVylu_Prehv","GLOBAL",1)~ THEN REPLY @26329 DO ~EraseJournalEntry(@26057)
                                                                           EraseJournalEntry(@26058)
                                                                           EraseJournalEntry(@26059)
                                                                           EraseJournalEntry(@26060)
                                                                           EraseJournalEntry(@26062)
                                                                           EraseJournalEntry(@39735)
                                                                           EraseJournalEntry(@29991)
                                                                           EraseJournalEntry(@29990)
                                                                           EraseJournalEntry(@27061)
                                                                           AddJournalEntry(@26061,QUEST_DONE)~ GOTO 28
END

IF WEIGHT #2
~Global("SH_Help_Vylu","GLOBAL",3)~ THEN BEGIN 24
  SAY @26361
  IF ~GlobalLT("SH_Vylu_Potion","GLOBAL",1)~ THEN REPLY @26363 EXIT
  IF ~Global("SH_Vylu_Potion","GLOBAL",1)
      !Global("SPRITE_IS_DEADVylu_Prehv","GLOBAL",1)~ THEN REPLY @26364 DO ~AddJournalEntry(@26062,QUEST)~ GOTO 26
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @26365 EXIT
  IF ~Global("SH_Vylu_Potion","GLOBAL",3)~ THEN REPLY @26366 EXIT
  IF ~~ THEN REPLY @39448 GOTO 13
  IF ~Global("SPRITE_IS_DEADVylu_Prehv","GLOBAL",1)~ THEN REPLY @26329 DO ~EraseJournalEntry(@26057)
                                                                           EraseJournalEntry(@26058)
                                                                           EraseJournalEntry(@26059)
                                                                           EraseJournalEntry(@26060)
                                                                           EraseJournalEntry(@26062)
                                                                           EraseJournalEntry(@39735)
                                                                           EraseJournalEntry(@29991)
                                                                           EraseJournalEntry(@29990)
                                                                           EraseJournalEntry(@27061)
                                                                           AddJournalEntry(@26061,QUEST_DONE)~ GOTO 28
  IF ~GlobalGT("SH_Vylu_Potion","GLOBAL",1)
      !Global("SH_Vylu_Potion","GLOBAL",3)
      Global("SPRITE_IS_DEADRuinlordEradru","GLOBAL",1)~ THEN REPLY @34295 GOTO 39
END

IF WEIGHT #3
~Global("SH_Help_Vylu","GLOBAL",4)~ THEN BEGIN 25
  SAY @26367
  IF ~~ THEN REPLY @26368 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26064)
                              SetGlobal("SH_Help_Vylu","GLOBAL",5)
                              EraseJournalEntry(@26057)
                              EraseJournalEntry(@26058)
                              EraseJournalEntry(@26059)
                              EraseJournalEntry(@26060)
                              EraseJournalEntry(@26062)
                              EraseJournalEntry(@39735)
                              EraseJournalEntry(@29991)
                              EraseJournalEntry(@29990)
                              EraseJournalEntry(@27061)
                              AddJournalEntry(@26063,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @26369
  IF ~~ THEN REPLY @26370 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @26371
  IF ~!Global("SPRITE_IS_DEADRuinlordEradru","GLOBAL",1)~ THEN REPLY @26372 DO ~SetGlobal("SH_Vylu_Potion","GLOBAL",2)~ EXIT
  IF ~!Global("SPRITE_IS_DEADRuinlordEradru","GLOBAL",1)~ THEN REPLY @37981 DO ~SetGlobal("SH_Vylu_Potion","GLOBAL",2)~ EXIT
  IF ~Global("SPRITE_IS_DEADRuinlordEradru","GLOBAL",1)~ THEN REPLY @34295 GOTO 39
END

IF ~~ THEN BEGIN 28
  SAY @26373
  IF ~~ THEN REPLY @39448 GOTO 13
  IF ~~ THEN REPLY @26374 DO ~SetGlobal("SH_Help_Vylu","GLOBAL",5)~ EXIT
END

IF WEIGHT #4
~Global("SH_Help_Vylu","GLOBAL",5)~ THEN BEGIN 29
  SAY @26375
  IF ~~ THEN REPLY @39448 GOTO 13
  IF ~~ THEN REPLY @26374 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @26376
  IF ~~ THEN REPLY @26066 GOTO 1
  IF ~~ THEN REPLY @26067 GOTO 13
  IF ~~ THEN REPLY @26069 GOTO 31
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @26377
  IF ~~ THEN REPLY @26378 GOTO 32
  IF ~~ THEN REPLY @26066 GOTO 1
  IF ~~ THEN REPLY @26067 GOTO 13
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @26379
  IF ~~ THEN REPLY @26380 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @26381
  IF ~~ THEN REPLY @26382 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @26383
  IF ~~ THEN REPLY @26066 GOTO 1
  IF ~~ THEN REPLY @26067 GOTO 13
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @26068 GOTO 30
  IF ~~ THEN REPLY @26070 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @37977
  IF ~~ THEN REPLY @26316 GOTO 10
END

IF ~~ THEN BEGIN 36
  SAY @37979
  IF ~~ THEN REPLY @26316 GOTO 10
END

IF ~~ THEN BEGIN 37
  SAY @38089
  IF ~~ THEN REPLY @38090 GOTO 38
  IF ~~ THEN REPLY @38091 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @38092
  IF ~~ THEN REPLY @10683 GOTO 1
  IF ~~ THEN REPLY @26010 GOTO 13
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @26011 GOTO 30
  IF ~~ THEN REPLY @26069 GOTO 31
  IF ~~ THEN REPLY @29847 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @34749
  IF ~~ THEN REPLY @34750 GOTO 28
END
