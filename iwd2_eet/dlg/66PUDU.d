BEGIN ~66PUDU~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24571
  IF ~~ THEN EXTERN ~66VYXEIN~ 0
END

IF ~~ THEN BEGIN 1
  SAY @24573
  IF ~~ THEN EXTERN ~66VYXEIN~ 1
END

IF ~~ THEN BEGIN 2
  SAY @24574
  IF ~~ THEN EXTERN ~66VYXEIN~ 2
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @24575
  IF ~~ THEN REPLY @24576 GOTO 4
  IF ~~ THEN REPLY @24577 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @24578
  IF ~PartyHasItem("z6gendp")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @24579 GOTO 5
  IF ~PartyHasItem("z6gendp")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @24579 GOTO 10
  IF ~!PartyHasItem("z6gendp")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @24579 GOTO 8
  IF ~Global("Spoke_of_Pudu","GLOBAL",1)
      PartyHasItem("z6gendp")~ THEN REPLY @24580 GOTO 9
  IF ~~ THEN REPLY @24581 DO ~Enemy()
                              AddJournalEntry(@24563,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @24582
  IF ~CheckStatGT(LastTalkedToBy,15,WIS)~ THEN REPLY @24583 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,16,WIS)~ THEN REPLY @24583 GOTO 10
  IF ~~ THEN REPLY @24584 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @24585
  IF ~~ THEN REPLY @24586 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @24588
  IF ~~ THEN REPLY @25831 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24569)
                              GiveItem("z6keycp",LastTalkedToBy)
                              SetGlobal("SH_Pudu_Keys","GLOBAL",2)
                              AddJournalEntry(@24561,QUEST)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @25832
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@24562,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @27266
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @27267 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @27267 GOTO 10
  IF ~~ THEN REPLY @27268 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @37651
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@24562,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @37652
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("66cPudu")~ EXIT
END
