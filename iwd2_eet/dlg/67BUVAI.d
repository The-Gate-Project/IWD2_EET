BEGIN ~67BUVAI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @27941
  IF ~~ THEN REPLY @27942 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @27945
  IF ~~ THEN REPLY @27946 GOTO 2
  IF ~~ THEN REPLY @27948 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @27949
  IF ~~ THEN DO ~AddXP2DA("IW2EX14VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@27940)
                 AddJournalEntry(@27939,QUEST)
                 StartCutSceneMode()
                 StartCutScene("67cTelPC")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @27951
  IF ~~ THEN DO ~AddXP2DA("IW2EX14VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@27940)
                 AddJournalEntry(@27939,QUEST)
                 StartCutSceneMode()
                 StartCutScene("67cTelPC")~ EXIT
END
