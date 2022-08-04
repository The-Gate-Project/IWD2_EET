BEGIN ~60JERMS2~

IF WEIGHT #0
~Global("60Met_Jermsy","GLOBAL",0)~ THEN BEGIN 0
  SAY @38823
  IF ~//Subrace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38824 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                          AddJournalEntry(@38815,QUEST)~ GOTO 2
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38824 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                          AddJournalEntry(@38815,QUEST)~ GOTO 1
  IF ~!Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38824 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                           AddJournalEntry(@38815,QUEST)~ EXTERN ~60NATHA2~ 30
  IF ~//Subrace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38825 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                          AddJournalEntry(@38815,QUEST)~ GOTO 2
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38825 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                          AddJournalEntry(@38815,QUEST)~ GOTO 1
  IF ~!Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38825 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                           AddJournalEntry(@38815,QUEST)~ EXTERN ~60NATHA2~ 30
  IF ~//Subrace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38827 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                          AddJournalEntry(@38815,QUEST)~ GOTO 2
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38827 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                          AddJournalEntry(@38815,QUEST)~ GOTO 1
  IF ~!Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38827 DO ~SetGlobal("60Met_Jermsy","GLOBAL",1)
                                                                                           AddJournalEntry(@38815,QUEST)~ EXTERN ~60NATHA2~ 30
END

IF ~~ THEN BEGIN 1
  SAY @38828
  IF ~~ THEN EXTERN ~60NATHA2~ 30
END

IF ~~ THEN BEGIN 2
  SAY @38830
  IF ~~ THEN EXTERN ~60NATHA2~ 30
END

IF ~~ THEN BEGIN 3
  SAY @38831
  IF ~~ THEN REPLY @38832 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @38833 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @38834 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @38835
  IF ~~ THEN REPLY @38832 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @38833 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @38834 DO ~SetGlobal("Jermsy_Hostile","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @38836
  IF ~~ THEN REPLY @38837 GOTO 12
  IF ~~ THEN REPLY @38838 GOTO 13
  IF ~~ THEN REPLY @38839 GOTO 14
END

IF ~~ THEN BEGIN 6
  SAY @38840
  IF ~~ THEN REPLY @38841 GOTO 10
  IF ~~ THEN REPLY @38842 GOTO 10
  IF ~~ THEN REPLY @38843 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @38844
  IF ~~ THEN REPLY @38845 GOTO 10
  IF ~~ THEN REPLY @38846 EXTERN ~60NATHA2~ 31
END

IF ~~ THEN BEGIN 8
  SAY @38847
  IF ~~ THEN REPLY @38841 GOTO 10
  IF ~~ THEN REPLY @38842 GOTO 10
  IF ~~ THEN REPLY @38848 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @38849
  IF ~~ THEN REPLY @38841 GOTO 10
  IF ~~ THEN REPLY @38842 GOTO 10
  IF ~~ THEN REPLY @38846 EXTERN ~60NATHA2~ 31
END

IF ~~ THEN BEGIN 10
  SAY @38850
  IF ~~ THEN EXTERN ~60NATHA2~ 31
END

IF ~~ THEN BEGIN 11
  SAY @38851
  IF ~~ THEN EXTERN ~60NATHA2~ 32
END

IF ~~ THEN BEGIN 12
  SAY @38852
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @38853
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @38854
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @38855
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @38856
  IF ~~ THEN REPLY @38857 GOTO 17
  IF ~~ THEN REPLY @38858 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @38859
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @38860
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38861 GOTO 17
  IF ~!Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38862 GOTO 17
END

IF ~~ THEN BEGIN 19
  SAY @38863
  IF ~~ THEN EXTERN ~60NATHA2~ 35
END

IF ~~ THEN BEGIN 20
  SAY @38864
  IF ~~ THEN EXTERN ~60NATHA2~ 36
END

IF ~~ THEN BEGIN 21
  SAY @38865
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38866 EXTERN ~60NATHA2~ 38
  IF ~!Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38867 EXTERN ~60NATHA2~ 38
  IF ~~ THEN REPLY @38868 EXTERN ~60NATHA2~ 38
END

IF ~~ THEN BEGIN 22
  SAY @38869
  IF ~~ THEN REPLY @38870 EXTERN ~60NATHA2~ 37
  IF ~~ THEN REPLY @38871 EXTERN ~60NATHA2~ 37
  IF ~~ THEN REPLY @38872 EXTERN ~60NATHA2~ 40
END

IF ~~ THEN BEGIN 23
  SAY @38873
  IF ~~ THEN REPLY @38874 GOTO 27
END

IF WEIGHT #1
~AreaCheck("IW6008")~ THEN BEGIN 24
  SAY @38875
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                              SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                              GiveItemCreate("z0clckfc",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0bowseh",LastTalkedToBy,1,0,0)
                                                              GiveItemCreate("AMUL11",LastTalkedToBy,1,1,1)
                                                              GiveGoldForce(174)
                                                              EraseJournalEntry(@28868)
                                                              EraseJournalEntry(@28869)
                                                              EraseJournalEntry(@28870)
                                                              EraseJournalEntry(@28871)
                                                              EraseJournalEntry(@39077)
                                                              EraseJournalEntry(@38815)
                                                              AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                        SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                        EraseJournalEntry(@28868)
                                                        EraseJournalEntry(@28869)
                                                        EraseJournalEntry(@28870)
                                                        EraseJournalEntry(@28871)
                                                        EraseJournalEntry(@39077)
                                                        EraseJournalEntry(@38815)
                                                        AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                             SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                             EraseJournalEntry(@28868)
                                                             EraseJournalEntry(@28869)
                                                             EraseJournalEntry(@28870)
                                                             EraseJournalEntry(@28871)
                                                             EraseJournalEntry(@39077)
                                                             EraseJournalEntry(@38815)
                                                             AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",0)~ THEN REPLY @38877 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 31
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",1)~ THEN REPLY @38878 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 32
  IF ~~ THEN REPLY @38879 GOTO 38
  IF ~~ THEN REPLY @38880 GOTO 37
  IF ~Global("60Hiepherus_Quest","GLOBAL",1)~ THEN REPLY @38881 GOTO 41
  IF ~Global("60Hiepherus_Quest","GLOBAL",0)~ THEN REPLY @38881 GOTO 40
  IF ~~ THEN REPLY @38882 GOTO 49
  IF ~~ THEN REPLY @38883 GOTO 46
  IF ~~ THEN REPLY @38884 GOTO 44
  IF ~Global("Know_About_Sheemish_Conlan","GLOBAL",1)~ THEN REPLY @38885 GOTO 35
  IF ~~ THEN REPLY @38886 GOTO 51
  IF ~~ THEN REPLY @38887 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38888
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                              SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                              GiveItemCreate("z0clckfc",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0bowseh",LastTalkedToBy,1,0,0)
                                                              GiveItemCreate("AMUL11",LastTalkedToBy,1,1,1)
                                                              GiveGoldForce(174)
                                                              EraseJournalEntry(@28868)
                                                              EraseJournalEntry(@28869)
                                                              EraseJournalEntry(@28870)
                                                              EraseJournalEntry(@28871)
                                                              EraseJournalEntry(@39077)
                                                              EraseJournalEntry(@38815)
                                                              AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                        SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                        EraseJournalEntry(@28868)
                                                        EraseJournalEntry(@28869)
                                                        EraseJournalEntry(@28870)
                                                        EraseJournalEntry(@28871)
                                                        EraseJournalEntry(@39077)
                                                        EraseJournalEntry(@38815)
                                                        AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                             SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                             EraseJournalEntry(@28868)
                                                             EraseJournalEntry(@28869)
                                                             EraseJournalEntry(@28870)
                                                             EraseJournalEntry(@28871)
                                                             EraseJournalEntry(@39077)
                                                             EraseJournalEntry(@38815)
                                                             AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",0)~ THEN REPLY @38877 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 31
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",1)~ THEN REPLY @38878 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 32
  IF ~~ THEN REPLY @38879 GOTO 38
  IF ~~ THEN REPLY @38880 GOTO 37
  IF ~Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38881 GOTO 41
  IF ~!Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38881 GOTO 40
  IF ~~ THEN REPLY @38882 GOTO 49
  IF ~~ THEN REPLY @38883 GOTO 46
  IF ~~ THEN REPLY @38884 GOTO 44
  IF ~Global("Know_About_Sheemish_Conlan","GLOBAL",1)~ THEN REPLY @38885 GOTO 35
  IF ~~ THEN REPLY @38886 GOTO 51
  IF ~~ THEN REPLY @38887 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @38889
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38890 GOTO 25
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @38891 GOTO 25
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38892 GOTO 25
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38893 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38894 EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @38895 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @38896
  IF ~~ THEN DO ~SetGlobal("Know_About_Sheemish_Conlan","GLOBAL",1)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @38897
  IF ~~ THEN DO ~AddJournalEntry(@38816,QUEST)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @38898
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @38899
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",0)~ THEN REPLY @38900 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 31
  IF ~Global("60Key_Quest","GLOBAL",2)
      PartyHasItem("z6key")
      Global("SPRITE_IS_DEADGerbash","GLOBAL",1)~ THEN REPLY @38878 DO ~AddXP2DA("IW2EX12E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38822)
                                                                        SetGlobal("60Key_Quest","GLOBAL",3)
                                                                        TakePartyItem("z6key")
                                                                        EraseJournalEntry(@39078)
                                                                        EraseJournalEntry(@38816)
                                                                        EraseJournalEntry(@39283)
                                                                        EraseJournalEntry(@28909)
                                                                        EraseJournalEntry(@39167)
                                                                        AddJournalEntry(@38818,QUEST_DONE)~ GOTO 32
  IF ~Global("60Met_Conlan","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",0)
      !Global("60Key_Quest","GLOBAL",2)~ THEN REPLY @38901 DO ~SetGlobal("60Key_Quest","GLOBAL",1)~ GOTO 35
  IF ~!Global("60Key_Quest","GLOBAL",2)~ THEN REPLY @38902 DO ~SetGlobal("60Key_Quest","GLOBAL",1)~ FLAGS 0x200 GOTO 25 /*true*/
  IF ~!Global("60Key_Quest","GLOBAL",2)~ THEN REPLY @38903 DO ~SetGlobal("60Key_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @38904
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38905 GOTO 33
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38905 GOTO 34
  IF ~~ THEN REPLY @38906 GOTO 25
  IF ~~ THEN REPLY @38907 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @38908
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38905 GOTO 33
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @38905 GOTO 34
  IF ~~ THEN REPLY @38906 GOTO 25
  IF ~~ THEN REPLY @38907 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @38909
  IF ~~ THEN REPLY @38910 GOTO 25
  IF ~~ THEN REPLY @38911 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @38912
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38913 DO ~AddXP2DA("IW2EX12H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                              SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                              GiveItemCreate("z0clckfc",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0bowseh",LastTalkedToBy,1,0,0)
                                                              GiveItemCreate("AMUL11",LastTalkedToBy,1,1,1)
                                                              GiveGoldForce(174)
                                                              EraseJournalEntry(@28868)
                                                              EraseJournalEntry(@28869)
                                                              EraseJournalEntry(@28870)
                                                              EraseJournalEntry(@28871)
                                                              EraseJournalEntry(@39077)
                                                              EraseJournalEntry(@38815)
                                                              AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38913 DO ~AddXP2DA("IW2EX12H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                        SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                        EraseJournalEntry(@28868)
                                                        EraseJournalEntry(@28869)
                                                        EraseJournalEntry(@28870)
                                                        EraseJournalEntry(@28871)
                                                        EraseJournalEntry(@39077)
                                                        EraseJournalEntry(@38815)
                                                        AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38913 DO ~AddXP2DA("IW2EX12H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                             SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                             EraseJournalEntry(@28868)
                                                             EraseJournalEntry(@28869)
                                                             EraseJournalEntry(@28870)
                                                             EraseJournalEntry(@28871)
                                                             EraseJournalEntry(@39077)
                                                             EraseJournalEntry(@38815)
                                                             AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~~ THEN REPLY @38910 GOTO 25
  IF ~~ THEN REPLY @38911 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @38914
  IF ~~ THEN REPLY @38915 GOTO 36
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @38918
  IF ~~ THEN REPLY @38919 GOTO 25
  IF ~~ THEN REPLY @38920 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @38921
  IF ~~ THEN REPLY @38922 GOTO 38
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @38923
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @38924
  IF ~~ THEN REPLY @38925 GOTO 42
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @38926
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                              SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                              GiveItemCreate("z0clckfc",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0bowseh",LastTalkedToBy,1,0,0)
                                                              GiveItemCreate("AMUL11",LastTalkedToBy,1,1,1)
                                                              GiveGoldForce(174)
                                                              EraseJournalEntry(@28868)
                                                              EraseJournalEntry(@28869)
                                                              EraseJournalEntry(@28870)
                                                              EraseJournalEntry(@28871)
                                                              EraseJournalEntry(@39077)
                                                              EraseJournalEntry(@38815)
                                                              AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                        SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                        EraseJournalEntry(@28868)
                                                        EraseJournalEntry(@28869)
                                                        EraseJournalEntry(@28870)
                                                        EraseJournalEntry(@28871)
                                                        EraseJournalEntry(@39077)
                                                        EraseJournalEntry(@38815)
                                                        AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38876 DO ~AddXP2DA("IW2EX12H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@38821)
                                                             SetGlobal("60Hiepherus_Quest","GLOBAL",2)
                                                             EraseJournalEntry(@28868)
                                                             EraseJournalEntry(@28869)
                                                             EraseJournalEntry(@28870)
                                                             EraseJournalEntry(@28871)
                                                             EraseJournalEntry(@39077)
                                                             EraseJournalEntry(@38815)
                                                             AddJournalEntry(@38817,QUEST_DONE)~ GOTO 26
  IF ~~ THEN REPLY @38925 GOTO 42
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @38927
  IF ~~ THEN REPLY @38925 GOTO 42
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 42
  SAY @38928
  IF ~~ THEN REPLY @38929 GOTO 43
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @38930
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 44
  SAY @38931
  IF ~~ THEN REPLY @38932 GOTO 45
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @38933
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @38934
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @38935
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @38936
  IF ~~ THEN REPLY @38925 GOTO 42
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 49
  SAY @38937
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @38938
  IF ~~ THEN REPLY @38916 GOTO 25
  IF ~~ THEN REPLY @38917 EXIT
END

IF ~~ THEN BEGIN 51
  SAY @38939
  IF ~~ THEN REPLY @38940 GOTO 25
  IF ~~ THEN REPLY @38941 EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 52
  SAY @38942
  IF ~Global("60Jermsy_Apology","GLOBAL",0)~ THEN REPLY @38943 DO ~SetGlobal("60Jermsy_Apology","GLOBAL",1)~ GOTO 53
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Global("60Jermsy_Apology","GLOBAL",0)~ THEN REPLY @38944 DO ~SetGlobal("60Jermsy_Apology","GLOBAL",1)~ GOTO 53
  IF ~Global("60Jermsy_Apology","GLOBAL",0)~ THEN REPLY @38945 DO ~SetGlobal("60Jermsy_Apology","GLOBAL",1)~ GOTO 53
  IF ~Global("60Jermsy_Apology","GLOBAL",1)~ THEN REPLY @38943 EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Global("60Jermsy_Apology","GLOBAL",1)~ THEN REPLY @38944 EXIT
  IF ~Global("60Jermsy_Apology","GLOBAL",1)~ THEN REPLY @38945 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @38946
  IF ~~ THEN REPLY @38947 EXIT
  IF ~~ THEN REPLY @38948 DO ~SetGlobal("60Jermsy_Angry","GLOBAL",1)~ EXIT
  IF ~Global("Jermsy_Hostile","GLOBAL",0)~ THEN REPLY @38949 EXIT
  IF ~Global("Jermsy_Hostile","GLOBAL",1)~ THEN REPLY @38950 EXIT
END

IF WEIGHT #2
~Global("60Jermsy_Angry","GLOBAL",1)~ THEN BEGIN 54
  SAY @38951
  IF ~~ THEN EXIT
END
