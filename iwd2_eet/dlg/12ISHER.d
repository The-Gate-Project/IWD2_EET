BEGIN ~12ISHER~

IF WEIGHT #1
~GlobalLT("Arrow_Quest","GLOBAL",2)~ THEN BEGIN 0
  SAY @20732
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @20733 GOTO 1
  IF ~Global("Lumber_Quest","GLOBAL",1)
      Global("Know_Olap","GLOBAL",0)~ THEN REPLY @20734 GOTO 2
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @20735 DO ~SetGlobal("Arrow_Quest","GLOBAL",2)
                                                              AddJournalEntry(@11565,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @20736 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @20737
  IF ~~ THEN REPLY @24236 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24237
  IF ~~ THEN REPLY @24238 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @24239
  IF ~NumItemsPartyGT("AROW01",299)
      CheckStatGT(LastTalkedToBy,9,INT)~ THEN REPLY @24240 GOTO 13
  IF ~CheckStatGT(LastTalkedToBy,9,INT)
      Global("Know_Deirdre","GLOBAL",1)~ THEN REPLY @24241 GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,9,INT)
      Global("Know_Deirdre","GLOBAL",0)~ THEN REPLY @24257 GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,10,INT)~ THEN REPLY @24258 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @24259
  IF ~NumItemsPartyGT("AROW01",299)~ THEN REPLY @24240 GOTO 13
  IF ~~ THEN REPLY @27315 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @27316
  IF ~Global("Know_Deirdre","GLOBAL",0)~ THEN REPLY @27317 GOTO 6
  IF ~~ THEN REPLY @27318 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @27319
  IF ~~ THEN REPLY @27320 EXIT
END

IF WEIGHT #2
~Global("Arrow_Quest","GLOBAL",2)~ THEN BEGIN 7
  SAY @27878
  IF ~NumItemsPartyGT("AROW01",299)~ THEN REPLY @27879 GOTO 13
  IF ~~ THEN REPLY @27880 EXIT
END

IF WEIGHT #3
~Global("Isherwood_Reward","GLOBAL",0)
 Global("Arrow_Quest","GLOBAL",3)~ THEN BEGIN 8
  SAY @27881
  IF ~~ THEN REPLY @27882 DO ~AddJournalEntry(@20728,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @28094 DO ~AddJournalEntry(@20728,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @28095
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @28096 DO ~SetGlobal("Isherwood_Reward","GLOBAL",1)
                                                           GiveItemCreate("FLAMOIL",LastTalkedToBy,1,0,0)
                                                           GiveItemCreate("FLAMOIL",LastTalkedToBy,1,0,0)~ GOTO 10
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @28097 DO ~SetGlobal("Isherwood_Reward","GLOBAL",1)
                                                         GiveItemCreate("FLAMOIL",LastTalkedToBy,1,0,0)
                                                         GiveItemCreate("FLAMOIL",LastTalkedToBy,1,0,0)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @28098
  IF ~~ THEN REPLY @28099 EXIT
END

IF WEIGHT #4
~Global("Isherwood_Reward","GLOBAL",1)~ THEN BEGIN 11
  SAY @28100
  IF ~~ THEN REPLY @28101 EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 12
  SAY @28102
  IF ~~ THEN REPLY @28103 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @28104
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @28105 DO ~AddXP2DA("IW2EX2A")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@39399)
                                                                TakePartyItemNum("AROW01",300)
                                                                SetGlobal("Arrow_Quest","GLOBAL",4)
                                                                AddJournalEntry(@20730,QUEST)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,14,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @28106 DO ~AddXP2DA("IW2EX2A")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39399)
                                                              TakePartyItemNum("AROW01",300)
                                                              SetGlobal("Arrow_Quest","GLOBAL",4)
                                                              AddJournalEntry(@20730,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @27315 GOTO 5
END

IF ~~ THEN BEGIN 14
  SAY @28107
  IF ~~ THEN REPLY @28108 DO ~//SetCriticalPathObject("Isherwood",FALSE)
                              ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 9
END
