BEGIN ~63ERADRU~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @27063
  IF ~~ THEN REPLY @27064 GOTO 1
  IF ~~ THEN REPLY @27065 GOTO 2
  IF ~~ THEN REPLY @27066 GOTO 6
  IF ~Global("SH_Demon_Secret","GLOBAL",3)~ THEN REPLY @27067 GOTO 7
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @27068 GOTO 10
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @27070
  IF ~!PartyHasItem("z6gendp")~ THEN REPLY @27071 DO ~SetGlobal("SH_Need_Pass","GLOBAL",1)
                                                      AddJournalEntry(@27058,QUEST)~ GOTO 3
  IF ~PartyHasItem("z6gendp")~ THEN REPLY @27072 DO ~StartStore("63Eradru",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27070
  IF ~!PartyHasItem("z6gendp")~ THEN REPLY @27071 DO ~SetGlobal("SH_Need_Pass","GLOBAL",1)
                                                      AddJournalEntry(@27060,QUEST)~ GOTO 3
  IF ~PartyHasItem("z6gendp")~ THEN REPLY @27072 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @27073
  IF ~~ THEN REPLY @27074 GOTO 4
  IF ~Global("SPRITE_IS_DEADXavier_Torsend","GLOBAL",1)~ THEN REPLY @27075 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @27076
  IF ~~ THEN REPLY @27077 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27082
  IF ~~ THEN REPLY @27077 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @27083
  IF ~~ THEN REPLY @27064 GOTO 1
  IF ~~ THEN REPLY @27065 GOTO 2
  IF ~Global("SH_Demon_Secret","GLOBAL",3)~ THEN REPLY @27067 GOTO 7
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @27068 GOTO 10
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @27088
  IF ~~ THEN REPLY @27089 GOTO 8
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @27090
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37781 GOTO 11
  IF ~~ THEN REPLY @27064 GOTO 1
  IF ~~ THEN REPLY @27065 GOTO 2
  IF ~~ THEN REPLY @27066 GOTO 6
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @27068 GOTO 10
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @27091
  IF ~~ THEN REPLY @27064 GOTO 1
  IF ~~ THEN REPLY @27065 GOTO 2
  IF ~~ THEN REPLY @27066 GOTO 6
  IF ~Global("SH_Demon_Secret","GLOBAL",3)~ THEN REPLY @27067 GOTO 7
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @34319 GOTO 10
  IF ~~ THEN REPLY @27069 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @27092
  IF ~~ THEN REPLY @27095 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@27062)
                              GiveItemCreate("z6genmc",LastTalkedToBy,1,0,0)
                              SetGlobal("SH_Vylu_Potion","GLOBAL",3)
                              AddJournalEntry(@27061,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @37782
  IF ~~ THEN REPLY @37783 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @37784
  IF ~~ THEN REPLY @37785 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @37786
  IF ~~ THEN REPLY @2353 GOTO 1
  IF ~~ THEN REPLY @27065 GOTO 2
  IF ~Global("SH_Demon_Secret","GLOBAL",3)~ THEN REPLY @27067 GOTO 7
  IF ~Global("SH_Vylu_Potion","GLOBAL",2)~ THEN REPLY @27068 GOTO 10
  IF ~~ THEN REPLY @2155 EXIT
END
