BEGIN ~67ORMIS~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24716
  IF ~~ THEN REPLY @35582 GOTO 1
  IF ~~ THEN REPLY @24717 DO ~Enemy()
                              EraseJournalEntry(@24710)
                              AddJournalEntry(@24709,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @24719
  IF ~~ THEN REPLY @24721 GOTO 2
  IF ~~ THEN REPLY @24723 DO ~Enemy()
                              EraseJournalEntry(@24710)
                              AddJournalEntry(@24709,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24725
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @24814
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @24815
  IF ~~ THEN REPLY @24816 DO ~SetGlobal("SH_Ormis_Antidote","GLOBAL",1)
                              AddJournalEntry(@24710,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @24817 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @24820
  IF ~~ THEN REPLY @24821 GOTO 6
  IF ~~ THEN REPLY @24822 GOTO 10
  IF ~PartyHasItem("z6genma")~ THEN REPLY @24901 DO ~AddXP2DA("IW2EX14H")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@24715)
                                                     SetGlobal("SH_Ormis_Antidote","GLOBAL",2)
                                                     TakePartyItem("z6genma")
                                                     EraseJournalEntry(@24710)
                                                     AddJournalEntry(@24708,QUEST)
                                                     StartCutSceneMode()
                                                     StartCutScene("67cOrmi2")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @24902
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @24903
  IF ~~ THEN REPLY @24904 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @24905
  IF ~~ THEN REPLY @24822 GOTO 10
END

IF WEIGHT #0
~Global("SH_Ormis_Antidote","GLOBAL",2)~ THEN BEGIN 9
  SAY @24906
  IF ~~ THEN REPLY @24907 DO ~StartCutSceneMode()
                              StartCutScene("67cOrmi1")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @24908
  IF ~~ THEN REPLY @24909 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @24910
  IF ~~ THEN REPLY @24911 EXIT
END

IF WEIGHT #2
~Global("SH_Ormis_Antidote","GLOBAL",1)
 PartyHasItem("z6genma")~ THEN BEGIN 12
  SAY @24912
  IF ~~ THEN REPLY @24916 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24715)
                              SetGlobal("SH_Ormis_Antidote","GLOBAL",2)
                              TakePartyItem("z6genma")
                              EraseJournalEntry(@24710)
                              AddJournalEntry(@41332,QUEST)
                              StartCutSceneMode()
                              StartCutScene("67cOrmi2")~ EXIT
  IF ~~ THEN REPLY @24917 EXIT
END

IF WEIGHT #4
~!Global("SH_Ormis_Antidote","GLOBAL",1)~ THEN BEGIN 13
  SAY @24918
  IF ~~ THEN REPLY @25834 GOTO 14
  IF ~~ THEN REPLY @25835 EXIT
  IF ~~ THEN REPLY @27607 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @27608
  IF ~~ THEN GOTO 3
END

IF WEIGHT #3
~Global("SH_Ormis_Antidote","GLOBAL",1)
 !PartyHasItem("z6genma")~ THEN BEGIN 15
  SAY @24912
  IF ~~ THEN REPLY @24917 EXIT
END
