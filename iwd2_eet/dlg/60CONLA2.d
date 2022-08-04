BEGIN ~60CONLA2~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @28912
  IF ~~ THEN REPLY @28913 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @28914 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @28915 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 2
END

IF WEIGHT #2
~NumTimesTalkedTo(0)
 //!Subrace(LastTalkedToBy,Elf_Drow)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
 //!Subrace(LastTalkedToBy,Dwarf_Gray)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
 //!Subrace(LastTalkedToBy,Gnome_Deep)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
 //!Subrace(LastTalkedToBy,Gnome_Deep)
 //!Subrace(LastTalkedToBy,Human_Tiefling)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
 //!Subrace(LastTalkedToBy,Dwarf_Gold)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",5))~ THEN BEGIN 1
  SAY @28912
  IF ~~ THEN REPLY @28913 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @28914 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @28915 DO ~SetGlobal("60Met_Conlan","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @28916
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @28917 GOTO 3
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @28918 GOTO 3
  IF ~//Subrace(LastTalkedToBy,Gnome_Deep)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))~ THEN REPLY @28919 GOTO 3
  IF ~//Subrace(LastTalkedToBy,Gnome_Deep)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))~ THEN REPLY @28920 GOTO 3
  IF ~//Subrace(LastTalkedToBy,Human_Tiefling)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @28921 GOTO 3
  IF ~//Subrace(LastTalkedToBy,Dwarf_Gold)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",5))~ THEN REPLY @28922 GOTO 3
  IF ~~ THEN REPLY @28923 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @28924
  IF ~~ THEN REPLY @28925 GOTO 6
  IF ~~ THEN REPLY @28926 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @28927
  IF ~~ THEN REPLY @28925 GOTO 6
  IF ~~ THEN REPLY @28926 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @28928
  IF ~~ THEN REPLY @28925 GOTO 6
  IF ~~ THEN REPLY @28926 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @28929
  IF ~~ THEN REPLY @28930 GOTO 7
  IF ~~ THEN REPLY @28931 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @28933
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @28935
  IF ~Global("60Met_Sheemish","GLOBAL",1)~ THEN REPLY @28936 DO ~SetGlobal("60Conlan_Orrick_Explained","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~Global("60Met_Sheemish","GLOBAL",0)~ THEN REPLY @28937 DO ~SetGlobal("60Conlan_Orrick_Explained","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~Global("60Met_Sheemish","GLOBAL",0)~ THEN REPLY @28938 DO ~SetGlobal("60Conlan_Orrick_Explained","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
END

IF ~~ THEN BEGIN 9
  SAY @28939
  IF ~Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28940 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         SetGlobal("60Seek_Sheemish_Quest","GLOBAL",1)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         SetGlobal("60Seek_Sheemish_Quest","GLOBAL",1)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28943 GOTO 21
  IF ~~ THEN REPLY @28944 GOTO 10
  IF ~~ THEN REPLY @28945 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @28946
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28940 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28947 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28947 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28949 GOTO 21
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28951 GOTO 25
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28952 GOTO 27
  IF ~~ THEN REPLY @28953 GOTO 17
  IF ~~ THEN REPLY @28954 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @28955
  IF ~~ THEN DO ~SetGlobal("60Conlan_Blew_It","GLOBAL",1)~ GOTO 12
END

IF WEIGHT #0
~Global("60Conlan_Blew_It","GLOBAL",1)~ THEN BEGIN 12
  SAY @28956
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @28957
  IF ~~ THEN REPLY @28958 DO ~SetGlobal("60Seek_Sheemish_Quest","GLOBAL",1)
                              ChangeStoreMarkup("60Sheemi",110,60)~ GOTO 14
  IF ~~ THEN REPLY @28959 DO ~SetGlobal("60Seek_Sheemish_Quest","GLOBAL",1)
                              ChangeStoreMarkup("60Sheemi",110,60)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @28960
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28947 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28947 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28949 GOTO 21
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28951 GOTO 25
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28952 GOTO 27
  IF ~~ THEN REPLY @28961 GOTO 17
  IF ~~ THEN REPLY @28962 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @28963
  IF ~~ THEN REPLY @28964 DO ~SetGlobal("60Conlan_store_Explained","GLOBAL",1)~ GOTO 16
  IF ~~ THEN REPLY @28965 DO ~SetGlobal("60Conlan_store_Explained","GLOBAL",1)
                              StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28966 DO ~SetGlobal("60Conlan_store_Explained","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @28967
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28968 GOTO 25
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28970 GOTO 21
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28971 GOTO 27
  IF ~~ THEN REPLY @28973 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28966 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @28975
  IF ~~ THEN REPLY @28976 GOTO 18
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28951 GOTO 25
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28977 GOTO 21
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28981 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @30600
  IF ~~ THEN REPLY @30601 GOTO 19
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28951 GOTO 25
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28977 GOTO 21
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28981 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @30602
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @28951 GOTO 25
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30603 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 20
  SAY @30604
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @30605 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @30606 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @30607 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Met_Sheemish","GLOBAL",0)~ THEN REPLY @30608 DO ~SetGlobal("60Conlan_Orrick_Explained","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @30609 GOTO 25
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28977 GOTO 21
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @30611 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @30612 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30613 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @30614
  IF ~~ THEN REPLY @30615 GOTO 22
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @30616 GOTO 25
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28981 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @30617
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @30618
  IF ~~ THEN REPLY @30619 GOTO 24
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @30616 GOTO 25
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28981 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @30620
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @30616 GOTO 25
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28965 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @28981 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @30621
  IF ~~ THEN REPLY @30622 DO ~AddJournalEntry(@28909,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @30623 DO ~AddJournalEntry(@28909,QUEST)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @30624
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28977 GOTO 21
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @28978 GOTO 27
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @30625 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30626 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @30627
  IF ~Race(LastTalkedToBy,HALF_ELF)~ THEN REPLY @30628 GOTO 28
  IF ~~ THEN REPLY @30629 GOTO 29
  IF ~~ THEN REPLY @30630 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @30631
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @30632
  IF ~~ THEN REPLY @30633 GOTO 30
  IF ~~ THEN REPLY @30634 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @30635
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @28969 DO ~EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28908,QUEST_DONE)~ GOTO 11
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28941 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Seek_Sheemish_Quest","GLOBAL",0)
      Global("60Met_Sheemish","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("SPRITE_IS_DEADSheemish","GLOBAL",0)~ THEN REPLY @28942 DO ~AddXP2DA("IW2EX12E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@28911)
                                                                         EraseJournalEntry(@39165)
                                                                         EraseJournalEntry(@39166)
                                                                         AddJournalEntry(@28907,QUEST_DONE)~ GOTO 13
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @30616 GOTO 25
  IF ~Global("60Conlan_Orrick_Explained","GLOBAL",1)~ THEN REPLY @28977 GOTO 21
  IF ~~ THEN REPLY @30610 GOTO 17
  IF ~Global("60Conlan_store_Explained","GLOBAL",0)~ THEN REPLY @28979 GOTO 15
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @28980 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~Global("60Conlan_store_Explained","GLOBAL",1)~ THEN REPLY @30625 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30626 EXIT
END

IF WEIGHT #1 ~AreaCheck("IW6001")~ THEN BEGIN 31
  SAY @30636
  IF ~~ THEN REPLY @30611 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30637 DO ~StartStore("60Sheemi",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @30613 EXIT
END
