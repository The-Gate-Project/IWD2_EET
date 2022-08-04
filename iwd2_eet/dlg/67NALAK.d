BEGIN ~67NALAK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24700
  IF ~~ THEN EXTERN ~67TRMAL~ 0
END

IF ~~ THEN BEGIN 1
  SAY @24702
  IF ~~ THEN DO ~EraseJournalEntry(@32255)
                 EraseJournalEntry(@31422)
                 EraseJournalEntry(@24563)
                 EraseJournalEntry(@24561)
                 EraseJournalEntry(@24562)
                 EraseJournalEntry(@24537)
                 AddJournalEntry(@24699,QUEST)~ EXTERN ~67TRMAL~ 1
END
