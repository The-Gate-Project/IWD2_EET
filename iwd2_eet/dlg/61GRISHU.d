BEGIN ~61GRISHU~

IF ~True()~ THEN BEGIN 0
  SAY @35031
  IF ~~ THEN REPLY @35032 GOTO 1
  IF ~~ THEN REPLY @35033 DO ~AddJournalEntry(@35030,QUEST)~ GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35034 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35035 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @35036
  IF ~~ THEN REPLY @35037 DO ~AddJournalEntry(@35029,QUEST)~ GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35034 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35038 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35039
  IF ~~ THEN REPLY @35040 DO ~AddJournalEntry(@35030,QUEST)~ GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35034 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35041 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35042
  IF ~~ THEN REPLY @35043 GOTO 4
  IF ~~ THEN REPLY @35032 GOTO 1
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35034 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35044 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35045
  IF ~~ THEN REPLY @35032 GOTO 1
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35034 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35044 DO ~Enemy()~ EXIT
END
