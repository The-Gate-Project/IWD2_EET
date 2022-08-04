BEGIN ~20NEWEMM~

IF WEIGHT #5
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @36409
  IF ~~ THEN REPLY @36410 GOTO 1
  IF ~~ THEN REPLY @36411 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @36412
  IF ~~ THEN REPLY @36413 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36414 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @36415
  IF ~~ THEN REPLY @36413 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36414 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @36416
  IF ~~ THEN REPLY @36417 DO ~SetGlobal("SR_Emma_Heal","GLOBAL",1)~ FLAGS 0x200 GOTO 4 /*true*/
END

IF ~~ THEN BEGIN 4
  SAY @36418
  IF ~!PartyHasItem("z0swdl09")~ THEN REPLY @36419 GOTO 5
  IF ~!PartyHasItem("z0swdl09")~ THEN REPLY @36420 GOTO 6
  IF ~!Global("SR_Emma_Heal","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !PartyHasItem("z0swdl09")~ THEN REPLY @36421 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                       AddJournalEntry(@36401,QUEST)~ GOTO 7
  IF ~Global("SR_Emma_Heal","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !PartyHasItem("z0swdl09")~ THEN REPLY @36422 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                       AddJournalEntry(@36401,QUEST)~ GOTO 8
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      !PartyHasItem("z0swdl09")~ THEN REPLY @36423 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                       AddJournalEntry(@36400,QUEST)~ GOTO 9
  IF ~PartyHasItem("z0swdl09")
      !Global("SR_Kaitlin_Fled","GLOBAL",1)
      Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)~ THEN REPLY @2313 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                       SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)~ GOTO 17
  IF ~PartyHasItem("z0swdl09")
      Global("SR_Kaitlin_Fled","GLOBAL",1)~ THEN REPLY @2313 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                 SetGlobal("SR_Emma_Revenge","GLOBAL",2)
                                                                 SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)~ GOTO 27
  IF ~PartyHasItem("z0swdl09")
      !Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)~ THEN REPLY @2313 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                        SetGlobal("SR_Emma_Revenge","GLOBAL",3)
                                                                        SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)~ GOTO 29
END

IF ~~ THEN BEGIN 5
  SAY @36424
  IF ~~ THEN REPLY @36420 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @36425
  IF ~~ THEN REPLY @36426  DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                               AddJournalEntry(@36400,QUEST)~ GOTO 11
  IF ~!Global("SR_Emma_Heal","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36421 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                         AddJournalEntry(@36401,QUEST)~ GOTO 7
  IF ~Global("SR_Emma_Heal","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36422 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                         AddJournalEntry(@36401,QUEST)~ GOTO 8
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36423 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",3)
                                                             AddJournalEntry(@36400,QUEST)~ GOTO 9
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36427 DO ~SetGlobal("SR_Emma_Revenge","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @36416
  IF ~~ THEN REPLY @36428 DO ~SetGlobal("SR_Emma_Heal","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @36429
  IF ~~ THEN REPLY @36430 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @36431
  IF ~~ THEN REPLY @36432 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @36433
  IF ~~ THEN REPLY @36434 DO ~EraseJournalEntry(@36401)
                              EraseJournalEntry(@36400)
                              AddJournalEntry(@36402,QUEST_DONE)
                              StartCutScene("20cEmma2")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @36435
  IF ~~ THEN REPLY @36436 DO ~GiveItemCreate("FLAMOIL",LastTalkedToBy,3,0,0)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @36437
  IF ~~ THEN REPLY @36438 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @36439
  IF ~~ THEN REPLY @36440 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)~ THEN BEGIN 14
  SAY @36441
  IF ~Global("SR_Kaitlin_Fled","GLOBAL",1)
      !PartyHasItem("z0swdl09")~ THEN REPLY @36442 DO ~SetGlobal("SR_Emma_Revenge","GLOBAL",2)
                                                       EraseJournalEntry(@36401)
                                                       EraseJournalEntry(@36400)
                                                       AddJournalEntry(@36403,QUEST_DONE)~ GOTO 15
  IF ~!Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)
      !PartyHasItem("z0swdl09")~ THEN REPLY @36442 DO ~SetGlobal("SR_Emma_Revenge","GLOBAL",3)
                                                       EraseJournalEntry(@36401)
                                                       EraseJournalEntry(@36400)
                                                       AddJournalEntry(@36404,QUEST_DONE)~ GOTO 16
  IF ~Global("SR_Recover_Blade","GLOBAL",3)
      PartyHasItem("z0swdl09")
      !Global("SR_Kaitlin_Fled","GLOBAL",1)
      Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)~ THEN REPLY @36443 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                        SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)~ GOTO 17
  IF ~Global("SR_Recover_Blade","GLOBAL",3)
      PartyHasItem("z0swdl09")
      Global("SR_Kaitlin_Fled","GLOBAL",1)~ THEN REPLY @36443 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                  SetGlobal("SR_Emma_Revenge","GLOBAL",2)
                                                                  SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)
                                                                  EraseJournalEntry(@36401)
                                                                  EraseJournalEntry(@36400)
                                                                  AddJournalEntry(@36403,QUEST_DONE)~ GOTO 27
  IF ~Global("SR_Recover_Blade","GLOBAL",3)
      PartyHasItem("z0swdl09")
      !Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)~ THEN REPLY @36443 DO ~SetGlobal("SR_Recover_Blade","GLOBAL",4)
                                                                         SetGlobal("SR_Emma_Revenge","GLOBAL",3)
                                                                         SetGlobal("SR_Emma_Has_Blade","GLOBAL",1)
                                                                         EraseJournalEntry(@36401)
                                                                         EraseJournalEntry(@36400)
                                                                         AddJournalEntry(@36404,QUEST_DONE)~ GOTO 29
  IF ~!Global("SR_Emma_Heal","GLOBAL",1)~ THEN REPLY @36444 DO ~StartStore("20Emma",LastTalkedToBy)~ EXIT
  IF ~Global("SR_Emma_Heal","GLOBAL",1)~ THEN REPLY @36444 DO ~StartStore("20EmDis",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @36445 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @36446 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @36447
  IF ~~ THEN REPLY @36434 DO ~StartCutScene("20cEmma2")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @36448
  IF ~~ THEN REPLY @36434 DO ~StartCutScene("20cEmma2")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @36449
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36450 DO ~AddXP2DA("IW2EX3H")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@36407)
                                                         TakePartyItem("z0swdl09")
                                                         GiveGoldForce(2000)
                                                         EraseJournalEntry(@36401)
                                                         EraseJournalEntry(@36400)
                                                         AddJournalEntry(@36405,QUEST_DONE)~ GOTO 18
  IF ~//!ClassEx(LastTalkedToBy,Paladin)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @36451 DO ~AddXP2DA("IW2EX3H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@36407)
                                                        TakePartyItem("z0swdl09")
                                                        SetGlobal("SR_Emma_Heal","GLOBAL",1)
                                                        EraseJournalEntry(@36401)
                                                        EraseJournalEntry(@36400)
                                                        AddJournalEntry(@36405,QUEST_DONE)~ GOTO 19
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      //!ClassEx(LastTalkedToBy,Monk)
      ~ THEN REPLY @36451                           DO ~AddXP2DA("IW2EX3H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@36407)
                                                        TakePartyItem("z0swdl09")
                                                        SetGlobal("SR_Emma_Heal","GLOBAL",1)
                                                        EraseJournalEntry(@36401)
                                                        EraseJournalEntry(@36400)
                                                        AddJournalEntry(@36405,QUEST_DONE)~ GOTO 19
  IF ~Global("SR_Dereth_Freed","GLOBAL",4)
      Global("SR_Sabrina_Freed","GLOBAL",4)
      GlobalGT("SR_Rescue_Villagers","GLOBAL",3)
      Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      Global("SPRITE_IS_DEADSabrina","GLOBAL",0)
      Global("SPRITE_IS_DEADKaitlin","GLOBAL",0)~ THEN REPLY @36452 DO ~AddXP2DA("IW2EX4H")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@36408)
                                                                        EraseJournalEntry(@36401)
                                                                        EraseJournalEntry(@36400)
                                                                        AddJournalEntry(@36406,QUEST_DONE)~ GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @36453
  IF ~!Global("SR_Emma_Heal","GLOBAL",1)~ THEN REPLY @36444 DO ~StartStore("20Emma",LastTalkedToBy)~ EXIT
  IF ~Global("SR_Emma_Heal","GLOBAL",1)~ THEN REPLY @36444 DO ~StartStore("20EmDis",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @36445 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @36454 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @36455
  IF ~Global("SR_Emma_Heal","GLOBAL",1)~ THEN REPLY @36444 DO ~StartStore("20EmDis",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @36445 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @36456 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @36457
  IF ~~ THEN REPLY @36458 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @36459
  IF ~~ THEN REPLY @36460 EXIT
END

IF WEIGHT #4
~GlobalLT("SR_Orcs_Dead","GLOBAL",2)~ THEN BEGIN 22
  SAY @36461
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF WEIGHT #0
~Global("SR_Emma_Revenge","GLOBAL",1)~ THEN BEGIN 23
  SAY @36463
  IF ~~ THEN REPLY @36464 DO ~Enemy()~ EXIT
END

IF WEIGHT #1
~Global("SR_Emma_Revenge","GLOBAL",2)~ THEN BEGIN 24
  SAY @36465
  IF ~~ THEN REPLY @36464 DO ~Enemy()~ EXIT
END

IF WEIGHT #2
~Global("SR_Emma_Revenge","GLOBAL",3)~ THEN BEGIN 25
  SAY @36466
  IF ~~ THEN REPLY @36464 DO ~Enemy()~ EXIT
END

IF WEIGHT #3
~Global("SR_Emma_Revenge","GLOBAL",4)~ THEN BEGIN 26
  SAY @36467
  IF ~~ THEN REPLY @36464 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @36468
  IF ~~ THEN REPLY @36469 DO ~TakePartyItem("z0swdl09")~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @36470
  IF ~~ THEN REPLY @36434 DO ~StartCutScene("20cEmma2")~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @36468
  IF ~~ THEN REPLY @36469 DO ~TakePartyItem("z0swdl09")~ GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @36471
  IF ~~ THEN REPLY @36434 DO ~StartCutScene("20cEmma2")~ EXIT
END
