BEGIN ~63JERRE~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26403
  IF ~~ THEN REPLY @26404 DO ~SetGlobal("SH_Know_Jerre","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @26407 DO ~SetGlobal("SH_Know_Jerre","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @26408
  IF ~~ THEN REPLY @26409 GOTO 2
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37860 GOTO 2
  IF ~~ THEN REPLY @26410 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @26411
  IF ~~ THEN REPLY @26412 GOTO 3
  IF ~~ THEN REPLY @26413 DO ~SetGlobal("SH_Jerre_Brushoff","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @26414
  IF ~~ THEN REPLY @26410 DO ~SetGlobal("SH_Jerre_Brushoff","GLOBAL",3)~ GOTO 4
  IF ~~ THEN REPLY @26415 DO ~SetGlobal("SH_Jerre_Brushoff","GLOBAL",1)
                              AddJournalEntry(@26386,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @26416
  IF ~~ THEN REPLY @26417 GOTO 5
  IF ~~ THEN REPLY @26418 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @26419
  IF ~~ THEN REPLY @26420 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @26421
  IF ~~ THEN REPLY @26423 GOTO 9
  IF ~Global("Tears_Suffereing","GLOBAL",1)
      !Global("SH_Gave_Tears","GLOBAL",1)~ THEN REPLY @26422 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @37395
  IF ~~ THEN REPLY @26478 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @26479
  IF ~~ THEN REPLY @26431 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26399)
                              SetGlobal("SH_Gave_Tears","GLOBAL",1)
                              GiveItemCreate("z6gents",LastTalkedToBy,1,0,0)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @26432
  IF ~~ THEN REPLY @26433 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26396)
                              SetGlobal("SH_Demon_Secret","GLOBAL",3)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @26434
  IF ~~ THEN REPLY @302 GOTO 11
  IF ~GlobalGT("SH_Slain_GlabS1","GLOBAL",0)~ THEN REPLY @26439 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @26441
  IF ~~ THEN REPLY @26463 DO ~AddJournalEntry(@26387,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @26464
  IF ~~ THEN REPLY @26466 DO ~SetGlobal("SH_Demon_Guard","GLOBAL",1)
                              AddJournalEntry(@26390,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @37884 DO ~AddJournalEntry(@26390,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @26467
  IF ~~ THEN REPLY @26468 GOTO 14
  IF ~~ THEN REPLY @26469 GOTO 15
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37885 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @26470
  IF ~~ THEN REPLY @26407 DO ~SetGlobal("SH_Free_Slaves","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @26471
  IF ~~ THEN REPLY @26407 DO ~SetGlobal("SH_Free_Slaves","GLOBAL",3)~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY @26472
  IF ~~ THEN REPLY @26404 GOTO 1
  IF ~~ THEN REPLY @26405 GOTO 1
  IF ~~ THEN REPLY @26406 GOTO 1
  IF ~~ THEN REPLY @26407 EXIT
END

IF WEIGHT #2
~GlobalGT("SH_Jerre_Brushoff","GLOBAL",0)~ THEN BEGIN 17
  SAY @26473
  IF ~~ THEN REPLY @26410 DO ~SetGlobal("SH_Jerre_Brushoff","GLOBAL",0)~ GOTO 4
  IF ~~ THEN REPLY @26415 DO ~SetGlobal("SH_Jerre_Brushoff","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~Global("SH_Free_Slaves","GLOBAL",3)~ THEN BEGIN 18
  SAY @26474
  IF ~Global("Tears_Suffereing","GLOBAL",1)
      !Global("SH_Gave_Tears","GLOBAL",1)~ THEN REPLY @26475 GOTO 19
  IF ~Global("SH_SGem_Destroyed","GLOBAL",1)
      Global("SH_Gave_Tears","GLOBAL",1)~ THEN REPLY @26476 DO ~SetGlobal("SH_Free_Slaves","GLOBAL",4)
                                                                EraseJournalEntry(@41361)
                                                                EraseJournalEntry(@37464)
                                                                EraseJournalEntry(@26386)
                                                                EraseJournalEntry(@26387)
                                                                EraseJournalEntry(@26390)
                                                                EraseJournalEntry(@26486)
                                                                EraseJournalEntry(@26487)
                                                                EraseJournalEntry(@26488)
                                                                EraseJournalEntry(@26489)
                                                                EraseJournalEntry(@26490)
                                                                EraseJournalEntry(@30174)
                                                                EraseJournalEntry(@26591)
                                                                EraseJournalEntry(@26592)
                                                                EraseJournalEntry(@26593)
                                                                AddJournalEntry(@26391,QUEST_DONE)~ GOTO 21
  IF ~Global("SH_SGem_Destroyed","GLOBAL",1)
      !Global("SH_Gave_Tears","GLOBAL",1)~ THEN REPLY @26476 DO ~SetGlobal("SH_Free_Slaves","GLOBAL",4)
                                                                 EraseJournalEntry(@41361)
                                                                 EraseJournalEntry(@37464)
                                                                 EraseJournalEntry(@26386)
                                                                 EraseJournalEntry(@26387)
                                                                 EraseJournalEntry(@26390)
                                                                 EraseJournalEntry(@26486)
                                                                 EraseJournalEntry(@26487)
                                                                 EraseJournalEntry(@26488)
                                                                 EraseJournalEntry(@26489)
                                                                 EraseJournalEntry(@26490)
                                                                 EraseJournalEntry(@30174)
                                                                 EraseJournalEntry(@26591)
                                                                 EraseJournalEntry(@26592)
                                                                 EraseJournalEntry(@26593)
                                                                 AddJournalEntry(@26392,QUEST_DONE)~ GOTO 22
  IF ~Global("SH_No_Demons","GLOBAL",1)~ THEN REPLY @31914 DO ~//SetCriticalPathObject(Myself, False)
                                                               ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 25
  IF ~~ THEN REPLY @26407 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @26477
  IF ~~ THEN REPLY @26478 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26399)
                              //SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @26479
  IF ~~ THEN REPLY @26480 DO ~SetGlobal("SH_Gave_Tears","GLOBAL",1)
                              GiveItemCreate("z6gents",LastTalkedToBy,1, 0, 0)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @26481
  IF ~~ THEN REPLY @26482 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26402)
                              SetGlobal("SH_Free_All_Slaves","GLOBAL",1)
                              StartCutScene("63cJerre")~ EXIT /*("20cJerre")*/
END

IF ~~ THEN BEGIN 22
  SAY @26483
  IF ~Global("Tears_Suffereing","GLOBAL",1)~ THEN REPLY @26484 DO ~AddXP2DA("IW2EX14E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@26399)
                                                                   //SetCriticalPathObject(Myself, False)
                                                                   ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 23
  IF ~!Global("Tears_Suffereing","GLOBAL",1)~ THEN REPLY @26413 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @26485
  IF ~~ THEN REPLY @26480 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26402)
                              SetGlobal("SH_Free_All_Slaves","GLOBAL",1)
                              SetGlobal("SH_Gave_Tears","GLOBAL",1)
                              GiveItemCreate("z6gents",LastTalkedToBy,1,0,0)
                              AddJournalEntry(@26394,QUEST)
                              StartCutScene("63cJerre")~ EXIT /*("20cJerre")*/
END

IF WEIGHT #1
~GlobalGT("SH_Free_Slaves","GLOBAL",3)~ THEN BEGIN 24
  SAY @39360
  IF ~Global("Tears_Suffereing","GLOBAL",1)
      !Global("SH_Gave_Tears","GLOBAL",1)~ THEN REPLY @26478 DO ~AddXP2DA("IW2EX14E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@26399)
                                                                 //SetCriticalPathObject(Myself, False)
                                                                 ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 23
  IF ~~ THEN REPLY @35996 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @31988
  IF ~~ THEN REPLY @36238 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @1487 DO ~Enemy()~ EXIT
END
