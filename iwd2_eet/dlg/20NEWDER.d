BEGIN ~20NEWDER~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35662
  IF ~~ THEN REPLY @35663 DO ~AddXP2DA("IW2EX3H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35658)~ GOTO 1
  IF ~~ THEN REPLY @35664 DO ~AddXP2DA("IW2EX3H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35658)~ GOTO 2
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @35665 DO ~AddXP2DA("IW2EX3H")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@35658)~ GOTO 3
  IF ~~ THEN REPLY @35666 DO ~AddXP2DA("IW2EX3H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35658)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @35667
  IF ~~ THEN REPLY @35668 GOTO 6
  IF ~~ THEN REPLY @35669 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @35670
  IF ~~ THEN REPLY @35668 GOTO 6
  IF ~~ THEN REPLY @35669 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @35671
  IF ~~ THEN REPLY @35668 GOTO 6
  IF ~~ THEN REPLY @35669 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @35672
  IF ~~ THEN REPLY @35668 GOTO 6
  IF ~~ THEN REPLY @35669 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @35673
  IF ~~ THEN REPLY @35674 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @35675
  IF ~~ THEN REPLY @35676 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @35677
  IF ~~ THEN REPLY @35678 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @35679
  IF ~~ THEN REPLY @35680 GOTO 10
  IF ~~ THEN REPLY @35681 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @35682
  IF ~~ THEN REPLY @35683 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @35684
  IF ~GlobalLT("SR_Cleared_House","GLOBAL",2)~ THEN REPLY @35685 DO ~SetGlobal("SR_House_Quest","GLOBAL",3)
                                                                     AddJournalEntry(@22466,QUEST)~ GOTO 12
  IF ~Global("SR_Cleared_House","GLOBAL",2)~ THEN REPLY @35686 DO ~AddXP2DA("IW2EX3A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@35659)
                                                                   SetGlobal("SR_House_Cleared","GLOBAL",4)
                                                                   SetGlobal("SR_Dereth_Freed","GLOBAL",4)
                                                                   AddJournalEntry(@35654,QUEST)~ GOTO 13
  IF ~GlobalLT("SR_Cleared_House","GLOBAL",2)~ THEN REPLY @35687 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @35688
  IF ~~ THEN REPLY @35689 DO ~SetGlobal("SR_House_Quest","GLOBAL",3)
                              AddJournalEntry(@22466,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35690
  IF ~~ THEN REPLY @35691 DO ~StartStore("20Dereth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35692 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @35693 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @35694
  IF ~~ THEN REPLY @35680 DO ~AddXP2DA("IW2EX3A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35660)
                              SetGlobal("SR_Rescue_Sabrina","GLOBAL",3)
                              SetGlobal("SR_Dereth_Go_Home","GLOBAL",1)
                              SetGlobal("SR_Reveal_Path_1","GLOBAL",1)
                              AddJournalEntry(@35655,QUEST)
                              //SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 14
  IF ~~ THEN REPLY @35695 DO ~AddXP2DA("IW2EX3A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35660)
                              SetGlobal("SR_Rescue_Sabrina","GLOBAL",3)
                              SetGlobal("SR_Dereth_Go_Home","GLOBAL",1)
                              SetGlobal("SR_Reveal_Path_1","GLOBAL",1)
                              AddJournalEntry(@35655,QUEST)
                              //SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @35696
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35698 DO ~AddJournalEntry(@35656,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @35685 DO ~AddJournalEntry(@35656,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @35697 DO ~AddJournalEntry(@35656,QUEST)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @35699
  IF ~~ THEN REPLY @26029 DO ~StartCutSceneMode()
                              StartCutScene("20cPath1")~ EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY @35700
  IF ~Global("SR_House_Quest","GLOBAL",3)
      Global("SR_Cleared_House","GLOBAL",2)~ THEN REPLY @35701 DO ~AddXP2DA("IW2EX3A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@35659)
                                                                   SetGlobal("SR_House_Quest","GLOBAL",4)
                                                                   SetGlobal("SR_Cleared_House","GLOBAL",4)
                                                                   SetGlobal("SR_Dereth_Freed","GLOBAL",4)
                                                                   AddJournalEntry(@35655,QUEST)~ GOTO 13
  IF ~Global("SR_Sabrina_Freed","GLOBAL",4)
      !Global("SR_Sabrina_Home","GLOBAL",1)~ THEN REPLY @35702 DO ~AddXP2DA("IW2EX3A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@35661)
                                                                   SetGlobal("SR_Sabrina_Home","GLOBAL",1)
                                                                   AddJournalEntry(@35657,QUEST)~ GOTO 17
  IF ~GlobalGT("SR_Cleared_House","GLOBAL",1)
      !Global("SR_Logjam","GLOBAL",1)~ THEN REPLY @35703 DO ~SetGlobal("SR_Logjam","GLOBAL",1)~ GOTO 19
  IF ~~ THEN REPLY @35691 DO ~StartStore("20Dereth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35692 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @35704 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @35705
  IF ~~ THEN REPLY @35706 DO ~GiveItemCreate("SW1H22",LastTalkedToBy,1,0,0)~ GOTO 18
  IF ~~ THEN REPLY @35707 DO ~GiveItemCreate("SW1H22",LastTalkedToBy,1,0,0)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @35708
  IF ~~ THEN REPLY @35691 DO ~StartStore("20Dereth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35692 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @35693 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @35709
  IF ~~ THEN REPLY @35685 GOTO 18
END

IF WEIGHT #0
~GlobalLT("SR_Dereth_Freed","GLOBAL",2)~ THEN BEGIN 20
  SAY @35710
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END
