BEGIN ~50WITBA~

IF WEIGHT #1
~Global("50Wight_Know","GLOBAL",0)~ THEN BEGIN 0
  SAY @5668
  IF ~GlobalGT("50WITB_Dead","GLOBAL",0)~ THEN REPLY @5669 DO ~SetGlobal("50Wight_Know","GLOBAL",1)~ GOTO 1
  IF ~Global("50WITB_Dead","GLOBAL",0)~ THEN REPLY @5695 DO ~SetGlobal("50Wight_Know","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @5696 DO ~SetGlobal("50Wight_Know","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @5670 DO ~Enemy()
                             SetGlobal("50Wight_Know","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @5720 DO ~SetGlobal("50Wight_Know","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5721
  IF ~~ THEN REPLY @5722 GOTO 2
  IF ~~ THEN REPLY @5720 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5723
  IF ~~ THEN REPLY @5725 GOTO 3
  IF ~~ THEN REPLY @5724 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @5720 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5726
  IF ~Class(LastTalkedToBy,BARD_ALL)
      CheckStatGT(LastTalkedToBy,8,WIS)~ THEN REPLY @38398 GOTO 10
  IF ~~ THEN REPLY @5727 GOTO 4
  IF ~~ THEN REPLY @5728 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5729
  IF ~Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @5731 DO ~SetGlobal("50Wight_Horn","GLOBAL",1)
                                                              AddJournalEntry(@5665,QUEST)~ GOTO 6
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @5732 GOTO 6
  IF ~~ THEN REPLY @5730 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @5733 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5734
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @5736
  IF ~PartyHasItem("z5gendh")~ THEN REPLY @5737 DO ~AddXP2DA("IW2EX9E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@5667)
                                                    SetGlobal("50Wight_Horn","GLOBAL",2)
                                                    TakePartyItem("z5gendh")
                                                    AddJournalEntry(@5666,QUEST)~ GOTO 7
  IF ~Class(LastTalkedToBy,BARD_ALL)
      CheckStatGT(LastTalkedToBy,8,WIS)~ THEN REPLY @38399 GOTO 10
  IF ~~ THEN REPLY @5738 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @5733 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5741
  IF ~~ THEN REPLY @5742 EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 8
  SAY @5743
  IF ~PartyHasItem("z5gendh")
      Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @5737 DO ~AddXP2DA("IW2EX9E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@5667)
                                                              SetGlobal("50Wight_Horn","GLOBAL",2)
                                                              TakePartyItem("z5gendh")
                                                              AddJournalEntry(@5666,QUEST)~ GOTO 7
  IF ~Class(LastTalkedToBy,BARD_ALL)
      CheckStatGT(LastTalkedToBy,8,WIS)~ THEN REPLY @38399 GOTO 10
  IF ~~ THEN REPLY @5696 GOTO 2
  IF ~~ THEN REPLY @5720 EXIT
END

IF WEIGHT #0
~GlobalGT("50Wight_Horn","GLOBAL",1)~ THEN BEGIN 9
  SAY @29742
  IF ~~ THEN REPLY @5742 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @38395
  IF ~CheckStatGT(LastTalkedToBy,9,CHR)
      CheckStatGT(LastTalkedToBy,9,INT)
      LevelGT(LastTalkedToBy,18)~ THEN REPLY @417 DO ~AddXP2DA("IW2EX9E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@38411)
                                                      SetGlobal("50Wight_Horn","GLOBAL",2)
                                                      AddJournalEntry(@38410,QUEST)~ GOTO 11
  IF ~OR(3)
        !CheckStatGT(LastTalkedToBy,9,CHR)
        !CheckStatGT(LastTalkedToBy,9,INT)
        !LevelGT(LastTalkedToBy,18)~ THEN REPLY @38404 GOTO 12
  IF ~~ THEN REPLY @5728 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @38396
  IF ~~ THEN REPLY @5742 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @38401
  IF ~PartyHasItem("z5gendh")
      Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @5737 DO ~AddXP2DA("IW2EX9E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@5667)
                                                              SetGlobal("50Wight_Horn","GLOBAL",2)
                                                              TakePartyItem("z5gendh")
                                                              AddJournalEntry(@5666,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @5696 GOTO 2
  IF ~~ THEN REPLY @5720 EXIT
END
