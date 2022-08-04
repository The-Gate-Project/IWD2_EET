BEGIN ~50JARI~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5065
  IF ~~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5067 GOTO 8
  IF ~~ THEN REPLY @5069 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5070
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5071 DO ~SetGlobal("50Jari_Gift","GLOBAL",1)
                                                             AddJournalEntry(@5061,QUEST)~ GOTO 2
  IF ~GlobalGT("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5071 GOTO 2
  IF ~~ THEN REPLY @5072 GOTO 8
  IF ~~ THEN REPLY @5073 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5079 EXIT
  IF ~~ THEN REPLY @5080 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5081
  IF ~PartyHasItem("MIWD01")~ THEN REPLY @5082 GOTO 3
  IF ~~ THEN REPLY @5072 GOTO 8
  IF ~~ THEN REPLY @5080 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5083
  IF ~~ THEN REPLY @5084 DO ~AddXP2DA("IW2EX9E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@5064)
                             SetGlobal("50Jari_Gift","GLOBAL",2)
                             TakePartyItem("MIWD01")
                             EraseJournalEntry(@5061)
                             AddJournalEntry(@5062,QUEST_DONE)~ GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @5085 GOTO 5
  IF ~~ THEN REPLY @5086 GOTO 8
  IF ~~ THEN REPLY @5087 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5088
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @5089 DO ~GiveItemCreate("AMUL13",LastTalkedToBy,1,0,0)~ GOTO 7
  IF ~~ THEN REPLY @5087 DO ~GiveItemCreate("AMUL13",LastTalkedToBy,1,0,0)
                             SetGlobal("50Jari","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5090
  IF ~~ THEN REPLY @5091 DO ~AddXP2DA("IW2EX9E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@5064)
                             SetGlobal("50Jari_Gift","GLOBAL",2)
                             TakePartyItem("MIWD01")
                             EraseJournalEntry(@5061)
                             AddJournalEntry(@5062,QUEST_DONE)~ GOTO 4
  IF ~~ THEN REPLY @5092 DO ~AddXP2DA("IW2EX9E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@5064)
                             SetGlobal("50Jari_Gift","GLOBAL",2)
                             TakePartyItem("MIWD01")
                             GiveGoldForce(200)
                             EraseJournalEntry(@5061)
                             AddJournalEntry(@5063,QUEST_DONE)~ GOTO 6
  IF ~~ THEN REPLY @5093 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @5094
  IF ~OR(2)
        Alignment(LastTalkedToBy,MASK_EVIL)
        Alignment(LastTalkedToBy,MASK_CHAOTIC)~ THEN REPLY @5089 GOTO 7
  IF ~~ THEN REPLY @5087 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5095
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @5096 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
  IF ~Alignment(LastTalkedToBy,MASK_CHAOTIC)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @5097 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5098 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5099
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 11
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 12
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 12
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 GOTO 14
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5101 EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 9
  SAY @5102
  IF ~Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5103 GOTO 10
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5104 GOTO 1
  IF ~~ THEN REPLY @5067 GOTO 8
  IF ~~ THEN REPLY @5069 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @5105
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5106 GOTO 3
  IF ~~ THEN REPLY @5107 GOTO 8
  IF ~~ THEN REPLY @5108 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5109 DO ~SetGlobal("50Jari","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @34337
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 12
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 12
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 GOTO 14
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5101 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @37900
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 11
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 GOTO 14
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5087 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @37901
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 11
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 GOTO 14
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5101 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @37900
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 11
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 12
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 12
  IF ~PartyHasItem("MIWD01")
      Global("50Jari_Gift","GLOBAL",1)~ THEN REPLY @5100 GOTO 3
  IF ~Global("50Jari_Gift","GLOBAL",0)~ THEN REPLY @5066 GOTO 1
  IF ~~ THEN REPLY @5087 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 15
  SAY @37856
  IF ~~ THEN EXIT
END
