BEGIN ~30GOBKRU~

IF ~~ THEN BEGIN 0
  SAY @31820
  IF ~~ THEN REPLY @31821 GOTO 1
  IF ~~ THEN REPLY @31822 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31823
  IF ~~ THEN REPLY @31825 GOTO 2
  IF ~~ THEN REPLY @31826 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31827
  IF ~~ THEN REPLY @31828 GOTO 3
  IF ~~ THEN REPLY @31819 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31829
  IF ~~ THEN REPLY @31830 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",1)
                              AddJournalEntry(@31796,QUEST)~ EXIT
  IF ~~ THEN REPLY @31831 DO ~Enemy()~ EXIT
END

IF WEIGHT #7
~NumTimesTalkedTo(0)
 !Global("SPRITE_IS_DEADYquog","GLOBAL",0)
 Global("AR3002_TEQUAG_TEAM_DEAD","GLOBAL",1)~ THEN BEGIN 4
  SAY @31814
  IF ~~ THEN REPLY @33742 GOTO 5
  IF ~~ THEN REPLY @40400 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @31834
  IF ~~ THEN REPLY @31835 GOTO 6
  IF ~~ THEN REPLY @31836 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31873
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @31875
  IF ~~ THEN REPLY @31876 GOTO 8
  IF ~~ THEN REPLY @31877 GOTO 21
END

IF ~~ THEN BEGIN 8
  SAY @31878
  IF ~PartyHasItem("z0bractb")~ THEN REPLY @31879 GOTO 9
  IF ~!PartyHasItem("z0bractb")~ THEN REPLY @31879 GOTO 21
  IF ~PartyHasItem("z0bractb")~ THEN REPLY @32020 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @32021
  IF ~~ THEN REPLY @32023 DO ~AddXP2DA("IW2EX6H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31810)
                              TakePartyItem("z0bractb")
                              DestroyItem("z0bractb")
                              CreateItem("z3gentb",1,1,0)
                              EraseJournalEntry(@31638)
                              EraseJournalEntry(@31658)
                              EraseJournalEntry(@31796)
                              EraseJournalEntry(@31645)
                              EraseJournalEntry(@31802)
                              AddJournalEntry(@31800,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @32020 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @32024
  IF ~~ THEN REPLY @32026 DO ~GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)~ GOTO 11
  IF ~~ THEN REPLY @32027 DO ~AddJournalEntry(@31801,QUEST)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @31830 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                              GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)
                              EraseJournalEntry(@31638)
                              EraseJournalEntry(@31658)
                              EraseJournalEntry(@31796)
                              EraseJournalEntry(@31645)
                              EraseJournalEntry(@31802)
                              AddJournalEntry(@31800,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @32029
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @32030
  IF ~~ THEN REPLY @32172 GOTO 13
  IF ~~ THEN REPLY @32173 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @32174
  IF ~~ THEN REPLY @32175 GOTO 14
  IF ~~ THEN REPLY @32176 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @32177 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @32178
  IF ~~ THEN REPLY @32179 GOTO 15
  IF ~~ THEN REPLY @32180 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @36870 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @32267
  IF ~~ THEN REPLY @32268 GOTO 16
  IF ~~ THEN REPLY @32173 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @32269
  IF ~~ THEN REPLY @32270 DO ~AddXP2DA("IW2EX6A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31813)
                              SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                              AddJournalEntry(@31645,QUEST)~ EXIT
END

IF WEIGHT #3
~Global("Krunbars_Bracers_Quest","GLOBAL",2)
 Global("30Yquog_Quest","GLOBAL",1)~ THEN BEGIN 17
  SAY @32271
  IF ~PartyHasItem("z0bractb")~ THEN REPLY @32272 DO ~TakePartyItem("z0bractb")
                                                      GiveItem("z3yqmes",LastTalkedToBy)~ GOTO 18
  IF ~~ THEN REPLY @32971 EXIT
  IF ~~ THEN REPLY @28749 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @32274
  IF ~Global("SPRITE_IS_DEADYquog","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @32275 DO ~AddXP2DA("IW2EX6VH")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@31812)
                                                                DestroyItem("z0bractb")
                                                                CreateItem("z3gentb",1,1,0)
                                                                GiveItemCreate("RSHD_03",LastTalkedToBy,1,1,0)
                                                                EraseJournalEntry(@31638)
                                                                EraseJournalEntry(@31658)
                                                                EraseJournalEntry(@31796)
                                                                EraseJournalEntry(@31645)
                                                                EraseJournalEntry(@31802)
                                                                AddJournalEntry(@31809,QUEST)~ GOTO 19
  IF ~Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN REPLY @31830 DO ~AddXP2DA("IW2EX6VH")
                                                                      DisplayStringNoNameDlg(LastTalkedToBy,@31812)
                                                                      DestroyItem("z0bractb")
                                                                      CreateItem("z3gentb",1,1,0)
                                                                      GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)
                                                                      SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                                                                      SetGlobal("30Yquog_Quest","GLOBAL",2)
                                                                      EraseJournalEntry(@31638)
                                                                      EraseJournalEntry(@31658)
                                                                      EraseJournalEntry(@31796)
                                                                      EraseJournalEntry(@31645)
                                                                      EraseJournalEntry(@31802)
                                                                      AddJournalEntry(@31809,QUEST)~ EXIT
  IF ~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @32275 DO ~AddXP2DA("IW2EX6H")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@31810)
                                                                DestroyItem("z0bractb")
                                                                CreateItem("z3gentb",1,1,0)
                                                                GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)
                                                                EraseJournalEntry(@31638)
                                                                EraseJournalEntry(@31658)
                                                                EraseJournalEntry(@31796)
                                                                EraseJournalEntry(@31645)
                                                                EraseJournalEntry(@31802)
                                                                AddJournalEntry(@31800,QUEST)~ GOTO 19
  IF ~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN REPLY @31830 DO ~AddXP2DA("IW2EX6H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@31810)
                                                                       DestroyItem("z0bractb")
                                                                       CreateItem("z3gentb",1,1,0)
                                                                       GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)
                                                                       SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                                                                       SetGlobal("30Yquog_Quest","GLOBAL",2)
                                                                       EraseJournalEntry(@31638)
                                                                       EraseJournalEntry(@31658)
                                                                       EraseJournalEntry(@31796)
                                                                       EraseJournalEntry(@31645)
                                                                       EraseJournalEntry(@31802)
                                                                       AddJournalEntry(@31800,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @32269
  IF ~~ THEN REPLY @31830 DO ~AddXP2DA("IW2EX6A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31813)
                              SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                              SetGlobal("30Yquog_Quest","GLOBAL",2)
                              AddJournalEntry(@31645,QUEST)~ EXIT
END

IF WEIGHT #2
~Global("Krunbars_Bracers_Quest","GLOBAL",3)~ THEN BEGIN 20
  SAY @32569
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @32570
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 !Global("Krunbars_Bracers_Quest","GLOBAL",1)~ THEN BEGIN 22
  SAY @32571
  IF ~PartyHasItem("z0bractb")~ THEN REPLY @32572 DO ~AddXP2DA("IW2EX6H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@31810)
                                                      TakePartyItem("z0bractb")
                                                      DestroyItem("z0bractb")
                                                      CreateItem("z3gentb",1,1,0)~ GOTO 33
  IF ~!PartyHasItem("z0bractb")
      Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN REPLY @33729 GOTO 25
  IF ~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)
      !Global("SPRITE_IS_DEADTequag","GLOBAL",0)
      Global("SPRITE_IS_DEADIlquag","GLOBAL",0)~ THEN REPLY @31832 GOTO 5
  IF ~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)
      Global("SPRITE_IS_DEADTequag","GLOBAL",0)
      !Global("SPRITE_IS_DEADIlquag","GLOBAL",0)~ THEN REPLY @33741 GOTO 5
  IF ~!Global("SPRITE_IS_DEADYquog","GLOBAL",0)
      !Global("SPRITE_IS_DEADTequag","GLOBAL",0)
      !Global("SPRITE_IS_DEADIlquag","GLOBAL",0)~ THEN REPLY @33742 GOTO 5
  IF ~~ THEN REPLY @32573 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Krunbars_Bracers_Quest","GLOBAL",1)~ THEN BEGIN 23
  SAY @32571
  IF ~PartyHasItem("z0bractb")
      !Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN REPLY @32572 DO ~AddXP2DA("IW2EX6H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@31810)~ GOTO 10
  IF ~PartyHasItem("z0bractb")
      Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN REPLY @32572 GOTO 18
  IF ~~ THEN REPLY @32573 EXIT
END

IF WEIGHT #4
~NumTimesTalkedTo(0)
 !Global("30Yquog_Quest","GLOBAL",1)
 Global("SPRITE_IS_DEADYquog","GLOBAL",0)~ THEN BEGIN 24
  SAY @31814
  IF ~~ THEN REPLY @32574 GOTO 25
  IF ~~ THEN REPLY @32575 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @32576
  IF ~~ THEN REPLY @32577 GOTO 26
  IF ~~ THEN REPLY @32711 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @32712
  IF ~~ THEN REPLY @32713 GOTO 27
  IF ~~ THEN REPLY @32711 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @32714
  IF ~~ THEN REPLY @32715 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @32716
  IF ~~ THEN REPLY @40403 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @32717
  IF ~~ THEN REPLY @32718 GOTO 30
  IF ~~ THEN REPLY @31822 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @32719
  IF ~~ THEN REPLY @31825 GOTO 31
  IF ~~ THEN REPLY @33512 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @31827
  IF ~~ THEN REPLY @31828 GOTO 32
  IF ~PartyHasItem("z0bractb")~ THEN REPLY @33966 GOTO 33
  IF ~~ THEN REPLY @33513 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @31829
  IF ~~ THEN REPLY @33514 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",1)
                              AddJournalEntry(@31802,QUEST)~ EXIT
  IF ~~ THEN REPLY @36883 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @33515
  IF ~~ THEN REPLY @32026 GOTO 34
  IF ~~ THEN REPLY @32027 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @31830 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @33516
  IF ~~ THEN REPLY @31830 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",3)
                              GiveItemCreate("RARM_02",LastTalkedToBy,1,1,0)
                              EraseJournalEntry(@31638)
                              EraseJournalEntry(@31658)
                              EraseJournalEntry(@31796)
                              EraseJournalEntry(@31645)
                              EraseJournalEntry(@31802)
                              AddJournalEntry(@31800,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("Pissed_Off_Lacky","GLOBAL",1)
 !Global("AR3002_TEQUAG_TEAM_DEAD","GLOBAL",1)~ THEN BEGIN 35
  SAY @31815
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("Pissed_Off_Lacky","GLOBAL",1)
 !Global("AR3002_TEQUAG_TEAM_DEAD","GLOBAL",1)~ THEN BEGIN 36
  SAY @31815
  IF ~~ THEN EXIT
END

IF WEIGHT #8
~NumTimesTalkedTo(0)
 Global("30Yquog_Quest","GLOBAL",1)~ THEN BEGIN 37
  SAY @31814
  IF ~~ THEN REPLY @40399 GOTO 38
  IF ~~ THEN REPLY @40400 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @31817
  IF ~~ THEN REPLY @40403 GOTO 0
  IF ~~ THEN REPLY @40404 DO ~Enemy()~ EXIT
END
