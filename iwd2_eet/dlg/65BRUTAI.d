BEGIN ~65BRUTAI~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @28606
  IF ~~ THEN DO ~AddXP2DA("IW2EX14H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@28604)
                 AddJournalEntry(@28602,QUEST)
                 Enemy()
                 StartCutScene("65cADed1")~ EXIT
END
