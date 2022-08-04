BEGIN ~53DROPR~

IF ~True()~ THEN BEGIN 0
  SAY @35618
  IF ~~ THEN EXTERN ~53DROSS~ 0
END

IF ~~ THEN BEGIN 1
  SAY @35620
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35621
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @35622
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @35623
  IF ~Global("Know_Lolthians","GLOBAL",0)~ THEN REPLY @35624 DO ~EraseJournalEntry(@38814)
                                                                 AddJournalEntry(@35616,QUEST_DONE)~ GOTO 5
  IF ~!Global("Know_Lolthians","GLOBAL",0)~ THEN REPLY @35625 DO ~EraseJournalEntry(@38814)
                                                                  AddJournalEntry(@35617,QUEST_DONE)~ GOTO 7
  IF ~//SubRace(LastTalkedToBy, ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35626 GOTO 6
  IF ~//!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35627 GOTO 6
  IF ~~ THEN REPLY @35628 DO ~Enemy()~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @35629
  IF ~//SubRace(LastTalkedToBy, ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35626 GOTO 6
  IF ~//!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35627 GOTO 6
  IF ~~ THEN REPLY @35628 DO ~Enemy()~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @35630
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("53cDroAs")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @35631
  IF ~//SubRace(LastTalkedToBy, ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35626 GOTO 6
  IF ~//!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @35627 GOTO 6
  IF ~~ THEN REPLY @35628 DO ~Enemy()~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @35632
  IF ~~ THEN DO ~Enemy()~ EXIT
END
