BEGIN ~20NEWSAB~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35896
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @35899 DO ~AddXP2DA("IW2EX3A")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@35893)
                                                           AddJournalEntry(@35891,QUEST)~ GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35900 DO ~AddXP2DA("IW2EX3A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@35893)
                                                             AddJournalEntry(@35891,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @35897 DO ~AddXP2DA("IW2EX3A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35893)
                              AddJournalEntry(@35891,QUEST)~ GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @35898 DO ~AddXP2DA("IW2EX3A")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@35893)
                                                         AddJournalEntry(@35891,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @35901 DO ~AddXP2DA("IW2EX3A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35893)
                              AddJournalEntry(@35891,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @35902
  IF ~Global("SPRITE_IS_DEADDereth","GLOBAL",0)~ THEN REPLY @35903 GOTO 7
  IF ~~ THEN REPLY @35904 GOTO 6
  IF ~!Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39333 GOTO 18
END

IF ~~ THEN BEGIN 2
  SAY @35905
  IF ~Global("SPRITE_IS_DEADDereth","GLOBAL",0)~ THEN REPLY @35903 GOTO 7
  IF ~~ THEN REPLY @35906 GOTO 6
  IF ~!Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39333 GOTO 18
END

IF ~~ THEN BEGIN 3
  SAY @35907
  IF ~Global("SPRITE_IS_DEADDereth","GLOBAL",0)~ THEN REPLY @35903 GOTO 7
  IF ~~ THEN REPLY @35904 GOTO 6
  IF ~!Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39333 GOTO 18
END

IF ~~ THEN BEGIN 4
  SAY @35908
  IF ~~ THEN REPLY @35909 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @35910
  IF ~Global("SPRITE_IS_DEADDereth","GLOBAL",0)~ THEN REPLY @35911 GOTO 7
  IF ~~ THEN REPLY @35912 GOTO 6
  IF ~!Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39333 GOTO 18
END

IF ~~ THEN BEGIN 6
  SAY @35913
  IF ~~ THEN REPLY @35914 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @35915
  IF ~~ THEN REPLY @35916 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @35917
  IF ~~ THEN REPLY @35918 GOTO 9
  IF ~~ THEN REPLY @35919 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @35920
  IF ~~ THEN REPLY @35921 DO ~AddXP2DA("IW2EX3E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35894)
                              AddJournalEntry(@35892,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @35922
  IF ~~ THEN REPLY @35923 DO ~SetGlobal("SR_Reveal_Path_2","GLOBAL",1)
                              SetGlobal("SR_Sabrina_Freed","GLOBAL",4)
                              SetGlobal("SR_Sabrina_Go_Home","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @35924 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @35925
  IF ~~ THEN REPLY @35923 DO ~SetGlobal("SR_Reveal_Path_2","GLOBAL",1)
                              SetGlobal("SR_Sabrina_Freed","GLOBAL",4)
                              SetGlobal("SR_Sabrina_Go_Home","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35926
  IF ~~ THEN REPLY @35927 GOTO 13
  IF ~~ THEN REPLY @35928 DO ~//SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)
                              StartCutSceneMode()
                              StartCutScene("20cPath2")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @35929
  IF ~~ THEN REPLY @35930 DO ~AddXP2DA("IW2EX3E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@35895)
                              SetGlobal("SR_Sabrina_Go_Home","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @35928 DO ~//SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)
                              StartCutSceneMode()
                              StartCutScene("20cPath2")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @35931
  IF ~~ THEN REPLY @35928 DO ~//SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)
                              StartCutSceneMode()
                              StartCutScene("20cPath2")~ EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 15
  SAY @35932
  IF ~Global("SPRITE_IS_DEADDereth","GLOBAL",0)~ THEN REPLY @35933 GOTO 16
  IF ~!Global("SPRITE_IS_DEADDereth","GLOBAL",0)
      Global("SR_Know_Dereth_Dead","GLOBAL",1)~ THEN REPLY @2353 GOTO 19
  IF ~~ THEN REPLY @35934 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @39759 DO ~StartStore("20Sabrin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35935 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @35936
  IF ~~ THEN REPLY @35928 EXIT
END

IF WEIGHT #0
~GlobalLT("SR_Sabrina_Freed","GLOBAL",2)~ THEN BEGIN 17
  SAY @35937
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @39337
  IF ~~ THEN REPLY @35916 DO ~SetGlobal("SR_Know_Dereth_Dead","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 19
  SAY @39338
  IF ~~ THEN REPLY @2188 EXIT
  IF ~~ THEN REPLY @39339 DO ~Enemy()~ EXIT
END
