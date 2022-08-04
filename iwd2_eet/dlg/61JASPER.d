BEGIN ~61JASPER~

IF WEIGHT #2
~Global("61CurrentDay","GLOBAL",4)
 Global("SpokeToPlayerOnDay5","LOCALS",0)~ THEN BEGIN 0
  SAY @35872
  IF ~~ THEN REPLY @35873 DO ~SetGlobal("PlayerKnowsJasper","MYAREA",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @35874
  IF ~~ THEN REPLY @35875 GOTO 2
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35877
  IF ~~ THEN REPLY @35878 GOTO 3
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35879
  IF ~~ THEN REPLY @35880 GOTO 4
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35881
  IF ~~ THEN REPLY @35882 GOTO 5
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @35883
  IF ~~ THEN REPLY @35884 DO ~AddJournalEntry(@35846,QUEST)~ GOTO 6
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35885
  IF ~Global("JasperToldCagedStory","MYAREA",0)~ THEN REPLY @35886 DO ~SetGlobal("JasperToldCagedStory","MYAREA",1)
                                                                       AddJournalEntry(@35847,QUEST)~ GOTO 7
  IF ~!Global("JasperToldCagedStory","MYAREA",0)~ THEN REPLY @35886 DO ~AddJournalEntry(@35847,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @35887 DO ~AddJournalEntry(@35848,QUEST)~ GOTO 8
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @35939
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @35887 DO ~AddJournalEntry(@35848,QUEST)~ GOTO 8
  IF ~!Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @36013
  IF ~Global("JasperToldCagedStory","MYAREA",0)~ THEN REPLY @36014 DO ~SetGlobal("JasperToldCagedStory","MYAREA",1)
                                                                       AddJournalEntry(@35847,QUEST)~ GOTO 7
  IF ~!Global("JasperToldCagedStory","MYAREA",0)~ THEN REPLY @36014 DO ~AddJournalEntry(@35847,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @36015 DO ~SetGlobal("SpokeToPlayerOnDay5","LOCALS",1)
                              AddJournalEntry(@35849,QUEST)~ GOTO 9
  IF ~Global("SpokeToPlayerOnDay5","LOCALS",1)~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @36016
  IF ~~ THEN REPLY @35876 DO ~SetGlobal("PlayerCanRequestExit","MYAREA",1)~ EXIT
END

IF WEIGHT #5
~OR(4)
   NumTimesTalkedToGT(0)
   Global("SpokeToPlayerOnDay5","LOCALS",1)
   Global("SpokeToPlayerOnDay4","LOCALS",1)
   Global("SpokeToPlayerOnDay3","LOCALS",1)~ THEN BEGIN 10
  SAY @36017
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36018 GOTO 1
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36019 GOTO 2
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36020 GOTO 4
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36021 GOTO 5
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @35884 DO ~AddJournalEntry(@35846,QUEST)~ GOTO 6
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36022 DO ~AddJournalEntry(@35848,QUEST)~ GOTO 8
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36023 DO ~AddJournalEntry(@35849,QUEST)~ GOTO 9
  IF ~Global("61CurrentDay","GLOBAL",3)
      Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36024 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                                                               //SetCriticalPathObject(Myself,FALSE)
                                                               ApplySpellRES("IWCPREM",Myself)
                                                               AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~Global("61CurrentDay","GLOBAL",2)
      !See("Venomin3")~ THEN REPLY @36027 GOTO 21
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @35884 GOTO 22
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @36026 DO ~AddJournalEntry(@35871,QUEST)~ GOTO 23
  IF ~GlobalLT("61CurrentDay","GLOBAL",4)
      Global("PlayerKnowsCabinetIsLocked","MYAREA",1)~ THEN REPLY @36028 GOTO 24
  IF ~~ THEN REPLY @36029 EXIT
END

IF WEIGHT #3
~Global("61CurrentDay","GLOBAL",3)
 Global("SpokeToPlayerOnDay4","LOCALS",0)~ THEN BEGIN 11
  SAY @36030
  IF ~~ THEN REPLY @36031 DO ~SetGlobal("SpokeToPlayerOnDay4","LOCALS",1)
                              SetGlobal("PlayerKnowsPyrosDead","MYAREA",1)
                              AddJournalEntry(@35850,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @36032
  IF ~~ THEN REPLY @36033 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @36034
  IF ~~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                              //SetCriticalPathObject(Myself,FALSE)
                              ApplySpellRES("IWCPREM",Myself)
                              AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36035 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @36036
  IF ~~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                              //SetCriticalPathObject(Myself,FALSE)
                              ApplySpellRES("IWCPREM",Myself)
                              AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @36038
  IF ~~ THEN REPLY @35886 GOTO 18
  IF ~Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36024 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @36039
  IF ~Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36024 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                              //SetCriticalPathObject(Myself,FALSE)
                              ApplySpellRES("IWCPREM",Myself)
                              AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~Global("PlayerHeardBeholderStory","MYAREA",1)~ THEN REPLY @1487 EXIT
  IF ~Global("PlayerHeardBeholderStory","MYAREA",0)~ THEN REPLY @1487 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @36041
  IF ~Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36024 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                              //SetCriticalPathObject(Myself,FALSE)
                              ApplySpellRES("IWCPREM",Myself)
                              AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~~ THEN REPLY @36042 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @36043
  IF ~Global("JasperToldCagedStory","MYAREA",1)~ THEN REPLY @36044 GOTO 19
  IF ~~ THEN REPLY @36045 DO ~SetGlobal("JasperToldCagedStory","MYAREA",2)
                              AddJournalEntry(@35847,QUEST)~ GOTO 7
END

IF ~~ THEN BEGIN 19
  SAY @36046
  IF ~Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36047 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36048 EXIT
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @36049 EXIT
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @36050 EXIT
END

IF WEIGHT #4
~Global("61CurrentDay","GLOBAL",2)
 Global("SpokeToPlayerOnDay3","LOCALS",0)~ THEN BEGIN 20
  SAY @36051
  IF ~!See("Venomin3")~ THEN REPLY @36027 GOTO 21
  IF ~~ THEN REPLY @35884 GOTO 22
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35871,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @36052 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @36053
  IF ~~ THEN REPLY @36054 GOTO 22
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35871,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @38330
  IF ~~ THEN REPLY @36027 GOTO 21
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35871,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @35876 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @38331
  IF ~~ THEN REPLY @36027 GOTO 21
  IF ~~ THEN REPLY @35884 GOTO 22
  IF ~~ THEN REPLY @41160 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @41161
  IF ~Global("61CurrentDay","GLOBAL",3)
      Global("SPRITE_IS_DEADPyros4","GLOBAL",0)~ THEN REPLY @36024 DO ~AddJournalEntry(@35851,QUEST)~ GOTO 14
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                                                               //SetCriticalPathObject(Myself,FALSE)
                                                               ApplySpellRES("IWCPREM",Myself)
                                                               AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~Global("61CurrentDay","GLOBAL",2)
      !See("Venomin3")~ THEN REPLY @36027 GOTO 21
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @35884 GOTO 22
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @36026 DO ~AddJournalEntry(@35871,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @35876 EXIT
END

IF WEIGHT #0
~Global("JasperGiveFloat","MYAREA",1)~ THEN BEGIN 25
  SAY @41162
  IF ~~ THEN DO ~SetGlobal("JasperGiveFloat","MYAREA",2)~ EXTERN ~61VENOMI~ 7
END

IF ~~ THEN BEGIN 26
  SAY @41164
  IF ~~ THEN DO ~StartCutSceneMode()
                 ClearAllActions()
                 MultiPlayerSync()
                 StartCutScene("61cEmDes")~ EXIT
END

IF WEIGHT #1
~Global("61CurrentDay","GLOBAL",3)
 Global("SPRITE_IS_DEADPyros4","GLOBAL",1)~ THEN BEGIN 27
  SAY @32686
  IF ~~ THEN REPLY @35884 DO ~SetGlobal("PlayerKnowsTimeRecedes","MYAREA",1)
                              //SetCriticalPathObject(Myself,FALSE)
                              ApplySpellRES("IWCPREM",Myself)
                              AddJournalEntry(@35852,QUEST)~ FLAGS 0x200 GOTO 15
  IF ~~ THEN REPLY @36026 DO ~AddJournalEntry(@35853,QUEST)~ GOTO 16
  IF ~Global("PlayerKnowsCabinetIsLocked","MYAREA",1)~ THEN REPLY @36028 GOTO 24
  IF ~~ THEN REPLY @425 EXIT
END

