BEGIN ~11OSWALD~

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)
 AreaCheck("IW1100")~ THEN BEGIN 0
  SAY @19323
  IF ~~ THEN REPLY @19324 DO ~SetGlobal("Know_Oswald","GLOBAL",1)~ GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @19325 DO ~SetGlobal("Know_Oswald","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @19343 DO ~SetGlobal("Know_Oswald","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19352
  IF ~~ THEN REPLY @19360 GOTO 2
  IF ~~ THEN REPLY @19362 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @19364
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @19374
  IF ~~ THEN REPLY @19375 GOTO 6
  IF ~~ THEN REPLY @19376 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @19378
  IF ~~ THEN REPLY @19379 GOTO 5
  IF ~~ THEN REPLY @19380 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @19382
  IF ~~ THEN REPLY @19383 GOTO 2
  IF ~~ THEN REPLY @19384 DO ~GiveItemCreate("POTN45",LastTalkedToBy,1,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @19385
  IF ~~ THEN REPLY @19387 GOTO 7
  IF ~~ THEN REPLY @19388 GOTO 7
  IF ~~ THEN REPLY @19389 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @19390
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @19391
  IF ~Global("Fortress_Quest","GLOBAL",2)~ THEN REPLY @19393 GOTO 27
  IF ~~ THEN REPLY @19395 DO ~SetGlobal("Know_Oswald_Crash","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @19408
  IF ~~ THEN REPLY @19409 GOTO 17
  IF ~~ THEN REPLY @19410 GOTO 10
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @19411
  IF ~~ THEN DO ~SetGlobal("Know_Oswald_Crash","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @19412
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19413
  IF ~~ THEN REPLY @19409 GOTO 17
  IF ~~ THEN REPLY @19414 DO ~SetGlobal("40MendingSpell","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @19415 GOTO 20
  IF ~~ THEN REPLY @19416 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @19417
  IF ~~ THEN REPLY @19418 GOTO 20
  IF ~~ THEN REPLY @19419 GOTO 14
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @19420
  IF ~~ THEN REPLY @19432 GOTO 15
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @19438
  IF ~~ THEN REPLY @19439 GOTO 16
  IF ~~ THEN REPLY @19440 GOTO 20
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @19441
  IF ~~ THEN REPLY @19442 GOTO 17
  IF ~~ THEN REPLY @19440 GOTO 20
  IF ~~ THEN REPLY @19443 GOTO 10
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @19444
  IF ~~ THEN REPLY @19445 DO ~SetGlobal("Know_Oswald_Crash","GLOBAL",1)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @19446
  IF ~~ THEN REPLY @19418 GOTO 20
  IF ~~ THEN REPLY @19447 GOTO 19
  IF ~~ THEN REPLY @19448 DO ~SetGlobal("40MendingSpell","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @19449
  IF ~~ THEN REPLY @19450 GOTO 20
  IF ~~ THEN REPLY @19451 GOTO 10
  IF ~~ THEN REPLY @19407 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @19452
  IF ~~ THEN REPLY @19453 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 21 /*true*/
  IF ~~ THEN REPLY @19454 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 21 /*true*/
END

IF ~~ THEN BEGIN 21
  SAY @19455
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19456 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19456 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19457 GOTO 23
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 22
  SAY @19458
  IF ~~ THEN REPLY @19459 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)
                              StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19460 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @19461 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @19462 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @19463 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 23
  SAY @19464
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19465 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19465 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19461 GOTO 24
  IF ~~ THEN REPLY @19474 GOTO 10
  IF ~~ THEN REPLY @19479 GOTO 6
  IF ~~ THEN REPLY @19480 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 24
  SAY @19481
  IF ~Global("Fortress_Quest","GLOBAL",2)~ THEN REPLY @19482 GOTO 27
  IF ~~ THEN REPLY @19483 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @19486
  IF ~~ THEN REPLY @19487 GOTO 26
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19488 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19488 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19489 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 26
  SAY @19490
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19491 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19491 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19461 GOTO 24
  IF ~~ THEN REPLY @19492 GOTO 10
  IF ~~ THEN REPLY @19479 GOTO 6
  IF ~~ THEN REPLY @19489 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 27
  SAY @19493
  IF ~~ THEN REPLY @19494 DO ~SetGlobal("Oswald_Has_No_Pants","GLOBAL",1)~ GOTO 28
  IF ~~ THEN REPLY @19495 DO ~SetGlobal("Oswald_Has_No_Pants","GLOBAL",1)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @19505
  IF ~~ THEN REPLY @19506 GOTO 32
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19507 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19507 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @19508 GOTO 29
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 29
  SAY @19509
  IF ~~ THEN REPLY @19515 DO ~AddJournalEntry(@18913,QUEST)~ GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @19516
  IF ~~ THEN REPLY @19517 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @19518
  IF ~~ THEN REPLY @20694 GOTO 32
  IF ~~ THEN REPLY @20702 DO ~SetGlobal("IW4000_Revealed","GLOBAL",1)
                              AddJournalEntry(@18914,QUEST)
                              StartCutSceneMode()
                              StartCutScene("O_4001a")~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @20703
  IF ~~ THEN REPLY @20705 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Oswald_Has_No_Pants","GLOBAL",1)
 AreaCheck("IW1100")~ THEN BEGIN 33
  SAY @20706
  IF ~~ THEN REPLY @19508 GOTO 29
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @19507 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @19507 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @20777 GOTO 6
  IF ~~ THEN REPLY @19506 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Oswald_Has_No_Pants","GLOBAL",0)
 AreaCheck("IW1100")~ THEN BEGIN 34
  SAY @20778
  IF ~Global("Fortress_Quest","GLOBAL",2)~ THEN REPLY @19393 GOTO 27
  IF ~~ THEN REPLY @20779 GOTO 6
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @20780 GOTO 22
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @20780 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @20781 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #0
~AreaCheck("IW4001")
 Global("40OswaldAwake","GLOBAL",0)~ THEN BEGIN 35
  SAY @20782
  IF ~Global("40YellCount","GLOBAL",0)~ THEN REPLY @22022 DO ~IncrementGlobal("40YellCount","GLOBAL",1)~ FLAGS 0x200 GOTO 35 /*true*/
  IF ~~ THEN REPLY @22025 GOTO 35
  IF ~Global("40YellCount","GLOBAL",1)~ THEN REPLY @22033 DO ~IncrementGlobal("40YellCount","GLOBAL",1)~ FLAGS 0x200 GOTO 35 /*true*/
  IF ~GlobalGT("40YellCount","GLOBAL",0)~ THEN REPLY @22046 GOTO 35
  IF ~Global("40YellCount","GLOBAL",2)~ THEN REPLY @22048 DO ~IncrementGlobal("40YellCount","GLOBAL",1)~ FLAGS 0x200 GOTO 35 /*true*/
  IF ~GlobalGT("40YellCount","GLOBAL",1)~ THEN REPLY @22049 GOTO 35
  IF ~Global("40YellCount","GLOBAL",3)~ THEN REPLY @22111 DO ~IncrementGlobal("40YellCount","GLOBAL",1)~ FLAGS 0x200 GOTO 35 /*true*/
  IF ~GlobalGT("40YellCount","GLOBAL",2)~ THEN REPLY @22112 GOTO 35
  IF ~Global("40YellCount","GLOBAL",4)~ THEN REPLY @22118 DO ~IncrementGlobal("40YellCount","GLOBAL",1)
                                                              SetGlobal("40OswaldAwake","GLOBAL",1)~ EXIT
  IF ~GlobalGT("40YellCount","GLOBAL",3)~ THEN REPLY @22119 GOTO 35
  IF ~RandomNum(2,1)~ THEN REPLY @22120 DO ~AddJournalEntry(@18915,QUEST)~ EXIT
  IF ~RandomNum(2,2)~ THEN REPLY @22121 DO ~AddJournalEntry(@18915,QUEST)~ EXIT
END

IF WEIGHT #1
~AreaCheck("IW4001")
 Global("40OswaldAwake","GLOBAL",1)~ THEN BEGIN 36
  SAY @22122
  IF ~GlobalGT("40YellCount","GLOBAL",4)~ THEN REPLY @22123 DO ~AddXP2DA("IW2EX7A")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@19277)
                                                                SetGlobal("40OswaldAwake","GLOBAL",2)
                                                                EraseJournalEntry(@18913)
                                                                EraseJournalEntry(@18915)
                                                                EraseJournalEntry(@23696)
                                                                AddJournalEntry(@18917,QUEST_DONE)~ GOTO 37
  IF ~!GlobalGT("40YellCount","GLOBAL",4)~ THEN REPLY @22126 DO ~SetGlobal("40OswaldAwake","GLOBAL",2)
                                                                 EraseJournalEntry(@18913)
                                                                 EraseJournalEntry(@18915)
                                                                 EraseJournalEntry(@23696)
                                                                 AddJournalEntry(@18917,QUEST_DONE)~ GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @22127
  IF ~~ THEN REPLY @22128 GOTO 50
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @22132 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @22132 DO ~StartStore("11Oswald",LastTalkedToBy)
                                                                    SetSequence(SEQ_AWAKE)~ EXIT
  IF ~~ THEN REPLY @22133 DO ~SetSequence(SEQ_AWAKE)~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @19458
  IF ~~ THEN REPLY @22134 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)
                              StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @22136 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 50 /*true*/
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22153 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22155 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 41 /*true*/
  IF ~PartyHasItem("YETI")~ THEN REPLY @22156 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ FLAGS 0x200 GOTO 42 /*true*/
  IF ~~ THEN REPLY @19463 DO ~SetGlobal("Know_Oswald_Store","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #2
~AreaCheck("IW4001")
 Global("40OswaldAwake","GLOBAL",2)~ THEN BEGIN 39
  SAY @22157
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      Global("40SpellComponents","GLOBAL",2)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @22159 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @22160 GOTO 50
  IF ~GlobalGT("40MendingSpell","GLOBAL",1)~ THEN REPLY @22161 GOTO 46
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @22132 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @22132 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 GOTO 45
  IF ~~ THEN REPLY @23269 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 40
  SAY @23270
  IF ~!Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
~ THEN REPLY @23272 DO ~TakePartyItem("z0misc39")
                                                                     DestroyItem("z0misc39")
                                                                     SetGlobalTimer("OswaldPlateMail","GLOBAL",ONE_DAY)
                                                                     IncrementGlobal("40OswaldRequest1","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",1)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
~ THEN REPLY @23278 DO ~TakePartyItem("z0misc39")
                                                                     DestroyItem("z0misc39")
                                                                     SetGlobalTimer("OswaldFieldPlate","GLOBAL",TWO_DAYS)
                                                                     IncrementGlobal("40OswaldRequest2","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",2)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
~ THEN REPLY @23280 DO ~TakePartyItem("z0misc39")
                                                                     DestroyItem("z0misc39")
                                                                     SetGlobalTimer("OswaldFullPlate","GLOBAL",THREE_DAYS)
                                                                     IncrementGlobal("40OswaldRequest4","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",4)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @23306 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @23306 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @23310 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @23311 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @23417 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 41
  SAY @23418
  IF ~!Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
~ THEN REPLY @23419 DO ~TakePartyItem("MIWD01")
                                                                     DestroyItem("MIWD01")
                                                                     SetGlobalTimer("OswaldWolfBoots","GLOBAL",3600)
                                                                     IncrementGlobal("40OswaldRequest8","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",8)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
~ THEN REPLY @23420 DO ~TakePartyItem("MIWD01")
                                                                      DestroyItem("MIWD01")
                                                                      SetGlobalTimer("OswaldWolfCloak","GLOBAL",3600)
                                                                      IncrementGlobal("40OswaldRequest16","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",16)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
~ THEN REPLY @23421 DO ~TakePartyItem("MIWD01")
                                                                      DestroyItem("MIWD01")
                                                                      SetGlobalTimer("OswaldWolfScarf","GLOBAL",3600)
                                                                      IncrementGlobal("40OswaldRequest32","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",32)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
~ THEN REPLY @23423 DO ~TakePartyItem("MIWD01")
                                                                      DestroyItem("MIWD01")
                                                                      SetGlobalTimer("OswaldWolfHat","GLOBAL",3600)
                                                                      IncrementGlobal("40OswaldRequest64","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",64)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
~ THEN REPLY @23424 DO ~TakePartyItem("MIWD01")
                                                                       DestroyItem("MIWD01")
                                                                       SetGlobalTimer("OswaldWolfGloves","GLOBAL",3600)
                                                                       IncrementGlobal("40OswaldRequest128","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",128)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @23306 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @23306 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @23425 GOTO 40
  IF ~PartyHasItem("YETI")~ THEN REPLY @23311 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @23269 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 42
  SAY @23483
  IF ~!Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
~ THEN REPLY @23419 DO ~TakePartyItem("YETI")
                                                                       DestroyItem("YETI")
                                                                       SetGlobalTimer("OswaldYetiBoots","GLOBAL",2400)
                                                                       IncrementGlobal("40OswaldRequest256","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",256)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
~ THEN REPLY @23420 DO ~TakePartyItem("YETI")
                                                                       DestroyItem("YETI")
                                                                       SetGlobalTimer("OswaldYetiCloak","GLOBAL",2400)
                                                                       IncrementGlobal("40OswaldRequest512","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",512)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
~ THEN REPLY @23421 DO ~TakePartyItem("YETI")
                                                                        DestroyItem("YETI")
                                                                        SetGlobalTimer("OswaldYetiScarf","GLOBAL",2400)
                                                                        IncrementGlobal("40OswaldRequest1024","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",1024)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
~ THEN REPLY @23423 DO ~TakePartyItem("YETI")
                                                                        DestroyItem("YETI")
                                                                        SetGlobalTimer("OswaldYetiHat","GLOBAL",2400)
                                                                        IncrementGlobal("40OswaldRequest2048","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",2048)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~!Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
~ THEN REPLY @23424 DO ~TakePartyItem("YETI")
                                                                        DestroyItem("YETI")
                                                                        SetGlobalTimer("OswaldYetiGloves","GLOBAL",2400)
                                                                        IncrementGlobal("40OswaldRequest4096","GLOBAL",1)
//IncrementGlobal("40OswaldRequest","GLOBAL",4096)
~ FLAGS 0x200 GOTO 43 /*true*/
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @23306 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @23306 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @23425 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @23310 GOTO 41
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @23269 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 43
  SAY @23486
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      Global("40SpellComponents","GLOBAL",2)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @22159 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @22160 GOTO 50
  IF ~GlobalGT("40MendingSpell","GLOBAL",1)~ THEN REPLY @22161 GOTO 46
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @22132 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @22132 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @23487 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @23978 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @29012 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @29013 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 44
  SAY @29014
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      Global("40SpellComponents","GLOBAL",2)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @22159 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @22160 GOTO 50
  IF ~GlobalGT("40MendingSpell","GLOBAL",1)~ THEN REPLY @22161 GOTO 46
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @22132 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @22132 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315  DO ~TakePartyGold(1000)
                                               GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @29015 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 45
  SAY @29016
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      Global("40SpellComponents","GLOBAL",2)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @22159 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @22160 GOTO 50
  IF ~GlobalGT("40MendingSpell","GLOBAL",1)~ THEN REPLY @22161 GOTO 46
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @29017 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @29017 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @29018 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @29019 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @29022 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @29018 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @29019 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @29022 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29023 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29025 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29023 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29025 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29027 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29028 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29027 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29028 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29029 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29030 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29029 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29030 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29031 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29032 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29031 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29032 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29033 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29034 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @29033 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @29034 GOTO 45
  IF ~~ THEN REPLY @29035 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 46
  SAY @30292
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @22132 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @22132 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 GOTO 45
  IF ~~ THEN REPLY @30293 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 47
  SAY @30294
  IF ~~ THEN DO ~SetGlobal("40MendingSpell","GLOBAL",3)
                 EraseJournalEntry(@19143)
                 EraseJournalEntry(@19139)
                 EraseJournalEntry(@18853)
                 EraseJournalEntry(@18862)
                 EraseJournalEntry(@29233)
                 AddJournalEntry(@19272,QUEST_DONE)~ GOTO 46
END

IF ~~ THEN BEGIN 48
  SAY @30295
  IF ~GlobalLT("40SpellComponents","GLOBAL",3)
      OR(2)
        PartyHasItem("z4bookos")
        Global("40MendingSpell","GLOBAL",1)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @30296 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~PartyHasItem("z4bookos")
      !Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @30297 DO ~SetGlobal("40SpellComponents","GLOBAL",2)
                                                                          AddJournalEntry(@19139,QUEST)~ EXIT
  IF ~!PartyHasItem("z4bookos")
      !Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @31919 DO ~SetGlobal("40SpellComponents","GLOBAL",2)
                                                                          AddJournalEntry(@19139,QUEST)~ EXIT
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @31920 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @31920 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @32758 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @32759 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @32760 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @23312 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @23313 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @23314 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23316 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23315 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23318 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23319 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23323 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23327 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23328 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23329 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23330 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23331 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23334 GOTO 45
  IF ~~ THEN REPLY @32761 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 49
  SAY @32762
  IF ~GlobalGT("40SpellComponents","GLOBAL",0)~ THEN GOTO 48
  IF ~Global("40SpellComponents","GLOBAL",0)~ THEN DO ~SetGlobal("40SpellComponents","GLOBAL",1)~ GOTO 48
END

IF ~~ THEN BEGIN 50
  SAY @32763
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      GlobalLT("40SpellComponents","GLOBAL",3)
      OR(2)
        PartyHasItem("z4bookos")
        Global("40MendingSpell","GLOBAL",1)
      Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @32764 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19284)
                                                                         SetGlobal("40SpellComponents","GLOBAL",3)
                                                                         AddJournalEntry(@19143,QUEST)~ GOTO 47
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)
      OR(2)
        PartyHasItem("z4bookos")
        Global("40MendingSpell","GLOBAL",1)
      !Global("40SpellComponentsCheck","GLOBAL",1)~ THEN REPLY @32765 DO ~SetGlobal("40SpellComponents","GLOBAL",1)~ GOTO 48
  IF ~!PartyHasItem("z4bookos")
      Global("40MendingSpell","GLOBAL",0)~ THEN REPLY @32766 GOTO 49
  IF ~Global("Know_Oswald_Store","GLOBAL",0)~ THEN REPLY @32788 GOTO 38
  IF ~Global("Know_Oswald_Store","GLOBAL",1)~ THEN REPLY @32788 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("z0misc39")~ THEN REPLY @22129 GOTO 40
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @22130 GOTO 41
  IF ~PartyHasItem("YETI")~ THEN REPLY @22131 GOTO 42
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 DO ~TakePartyGold(600)
                                              GiveItemCreate("z0plat10",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 DO ~TakePartyGold(1200)
                                               GiveItemCreate("z0plat11",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest2","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 DO ~TakePartyGold(1800)
                                               GiveItemCreate("z0plat12",LastTalkedToBy,0,0,0)
                                               IncrementGlobal("40OswaldRequest4","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1)
      !GlobalTimerExpired("OswaldPlateMail","GLOBAL")
      PartyGoldGT(599)~ THEN REPLY @22163 GOTO 45
  IF ~Global("40OswaldRequest2","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2)
      !GlobalTimerExpired("OswaldFieldPlate","GLOBAL")
      PartyGoldGT(1199)~ THEN REPLY @22164 GOTO 45
  IF ~Global("40OswaldRequest4","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4)
      !GlobalTimerExpired("OswaldFullPlate","GLOBAL")
      PartyGoldGT(1799)~ THEN REPLY @22166 GOTO 45
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0boot15",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest8","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-8)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0boot14",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest256","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-256)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest8","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",8)
      !GlobalTimerExpired("OswaldWolfBoots","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @22167 GOTO 45
  IF ~Global("40OswaldRequest256","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",256)
      !GlobalTimerExpired("OswaldYetiBoots","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23075 GOTO 45
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0clck18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest16","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-16)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0clck17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest512","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-512)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest16","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",16)
      !GlobalTimerExpired("OswaldWolfCloak","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23076 GOTO 45
  IF ~Global("40OswaldRequest512","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",512)
      !GlobalTimerExpired("OswaldYetiCloak","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23077 GOTO 45
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0amul32",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest32","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-32)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0amul31",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest1024","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-1024)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest32","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",32)
      !GlobalTimerExpired("OswaldWolfScarf","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23078 GOTO 45
  IF ~Global("40OswaldRequest1024","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",1024)
      !GlobalTimerExpired("OswaldYetiScarf","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23081 GOTO 45
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0helm19",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest64","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-64)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0helm18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest2048","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-2048)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest64","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",64)
      !GlobalTimerExpired("OswaldWolfHat","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23082 GOTO 45
  IF ~Global("40OswaldRequest2048","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",2048)
      !GlobalTimerExpired("OswaldYetiHat","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23230 GOTO 45
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 DO ~TakePartyGold(1000)
                                              GiveItemCreate("z0brac18",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest128","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-128)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 DO ~TakePartyGold(700)
                                              GiveItemCreate("z0brac17",LastTalkedToBy,0,0,0)
                                              IncrementGlobal("40OswaldRequest4096","GLOBAL",-1)
//IncrementGlobal("40OswaldRequest","GLOBAL",-4096)
~ FLAGS 0x200 GOTO 44 /*true*/
  IF ~Global("40OswaldRequest128","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",128)
      !GlobalTimerExpired("OswaldWolfGloves","GLOBAL")
      PartyGoldGT(999)~ THEN REPLY @23263 GOTO 45
  IF ~Global("40OswaldRequest4096","GLOBAL",1)
//BitCheck("40OswaldRequest","GLOBAL",4096)
      !GlobalTimerExpired("OswaldYetiGloves","GLOBAL")
      PartyGoldGT(699)~ THEN REPLY @23264 GOTO 45
  IF ~~ THEN REPLY @32789 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #6
~AreaCheck("IW5303")
 Global("53Talked_to_Oswald","GLOBAL",0)~ THEN BEGIN 51
  SAY @32790
  IF ~~ THEN DO ~SetGlobal("53Talked_to_Oswald","GLOBAL",1)~ EXTERN ~60MARALI~ 9
END

IF ~~ THEN BEGIN 52
  SAY @32791
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @32792
  IF ~~ THEN REPLY @32793 GOTO 54
  IF ~~ THEN REPLY @32794 GOTO 55
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 54
  SAY @33394
  IF ~~ THEN REPLY @33395 GOTO 60
  IF ~~ THEN REPLY @33396 GOTO 61
  IF ~~ THEN REPLY @32794 GOTO 55
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 55
  SAY @33620
  IF ~~ THEN REPLY @33621 GOTO 62
  IF ~~ THEN REPLY @33622 GOTO 63
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 56
  SAY @39318
  IF ~~ THEN REPLY @33396 GOTO 61
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 57
  SAY @39319
  IF ~~ THEN REPLY @39320 GOTO 66
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 58
  SAY @39321
  IF ~~ THEN REPLY @39322 GOTO 70
END

IF ~~ THEN BEGIN 59
  SAY @39323
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60
  SAY @39324
  IF ~~ THEN REPLY @32794 GOTO 55
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 61
  SAY @39455
  IF ~~ THEN REPLY @32793 GOTO 54
  IF ~~ THEN REPLY @32794 GOTO 55
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 62
  SAY @40362
  IF ~~ THEN REPLY @33396 GOTO 61
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 63
  SAY @40363
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @40364
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @40365
  IF ~~ THEN REPLY @39320 GOTO 66
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 66
  SAY @40366
  IF ~~ THEN REPLY @40367 GOTO 67
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 67
  SAY @40368
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @40369
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 69
  SAY @40370
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("53cKulda")~ EXIT
END

IF ~~ THEN BEGIN 70
  SAY @40371
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #7
~AreaCheck("IW5303")
 GlobalGT("53Talked_to_Oswald","GLOBAL",0)~ THEN BEGIN 71
  SAY @40372
  IF ~~ THEN REPLY @32793 GOTO 54
  IF ~~ THEN REPLY @32794 GOTO 55
  IF ~~ THEN REPLY @32795 GOTO 56
  IF ~~ THEN REPLY @32796 GOTO 57
  IF ~~ THEN REPLY @33390 GOTO 58
  IF ~~ THEN REPLY @33391 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @33392 GOTO 69
  IF ~~ THEN REPLY @33393 GOTO 59
  IF ~~ THEN REPLY @41427 GOTO 84
END
/*GlobalGT("Hiepherus_Intro","GLOBAL",0)*/
IF WEIGHT #8
~AreaCheck("IW6000")
 Global("60Talked_to_Oswald","GLOBAL",0)~ THEN BEGIN 72
  SAY @40373
  IF ~~ THEN DO ~SetGlobal("60Talked_to_Oswald","GLOBAL",1)~ EXTERN ~60MARALI~ 10
END

IF ~~ THEN BEGIN 73
  SAY @40374
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~~ THEN REPLY @40380 DO ~StartCutSceneMode()
                              StartCutScene("60c6000a")~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @40381
  IF ~~ THEN REPLY @40382 GOTO 79
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 75
  SAY @40384
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
END

IF ~~ THEN BEGIN 76
  SAY @40385
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 77
  SAY @40386
  IF ~~ THEN REPLY @40387 GOTO 80
END

IF ~~ THEN BEGIN 78
  SAY @40388
  IF ~~ THEN REPLY @40389 GOTO 81
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 79
  SAY @40366
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 80
  SAY @40390
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 81
  SAY @40391
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 DO ~StartCutSceneMode()
                                                                  StartCutScene("60c6000a")~ EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @40380 EXIT
  IF ~!Global("Hiepherus_Intro","GLOBAL",0)~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #9
~GlobalGT("60Talked_to_Oswald","GLOBAL",0)
 GlobalLT("Crossroads_Quest","GLOBAL",2)~ THEN BEGIN 82
  SAY @40392
  IF ~~ THEN REPLY @40375 GOTO 74
  IF ~~ THEN REPLY @40376 GOTO 75
  IF ~~ THEN REPLY @40377 GOTO 76
  IF ~~ THEN REPLY @40378 GOTO 77
  IF ~~ THEN REPLY @40379 GOTO 78
  IF ~~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @40380 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF WEIGHT #10
~GlobalGT("60Talked_to_Oswald","GLOBAL",0)
 GlobalGT("Crossroads_Quest","GLOBAL",1)~ THEN BEGIN 83
  SAY @40393
  IF ~~ THEN REPLY @40383 DO ~StartStore("11Oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @40380 EXIT
  IF ~~ THEN REPLY @41427 GOTO 84
END

IF ~~ THEN BEGIN 84
  SAY @41428
  IF ~~ THEN REPLY @41429 DO ~StartStore("w#oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @41430 GOTO 85
  IF ~~ THEN REPLY @41431 GOTO 86
  IF ~~ THEN REPLY @41432 EXIT
END

IF ~~ THEN BEGIN 85
  SAY @41433
  IF ~~ THEN REPLY @41434 DO ~StartStore("w#oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @41432 EXIT
END

IF ~~ THEN BEGIN 86
  SAY @41435
  IF ~~ THEN REPLY @41436 GOTO 87
  IF ~~ THEN REPLY @41437 GOTO 87
  IF ~~ THEN REPLY @41438 GOTO 87
END

IF ~~ THEN BEGIN 87
  SAY @41439
  IF ~~ THEN REPLY @41440 DO ~StartStore("w#oswald",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @41441 EXIT
END
