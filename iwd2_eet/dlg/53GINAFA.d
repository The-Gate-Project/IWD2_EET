BEGIN ~53GINAFA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22317
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      Global("Know_Viciscamera","GLOBAL",1)
      !Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22318 DO ~SetGlobal("Know_Ginafae","GLOBAL",1)
                                                                             AddJournalEntry(@22313,QUEST)~ GOTO 1
  IF ~Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22319 DO ~AddJournalEntry(@22313,QUEST)~ GOTO 2
  IF ~!Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22320 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22313,QUEST)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22321 DO ~AddJournalEntry(@22313,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @22323
  IF ~~ THEN REPLY @22327 GOTO 8
  IF ~~ THEN REPLY @22324 GOTO 5
  IF ~Global("Know_Malavon","GLOBAL",1)
      !Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @22325 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @22330
  IF ~Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22331 GOTO 10
  IF ~!Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22332 GOTO 10
  IF ~~ THEN REPLY @22334 GOTO 10
END

IF ~~ THEN BEGIN 3
  SAY @22335
  IF ~~ THEN REPLY @22336 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @22339
  IF ~Global("Know_Viciscamera","GLOBAL",1)
      !Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22342 GOTO 1
  IF ~Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22319 GOTO 2
  IF ~!Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22320 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @22343
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @22349
  IF ~Global("Know_Imphraili","GLOBAL",0)~ THEN REPLY @33407 GOTO 22
  IF ~~ THEN REPLY @22350 GOTO 11
  IF ~~ THEN REPLY @22351 GOTO 12
  IF ~~ THEN REPLY @22354 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22355
  IF ~~ THEN REPLY @22360 GOTO 14
  IF ~~ THEN REPLY @22362 GOTO 15
END

IF ~~ THEN BEGIN 8
  SAY @22364
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22365
  IF ~~ THEN REPLY @22350 GOTO 11
  IF ~~ THEN REPLY @22351 GOTO 12
  IF ~~ THEN REPLY @22368 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @22369
  IF ~~ THEN REPLY @22350 GOTO 11
  IF ~~ THEN REPLY @22351 GOTO 12
  IF ~~ THEN REPLY @22354 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22370
  IF ~Global("Know_Malavon","GLOBAL",1)
      !Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @22325 GOTO 7
  IF ~~ THEN REPLY @22371 GOTO 13
  IF ~~ THEN REPLY @22372 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22373
  IF ~Global("Know_Malavon","GLOBAL",1)
      !Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @22325 GOTO 7
  IF ~Global("Know_Malavon","GLOBAL",1)
      Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @33683 DO ~Enemy()~ GOTO 23
  IF ~Global("Know_Malavon","GLOBAL",0)
      Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @33684 DO ~Enemy()~ GOTO 23
  IF ~~ THEN REPLY @22371 GOTO 13
  IF ~~ THEN REPLY @22372 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22374
  IF ~~ THEN REPLY @22372 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @22375
  IF ~~ THEN REPLY @22376 GOTO 16
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22377 DO ~Enemy()
                                                                  AddJournalEntry(@22315,QUEST)~ GOTO 17
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22378 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @22379
  IF ~~ THEN REPLY @22372 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @22380
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @22381
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22382
  IF ~~ THEN REPLY @22372 DO ~SetGlobal("Convinced_Ginafae","GLOBAL",1)
                              AddJournalEntry(@22314,QUEST)
                              StartCutSceneMode()
                              StartCutScene("53cGinEx")~ EXIT
END

IF WEIGHT #-1
~Global("53UnhideGinafae","GLOBAL",1)~ THEN BEGIN 19
  SAY @22383
  IF ~~ THEN DO ~SetGlobal("53UnhideGinafae","GLOBAL",2)
                 GiveItemCreate("z5amulhd",LastTalkedToBy,1,1,1)
                 GiveItemCreate("z5clckhd",LastTalkedToBy,1,1,1)
                 EraseJournalEntry(@22313)
                 EraseJournalEntry(@22315)
                 EraseJournalEntry(@22314)
                 AddJournalEntry(@32866,QUEST_DONE)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22384
  IF ~~ THEN EXTERN ~53MALAVO~ 48
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 21
  SAY @22385
  IF ~Global("Know_Malavon","GLOBAL",1)
      !Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @22386 GOTO 16
  IF ~~ THEN REPLY @22387 GOTO 11
  IF ~~ THEN REPLY @22388 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @33406
  IF ~~ THEN REPLY @22350 GOTO 11
  IF ~~ THEN REPLY @22351 GOTO 12
  IF ~~ THEN REPLY @22354 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @33682
  IF ~~ THEN EXIT
END
