BEGIN ~50VENLA~

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)
 Global("SPRITE_IS_DEADLimha","GLOBAL",1)~ THEN BEGIN 0
  SAY @3199
  IF ~HPPercent(LastTalkedToBy,100)~ THEN REPLY @3200 DO ~AddXP2DA("IW2EX9A")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                          SetGlobal("50Venla_Children","GLOBAL",2)
                                                          //SetCriticalPathObject(Myself,FALSE)
                                                          ApplySpellRES("IWCPREM",Myself)
                                                          AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 3
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @3200 DO ~AddXP2DA("IW2EX9A")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                            SetGlobal("50Venla_Children","GLOBAL",2)
                                                            //SetCriticalPathObject(Myself,FALSE)
                                                            ApplySpellRES("IWCPREM",Myself)
                                                            AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !Alignment(LastTalkedToBy,LAWFUL_GOOD)~ THEN REPLY @3201 DO ~AddXP2DA("IW2EX9A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                                   SetGlobal("50Venla_Children","GLOBAL",2)
                                                                   //SetCriticalPathObject(Myself,FALSE)
                                                                   ApplySpellRES("IWCPREM",Myself)
                                                                   AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 5
  IF ~~ THEN REPLY @3202 DO ~AddXP2DA("IW2EX9A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                             SetGlobal("50Venla_Children","GLOBAL",2)
                             //SetCriticalPathObject(Myself,FALSE)
                             ApplySpellRES("IWCPREM",Myself)
                             AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 EXIT
END

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)
 !Global("SPRITE_IS_DEADLimha","GLOBAL",1)
 HPPercentLT(LastTalkedToBy,100)~ THEN BEGIN 1
  SAY @3203
  IF ~~ THEN REPLY @3205 GOTO 6
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3206 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @3207 GOTO 8
  IF ~~ THEN REPLY @3208 EXIT
END

IF WEIGHT #4
~NumberOfTimesTalkedTo(0)
 !Global("SPRITE_IS_DEADLimha","GLOBAL",1)
 HPPercent(LastTalkedToBy,100)~ THEN BEGIN 2
  SAY @3209
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3210 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3306 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3307
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3308 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @3309
  IF ~~ THEN REPLY @3205 GOTO 6
  IF ~~ THEN REPLY @3310 GOTO 8
  IF ~~ THEN REPLY @3208 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @3311
  IF ~~ THEN REPLY @3312 GOTO 8
  IF ~~ THEN REPLY @3313 GOTO 6
  IF ~~ THEN REPLY @3353 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @3354
  IF ~!Global("50Venla_Rose","GLOBAL",2)~ THEN REPLY @3355 DO ~StartStore("50Venla",LastTalkedToBy)~ EXIT
  IF ~!Global("50Venla_Rose","GLOBAL",2)~ THEN REPLY @3356 DO ~StartStore("50Venlaa",LastTalkedToBy)~ EXIT //50Venlaa
  IF ~Global("50Venla_Rose","GLOBAL",2)~ THEN REPLY @3355 DO ~StartStore("50Venla",LastTalkedToBy)~ EXIT //50Venla2
  IF ~Global("50Venla_Rose","GLOBAL",2)~ THEN REPLY @3356 DO ~StartStore("50Venlaa",LastTalkedToBy)~ EXIT //50Venl2a
  IF ~~ THEN REPLY @3357 GOTO 21
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3358 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @3359 GOTO 8
  IF ~~ THEN REPLY @3360 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @3361
  IF ~~ THEN REPLY @3362 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @3363 GOTO 8
  IF ~~ THEN REPLY @3364 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3365
  IF ~Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @3366 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~  PartyHasItem("z5genfro")~ THEN REPLY @3367 DO ~AddXP2DA("IW2EX9E")
                                                       DisplayStringNoNameDlg(LastTalkedToBy,@3198)
                                                       TakePartyItem("z5genfro")
                                                       SetGlobal("50Venla_Rose","GLOBAL",2)
                                                       GiveItemCreate("z5potn56",LastTalkedToBy,3,0,0)
                                                       EraseJournalEntry(@3180)
                                                       AddJournalEntry(@3179,QUEST_DONE)~ GOTO 12
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 17
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 23
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 23
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)
      Global("50Venla_Woods","GLOBAL",0)~ THEN REPLY @37899 GOTO 25
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("50Suoma_Give","GLOBAL",0)~ THEN REPLY @38349 DO ~SetGlobal("50Suoma_Give","GLOBAL",1)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)~ GOTO 24 //POTN_52
  IF ~CheckStatGT(LastTalkedToBy,15,WIS)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("50Suoma_Give","GLOBAL",0)~ THEN REPLY @38350 DO ~SetGlobal("50Suoma_Give","GLOBAL",1)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)~ GOTO 24 //POTN_52
  IF ~CheckStatGT(LastTalkedToBy,15,CON)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !Alignment(LastTalkedToBy,MASK_GOOD)
      Global("50Suoma_Give","GLOBAL",0)~ THEN REPLY @38351 DO ~SetGlobal("50Suoma_Give","GLOBAL",1)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)~ GOTO 24 //POTN_52
  IF ~~ THEN REPLY @401 GOTO 10
  IF ~~ THEN REPLY @3368 GOTO 6
  IF ~~ THEN REPLY @3360 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3371
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34370 GOTO 17
  IF ~~ THEN REPLY @3375 GOTO 8
  IF ~~ THEN REPLY @3377 GOTO 6
  IF ~~ THEN REPLY @3418 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @3419
  IF ~Global("50Venla_Rose","GLOBAL",0)~ THEN REPLY @3422 DO ~SetGlobal("50Venla_Rose","GLOBAL",1)
                                                              AddJournalEntry(@3180,QUEST)~ GOTO 11
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34370 GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3210 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3424 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @3425
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34370 GOTO 17
  IF ~PartyHasItem("z5genfro")~ THEN REPLY @3644 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@3198)
                                                     TakePartyItem("z5genfro")
                                                     SetGlobal("50Venla_Rose","GLOBAL",2)
                                                     GiveItemCreate("z5potn56",LastTalkedToBy,3,0,0)
                                                     EraseJournalEntry(@3180)
                                                     AddJournalEntry(@3179,QUEST_DONE)~ GOTO 12
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3210 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3654 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @3658
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34370 GOTO 17
  IF ~Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @3366 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3368 GOTO 6
  IF ~~ THEN REPLY @3660 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("SPRITE_IS_DEADLimha","GLOBAL",1)
 !Global("50Venla_Children","GLOBAL",2)~ THEN BEGIN 13
  SAY @3666
  IF ~HPPercent(LastTalkedToBy,100)~ THEN REPLY @3200 DO ~AddXP2DA("IW2EX9A")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                          SetGlobal("50Venla_Children","GLOBAL",2)
                                                          //SetCriticalPathObject(Myself,FALSE)
                                                          ApplySpellRES("IWCPREM",Myself)
                                                          AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 3
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @3200 DO ~AddXP2DA("IW2EX9A")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                            SetGlobal("50Venla_Children","GLOBAL",2)
                                                            //SetCriticalPathObject(Myself,FALSE)
                                                            ApplySpellRES("IWCPREM",Myself)
                                                            AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !Alignment(LastTalkedToBy,LAWFUL_GOOD)~ THEN REPLY @3201 DO ~AddXP2DA("IW2EX9A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                                                                   SetGlobal("50Venla_Children","GLOBAL",2)
                                                                   //SetCriticalPathObject(Myself,FALSE)
                                                                   ApplySpellRES("IWCPREM",Myself)
                                                                   AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 5
  IF ~~ THEN REPLY @3211 DO ~AddXP2DA("IW2EX9A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                             SetGlobal("50Venla_Children","GLOBAL",2)
                             //SetCriticalPathObject(Myself,FALSE)
                             ApplySpellRES("IWCPREM",Myself)
                             AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 GOTO 8
  IF ~~ THEN REPLY @3202 DO ~AddXP2DA("IW2EX9A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@3197)
                             SetGlobal("50Venla_Children","GLOBAL",2)
                             //SetCriticalPathObject(Myself,FALSE)
                             ApplySpellRES("IWCPREM",Myself)
                             AddJournalEntry(@3173,QUEST)~ FLAGS 0x200 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 !Global("SPRITE_IS_DEADLimha","GLOBAL",1)
 HPPercentLT(LastTalkedToBy,100)~ THEN BEGIN 14
  SAY @3677
  IF ~~ THEN REPLY @3205 GOTO 6
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34370 GOTO 17
  IF ~Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @3366 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3206 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~PartyHasItem("z5genfro")~ THEN REPLY @3680 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@3198)
                                                     TakePartyItem("z5genfro")
                                                     SetGlobal("50Venla_Rose","GLOBAL",2)
                                                     GiveItemCreate("z5potn56",LastTalkedToBy,3,0,0)
                                                     EraseJournalEntry(@3180)
                                                     AddJournalEntry(@3179,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @3693 GOTO 8
  IF ~~ THEN REPLY @3208 EXIT
END

IF WEIGHT #7
~NumTimesTalkedToGT(0)
 !Global("SPRITE_IS_DEADLimha","GLOBAL",1)
 HPPercent(LastTalkedToBy,100)
 Global("50Venla_Children","GLOBAL",1)~ THEN BEGIN 15
  SAY @3698
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @292 GOTO 17
  IF ~Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @297 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~PartyHasItem("z5genfro")~ THEN REPLY @3713 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@3198)
                                                     TakePartyItem("z5genfro")
                                                     SetGlobal("50Venla_Rose","GLOBAL",2)
                                                     GiveItemCreate("z5potn56",LastTalkedToBy,3,0,0)
                                                     EraseJournalEntry(@3180)
                                                     AddJournalEntry(@3179,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @3716 GOTO 8
  IF ~~ THEN REPLY @3720 GOTO 6
  IF ~~ THEN REPLY @3725 EXIT
END

IF WEIGHT #8
~True()~ THEN BEGIN 16
  SAY @3769
  IF ~Global("50Suoma_Help","GLOBAL",1)
      Global("50Venla_Children","GLOBAL",0)~ THEN REPLY @3210 DO ~SetGlobal("50Venla_Children","GLOBAL",1)
                                                                  AddJournalEntry(@3175,QUEST)~ GOTO 7
  IF ~PartyHasItem("z5genfro")~ THEN REPLY @3772 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@3198)
                                                     TakePartyItem("z5genfro")
                                                     SetGlobal("50Venla_Rose","GLOBAL",2)
                                                     GiveItemCreate("z5potn56",LastTalkedToBy,3,0,0)
                                                     EraseJournalEntry(@3180)
                                                     AddJournalEntry(@3179,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3797 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @34358
  IF ~!Global("50Carynara","GLOBAL",0)~ THEN REPLY @232 GOTO 18
  IF ~!Global("50Carynara","GLOBAL",0)
       Global("50LimhaQ","GLOBAL",1)~ THEN REPLY @34361 GOTO 18
  IF ~Global("50Carynara","GLOBAL",0)~ THEN REPLY @34362 GOTO 19
  IF ~Global("50Carynara","GLOBAL",0)
      Global("50LimhaQ","GLOBAL",1)~ THEN REPLY @34363 GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @34359
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3364 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @34360
  IF ~~ THEN REPLY @3366 DO ~AddJournalEntry(@3191,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3364 EXIT
END

IF WEIGHT #1
~Global("50Twins_Attack","GLOBAL",2)
 Global("50Twins_Venla","GLOBAL",0)~ THEN BEGIN 20
  SAY @34701
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @309 DO ~SetGlobal("50Twins_Venla","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @3202 DO ~SetGlobal("50Twins_Venla","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @34360
  IF ~False()~ THEN REPLY @8170 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @8171 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @3360 EXIT
END

IF WEIGHT #0 ~See([ENEMY])~ THEN BEGIN 22
  SAY @37856
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @38341
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3308 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @38342
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3308 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38341
  IF ~CheckStatGT(LastTalkedToBy,15,CON)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @38360 DO ~SetGlobal("50Venla_Woods","GLOBAL",1)
                                                                  AddJournalEntry(@38361,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3308 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @38344
  IF ~~ THEN REPLY @3211 GOTO 8
  IF ~~ THEN REPLY @3212 GOTO 6
  IF ~~ THEN REPLY @3308 EXIT
END
