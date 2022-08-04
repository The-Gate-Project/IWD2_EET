BEGIN ~41NICK~

IF WEIGHT #2
~GlobalLT("41NickAwaken","MYAREA",2)~ THEN BEGIN 0
  SAY @23702
  IF ~~ THEN DO ~SetGlobal("41NickAwaken","MYAREA",1)
                 SetGlobalTimer("NickAwaken","MYAREA",3)
                 AddJournalEntry(@23697,QUEST)~ EXIT
END

IF WEIGHT #3
~Global("41NickAwaken","MYAREA",2)~ THEN BEGIN 1
  SAY @23704
  IF ~Global("41OriaIsEthereal","GLOBAL",1)
      !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @34856 DO ~AddJournalEntry(@34857,QUEST)~ GOTO 37
  IF ~Global("41TempleConstruction","GLOBAL",1)~ THEN REPLY @23705 DO ~SetGlobal("41NickAwaken","MYAREA",3)~ GOTO 7
  IF ~!Global("41TempleConstruction","GLOBAL",1)~ THEN REPLY @23708 DO ~SetGlobal("41NickAwaken","MYAREA",3)~ GOTO 7
  IF ~!Global("41TempleConstruction","GLOBAL",1)~ THEN REPLY @23711 DO ~SetGlobal("41NickAwaken","MYAREA",3)~ GOTO 3
  IF ~Global("41TempleConstruction","GLOBAL",1)~ THEN REPLY @23713 DO ~SetGlobal("41NickAwaken","MYAREA",3)~ GOTO 3
  IF ~~ THEN REPLY @23715 DO ~SetGlobal("41NickAwaken","MYAREA",3)~ EXIT
END

IF WEIGHT #4
~GlobalGT("41NickAwaken","MYAREA",2)~ THEN BEGIN 2
  SAY @23717
  IF ~Global("41OriaIsEthereal","GLOBAL",1)
      !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @34856 DO ~AddJournalEntry(@34857,QUEST)~ GOTO 37
  IF ~Global("41NickHelp","GLOBAL",0)~ THEN REPLY @23721 DO ~SetGlobal("41NickHelp","GLOBAL",1)
                                                             SetGlobal("41SaidPainting5","GLOBAL",1)~ GOTO 9
  IF ~Global("41NickHelp","GLOBAL",1)~ THEN REPLY @23784 DO ~SetGlobal("41SaidPainting5","GLOBAL",1)~ GOTO 10
  IF ~Global("41NickHelp","GLOBAL",2)~ THEN REPLY @23785 DO ~SetGlobal("41SaidPainting5","GLOBAL",1)~ GOTO 12
  IF ~Global("41NickHelp","GLOBAL",3)~ THEN REPLY @23787 DO ~SetGlobal("41SaidPainting5","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @34250 GOTO 34
  IF ~False()~ THEN REPLY @40333 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @40334 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @23788 DO ~SetGlobal("41SaidPainting5","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23789
  IF ~~ THEN REPLY @23956 GOTO 4
  IF ~~ THEN REPLY @23957 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23958
  IF ~~ THEN REPLY @23960 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @23965
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23966
  IF ~~ THEN REPLY @23721 DO ~SetGlobal("41NickHelp","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @39801 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @23968
  IF ~~ THEN DO ~SetGlobal("41Know_Curiosity","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @24653
  IF ~~ THEN REPLY @23721 DO ~SetGlobal("41NickHelp","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @34250 GOTO 34
  IF ~~ THEN REPLY @24655 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @24657
  IF ~~ THEN REPLY @24665 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ GOTO 12
  IF ~~ THEN REPLY @24666 GOTO 10
  IF ~~ THEN REPLY @24667 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @29591
  IF ~~ THEN REPLY @24665 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ GOTO 12
  IF ~~ THEN REPLY @29592 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @30250
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @30251
  IF ~Global("PrismDeactivated","MYAREA",1)~ THEN REPLY @30252 DO ~SetGlobal("41NickHelp","GLOBAL",3)
                                                                   TriggerActivation("PrismRotate",TRUE)
                                                                   TriggerActivation("PrismFire",TRUE)
                                                                   SetGlobal("PrismDeactivated","MYAREA",0)
                                                                   Wait(3)
                                                                   DisplayStringNoNameDlg(Myself,@30531)
                                                                   CloseDoor("AR4102_Switch1")
                                                                   CloseDoor("AR4102_Switch2")
                                                                   OpenDoor("AR4102_Switch3")~ GOTO 13
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      OR(3)
        Global("41XhaanGaveName","GLOBAL",1)
        Global("41TempestSaidName","GLOBAL",1)
        Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @30565 DO ~SetGlobal("41NickHelp","GLOBAL",3)
                                                                             SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)~ GOTO 29
  IF ~~ THEN REPLY @30566 DO ~AddXP2DA("IW2EX10VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23701)
                              SetGlobal("41NickHelp","GLOBAL",3)~ EXIT
  IF ~OR(4)
      Contains("SCRL2G","NickCabinet")
      Contains("Z0DART95","NickCabinet")
      Contains("MISC45","NickCabinet")
      Contains("z0genir","NickCabinet")~ THEN REPLY @30567 DO ~SetGlobal("41NickHelp","GLOBAL",3)
                                                               //TransferInventory("NickCabinet",LastTalkedToBy)
                                                               /*GiveItemCreate("SCRL2G",LastTalkedToBy,1,1,0)
                                                               GiveItemCreate("Z0DART95",LastTalkedToBy,40,0,0)
                                                               GiveItemCreate("MISC45",LastTalkedToBy,1,1,0)
                                                               GiveItemCreate("z0genir",LastTalkedToBy,1,1,0)
                                                               ActionOverride("NickCabinet",DestroyItem("SCRL2G"))
                                                               ActionOverride("NickCabinet",DestroyItem("Z0DART95"))
                                                               ActionOverride("NickCabinet",DestroyItem("MISC45"))
                                                               ActionOverride("NickCabinet",DestroyItem("z0genir"))*/
                                                               SetGlobal("NickGiveCabinetItems","MYAREA",1)
                                                               GiveItemCreate("z0potn69",LastTalkedToBy,1,0,0)
                                                               GiveItemCreate("z0ring74",LastTalkedToBy,2,0,0)
                                                               GiveItemCreate("SCRL05",LastTalkedToBy,5,0,0)~ GOTO 31
  IF ~Global("ItemsOffered","LOCALS",0)
      //OR(4)
        !Contains("SCRL2G","NickCabinet")
        !Contains("Z0DART95","NickCabinet")
        !Contains("MISC45","NickCabinet")
        !Contains("z0genir","NickCabinet")~ THEN REPLY @30567 DO ~SetGlobal("41NickHelp","GLOBAL",3)
                                                                  SetGlobal("ItemsOffered","LOCALS",1)~ GOTO 32
  IF ~~ THEN REPLY @30568 DO ~SetGlobal("41NickHelp","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @30569 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @30570
  IF ~~ THEN REPLY @30571 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @30572
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @30573
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~  Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @30574 EXIT
  IF ~  !Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @30575 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @30576
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @30577
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~~ THEN REPLY @30571 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @30578
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @30579
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @30580
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~~ THEN REPLY @30571 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @30581
  IF ~PartyHasItem("THRYM")
      PartyHasItem("z4genbe")
      PartyHasItem("z4genss")
      PartyHasItem("z4genwp")
      NumItemsPartyGT("MISC42",1)
      OR(12)
        PartyHasItem("HALB01")
        PartyHasItem("z0halb02")
        PartyHasItem("SPER01")
        PartyHasItem("z0sper95")
        PartyHasItem("BLUN02")
        PartyHasItem("z0flal99")
        PartyHasItem("BLUN04")
        PartyHasItem("HQMACE")
        PartyHasItem("BLUN06")
        PartyHasItem("HQMSTAR")
        PartyHasItem("z3istone")
        PartyHasItem("MISC56")~ THEN REPLY @30582 DO ~TakePartyItem("z4bookos")
                                                      TakePartyItem("THRYM")
                                                      TakePartyItem("z4genbe")
                                                      TakePartyItem("z4genss")
                                                      TakePartyItemAll("z4genwp")
                                                      TakePartyItemNum("MISC42",2)
                                                      TakePartyItem("z3istone")
                                                      TakePartyItem("MISC56")~ GOTO 22
  IF ~OR(5)
        !PartyHasItem("THRYM")
        !PartyHasItem("z4genbe")
        !PartyHasItem("z4genss")
        !PartyHasItem("z4genwp")
        !NumItemsPartyGT("MISC42",1)~ THEN REPLY @30582 DO ~TakePartyItem("z4bookos")
                                                            TakePartyItem("THRYM")
                                                            TakePartyItem("z4genbe")
                                                            TakePartyItem("z4genss")
                                                            TakePartyItemAll("z4genwp")
                                                            TakePartyItemNum("MISC42",2)
                                                            TakePartyItem("z3istone")
                                                            TakePartyItem("MISC56")~ GOTO 33
  IF ~~ THEN REPLY @30583 GOTO 23
  IF ~~ THEN REPLY @30584 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ GOTO 12
END

IF ~~ THEN BEGIN 22
  SAY @30585
  IF ~~ THEN /*DO ~RestParty()~*/ GOTO 25  
END

IF ~~ THEN BEGIN 23
  SAY @30586
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @30587
  IF ~~ THEN /*DO ~RestPartyEx(0,0,TRUE)~*/ GOTO 25   
END

IF ~~ THEN BEGIN 25
  SAY @30588
  IF ~~ THEN REPLY @30589 DO ~DestroyItem("z4bookos")
                              DestroyItem("THRYM")
                              DestroyItem("z4genbe")
                              DestroyItem("z4genss")
                              DestroyItem("z4genwp")
                              DestroyItem("MISC42")
                              DestroyItem("HALB01")
                              DestroyItem("z0halb02")
                              DestroyItem("SPER01")
                              DestroyItem("z0sper95")
                              DestroyItem("BLUN02")
                              DestroyItem("z0flal99")
                              DestroyItem("BLUN04")
                              DestroyItem("HQMACE")
                              DestroyItem("BLUN06")
                              DestroyItem("HQMSTAR")
                              DestroyItem("z3istone")
                              DestroyItem("MISC56")
                              SetGlobal("40MendingSpell","GLOBAL",4)
                              
                              RestPartyEx(0,0,TRUE)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @30590
  IF ~~ THEN REPLY @30953 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @30954
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @30955
  IF ~~ THEN REPLY @30571 DO ~AddJournalEntry(@23696,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @30956
  IF ~~ THEN REPLY @30957 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @30958
  IF ~~ THEN REPLY @30959 DO ~ForceSpell(LastTalkedToBy,WIZARD_RESIST_FEAR) //WIZARD_EMOTION_HOPE
                              ForceSpell(Player1,WIZARD_PROTECTION_FROM_THE_ELEMENTS) //WIZARD_ELEMENTAL_BARRIER
                              ForceSpell(Player2,WIZARD_PROTECTION_FROM_THE_ELEMENTS)
                              ForceSpell(Player3,WIZARD_PROTECTION_FROM_THE_ELEMENTS)
                              ForceSpell(Player4,WIZARD_PROTECTION_FROM_THE_ELEMENTS)
                              ForceSpell(Player5,WIZARD_PROTECTION_FROM_THE_ELEMENTS)
                              ForceSpell(Player6,WIZARD_PROTECTION_FROM_THE_ELEMENTS)~ EXIT
  IF ~~ THEN REPLY @30960 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @30584 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ GOTO 12
END

IF ~~ THEN BEGIN 31
  SAY @30961
  IF ~~ THEN REPLY @30571 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @30962
  IF ~~ THEN REPLY @24665 GOTO 12
  IF ~~ THEN REPLY @30963 DO ~SetGlobal("41NickHelp","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @30569 DO ~SetGlobal("41NickHelp","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @34243
  IF ~~ THEN /*DO ~RestParty()~*/ GOTO 25  
END

IF ~~ THEN BEGIN 34
  SAY @34245
  IF ~~ THEN REPLY @30550 DO ~AddJournalEntry(@40877,QUEST)~ GOTO 14
  IF ~Global("41Know_Curiosity","GLOBAL",1)
      Global("41SaidPainting5","GLOBAL",0)~ THEN REPLY @41009 DO ~AddJournalEntry(@41010,QUEST)~ GOTO 44
  IF ~Global("41PlayerSawDais","GLOBAL",1)~ THEN REPLY @30560 DO ~AddJournalEntry(@40878,QUEST)~ GOTO 16
  IF ~Global("41PlayerSawGameRoom","GLOBAL",1)~ THEN REPLY @30562 DO ~AddJournalEntry(@40879,QUEST)~ GOTO 18
  IF ~Global("41NickHelp","GLOBAL",0)~ THEN REPLY @23721 DO ~SetGlobal("41NickHelp","GLOBAL",1)~ GOTO 9
  IF ~Global("41PlayerSawPainting","GLOBAL",1)~ THEN REPLY @34788 DO ~AddJournalEntry(@40880,QUEST)~ GOTO 35
  IF ~Global("41NickHelp","GLOBAL",1)~ THEN REPLY @23784 GOTO 10
  IF ~Global("PlayerSawMirrorTrap","MYAREA",1)
      Global("KillMirrorTrap","MYAREA",0)~ THEN REPLY @40875 DO ~AddJournalEntry(@40881,QUEST)~ GOTO 41
  IF ~Global("41NickHelp","GLOBAL",2)~ THEN REPLY @23785 GOTO 12
  IF ~Global("PlayerSawMirrorTrap","MYAREA",1)
      Global("KillMirrorTrap","MYAREA",1)~ THEN REPLY @40876 DO ~AddJournalEntry(@40882,QUEST)~ GOTO 42
  IF ~Global("41NickHelp","GLOBAL",3)~ THEN REPLY @23787 GOTO 11
  IF ~False()~ THEN REPLY @34786 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @34787 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @30569 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @34783
  IF ~~ THEN DO ~SetGlobal("41SaidPainting5","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @34784
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~~ THEN REPLY @1487 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @34854
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @34855
  IF ~See("OriaEssence")~ THEN REPLY @34858 EXTERN ~41ORIA~ 10
  IF ~!See("OriaEssence")~ THEN REPLY @34858 GOTO 34
  IF ~See("OriaEssence")~ THEN REPLY @1487 EXTERN ~41ORIA~ 10
  IF ~!See("OriaEssence")~ THEN REPLY @1487 EXIT
END

IF WEIGHT #0
~Global("41NickHelp","GLOBAL",5)~ THEN BEGIN 39
  SAY @28893
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("41NickHelp","GLOBAL",6)
~ THEN BEGIN 40
  SAY @28894
  IF ~~ THEN REPLY @1487 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @40866
  IF ~~ THEN REPLY @40869 GOTO 43
END

IF ~~ THEN BEGIN 42
  SAY @40867
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~~ THEN REPLY @1487 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @40868
  IF ~~ THEN REPLY @34841 GOTO 34
  IF ~~ THEN REPLY @1487 EXIT
END

IF ~~ THEN BEGIN 44
  SAY @41011
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @41012
  IF ~~ THEN REPLY @41013 DO ~AddJournalEntry(@40880,QUEST)~ GOTO 35
  IF ~~ THEN REPLY @41014 GOTO 34
  IF ~~ THEN REPLY @41015 EXIT
END
