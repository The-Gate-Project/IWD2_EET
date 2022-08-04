BEGIN ~10GUTHE~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7432
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7433 GOTO 25
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7434 GOTO 25
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7435 DO ~SetGlobal("Guthewulfe_Questions","GLOBAL",1)~ GOTO 1
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7439 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7440
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~PartyGoldGT(2)~ THEN REPLY @7443 DO ~TakePartyGold(3)~ GOTO 3
  IF ~~ THEN REPLY @7446 GOTO 2
  IF ~PartyGoldLT(3)~ THEN REPLY @7447 EXIT
  IF ~PartyGoldGT(2)~ THEN REPLY @7439 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7449
  IF ~PartyGoldGT(2)~ THEN REPLY @7451 DO ~TakePartyGold(3)~ GOTO 3
  IF ~PartyGoldLT(3)~ THEN REPLY @7447 EXIT
  IF ~PartyGoldGT(2)~ THEN REPLY @7453 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7454
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @7460 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 7
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7463 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7464
  IF ~~ THEN REPLY @7465 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 23 /*true*/
  IF ~~ THEN REPLY @7466 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)
                             StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @7460 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 6 /*true*/
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)
                                                       SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)
                                                       SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~~ THEN REPLY @7467 DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7470
  IF ~~ THEN REPLY @7471 GOTO 6
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7467 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7472
  IF ~~ THEN REPLY @8207 GOTO 7
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @8211 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8212
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @8211 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8213
  IF ~~ THEN REPLY @8214 DO ~SetGlobal("Know_Braehg","GLOBAL",1)
                             AddJournalEntry(@7424,QUEST)~ GOTO 24
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @7460 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 7
  IF ~~ THEN REPLY @8211 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8251
  IF ~Race(LastTalkedToBy,DWARF)
      PartyGoldGT(4)~ THEN REPLY @8253 GOTO 11
  IF ~Gender(LastTalkedToBy,FEMALE)
      !Race(LastTalkedToBy,DWARF)
      PartyGoldGT(4)~ THEN REPLY @8253 DO ~TakePartyGold(5)~ GOTO 12
  IF ~!Race(LastTalkedToBy,DWARF)
      !Gender(LastTalkedToBy,FEMALE)
      PartyGoldGT(4)~ THEN REPLY @8253 DO ~TakePartyGold(5)~ GOTO 13
  IF ~PartyGoldLT(5)~ THEN REPLY @8256 GOTO 10
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @8257 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @8259 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8259 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8259 GOTO 7
  IF ~~ THEN REPLY @8211 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8263
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7459 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @8259 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8259 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8259 GOTO 7
  IF ~~ THEN REPLY @8211 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8264
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @8265 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8267 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @8268 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8268 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @8268 GOTO 7
  IF ~~ THEN REPLY @8304 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @10548
  IF ~CheckStatLT(LastTalkedToBy,10,CON)~ THEN REPLY @10549 GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,9,CON)~ THEN REPLY @10549 GOTO 15
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @10551
  IF ~CheckStatLT(LastTalkedToBy,10,CON)~ THEN REPLY @10549 GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,9,CON)~ THEN REPLY @10549 GOTO 15
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @10552
  IF ~~ THEN REPLY @10553 DO ~StartCutSceneMode()
                              StartCutScene("10cBarf1")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @10554
  IF ~CheckStatLT(LastTalkedToBy,12,CON)
      PartyGoldGT(4)~ THEN REPLY @10555 DO ~TakePartyGold(5)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,11,CON)
      PartyGoldGT(4)~ THEN REPLY @10556 DO ~TakePartyGold(5)~ GOTO 16
  IF ~PartyGoldLT(5)~ THEN REPLY @10557 GOTO 10
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @10558
  IF ~CheckStatLT(LastTalkedToBy,14,CON)
      PartyGoldGT(4)~ THEN REPLY @10561 DO ~TakePartyGold(5)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,13,CON)
      PartyGoldGT(4)~ THEN REPLY @10568 DO ~TakePartyGold(5)~ GOTO 17
  IF ~PartyGoldLT(5)~ THEN REPLY @10557 GOTO 10
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @10569
  IF ~CheckStatLT(LastTalkedToBy,15,CON)
      PartyGoldGT(4)~ THEN REPLY @10570 DO ~TakePartyGold(5)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,14,CON)
      PartyGoldGT(4)~ THEN REPLY @10571 DO ~AddXP2DA("IW2EX1E")
                                            DisplayStringNoNameDlg(LastTalkedToBy,@7430)
                                            TakePartyGold(5)~ GOTO 18
  IF ~PartyGoldLT(5)~ THEN REPLY @10557 GOTO 10
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @10574
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @10579 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",2)
                                                           GiveItem("z0misc38",LastTalkedToBy)
                                                           EraseJournalEntry(@7424)
                                                           AddJournalEntry(@7425,QUEST_DONE)
                                                           StartCutSceneMode()
                                                           StartCutScene("10cBarf2")~ EXIT
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @10582 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",2)
                                                         GiveItem("z0misc38",LastTalkedToBy)
                                                         EraseJournalEntry(@7424)
                                                         AddJournalEntry(@7425,QUEST_DONE)
                                                         StartCutSceneMode()
                                                         StartCutScene("10cBarf2")~ EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 19
  SAY @10583
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @10585 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @10586 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @10587 EXIT
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Guthewulfe_Game","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @10588 GOTO 9
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Questions","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10590 DO ~SetGlobal("Guthewulfe_Questions","GLOBAL",1)~ GOTO 1
  IF ~Global("Guthewulfe_Questions","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10590 GOTO 20
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10592 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @10593
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @8257 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~PartyGoldGT(2)~ THEN REPLY @7443 DO ~TakePartyGold(3)~ GOTO 3
  IF ~~ THEN REPLY @7446 GOTO 2
  IF ~PartyGoldLT(3)~ THEN REPLY @7447 EXIT
  IF ~PartyGoldGT(2)~ THEN REPLY @10594 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @10595
  IF ~~ THEN REPLY @10596 EXIT
END

IF WEIGHT #4
~GlobalGT("Guthewulfe_Game","GLOBAL",1)~ THEN BEGIN 22
  SAY @10597
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10598 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @10599 GOTO 20
  IF ~~ THEN REPLY @10602 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @10603
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @7460 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @7460 GOTO 7
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7467 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @10604
  IF ~~ THEN REPLY @10605 GOTO 9
  IF ~~ THEN REPLY @10606 GOTO 4
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10609 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",5)~ THEN REPLY @10616 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10616 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10616 GOTO 7
  IF ~~ THEN REPLY @10594 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @10617
  IF ~~ THEN REPLY @10618 GOTO 26
  IF ~~ THEN REPLY @10620 GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @10621
  IF ~~ THEN REPLY @10624 GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @10625
  IF ~~ THEN REPLY @10624 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @10627
  IF ~~ THEN DO ~SetGlobal("Know_Guthe_Trade","GLOBAL",1)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @10629
  IF ~~ THEN REPLY @10630 GOTO 30
  IF ~HasItem("z0misc38",Myself)~ THEN REPLY @10631 GOTO 31
  IF ~~ THEN REPLY @10632 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27274 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @10603
  IF ~~ THEN REPLY @10632 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~HasItem("z0misc38",Myself)~ THEN REPLY @10631 GOTO 31
  IF ~~ THEN REPLY @27274 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @8213
  IF ~~ THEN DO ~SetGlobal("Know_Charm","GLOBAL",1)~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @27275
  IF ~~ THEN REPLY @27276 DO ~StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28168 EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 !Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)
 Global("Guthe_Comment","GLOBAL",0)~ THEN BEGIN 33
  SAY @28169
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7433 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ GOTO 25
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7434 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ GOTO 25
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7435 DO ~SetGlobal("Guthewulfe_Questions","GLOBAL",1)
                                                                     SetGlobal("Guthe_Comment","GLOBAL",1)~ GOTO 1
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @7461 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @7439 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 !Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)
 Global("Guthe_Comment","GLOBAL",0)~ THEN BEGIN 34
  SAY @28169
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @10585 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)
                                                                    StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Know_Charm","GLOBAL",0)
      HasItem("z0misc38",Myself)~ THEN REPLY @10586 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @10587 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ EXIT
  IF ~Global("Know_Guthe_Trade","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @7442 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)
                                                                   StartStore("10Guthe",LastTalkedToBy)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Guthewulfe_Game","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @10588 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ GOTO 9
  IF ~Global("Guthewulfe_Game","GLOBAL",0)
      Global("Know_Charm","GLOBAL",1)
      HasItem("z0misc38",Myself)~ THEN REPLY @7462 DO ~SetGlobal("Guthewulfe_Game","GLOBAL",1)~ GOTO 8
  IF ~Global("Guthewulfe_Questions","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10590 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)
                                                                    SetGlobal("Guthewulfe_Questions","GLOBAL",1)~ GOTO 1
  IF ~Global("Guthewulfe_Questions","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10590 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ GOTO 20
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @10592 DO ~SetGlobal("Guthe_Comment","GLOBAL",1)~ EXIT
END
