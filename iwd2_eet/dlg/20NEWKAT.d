BEGIN ~20NEWKAT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35954
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35958 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)
                                                             AddJournalEntry(@35941,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @35955 DO ~AddJournalEntry(@35941,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @39868 DO ~AddJournalEntry(@35941,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @35956 DO ~AddJournalEntry(@35941,QUEST)~ GOTO 2
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35957 DO ~AddJournalEntry(@35941,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @35959
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35960 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)~ GOTO 4
  IF ~~ THEN REPLY @35956 GOTO 2
  IF ~~ THEN REPLY @39868 GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35957 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @35961
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35960 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)~ GOTO 4
  IF ~~ THEN REPLY @35955 GOTO 1
  IF ~~ THEN REPLY @39868 GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35957 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @35962
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35963 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35960 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @35964
  IF ~~ THEN REPLY @35965 DO ~AddJournalEntry(@35942,QUEST)~ GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @35966
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @35967 GOTO 6
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @35967 GOTO 24
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @35967 GOTO 25
  IF ~!Class(LastTalkedToBy,THIEF_ALL)
      !Class(LastTalkedToBy,RANGER_ALL)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @35967 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @35968
  IF ~~ THEN REPLY @35969 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @35970
  IF ~~ THEN REPLY @35971 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)
                              AddJournalEntry(@35942,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @2312 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",2)~ GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35972 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @35973
  IF ~~ THEN REPLY @35971 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)
                              EraseJournalEntry(@35941)
                              EraseJournalEntry(@35942)
                              AddJournalEntry(@35943,QUEST_DONE)~ GOTO 9
  IF ~~ THEN REPLY @39494 EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35974 DO ~SetGlobal("SR_Kaitlin_Fled","GLOBAL",1)
                                                              EraseJournalEntry(@35941)
                                                              EraseJournalEntry(@35942)
                                                              AddJournalEntry(@35943,QUEST_DONE)
                                                              StartCutScene("20cKait2")~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35975 DO ~SetGlobal("SPRITE_IS_DEADKaitlin","GLOBAL",1)
                                                              EraseJournalEntry(@35941)
                                                              EraseJournalEntry(@35942)
                                                              AddJournalEntry(@35944,QUEST_DONE)
                                                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @35976
  IF ~!Global("SR_Know_Dam","GLOBAL",1)~ THEN REPLY @35977 GOTO 10
  IF ~~ THEN REPLY @35978 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @35979
  IF ~~ THEN REPLY @35980 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @35981
  IF ~~ THEN REPLY @35982 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35983
  IF ~~ THEN REPLY @35984 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @35985
  IF ~CheckStatGT(LastTalkedToBy,11,INT)~ THEN REPLY @35986 DO ~SetGlobal("SR_Know_Dam","GLOBAL",1)
                                                                AddJournalEntry(@35945,QUEST)~ GOTO 15
  IF ~CheckStatLT(LastTalkedToBy,12,INT)~ THEN REPLY @35987 DO ~SetGlobal("SR_Know_Dam","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @35988
  IF ~GlobalLT("SR_Rescue_Villagers","GLOBAL",4)~ THEN REPLY @35989 DO ~AddJournalEntry(@35945,QUEST)~ GOTO 15
  IF ~GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN REPLY @35991 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @35990
  IF ~~ THEN REPLY @35991 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY @35992
  IF ~Global("SR_Orc_Guards_Dead","GLOBAL",1)
      Global("SR_Villagers_Dead","GLOBAL",0)
      !Global("SR_Rescue_Xp","GLOBAL",1)~ THEN REPLY @35993 DO ~AddXP2DA("IW2EX3H")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@35950)
                                                                SetGlobal("SR_Rescue_Villagers","GLOBAL",5)
                                                                SetGlobal("SR_Rescue_Xp","GLOBAL",1)
                                                                EraseJournalEntry(@35941)
                                                                EraseJournalEntry(@35942)
                                                                AddJournalEntry(@35946,QUEST_DONE)~ GOTO 17
  IF ~GlobalLT("SR_Villagers_Dead","GLOBAL",4)
      GlobalGT("SPRITE_IS_DEAD2100_Peasant","GLOBAL",11)
      GlobalLT("SR_Rescue_Villagers","GLOBAL",5)~ THEN REPLY @35994 DO ~SetGlobal("SR_Villagers_Dead","GLOBAL",5)
                                                                        EraseJournalEntry(@35941)
                                                                        EraseJournalEntry(@35942)
                                                                        AddJournalEntry(@35947,QUEST_DONE)~ GOTO 20
  IF ~Global("SR_Slay_Torak","GLOBAL",3)
      !Global("SPRITE_IS_DEADTorak","GLOBAL",0)~ THEN REPLY @35995 DO ~AddXP2DA("IW2EX3H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@35951)
                                                                       SetGlobal("SR_Slay_Torak","GLOBAL",5)~ GOTO 22
  IF ~GlobalLT("SR_Rescue_Villagers","GLOBAL",3)
      GlobalGT("SR_Rescue_Villagers","GLOBAL",0)
      !Global("SR_Villagers_Dead","GLOBAL",1)~ THEN REPLY @39873 DO ~SetGlobal("SR_Rescue_Villagers","GLOBAL",3)~ GOTO 5
  IF ~!Global("SR_Know_Dam","GLOBAL",1)~ THEN REPLY @35977 GOTO 10
  IF ~~ THEN REPLY @35996 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @35997
  IF ~GlobalLT("SR_Slay_Torak","GLOBAL",4)
      !Global("SPRITE_IS_DEADTorak","GLOBAL",0)~ THEN REPLY @35998 DO ~AddXP2DA("IW2EX3H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@35951)
                                                                       SetGlobal("SR_Slay_Torak","GLOBAL",5)~ GOTO 18
  IF ~Global("SPRITE_IS_DEADTorak","GLOBAL",0)~ THEN REPLY @35999 DO ~SetGlobal("SR_Slay_Torak","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @36000
  IF ~~ THEN REPLY @36001 DO ~AddXP2DA("IW2EX3E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35952)
                              AddJournalEntry(@35948,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @36002
  IF ~Global("SR_Know_Dam","GLOBAL",1)
      !Global("SR_Dam_Xp","GLOBAL",1)~ THEN REPLY @36003 DO ~AddXP2DA("IW2EX3E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@35953)
                                                             SetGlobal("SR_Dam_Xp","GLOBAL",1)
                                                             AddJournalEntry(@35949,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @36004 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @36005
  IF ~!Global("SPRITE_IS_DEADTorak","GLOBAL",0)~ THEN REPLY @36006 DO ~AddXP2DA("IW2EX3H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@35951)~ GOTO 22
  IF ~Global("SPRITE_IS_DEADTorak","GLOBAL",0)~ THEN REPLY @36007 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @36008
  IF ~~ THEN REPLY @36009 DO ~SetGlobal("SR_Slay_Torak","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @36010
  IF ~~ THEN REPLY @36001 DO ~AddXP2DA("IW2EX3E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35952)
                              AddJournalEntry(@35948,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 23
  SAY @36011
  IF ~~ THEN REPLY @36004 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @37602
  IF ~~ THEN REPLY @35969 GOTO 7
END

IF ~~ THEN BEGIN 25
  SAY @37603
  IF ~~ THEN REPLY @35969 GOTO 7
END
