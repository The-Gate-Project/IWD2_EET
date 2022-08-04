BEGIN ~10REIG~

IF WEIGHT #5
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @12659
  IF ~!TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @12660 DO ~SetGlobal("Reig_Quest","GLOBAL",1)~ GOTO 1
  IF ~!TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @12661 DO ~SetGlobal("Reig_Quest","GLOBAL",1)~ GOTO 2
  IF ~TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @12660 DO ~SetGlobal("Reig_Quest","GLOBAL",1)~ EXTERN ~10JON~ 5
  IF ~TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @12661 DO ~SetGlobal("Reig_Quest","GLOBAL",1)~ EXTERN ~10JON~ 5
END

IF ~~ THEN BEGIN 1
  SAY @12674
  IF ~~ THEN REPLY @12675 GOTO 4
  IF ~~ THEN REPLY @12676 GOTO 9
  IF ~~ THEN REPLY @20745 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @20747
  IF ~~ THEN REPLY @12675 DO ~SetGlobal("Know_Arm","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @12676 DO ~SetGlobal("Know_Arm","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @20748
  IF ~~ THEN REPLY @12675 DO ~SetGlobal("Know_Arm","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @12676 DO ~SetGlobal("Know_Arm","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @20749
  IF ~~ THEN DO ~ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 EXTERN ~10JON~ 2 /*true*/ //CriticalPath
END

IF ~~ THEN BEGIN 5
  SAY @20751
  IF ~~ THEN DO ~GiveItemCreate("SW1H07",LastTalkedToBy,0,0,0)~ GOTO 6
END

IF ~~ THEN BEGIN 6  //CheckSkill
  SAY @20752
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @20753 DO ~GiveItem("LEAT01",LastTalkedToBy)~ GOTO 22
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)
      CheckStatGT(LastTalkedToBy,11,INT)~ THEN REPLY @20753 DO ~GiveItem("LEAT01",LastTalkedToBy)~ GOTO 22
  IF ~Global("Know_Goblin_Reig","GLOBAL",0)~ THEN REPLY @20754 GOTO 7
  IF ~Global("Know_Arm","GLOBAL",0)~ THEN REPLY @20745 GOTO 11
  IF ~Global("Know_Arm","GLOBAL",1)~ THEN REPLY @20755 GOTO 12
END

IF ~~ THEN BEGIN 7
  SAY @20756
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @20757
  IF ~~ THEN REPLY @20745 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @20756
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @20758
  IF ~~ THEN REPLY @12675 DO ~SetGlobal("Know_Goblin_Reig","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY @20760
  IF ~~ THEN REPLY @20755 DO ~AddJournalEntry(@1476,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @20761
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38715 GOTO 14
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38716 GOTO 14
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @38717 GOTO 14
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38719 GOTO 14
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38720 GOTO 14
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @38722 GOTO 14
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38723 GOTO 14
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38724 GOTO 14
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38725 GOTO 14
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @50001 GOTO 14
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @20765 GOTO 14
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @50002 GOTO 14
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @20766 GOTO 14
  IF ~PartyHasItem("POTN08")~ THEN REPLY @20767 DO ~AddXP2DA("IW2EX1A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                    TakePartyItemNum("POTN08",1)
                                                    DestroyItem("POTN08")
                                                    SetGlobal("Reig_Quest","GLOBAL",2)
                                                    EraseJournalEntry(@1476)
                                                    EraseJournalEntry(@1478)
                                                    EraseJournalEntry(@27591)
                                                    AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18
  IF ~PartyHasItem("POTN52")~ THEN REPLY @1000082 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                      TakePartyItemNum("POTN52",1)
                                                      DestroyItem("POTN52")
                                                      SetGlobal("Reig_Quest","GLOBAL",2)
                                                      EraseJournalEntry(@1476)
                                                      EraseJournalEntry(@1478)
                                                      EraseJournalEntry(@27591)
                                                      AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18 //POTN_08
  IF ~~ THEN REPLY @20768 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20813
  IF ~~ THEN REPLY @20815 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @20816
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @20817 EXIT
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @20818 EXIT
END

IF WEIGHT #4
~Global("Reig_Quest","GLOBAL",1)~ THEN BEGIN 15
  SAY @20819
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38726 GOTO 14
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38727 GOTO 14
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @38728 GOTO 14
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38729 GOTO 14
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38730 GOTO 14
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @38731 GOTO 14
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38732 GOTO 14
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38733 GOTO 14
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38734 GOTO 14
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @50001 GOTO 14
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @20821 GOTO 14
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @50002 GOTO 14
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @20766 GOTO 14
  IF ~PartyHasItem("POTN08")~ THEN REPLY @20823 DO ~AddXP2DA("IW2EX1A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                    TakePartyItemNum("POTN08",1)
                                                    DestroyItem("POTN08")
                                                    SetGlobal("Reig_Quest","GLOBAL",2)
                                                    EraseJournalEntry(@1476)
                                                    EraseJournalEntry(@1478)
                                                    EraseJournalEntry(@27591)
                                                    AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18
  IF ~PartyHasItem("POTN52")~ THEN REPLY @1000083 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                      TakePartyItemNum("POTN52",1)
                                                      DestroyItem("POTN52")
                                                      SetGlobal("Reig_Quest","GLOBAL",2)
                                                      EraseJournalEntry(@1476)
                                                      EraseJournalEntry(@1478)
                                                      EraseJournalEntry(@27591)
                                                      AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18
  IF ~~ THEN REPLY @20831 GOTO 27
  IF ~~ THEN REPLY @20832 EXIT
END

IF WEIGHT #2
~HPGT(Myself,15)
 Global("Reig_Quest","GLOBAL",1)
 Global("Reig_Heal_Priest","GLOBAL",0)~ THEN BEGIN 16
  SAY @20833
  IF ~Global("Reig_Heal_Priest","GLOBAL",0)~ THEN REPLY @20834 DO ~AddXP2DA("IW2EX1E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@1483)
                                                                   SetGlobal("Reig_Heal_Priest","GLOBAL",1)
                                                                   AddJournalEntry(@1478,QUEST)~ GOTO 17
  IF ~Global("Reig_Heal_Priest","GLOBAL",1)~ THEN REPLY @20834 DO ~AddXP2DA("IW2EX1E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@1483)
                                                                   SetGlobal("Reig_Heal_Priest","GLOBAL",1)
                                                                   AddJournalEntry(@1478,QUEST)~ GOTO 17
END

IF WEIGHT #3
~Global("Reig_Quest","GLOBAL",1)
 Global("Reig_Heal_Priest","GLOBAL",1)~ THEN BEGIN 17
  SAY @20835
  IF ~PartyHasItem("POTN08")~ THEN REPLY @20823 DO ~AddXP2DA("IW2EX1A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                    TakePartyItemNum("POTN08",1)
                                                    DestroyItem("POTN08")
                                                    SetGlobal("Reig_Quest","GLOBAL",2)
                                                    EraseJournalEntry(@1476)
                                                    EraseJournalEntry(@1478)
                                                    EraseJournalEntry(@27591)
                                                    AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18

  IF ~PartyHasItem("POTN52")~ THEN REPLY @1000083 DO ~AddXP2DA("IW2EX1A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@1484)
                                                      TakePartyItemNum("POTN52",1)
                                                      DestroyItem("POTN52")
                                                      SetGlobal("Reig_Quest","GLOBAL",2)
                                                      EraseJournalEntry(@1476)
                                                      EraseJournalEntry(@1478)
                                                      EraseJournalEntry(@27591)
                                                      AddJournalEntry(@1477,QUEST_DONE)~ GOTO 18
  IF ~~ THEN REPLY @20831 GOTO 27
  IF ~~ THEN REPLY @20817 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @20837
  IF ~~ THEN GOTO 19
END

IF WEIGHT #1
~Global("Reig_Quest","GLOBAL",2)~ THEN BEGIN 19
  SAY @20838
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @20831 GOTO 27
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @20839 EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @20840 DO ~SetGlobal("Told_Reig","GLOBAL",1)
                                                                    AddJournalEntry(@1479,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @20867
  IF ~~ THEN REPLY @20887 EXIT
END

IF WEIGHT #0
~Global("Told_Reig","GLOBAL",1)~ THEN BEGIN 21
  SAY @20910
  IF ~~ THEN REPLY @20887 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @20938
  IF ~CheckStatGT(LastTalkedToBy,14,CON)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @20956 GOTO 23
  IF ~CheckStatLT(LastTalkedToBy,15,CON)
      CheckStatGT(LastTalkedToBy,14,INT)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @20956 GOTO 23
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @21168 DO ~GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("HELM01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("DAGG01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("AX1H01",LastTalkedToBy,0,0,0)~ GOTO 24
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)
      CheckStatGT(LastTalkedToBy,14,INT)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @21192 DO ~GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("HELM01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("DAGG01",LastTalkedToBy,0,0,0)
                                                                  GiveItemCreate("AX1H01",LastTalkedToBy,0,0,0)~ GOTO 24
  IF ~~ THEN REPLY @21294 GOTO 7
  IF ~~ THEN REPLY @21295 GOTO 11
END

IF ~~ THEN BEGIN 23
  SAY @21296
  IF ~~ THEN REPLY @21297 DO ~GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
                              GiveItemCreate("HELM01",LastTalkedToBy,0,0,0)
                              GiveItemCreate("DAGG01",LastTalkedToBy,0,0,0)
                              GiveItemCreate("AX1H01",LastTalkedToBy,0,0,0)~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @21306
  IF ~~ THEN REPLY @21307 GOTO 7
  IF ~~ THEN REPLY @21309 GOTO 11
END

IF ~~ THEN BEGIN 25
  SAY @21315
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @24046
  IF ~~ THEN REPLY @27907 GOTO 1
  IF ~~ THEN REPLY @27908 GOTO 2
END

IF ~~ THEN BEGIN 27
  SAY @27909
  IF ~~ THEN REPLY @27910 EXIT
END
