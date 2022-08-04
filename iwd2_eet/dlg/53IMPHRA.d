BEGIN ~53IMPHRA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22422
  IF ~~ THEN REPLY @22423 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @22424 GOTO 2
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @22425 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22426 GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22427 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)
                                                              SetGlobal("Imp_Saablic","GLOBAL",1)
                                                              SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                              AddJournalEntry(@22420,QUEST)~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)
      Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @22428 DO ~SetGlobal("Imp_Saablic","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @22429 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @22430
  IF ~~ THEN REPLY @22431 GOTO 8
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22435
  IF ~~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Know_Saablic","GLOBAL",2)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22436 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 13
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @22437
  IF ~~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @22438
  IF ~~ THEN REPLY @22439 GOTO 14
END

IF ~~ THEN BEGIN 5
  SAY @22441
  IF ~~ THEN REPLY @22442 DO ~AddJournalEntry(@22421,QUEST)~ GOTO 15
END

IF ~~ THEN BEGIN 6
  SAY @22444
  IF ~~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @22446
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22448
  IF ~~ THEN REPLY @22450 GOTO 19
  IF ~~ THEN REPLY @22449 GOTO 18
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @22451
  IF ~~ THEN REPLY @22452 DO ~Enemy()~ GOTO 21
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @22453 GOTO 22
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22454 GOTO 16
END

IF ~~ THEN BEGIN 10
  SAY @22455
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @22456
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22457
  IF ~Global("Know_Imphraili","GLOBAL",0)~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                                                                 AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Know_Imphraili","GLOBAL",1)~ THEN REPLY @22431 GOTO 8
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ EXIT
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22458
  IF ~~ THEN REPLY @22459 GOTO 22
  IF ~~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ EXIT
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ FLAGS 0x200 GOTO 7
END

IF ~~ THEN BEGIN 14
  SAY @22460
  IF ~~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                              AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 15
  SAY @22465
  IF ~Global("Know_Imphraili","GLOBAL",0)~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                                                                 AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @22443 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22467
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @22468
  IF ~Global("Know_Imphraili","GLOBAL",0)~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                                                                 AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Know_Imphraili","GLOBAL",1)~ THEN REPLY @22431 GOTO 8
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22470
  IF ~~ THEN REPLY @22450 GOTO 19
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @22471
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22472
  IF ~~ THEN REPLY @35720 GOTO 18
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~!Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 DO ~SetGlobal("Imphraili_Warned","GLOBAL",1)~ GOTO 7
  IF ~Global("Imphraili_Warned","GLOBAL",1)~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @22474
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @22475
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 23
  SAY @22478
  IF ~Global("Know_Imphraili","GLOBAL",0)~ THEN REPLY @22440 DO ~SetGlobal("Know_Imphraili","GLOBAL",1)
                                                                 AddJournalEntry(@22419,QUEST)~ GOTO 1
  IF ~Global("Know_Imphraili","GLOBAL",1)~ THEN REPLY @22479 GOTO 8
  IF ~Global("Imp_Saablic","GLOBAL",1)
      Global("Know_Saablic","GLOBAL",0)~ THEN REPLY @22445 DO ~SetGlobal("Know_Saablic","GLOBAL",1)~ GOTO 17
  IF ~Global("Viciscamera_Quest","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22432 DO ~SetGlobal("Know_Viciscamera","GLOBAL",1)
                                                                    AddJournalEntry(@22420,QUEST)~ GOTO 9
  IF ~!Global("Know_Special_Driders","GLOBAL",1)~ THEN REPLY @22433 DO ~SetGlobal("Know_Special_Driders","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @35750
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)
      //!ClassEx(LastTalkedToBy, Paladin)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @38547 DO ~SetGlobal("Imp_Lab","GLOBAL",1)~ GOTO 25
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)~ THEN REPLY @35751 DO ~SetGlobal("Imp_Lab","GLOBAL",1)~ GOTO 25
  IF ~~ THEN REPLY @22434 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @35752
  IF ~~ THEN EXTERN ~53LAB~ 2
END
