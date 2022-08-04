BEGIN ~11VEIRA~

IF WEIGHT #3
~Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @28073
  IF ~PartyHasItem("z1gendon")~ THEN REPLY @28074 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@28071)
                                                      SetGlobal("Know_Veira","GLOBAL",1)
                                                      TakePartyItem("z1gendon")
                                                      DestroyItem("z1gendon")
                                                      AddJournalEntry(@28052,QUEST)~ GOTO 15
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28075 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                            SetGlobal("Donovan_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 24 /*true*/
  IF ~Global("Weeping_Q","GLOBAL",0)~ THEN REPLY @28076 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                            SetGlobal("Weeping_Q","GLOBAL",1)~ GOTO 25
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @28078 DO ~SetGlobal("Know_Veira","GLOBAL",1)~ GOTO 26
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28079 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                                  SetGlobal("Veira_Turned","GLOBAL",1)
                                                                  SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)~ THEN REPLY @38699 GOTO 1
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28080 DO ~SetGlobal("Know_Veira","GLOBAL",1)~ GOTO 1
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                          SetGlobal("Veira_Turned","GLOBAL",1)
                                                          SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28081 DO ~SetGlobal("Know_Veira","GLOBAL",1)~  GOTO 26
  IF ~GlobalGT("Know_Veira","GLOBAL",0)~ THEN REPLY @28082 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @28083
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @28084 DO ~AddXP2DA("IW2EX1A")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@28067)
                                                           SetGlobal("Veira_Turned","GLOBAL",2)
                                                           AddJournalEntry(@28048,QUEST)~ GOTO 2
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @28086 DO ~AddXP2DA("IW2EX1A")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@28068)
                                                           SetGlobal("Blew_It","GLOBAL",1)
                                                           SetGlobal("Let_Me_Go","GLOBAL",1)
                                                           AddJournalEntry(@28049,QUEST)~ EXIT
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @28084 DO ~AddXP2DA("IW2EX1A")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@28067)
                                                          SetGlobal("Veira_Turned","GLOBAL",2)
                                                          AddJournalEntry(@80084,QUEST)~ GOTO 2
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @28086 DO ~AddXP2DA("IW2EX1A")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@28068)
                                                          SetGlobal("Blew_It","GLOBAL",1)
                                                          SetGlobal("Let_Me_Go","GLOBAL",1)
                                                          AddJournalEntry(@80085,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @28087
  IF ~~ THEN REPLY @28088 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @28089
  IF ~~ THEN REPLY @28090 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @28091
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @28093
  IF ~PartyHasItemIdentified("z1gengbo")
      GlobalGT("Ask_Letto_Dagger","GLOBAL",0)~ THEN REPLY @28161 GOTO 6
  IF ~Global("Letto_Dagger","GLOBAL",0)~ THEN REPLY @28162 DO ~SetGlobal("Ask_Letto_Dagger","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @28163 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @28164
  IF ~~ THEN REPLY @28165 DO ~TakePartyItem("z1gengbo")
                              DestroyItem("z1gengbo")
                              GiveItemCreate("z1genvbo",LastTalkedToBy,0,0,0)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @28166
  IF ~~ THEN REPLY @28167 DO ~SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @28237
  IF ~~ THEN REPLY @28238 DO ~AddXP2DA("IW2EX1A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@28069)
                              SetGlobal("Let_Me_Go","GLOBAL",1)
                              AddJournalEntry(@28050,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28239
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @28240 GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,13,INT)
      PartyHasItemIdentified("z1gengbo")~ THEN REPLY @28267 GOTO 6
  IF ~~ THEN REPLY @28268 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @28269
  IF ~~ THEN REPLY @28270 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @28271
  IF ~~ THEN REPLY @28272 DO ~AddXP2DA("IW2EX1A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@28070)
                              SetGlobal("Letto_Dagger","GLOBAL",1)
                              GiveItemCreate("MISC39",LastTalkedToBy,0,0,0)
                              GiveItemCreate("zz35ls",LastTalkedToBy,0,0,0)
                              AddJournalEntry(@28051,QUEST_DONE)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @28273
  IF ~PartyHasItemIdentified("z1gengbo")~ THEN REPLY @28161 GOTO 6
  IF ~~ THEN REPLY @28163 EXIT
END

IF WEIGHT #1
~Global("Veira_Turned","GLOBAL",2)~ THEN BEGIN 13
  SAY @28343
  IF ~PartyHasItemIdentified("z1gengbo")
      GlobalGT("Ask_Letto_Dagger","GLOBAL",0)~ THEN REPLY @28344 GOTO 6
  IF ~Global("Letto_Dagger","GLOBAL",0)~ THEN REPLY @28345 DO ~SetGlobal("Ask_Letto_Dagger","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @28346 EXIT
END

IF WEIGHT #4
~Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 14
  SAY @28347
  IF ~PartyHasItem("z1gendon")~ THEN REPLY @28074 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@28071)
                                                      SetGlobal("Know_Veira","GLOBAL",1)
                                                      TakePartyItem("z1gendon")
                                                      DestroyItem("z1gendon")
                                                      AddJournalEntry(@28052,QUEST)~ GOTO 15
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28075 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                            SetGlobal("Donovan_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 24 /*true*/
  IF ~Global("Weeping_Q","GLOBAL",0)~ THEN REPLY @28076 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                            SetGlobal("Weeping_Q","GLOBAL",1)~ GOTO 25
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @28078 DO ~SetGlobal("Know_Veira","GLOBAL",1)~ GOTO 26
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28079 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                                  SetGlobal("Veira_Turned","GLOBAL",1)
                                                                  SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)~ THEN REPLY @38700 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                       SetGlobal("Veira_Turned","GLOBAL",1)
                                                       SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28080 DO ~SetGlobal("Know_Veira","GLOBAL",1)~ GOTO 1
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("Know_Veira","GLOBAL",1)
                                                          SetGlobal("Veira_Turned","GLOBAL",1)
                                                          SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28081 DO ~SetGlobal("Know_Veira","GLOBAL",1)~ GOTO 26
  IF ~GlobalGT("Know_Veira","GLOBAL",0)~ THEN REPLY @28082 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @28348
  IF ~~ THEN REPLY @28349 GOTO 16
  IF ~~ THEN REPLY @28350 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @28351
  IF ~~ THEN REPLY @28352 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @28089
  IF ~~ THEN REPLY @28090 DO ~SetGlobal("Veira_Happy","GLOBAL",1)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @28091
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @28353
  IF ~~ THEN REPLY @28354 GOTO 20
  IF ~~ THEN REPLY @28426 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @28427
  IF ~PartyHasItemIdentified("z1gengbo")~ THEN REPLY @28428 GOTO 21
  IF ~~ THEN REPLY @28429 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @28430
  IF ~~ THEN REPLY @28431 DO ~AddXP2DA("IW2EX1A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@28072)
                              TakePartyItem("z1gengbo")
                              DestroyItem("z1gengbo")
                              GiveItemCreate("z1genvbo",LastTalkedToBy,0,0,0)
                              AddJournalEntry(@28053,QUEST)~ GOTO 22
  IF ~~ THEN REPLY @28432 DO ~AddXP2DA("IW2EX1A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@28072)
                              TakePartyItem("z1gengbo")
                              DestroyItem("z1gengbo")
                              GiveItemCreate("z1genvbo",LastTalkedToBy,0,0,0)
                              AddJournalEntry(@28053,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @28433
  IF ~~ THEN REPLY @28167 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @28434
  IF ~~ THEN REPLY @30749 DO ~SetGlobal("Veira_Quest","GLOBAL",2)
                              SetGlobal("Let_Me_Go","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @30750
  IF ~PartyHasItem("z1gendon")~ THEN REPLY @28074 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@28071)
                                                      TakePartyItem("z1gendon")
                                                      DestroyItem("z1gendon")
                                                      AddJournalEntry(@28052,QUEST)~ GOTO 15
  IF ~Global("Weeping_Q","GLOBAL",0)~ THEN REPLY @28076 DO ~SetGlobal("Weeping_Q","GLOBAL",1)~ GOTO 25
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @28078 GOTO 26
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28079 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                                  SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)~ THEN REPLY @38701 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                       SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28080 GOTO 1
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                          SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28081 GOTO 26
  IF ~GlobalGT("Know_Veira","GLOBAL",0)~ THEN REPLY @28082 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @30751
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)~ THEN REPLY @38702 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                       SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~PartyHasItem("z1gendon")~ THEN REPLY @28074 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@28071)
                                                      TakePartyItem("z1gendon")
                                                      DestroyItem("z1gendon")
                                                      AddJournalEntry(@28052,QUEST)~ GOTO 15
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28075 DO ~SetGlobal("Donovan_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 24 /*true*/
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @28078 GOTO 26
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28079 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                                  SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28080 GOTO 1
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("Veira_Turned","GLOBAL",1)
                                                          SetGlobal("Veira_Quest","GLOBAL",2)~ GOTO 1
  IF ~Global("Donovan_Q","GLOBAL",0)~ THEN REPLY @28081 GOTO 26
  IF ~GlobalGT("Know_Veira","GLOBAL",0)~ THEN REPLY @28082 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @30752
  IF ~~ THEN REPLY @30753 DO ~AddJournalEntry(@28054,QUEST)~ EXIT
END

IF WEIGHT #2
~GlobalGT("Veira_Happy","GLOBAL",0)~ THEN BEGIN 27
  SAY @30759
  IF ~PartyHasItemIdentified("z1gengbo")~ THEN REPLY @28428 GOTO 21
  IF ~~ THEN REPLY @30760 EXIT
END

IF WEIGHT #0
~Global("Let_Me_Go","GLOBAL",1)~ THEN BEGIN 28
  SAY @30761
  IF ~~ THEN REPLY @30762 EXIT
END
