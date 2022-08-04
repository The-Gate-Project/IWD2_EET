BEGIN ~62SAABL2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2954
  IF ~~ THEN REPLY @2955 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2956
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@2953,QUEST)~ EXIT
END
