BEGIN ~60GERBA2~

IF WEIGHT #7
~NumTimesTalkedTo(0)
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 0
  SAY @38065
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 //Subrace(LastTalkedToBy,Dwarf_Gray)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 1 // from:
  SAY @38068
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38069 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38070 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 //Subrace(LastTalkedToBy,Elf_Drow)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 2
  SAY @38071
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38069 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38070 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,HALFORC)
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 3
  SAY @38072
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38069 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38070 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 //Subrace(LastTalkedToBy,GNOME_DEEP)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 4
  SAY @38073
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38074 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38075 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #4
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,ELF)
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 5
  SAY @38076
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38077 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38070 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #5
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,DWARF)
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 6
  SAY @38078
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38079 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38080 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF WEIGHT #6
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,GNOME)
 //!CurrentAreaIs(Myself, 6001)
 !AreaCheck("IW6001")~ THEN BEGIN 7
  SAY @38610
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38066 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38067 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
  IF ~Global("60Key_Quest","GLOBAL",0)~ THEN REPLY @38069 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 8
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @38070 DO ~AddJournalEntry(@38062,QUEST)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @38611
  IF ~~ THEN DO ~SetGlobal("60Met_Gerbash","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @38613
  IF ~~ THEN REPLY @38615 DO ~SetGlobal("60Key_Quest","GLOBAL",2)
                              GiveItemCreate("z6key",LastTalkedToBy,1,1,1)
                              AddJournalEntry(@39283,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @38616
  IF ~~ THEN REPLY @38617 GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY @38618
  IF ~Global("SPRITE_IS_DEADJermsy","GLOBAL",0)~ THEN REPLY @38619 DO ~SetGlobal("60Met_Gerbash","GLOBAL",1)~ GOTO 12
  IF ~Global("SPRITE_IS_DEADJermsy","GLOBAL",1)~ THEN REPLY @38620 DO ~SetGlobal("60Met_Gerbash","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @38621
  IF ~~ THEN REPLY @38617 DO ~SetGlobal("60Key_Quest","GLOBAL",2)
                              GiveItemCreate("z6key",LastTalkedToBy,1,1,1)
                              AddJournalEntry(@39283,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @38622
  IF ~~ THEN REPLY @38623 DO ~SetGlobal("Gerbash_Blew_It","GLOBAL",1)~ FLAGS 0x200 GOTO 14 /*true*/
END

IF ~~ THEN BEGIN 14
  SAY @38624
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @38625 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @38626 EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @38627 EXIT
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @50009 EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      False()~ THEN REPLY @38628 EXIT
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN17")
      Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @38629 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN17",1)
                                                                  UseItem("POTN17",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN08")
      Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @38630 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN08",1)
                                                                  UseItem("POTN08",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN52")
      Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @38631 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN52",1)
                                                                  UseItem("POTN52",Myself)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15

  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN55")
      Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @1000080 DO ~AddXP2DA("IW2EX12E")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                    TakePartyItemNum("POTN55",1)
                                                                    UseItem("POTN55",Myself)
                                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("SPIRIT")
      Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @38632 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("SPIRIT",1)
                                                                  UseItem("SPIRIT",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN17")
      Global("Gerbash_Blew_It","GLOBAL",1)~ THEN REPLY @38629 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN17",1)
                                                                  UseItem("POTN17",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN08")
      Global("Gerbash_Blew_It","GLOBAL",1)~ THEN REPLY @38630 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN08",1)
                                                                  UseItem("POTN08",Myself)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN52")
      Global("Gerbash_Blew_It","GLOBAL",1)~ THEN REPLY @38631 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN52",1)
                                                                  UseItem("POTN52",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN55")
      Global("Gerbash_Blew_It","GLOBAL",1)~ THEN REPLY @1000080 DO ~AddXP2DA("IW2EX12E")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                    TakePartyItemNum("POTN55",1)
                                                                    UseItem("POTN55",Myself)
                                                                    EraseJournalEntry(@38062)
                                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("SPIRIT")
      Global("Gerbash_Blew_It","GLOBAL",1)~ THEN REPLY @38632 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("SPIRIT",1)
                                                                  UseItem("SPIRIT",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("Gerbash_Blew_It","GLOBAL",0)~ THEN REPLY @38633 EXIT
  IF ~~ THEN REPLY @38634 EXIT
  IF ~~ THEN REPLY @38635 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @38637
  IF ~GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38638 EXIT
  IF ~Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38639 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @38640
  IF ~~ THEN REPLY @38641 EXIT
END

IF WEIGHT #11
~NumTimesTalkedToGT(0)
 Global("Gerbash_Blew_It","GLOBAL",0)
 Global("60Gerbash_Better","GLOBAL",0)
 Global("60Told_Gerbash_Success","GLOBAL",0)~ THEN BEGIN 17
  SAY @38642
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38643 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38644 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38645 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,SHAMAN)
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @50010 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Global("60Key_Quest","GLOBAL",3)
      False()~ THEN REPLY @38646 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38647 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38648 EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38649 EXIT
  IF ~Class(LastTalkedToBy,SHAMAN)
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @50011 EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      GlobalLT("60Key_Quest","GLOBAL",3)
      False()~ THEN REPLY @38650 EXIT
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN17")
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38651 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                              SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                              SetGlobal("60Told_Gerbash_Success","GLOBAL",1)
                                                              TakePartyItemNum("POTN17",1)
                                                              UseItem("POTN17",Myself)
                                                              EraseJournalEntry(@38062)
                                                              AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN08")
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38652 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                              SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                              SetGlobal("60Told_Gerbash_Success","GLOBAL",1)
                                                              TakePartyItemNum("POTN08",1)
                                                              UseItem("POTN08",Myself)
                                                              EraseJournalEntry(@38062)
                                                              AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN52")
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38653 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                              SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                              SetGlobal("60Told_Gerbash_Success","GLOBAL",1)
                                                              TakePartyItemNum("POTN52",1)
                                                              UseItem("POTN52",Myself)
                                                              EraseJournalEntry(@38062)
                                                              AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN55")
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @1000081 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                SetGlobal("60Told_Gerbash_Success","GLOBAL",1)
                                                                TakePartyItemNum("POTN55",1)
                                                                UseItem("POTN55",Myself)
                                                                EraseJournalEntry(@38062)
                                                                AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("SPIRIT")
      Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38654 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                              SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                              SetGlobal("60Told_Gerbash_Success","GLOBAL",1)
                                                              TakePartyItemNum("SPIRIT",1)
                                                              UseItem("SPIRIT",Myself)
                                                              EraseJournalEntry(@38062)
                                                              AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN17")
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38655 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                TakePartyItemNum("POTN17",1)
                                                                UseItem("POTN17",Myself)
                                                                EraseJournalEntry(@38062)
                                                                AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN08")
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38656 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                TakePartyItemNum("POTN08",1)
                                                                UseItem("POTN08",Myself)
                                                                EraseJournalEntry(@38062)
                                                                AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN52")
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38657 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                TakePartyItemNum("POTN52",1)
                                                                UseItem("POTN52",Myself)
                                                                EraseJournalEntry(@38062)
                                                                AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN55")
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @1000081 DO ~AddXP2DA("IW2EX12E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                  SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                  TakePartyItemNum("POTN55",1)
                                                                  UseItem("POTN55",Myself)
                                                                  EraseJournalEntry(@38062)
                                                                  AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("SPIRIT")
      GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38658 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                                SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                                TakePartyItemNum("SPIRIT",1)
                                                                UseItem("SPIRIT",Myself)
                                                                EraseJournalEntry(@38062)
                                                                AddJournalEntry(@38063,QUEST_DONE)~ GOTO 15
  IF ~GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38633 EXIT
  IF ~Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38659 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
END

IF WEIGHT #14
~NumTimesTalkedToGT(0)
 Global("60Gerbash_Better","GLOBAL",1)~ THEN BEGIN 18
  SAY @38660
  IF ~~ THEN REPLY @38641 EXIT
END

IF WEIGHT #13
~NumTimesTalkedToGT(0)
 Global("60Gerbash_Better","GLOBAL",0)~ THEN BEGIN 19
  SAY @38661
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @38625 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @38626 EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @38627 EXIT
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @50009 EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      False()~ THEN REPLY @38628 EXIT
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN17")~ THEN REPLY @38629 DO ~AddXP2DA("IW2EX12E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                    TakePartyItemNum("POTN17",1)
                                                    UseItem("POTN17",Myself)
                                                    EraseJournalEntry(@38062)
                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN08")~ THEN REPLY @38630 DO ~AddXP2DA("IW2EX12E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                    TakePartyItemNum("POTN08",1)
                                                    UseItem("POTN08",Myself)
                                                    EraseJournalEntry(@38062)
                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN52")~ THEN REPLY @38631 DO ~AddXP2DA("IW2EX12E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                    TakePartyItemNum("POTN52",1)
                                                    UseItem("POTN52",Myself)
                                                    EraseJournalEntry(@38062)
                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("POTN55")~ THEN REPLY @1000080 DO ~AddXP2DA("IW2EX12E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                      SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                      TakePartyItemNum("POTN55",1)
                                                      UseItem("POTN55",Myself)
                                                      EraseJournalEntry(@38062)
                                                      AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~Global("60Gerbash_Better","GLOBAL",0)
      PartyHasItem("SPIRIT")~ THEN REPLY @38632 DO ~AddXP2DA("IW2EX12E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@38064)
                                                    SetGlobal("60Gerbash_Better","GLOBAL",1)
                                                    TakePartyItemNum("SPIRIT",1)
                                                    UseItem("SPIRIT",Myself)
                                                    EraseJournalEntry(@38062)
                                                    AddJournalEntry(@38063,QUEST_DONE)~ GOTO 16
  IF ~~ THEN REPLY @38662 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @38663
  IF ~GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38664 EXIT
  IF ~GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38638 EXIT
  IF ~Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38659 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
END

IF WEIGHT #12
~NumTimesTalkedToGT(0)
 Global("Gerbash_Blew_It","GLOBAL",0)
 Global("60Gerbash_Better","GLOBAL",1)
 Global("60Told_Gerbash_Success","GLOBAL",0)~ THEN BEGIN 21
  SAY @38665
  IF ~GlobalLT("60Key_Quest","GLOBAL",3)~ THEN REPLY @38638 EXIT
  IF ~Global("60Key_Quest","GLOBAL",3)~ THEN REPLY @38659 DO ~SetGlobal("60Told_Gerbash_Success","GLOBAL",1)~ EXIT
END

IF WEIGHT #10
~AreaCheck("IW6001")
 Global("60Gerbash_Hostile","GLOBAL",0)~ THEN BEGIN 22
  SAY @38667
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38668 GOTO 25
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38668 GOTO 25
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @38668 GOTO 25
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38668 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38668 GOTO 23
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38668 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38669 GOTO 25
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38669 GOTO 25
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @38669 GOTO 25
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38669 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38669 GOTO 23
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38669 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @38670
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38671 DO ~SetGlobal("60Gerbash_Reward","GLOBAL",1)~ EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @38672 DO ~SetGlobal("60Gerbash_Reward","GLOBAL",1)~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38673 DO ~SetGlobal("60Gerbash_Reward","GLOBAL",1)~ EXIT
END

IF WEIGHT #9
~AreaCheck("IW6001")
 Global("60Gerbash_Reward","GLOBAL",1)~ THEN BEGIN 24
  SAY @38674
  IF ~~ THEN REPLY @38668 EXIT
  IF ~~ THEN REPLY @38675 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38676
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38677 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38677 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38677 GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38678 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38678 GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38678 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38679 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38679 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38679 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38680 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38680 GOTO 23
  IF ~Race(LastTalkedToBy,HALFORC)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 DO ~GiveGoldForce(753)
                                                         GiveItemCreate("z0bolt97",LastTalkedToBy,40,0,0)
                                                         GiveItemCreate("z0bwhx92", LastTalkedToBy,1,0,0)~ GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38680 GOTO 23
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38680 GOTO 23
  IF ~//!Subrace(LastTalkedToBy,Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @38681 DO ~SetGlobal("60Gerbash_Hostile","GLOBAL",1)~ GOTO 26
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @38682 DO ~SetGlobal("60Gerbash_Hostile","GLOBAL",1)~ GOTO 26
END

IF WEIGHT #8
~AreaCheck("IW6001")
 Global("60Gerbash_Hostile","GLOBAL",1)~ THEN BEGIN 26
  SAY @38683
  IF ~~ THEN EXIT
END

/*IF WEIGHT #-1
~Global("60Gerbash_HealSpl","GLOBAL",1)~ THEN BEGIN 26
  SAY @38683
  IF ~~ THEN EXIT
END*/
