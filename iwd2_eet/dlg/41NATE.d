BEGIN ~41NATE~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24639
  IF ~~ THEN DO ~SetGlobal("41NateMetPlayer","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 1
  SAY @24641
  IF ~~ THEN REPLY @24642 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @24644 GOTO 15
END

IF ~~ THEN BEGIN 2
  SAY @24648
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24649 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24651 DO ~SetGlobal("41NateSaidPrisoners","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24651 DO ~SetGlobal("41NateSaidPrisoners","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24644 GOTO 15
  IF ~!Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24652 GOTO 15
END

IF ~~ THEN BEGIN 3
  SAY @29079
  IF ~~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @29081
  IF ~Global("41NateSaidTroops","GLOBAL",0)~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~!Global("41NateSaidTroops","GLOBAL",0)~ THEN REPLY @30449 GOTO 2
  IF ~OR(2)
        Global("41NateSaidIce","GLOBAL",0)
        Global("41NateSaidPower","GLOBAL",0)
      GlobalLT("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                    SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                    SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                    AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~!GlobalLT("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @24649 GOTO 1
  IF ~Global("41NateSaidShell","GLOBAL",0)~ THEN REPLY @30472 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)
                                                                  AddJournalEntry(@33679,QUEST)~ GOTO 7
  IF ~!Global("41PlayerLiftedShell","GLOBAL",1)
      !Global("41NateSaidShell","GLOBAL",0)~ THEN REPLY @30471 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @29083
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12",TRUE)
      !PartyHasItem("z4keyct")~ THEN REPLY @29099 DO ~AddXP2DA("IW2EX8A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12",TRUE)
      PartyHasItem("z4keyct")~ THEN REPLY @29101 DO ~AddXP2DA("IW2EX8A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                     SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                     AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29102 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29103 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~~ THEN REPLY @24642 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)~ GOTO 3
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12",FALSE)
      Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @29104 DO ~SetGlobal("41NateFreeQuest","GLOBAL",2)
                                                                  AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",2)
      !PartyHasItem("z4hbgana")
      Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @29105 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",2)
                                                                  AddJournalEntry(@24147,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @24647 GOTO 19
END

IF ~~ THEN BEGIN 6
  SAY @29106
  IF ~~ THEN REPLY @24642 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)~ GOTO 3
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24649 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24644 GOTO 15
  IF ~!Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24652 GOTO 15
  IF ~Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @29107 GOTO 9
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",2)
      Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @29133 DO ~SetGlobal("41NateFreeQuest","GLOBAL",2)
                                                                  AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @29262 GOTO 19
END

IF ~~ THEN BEGIN 7
  SAY @29263
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24649 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24644 GOTO 15
  IF ~!Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24652 GOTO 15
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      GlobalGT("41NateEquipmentQuest","GLOBAL",0)~ THEN REPLY @29264 DO ~SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~Global("41NateEquipmentQuest","GLOBAL",0)~ THEN REPLY @30165 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)
                                                                       SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @29107 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @30170
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29102 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29103 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24649 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24644 GOTO 15
  IF ~!Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24652 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",2)
      !PartyHasItem("z4hbgana")~ THEN REPLY @29105 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",2)
                                                       AddJournalEntry(@24147,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30171 GOTO 19
END

IF ~~ THEN BEGIN 9
  SAY @30172
  IF ~!Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24649 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24644 GOTO 15
  IF ~!Global("41NateSaidIce","GLOBAL",1)~ THEN REPLY @24652 GOTO 15
  IF ~Global("41NateSaidTroops","GLOBAL",0)~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~Global("41NateSaidPower","GLOBAL",0)~ THEN REPLY @30468 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~Global("41NateSaidShell","GLOBAL",0)~ THEN REPLY @30472 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)
                                                                  AddJournalEntry(@33679,QUEST)~ GOTO 7
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",2)~ THEN REPLY @30230 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",2)
                                                                         AddJournalEntry(@24147,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30171 GOTO 19
END

IF ~~ THEN BEGIN 10
  SAY @30231
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      !Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30232 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                   AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30232 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)
      !Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30302 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                   AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)
      Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30302 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @30468 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                              AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~OR(2)
        !Global("41PlayerLiftedShell","GLOBAL",1)
        Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @30472 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)
                                                                            AddJournalEntry(@33679,QUEST)~ GOTO 7
  IF ~!Global("41PartyPrisonEntry","GLOBAL",2)
      Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30303 GOTO 5
  IF ~Global("41PartyPrisonEntry","GLOBAL",2)
      Global("41NateSaidTroops","GLOBAL",1)
      Global("41NateSaidPrisoners","GLOBAL",1)
      Global("41NateSaidIce","GLOBAL",1)
      Global("41NateSaidPower","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30303 GOTO 6
  IF ~Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @29107 GOTO 9
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN BEGIN 11
  SAY @30304
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12", TRUE)
      !PartyHasItem("z4keyct")~ THEN REPLY @29099 DO ~AddXP2DA("IW2EX8A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12", TRUE)
      PartyHasItem("z4keyct")~ THEN REPLY @29101 DO ~AddXP2DA("IW2EX8A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                     SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                     AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12",FALSE)~ THEN REPLY @29104 DO ~SetGlobal("41NateFreeQuest","GLOBAL",2)
                                                              AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~Global("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @7737 DO ~SetGlobal("NathanielTalk","MYAREA",0)~ GOTO 13
END

IF WEIGHT #1
~Global("41NateFreeQuest","GLOBAL",4)~ THEN BEGIN 12
  SAY @30305
  IF ~NumTimesTalkedTo(0)~ THEN DO ~SetGlobal("41NateFreeQuest","GLOBAL",5)~ GOTO 0
  IF ~NumTimesTalkedToGT(0)~ THEN DO ~SetGlobal("41NateFreeQuest","GLOBAL",5)~ FLAGS 0x200 GOTO 13 /*true*/
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)~ THEN BEGIN 13
  SAY @30480
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12", TRUE)
      !PartyHasItem("z4keyct")~ THEN REPLY @29099 DO ~AddXP2DA("IW2EX8A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      OpenState("AR4101_Door12", TRUE)
      PartyHasItem("z4keyct")~ THEN REPLY @30432 DO ~AddXP2DA("IW2EX8A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                     SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                     AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29102 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      TakePartyItem("z4hbgana")
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29103 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      TakePartyItem("z4hbgana")
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~GlobalLT("41NateFindSourceQuest","GLOBAL",3)
      Global("41RitualInfo","GLOBAL",1)~ THEN REPLY @30483 DO ~AddXP2DA("IW2EX8E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                               SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                               AddJournalEntry(@24155,QUEST)~ FLAGS 0x200 GOTO 32 /*true*/
  IF ~GlobalLT("41NateFindSourceQuest","GLOBAL",3)
      PartyHasItem("z4booklj")~ THEN REPLY @30486 DO ~AddXP2DA("IW2EX8E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                      SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                      TakePartyItem("z4booklj")
                                                      AddJournalEntry(@24156,QUEST)~ FLAGS 0x200 GOTO 32 /*true*/
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      Global("41FakeAltarDestroyed","GLOBAL",1)
      OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @30489 GOTO 26
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30492 GOTO 26
  IF ~Global("41NateDestroySourceQuest", "GLOBAL",2)
      !Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30493 GOTO 27
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30494 GOTO 28
  IF ~GlobalLT("41NateDestroySourceQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30498 DO ~AddXP2DA("IW2EX8VH")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24351)
                                                                          SetGlobal("41NateDestroySourceQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@24155)
                                                                          EraseJournalEntry(@24156)
                                                                          EraseJournalEntry(@24158)
                                                                          EraseJournalEntry(@24153)
                                                                          EraseJournalEntry(@24161)
                                                                          EraseJournalEntry(@29008)
                                                                          EraseJournalEntry(@33680)
                                                                          EraseJournalEntry(@33681)
                                                                          EraseJournalEntry(@22009)
                                                                          EraseJournalEntry(@31895)
                                                                          EraseJournalEntry(@31896)
                                                                          EraseJournalEntry(@34857)
                                                                          EraseJournalEntry(@40877)
                                                                          EraseJournalEntry(@40878)
                                                                          EraseJournalEntry(@40879)
                                                                          EraseJournalEntry(@41010)
                                                                          EraseJournalEntry(@40880)
                                                                          EraseJournalEntry(@40881)
                                                                          EraseJournalEntry(@40882)
                                                                          EraseJournalEntry(@18557)
                                                                          EraseJournalEntry(@21698)
                                                                          EraseJournalEntry(@21724)
                                                                          EraseJournalEntry(@23697)
                                                                          AddJournalEntry(@24159,QUEST_DONE)~ FLAGS 0x200 GOTO 30 /*true*/
  IF ~Global("41NateSaidIce","GLOBAL",1)
      !Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30434 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~Global("41NateSaidIce","GLOBAL",1)
      Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30434 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~!Global("41NateSaidIce","GLOBAL",1)
      !Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30443 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                   SetGlobal("41NateSaidIce","GLOBAL",1)~ GOTO 1
  IF ~!Global("41NateSaidIce","GLOBAL",1)
      Global("41NateFreeQuest","GLOBAL",0)~ THEN REPLY @30443 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                  SetGlobal("41NateSaidIce","GLOBAL",1)
                                                                  SetGlobal("41NateFreeQuest","GLOBAL",1)
                                                                  AddJournalEntry(@24120,QUEST)~ GOTO 1
  IF ~Global("41NateSaidEquipment","GLOBAL",1)
      OR(2)
        Global("41NateEquipmentQuest","GLOBAL",1)
        Global("41NateEquipmentQuest","GLOBAL",2)~ THEN REPLY @30444 DO ~SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~Global("41NateSaidEquipment","GLOBAL",1)
      Global("41NateEquipmentQuest","GLOBAL",0)~ THEN REPLY @30444 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)
                                                                       SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~!Global("41NateSaidEquipment","GLOBAL",1)
      OR(2)
        Global("41NateEquipmentQuest","GLOBAL",1)
        Global("41NateEquipmentQuest","GLOBAL",2)~ THEN REPLY @30445 DO ~SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~!Global("41NateSaidEquipment","GLOBAL",1)
      Global("41NateEquipmentQuest","GLOBAL",0)~ THEN REPLY @30445 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)
                                                                       SetGlobal("41NateSaidEquipment","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @29107 GOTO 9
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalLT("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @30447 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalLT("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @30448 DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)
                                                                             AddJournalEntry(@24158,QUEST)~ GOTO 16
  IF ~Global("41NateSaidTroops","GLOBAL",1)~ THEN REPLY @30449 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~!Global("41NateSaidTroops","GLOBAL",1)~ THEN REPLY @24643 DO ~SetGlobal("41NateSaidTroops","GLOBAL",1)~ GOTO 2
  IF ~Global("41NateSaidPrisoners","GLOBAL",1)~ THEN REPLY @30466 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                      AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~!Global("41NateSaidPrisoners","GLOBAL",1)~ THEN REPLY @30468 DO ~SetGlobal("41NateSaidPower","GLOBAL",1)
                                                                       AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~!Global("41PlayerLiftedShell","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30471 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)~ GOTO 7
  IF ~!Global("41PlayerLiftedShell","GLOBAL",1)
      !Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30472 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)
                                                                   AddJournalEntry(@33679,QUEST)~ GOTO 7
  IF ~Global("41PlayerLiftedShell","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30476 DO ~StartStore("41Nate",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @30478 DO ~//SetGlobal("PartyResting","LOCALS",1)
                                                                    RestPartyEx(0,0,TRUE)~ EXIT
  IF ~//GlobalGT("41NateFreeQuest","GLOBAL",2)
      //Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      False()~ THEN REPLY @30479 DO ~SetGlobal("PartyResting","LOCALS",2)~ EXIT
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @30478 GOTO 23
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)~ THEN REPLY @30479 GOTO 23
  IF ~~ THEN REPLY @30171 GOTO 19
END

IF ~~ THEN BEGIN 14
  SAY @30480
  IF ~Global("41NateFreeQuest","GLOBAL",2)
      OpenState("AR4101_Door12",TRUE)
      !PartyHasItem("z4keyct")~ THEN REPLY @29099 DO ~AddXP2DA("IW2EX8A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateFreeQuest","GLOBAL",2)
      OpenState("AR4101_Door12",TRUE)
      PartyHasItem("z4keyct")~ THEN REPLY @30432 DO ~AddXP2DA("IW2EX8A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                     SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                     AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateEquipmentQuest","GLOBAL",2)
      Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29102 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateEquipmentQuest","GLOBAL",2)
      !Global("41NateSaidEquipment","GLOBAL",1)
      PartyHasItem("z4hbgana")~ THEN REPLY @29103 DO ~AddXP2DA("IW2EX8H")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24349)
                                                      SetGlobal("41NateEquipmentQuest","GLOBAL",3)
                                                      TakePartyItem("z4hbgana")
                                                      EraseJournalEntry(@24120)
                                                      EraseJournalEntry(@33679)
                                                      EraseJournalEntry(@24121)
                                                      EraseJournalEntry(@24147)
                                                      EraseJournalEntry(@23489)
                                                      EraseJournalEntry(@23490)
                                                      EraseJournalEntry(@39794)
                                                      AddJournalEntry(@24148,QUEST_DONE)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)
      Global("41RitualInfo","GLOBAL",1)~ THEN REPLY @30483 DO ~AddXP2DA("IW2EX8E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                               SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                               AddJournalEntry(@24155,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)
      PartyHasItem("z4booklj")~ THEN REPLY @30486 DO ~AddXP2DA("IW2EX8E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                      SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                      TakePartyItem("z4booklj")
                                                      AddJournalEntry(@24156,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      Global("41FakeAltarDestroyed","GLOBAL",1)
      OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @30489 GOTO 26
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30492 GOTO 26
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30493 GOTO 27
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30494 GOTO 28
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30498 DO ~AddXP2DA("IW2EX8VH")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24351)
                                                                          SetGlobal("41NateDestroySourceQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@24155)
                                                                          EraseJournalEntry(@24156)
                                                                          EraseJournalEntry(@24158)
                                                                          EraseJournalEntry(@24153)
                                                                          EraseJournalEntry(@24161)
                                                                          EraseJournalEntry(@29008)
                                                                          EraseJournalEntry(@33680)
                                                                          EraseJournalEntry(@33681)
                                                                          EraseJournalEntry(@22009)
                                                                          EraseJournalEntry(@31895)
                                                                          EraseJournalEntry(@31896)
                                                                          EraseJournalEntry(@34857)
                                                                          EraseJournalEntry(@40877)
                                                                          EraseJournalEntry(@40878)
                                                                          EraseJournalEntry(@40879)
                                                                          EraseJournalEntry(@41010)
                                                                          EraseJournalEntry(@40880)
                                                                          EraseJournalEntry(@40881)
                                                                          EraseJournalEntry(@40882)
                                                                          EraseJournalEntry(@18557)
                                                                          EraseJournalEntry(@21698)
                                                                          EraseJournalEntry(@21724)
                                                                          EraseJournalEntry(@23697)
                                                                          AddJournalEntry(@24159,QUEST_DONE)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~Global("41PartyMissingEquipment","GLOBAL",1)~ THEN REPLY @29107 GOTO 9
  IF ~!Global("41PlayerLiftedShell","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30471 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)~ GOTO 7
  IF ~!Global("41PlayerLiftedShell","GLOBAL",1)
      !Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30472 DO ~SetGlobal("41NateSaidShell","GLOBAL",1)
                                                                   AddJournalEntry(@33679,QUEST)~ GOTO 7
  IF ~Global("41PlayerLiftedShell","GLOBAL",1)
      Global("41NateSaidShell","GLOBAL",1)~ THEN REPLY @30476 DO ~StartStore("41Nate",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @30478 DO ~//SetGlobal("PartyResting","LOCALS",1)
                                                                    RestPartyEx(0,0,TRUE)~ EXIT
  IF ~//GlobalGT("41NateFreeQuest","GLOBAL",2)
      //Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      False()~ THEN REPLY @30479 DO ~SetGlobal("PartyResting","LOCALS",2)~ EXIT
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @30478 GOTO 23
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)~ THEN REPLY @30479 GOTO 23
  IF ~~ THEN REPLY @30519 GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY @30520
  IF ~OR(2)
        GlobalLT("41NateFreeQuest", "GLOBAL",3)
        GlobalLT("41NateEquipmentQuest","GLOBAL",3)~ THEN GOTO 5
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)~ THEN DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)~ GOTO 16
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalLT("41NateFindSourceQuest","GLOBAL",3)~ THEN DO ~SetGlobal("41NateFindSourceQuest","GLOBAL",2)~ FLAGS 0x200 GOTO 25 /*true*/
END

IF ~~ THEN BEGIN 16
  SAY @30521
  IF ~Global("41FakeAltarDestroyed","GLOBAL",1)
      OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @30489 GOTO 26
  IF ~Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30492 GOTO 26
  IF ~!Global("41FakeAltarDestroyed","GLOBAL",1)
      Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30493 GOTO 27
  IF ~OR(4)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30494 GOTO 28
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30498 DO ~AddXP2DA("IW2EX8VH")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24351)
                                                                          SetGlobal("41NateDestroySourceQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@24155)
                                                                          EraseJournalEntry(@24156)
                                                                          EraseJournalEntry(@24158)
                                                                          EraseJournalEntry(@24153)
                                                                          EraseJournalEntry(@24161)
                                                                          EraseJournalEntry(@29008)
                                                                          EraseJournalEntry(@33680)
                                                                          EraseJournalEntry(@33681)
                                                                          EraseJournalEntry(@22009)
                                                                          EraseJournalEntry(@31895)
                                                                          EraseJournalEntry(@31896)
                                                                          EraseJournalEntry(@34857)
                                                                          EraseJournalEntry(@40877)
                                                                          EraseJournalEntry(@40878)
                                                                          EraseJournalEntry(@40879)
                                                                          EraseJournalEntry(@41010)
                                                                          EraseJournalEntry(@40880)
                                                                          EraseJournalEntry(@40881)
                                                                          EraseJournalEntry(@40882)
                                                                          EraseJournalEntry(@18557)
                                                                          EraseJournalEntry(@21698)
                                                                          EraseJournalEntry(@21724)
                                                                          EraseJournalEntry(@23697)
                                                                          AddJournalEntry(@24159,QUEST_DONE)~ FLAGS 0x200 GOTO 30 /*true*/
  IF ~OR(5)
        !Global("SPRITE_IS_DEADLysara","GLOBAL",1)
        !Global("SPRITE_IS_DEADCathin","GLOBAL",1)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)
        !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @30523 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @30525
  IF ~~ THEN REPLY @30526 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @30534
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @40335 DO ~SetGlobal("41NateFreeQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !HasItem("z4hbgana",Myself)~ THEN REPLY @40336 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      OR(2)
        GlobalGT("41NateEquipmentQuest","GLOBAL",2)
        HasItem("z4hbgana",Myself)
      GlobalLT("41NateFindSourceQuest","GLOBAL",3)~ THEN REPLY @40337 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalLT("41NateDestroySourceQuest","GLOBAL",3)~ THEN REPLY @40338 DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)~ GOTO 16
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @40339 GOTO 17
END

IF ~~ THEN BEGIN 19
  SAY @30541
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest", "GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",4)~ EXIT
  IF ~OR(4)
        !GlobalGT("41NateFreeQuest","GLOBAL",2)
        !GlobalGT("41NateEquipmentQuest","GLOBAL",2)
        !GlobalGT("41NateFindSourceQuest","GLOBAL",2)
        !GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @30542
  IF ~PartyHasItem("z4ringra")~ THEN REPLY @30543 DO ~AddXP2DA("IW2EX10A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24353)
                                                      TakePartyItem("z4ringra")
                                                      AddJournalEntry(@24162,QUEST)~ GOTO 21
  IF ~PartyHasItem("z4ringra")
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @30952 DO ~AddJournalEntry(@24163,QUEST)~ GOTO 21
  IF ~!PartyHasItem("z4ringra")~ THEN REPLY @31578 GOTO 21
END

IF WEIGHT #0
~OR(2)
   Global("41NateDestroySourceQuest","GLOBAL",4)
   AreaCheck("IW4100")~ THEN BEGIN 21
  SAY @31579
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY @31580
  IF ~~ THEN DO ~AddJournalEntry(@24160,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 23
  SAY @31581
  IF ~OpenState("AR4101_Door12",TRUE)
      !PartyHasItem("z4keyct")~ THEN REPLY @29099 DO ~AddXP2DA("IW2EX8A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~OpenState("AR4101_Door12",TRUE)
      PartyHasItem("z4keyct")~ THEN REPLY @29101 DO ~AddXP2DA("IW2EX8A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                                     SetGlobal("41NateFreeQuest","GLOBAL",3)
                                                     AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~OpenState("AR4101_Door12",FALSE)~ THEN REPLY @29104 DO ~SetGlobal("41NateFreeQuest","GLOBAL",2)
                                                              AddJournalEntry(@24120,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
  IF ~~ THEN REPLY @24647 GOTO 19
END

IF ~~ THEN BEGIN 24
  SAY @31582
  IF ~Global("40MendingSpell","GLOBAL",1)
      OR(6)
        PartyHasItem("z4genss")
        PartyHasItem("THRYM")
        PartyHasItem("z4genbe")
        PartyHasItem("z3istone")
        PartyHasItem("MISC42")
        PartyHasItem("z4genwp")~ THEN REPLY @31583 DO ~AddXP2DA("IW2EX7E")
                                                       DisplayStringNoNameDlg(LastTalkedToBy,@24352)
                                                       TakePartyItem("z4genss")
                                                       TakePartyItem("THRYM")
                                                       TakePartyItem("z4genbe")
                                                       TakePartyItem("z3istone")
                                                       TakePartyItemNum("MISC42",2)
                                                       TakePartyItem("z4genwp")
                                                       TakePartyItem("z4bookos")
                                                       SetGlobal("40MendingSpell","GLOBAL",3)
                                                       EraseJournalEntry(@19143)
                                                       EraseJournalEntry(@19139)
                                                       EraseJournalEntry(@18853)
                                                       EraseJournalEntry(@18862)
                                                       EraseJournalEntry(@29233)
                                                       AddJournalEntry(@24164,QUEST_DONE)~ GOTO 22
  IF ~Global("40MendingSpell","GLOBAL",0)
      OR(6)
        PartyHasItem("z4genss")
        PartyHasItem("THRYM")
        PartyHasItem("z4genbe")
        PartyHasItem("z3istone")
        PartyHasItem("MISC42")
        PartyHasItem("z4genwp")~ THEN REPLY @33554 DO ~AddXP2DA("IW2EX7E")
                                                       DisplayStringNoNameDlg(LastTalkedToBy,@24352)
                                                       TakePartyItem("z4genss")
                                                       TakePartyItem("THRYM")
                                                       TakePartyItem("z4genbe")
                                                       TakePartyItem("z3istone")
                                                       TakePartyItemNum("MISC42",2)
                                                       TakePartyItemNum("z4genwp",20)
                                                       TakePartyItem("z4bookos")
                                                       SetGlobal("40MendingSpell","GLOBAL",3)
                                                       EraseJournalEntry(@19143)
                                                       EraseJournalEntry(@19139)
                                                       EraseJournalEntry(@18853)
                                                       EraseJournalEntry(@18862)
                                                       EraseJournalEntry(@29233)
                                                       AddJournalEntry(@24165,QUEST_DONE)~ GOTO 22
  IF ~GlobalGT("40YellCount","GLOBAL",4)~ THEN REPLY @33555 GOTO 22
  IF ~!GlobalGT("40YellCount","GLOBAL",4)~ THEN REPLY @33556 GOTO 22
END

IF ~~ THEN BEGIN 25
  SAY @33558
  IF ~GlobalLT("41NateFindSourceQuest","GLOBAL",3)
      Global("41RitualInfo","GLOBAL",1)~ THEN REPLY @30483 DO ~AddXP2DA("IW2EX8E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                               SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                               AddJournalEntry(@24155,QUEST)~ FLAGS 0x200 GOTO 32 /*true*/
  IF ~GlobalLT("41NateFindSourceQuest","GLOBAL",3)
      PartyHasItem("z4booklj")~ THEN REPLY @30486 DO ~AddXP2DA("IW2EX8E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@24350)
                                                      SetGlobal("41NateFindSourceQuest","GLOBAL",3)
                                                      TakePartyItem("z4booklj")
                                                      AddJournalEntry(@24156,QUEST)~ FLAGS 0x200 GOTO 32 /*true*/
  IF ~GlobalLT("41NateFindSourceQuest","GLOBAL",3)
      !Global("41RitualInfo","GLOBAL",1)
      !PartyHasItem("z4booklj")~ THEN REPLY @33559 DO ~SetGlobal("41NateFindSourceQuest","GLOBAL",2)
                                                       AddJournalEntry(@24153,QUEST)~ FLAGS 0x200 GOTO 19 /*true*/
END

IF ~~ THEN BEGIN 26
  SAY @33561
  IF ~~ THEN REPLY @33562 DO ~AddJournalEntry(@24161,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @33563
  IF ~~ THEN REPLY @33564 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @33565
  IF ~~ THEN REPLY @33566 EXIT
END

IF WEIGHT #2
~GlobalLT("41NateFreeQuest","GLOBAL",3)
 OpenState("AR4101_Door12", TRUE)~ THEN BEGIN 29
  SAY @33567
  IF ~!PartyHasItem("z4keyct")
      NumTimesTalkedTo(0)~ THEN DO ~AddXP2DA("IW2EX8A")
                                    DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                    SetGlobal("41NateFreeQuest","GLOBAL",3)
                                    SetGlobal("NathanielTalk","MYAREA",0)
                                    AddJournalEntry(@24146,QUEST)~ GOTO 0
  IF ~PartyHasItem("z4keyct")
      NumTimesTalkedTo(0)~ THEN DO ~AddXP2DA("IW2EX8A")
                                    DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                    SetGlobal("41NateFreeQuest","GLOBAL",3)
                                    SetGlobal("NathanielTalk","MYAREA",0)
                                    AddJournalEntry(@24121,QUEST)~ GOTO 0
  IF ~!PartyHasItem("z4keyct")
      NumTimesTalkedToGT(0)~ THEN DO ~AddXP2DA("IW2EX8A")
                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                      SetGlobal("NathanielTalk","MYAREA",0)
                                      AddJournalEntry(@24146,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~PartyHasItem("z4keyct")
      NumTimesTalkedToGT(0)~ THEN DO ~AddXP2DA("IW2EX8A")
                                      DisplayStringNoNameDlg(LastTalkedToBy,@24347)
                                      SetGlobal("41NateFreeQuest","GLOBAL",3)
                                      SetGlobal("NathanielTalk","MYAREA",0)
                                      AddJournalEntry(@24121,QUEST)~ FLAGS 0x200 GOTO 18 /*true*/
END

IF ~~ THEN BEGIN 30
  SAY @39430
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @30535 DO ~SetGlobal("41NateFreeQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !HasItem("z4hbgana",Myself)~ THEN REPLY @30536 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      OR(2)
        GlobalGT("41NateEquipmentQuest","GLOBAL",2)
        HasItem("z4hbgana",Myself)
      GlobalLT("41NateFindSourceQuest","GLOBAL",3)~ THEN REPLY @30537 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalLT("41NateDestroySourceQuest","GLOBAL",3)~ THEN REPLY @30538 DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)~ GOTO 16
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @30539 GOTO 17
END

IF ~~ THEN BEGIN 31
  SAY @40340
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @40341 DO ~SetGlobal("41NateFreeQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !HasItem("z4hbgana",Myself)~ THEN REPLY @40342 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      OR(2)
        GlobalGT("41NateEquipmentQuest","GLOBAL",2)
        HasItem("z4hbgana",Myself)
      GlobalLT("41NateFindSourceQuest","GLOBAL",3)~ THEN REPLY @40343 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalLT("41NateDestroySourceQuest","GLOBAL",3)~ THEN REPLY @40344 DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)~ GOTO 16
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @40345 GOTO 17
END

IF ~~ THEN BEGIN 32
  SAY @40346
  IF ~GlobalLT("41NateFreeQuest","GLOBAL",3)~ THEN REPLY @40347 DO ~SetGlobal("41NateFreeQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalLT("41NateEquipmentQuest","GLOBAL",3)
      !HasItem("z4hbgana",Myself)~ THEN REPLY @40348 DO ~SetGlobal("41NateEquipmentQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      OR(2)
        GlobalGT("41NateEquipmentQuest","GLOBAL",2)
        HasItem("z4hbgana",Myself)
      GlobalLT("41NateFindSourceQuest","GLOBAL",3)~ THEN REPLY @40349 GOTO 15
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalLT("41NateDestroySourceQuest","GLOBAL",3)~ THEN REPLY @40350 DO ~SetGlobal("41NateDestroySourceQuest","GLOBAL",2)~ GOTO 16
  IF ~GlobalGT("41NateFreeQuest","GLOBAL",2)
      GlobalGT("41NateEquipmentQuest","GLOBAL",2)
      GlobalGT("41NateFindSourceQuest","GLOBAL",2)
      GlobalGT("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @40351 GOTO 17
END
