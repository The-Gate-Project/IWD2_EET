BEGIN ~21XUKI~

IF ~True()~ THEN BEGIN 0
  SAY @36498
  IF ~~ THEN REPLY @36499 GOTO 1
  IF ~~ THEN REPLY @36500 GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36502 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @36504
  IF ~~ THEN REPLY @36505 GOTO 2
  IF ~~ THEN REPLY @36506 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36507 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @36508
  IF ~~ THEN REPLY @36509 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36510 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @36511
  IF ~~ THEN REPLY @36512 GOTO 4
  IF ~~ THEN REPLY @36513 GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @36514 GOTO 11
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @36515 GOTO 11
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @36516 GOTO 11
  IF ~Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @36517 GOTO 11
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36518 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36510 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @36519
  IF ~~ THEN REPLY @36520 GOTO 11
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @36514 GOTO 11
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @36515 GOTO 11
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @36516 GOTO 11
  IF ~Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @36517 GOTO 11
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36518 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36510 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @36521
  IF ~~ THEN REPLY @36522 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY @36523 GOTO 15 //11
END

IF ~~ THEN BEGIN 6
  SAY @36524
  IF ~~ THEN REPLY @36525 GOTO 7
  IF ~~ THEN REPLY @36526 GOTO 7
  IF ~~ THEN REPLY @36527 GOTO 8
  IF ~~ THEN REPLY @36528 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @36537
  IF ~~ THEN REPLY @36539 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @36540
  IF ~~ THEN REPLY @36541 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @36543
  IF ~~ THEN REPLY @39743 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @40919
  IF ~~ THEN REPLY @40920 DO ~AddXP2DA("IW2EX4A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36496)
                              Enemy()
                              SetGlobal("SR_Kill_Bridge","GLOBAL",1)
                              AddJournalEntry(@36491,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @40921
  IF ~~ THEN REPLY @36522 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY @36523 GOTO 15 //11
END

IF ~~ THEN BEGIN 12
  SAY @40922
  IF ~~ THEN REPLY @40923 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @40924
  IF ~~ THEN REPLY @40925 DO ~AddXP2DA("IW2EX4A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36496)
                              Enemy()
                              SetGlobal("SR_Kill_Bridge","GLOBAL",1)
                              AddJournalEntry(@36491,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @40926
  IF ~~ THEN REPLY @36499 GOTO 1
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @36501 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36502 DO ~AddXP2DA("IW2EX4E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                                                                AddJournalEntry(@36490,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @36503 DO ~AddXP2DA("IW2EX4E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36495)
                              AddJournalEntry(@36490,QUEST)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @40927
  IF ~~ THEN REPLY @40928 DO ~AddXP2DA("IW2EX4H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36497)
                              AddJournalEntry(@36494,QUEST)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @40929
  IF ~~ THEN REPLY @40930 DO ~Enemy()~ EXIT
END
