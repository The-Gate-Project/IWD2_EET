BEGIN ~63VYLU~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @29993
  IF ~~ THEN REPLY @29994 DO ~AddJournalEntry(@39735,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @29995 DO ~AddJournalEntry(@39735,QUEST)~ GOTO 2
  IF ~Global("SH_Help_Vylu","GLOBAL",3)
      Global("SH_Vylu_Potion","GLOBAL",0)~ THEN REPLY @29996 DO ~SetGlobal("SH_Vylu_Potion","GLOBAL",1)
                                                                 AddJournalEntry(@39735,QUEST)~ GOTO 3
  IF ~PartyHasItem("z6genmc")~ THEN REPLY @29997 GOTO 4
  IF ~~ THEN REPLY @29998 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @29999
  IF ~~ THEN REPLY @29995 GOTO 2
  IF ~~ THEN REPLY @29998 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @30000
  IF ~Global("SH_Help_Vylu","GLOBAL",3)
      Global("SH_Vylu_Potion","GLOBAL",0)~ THEN REPLY @29996 DO ~SetGlobal("SH_Vylu_Potion","GLOBAL",1)~ GOTO 3
  IF ~PartyHasItem("z6genmc")~ THEN REPLY @29997 GOTO 4
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @30001 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @29998 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @30002
  IF ~~ THEN REPLY @30003 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @30004
  IF ~~ THEN REPLY @30005 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@29992)
                              TakePartyItem("z6genmc")
                              DestroyItem("z6genmc")
                              SetGlobal("SH_Help_Vylu","GLOBAL",4)
                              AddJournalEntry(@29991,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @30006
  IF ~~ THEN REPLY @30007 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @30008
  IF ~~ THEN REPLY @30009 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @30010
  IF ~~ THEN REPLY @30011 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @30012
  IF ~~ THEN REPLY @30013 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @30014
  IF ~~ THEN REPLY @30015 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @30016
  IF ~~ THEN REPLY @29994 DO ~AddJournalEntry(@39735,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @29995 DO ~AddJournalEntry(@39735,QUEST)~ GOTO 2
  IF ~Global("SH_Help_Vylu","GLOBAL",3)
      Global("SH_Vylu_Potion","GLOBAL",0)~ THEN REPLY @29996 DO ~SetGlobal("SH_Vylu_Potion","GLOBAL",1)
                                                                 AddJournalEntry(@29990,QUEST)~ GOTO 3
  IF ~PartyHasItem("z6genmc")~ THEN REPLY @29997 GOTO 4
  IF ~~ THEN REPLY @29998 EXIT
END

IF WEIGHT #0
~GlobalGT("SH_Help_Vylu","GLOBAL",3)~ THEN BEGIN 11
  SAY @36735
  IF ~~ THEN REPLY @36736 EXIT
END
