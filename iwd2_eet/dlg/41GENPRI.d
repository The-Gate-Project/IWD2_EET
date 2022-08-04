BEGIN ~41GENPRI~

IF WEIGHT #3
~RandomNum(5,1)~ THEN BEGIN 0
  SAY @23500
  IF ~RandomNum(5,1)~ THEN REPLY @23503 GOTO 5
  IF ~RandomNum(5,2)~ THEN REPLY @23503 GOTO 6
  IF ~RandomNum(5,3)~ THEN REPLY @23503 GOTO 7
  IF ~RandomNum(5,4)~ THEN REPLY @23503 GOTO 8
  IF ~RandomNum(5,5)~ THEN REPLY @23503 GOTO 9
END

IF WEIGHT #4
~RandomNum(5,2)~ THEN BEGIN 1
  SAY @23504
  IF ~RandomNum(5,1)~ THEN REPLY @23503 GOTO 5
  IF ~RandomNum(5,2)~ THEN REPLY @23503 GOTO 6
  IF ~RandomNum(5,3)~ THEN REPLY @23503 GOTO 7
  IF ~RandomNum(5,4)~ THEN REPLY @23503 GOTO 8
  IF ~RandomNum(5,5)~ THEN REPLY @23503 GOTO 9
END

IF WEIGHT #5
~RandomNum(5,3)~ THEN BEGIN 2
  SAY @23505
  IF ~RandomNum(5,1)~ THEN REPLY @23503 GOTO 5
  IF ~RandomNum(5,2)~ THEN REPLY @23503 GOTO 6
  IF ~RandomNum(5,3)~ THEN REPLY @23503 GOTO 7
  IF ~RandomNum(5,4)~ THEN REPLY @23503 GOTO 8
  IF ~RandomNum(5,5)~ THEN REPLY @23503 GOTO 9
END

IF WEIGHT #6
~RandomNum(5,4)~ THEN BEGIN 3
  SAY @23523
  IF ~RandomNum(5,1)~ THEN REPLY @23503 GOTO 5
  IF ~RandomNum(5,2)~ THEN REPLY @23503 GOTO 6
  IF ~RandomNum(5,3)~ THEN REPLY @23503 GOTO 7
  IF ~RandomNum(5,4)~ THEN REPLY @23503 GOTO 8
  IF ~RandomNum(5,5)~ THEN REPLY @23503 GOTO 9
END

IF WEIGHT #7
~RandomNum(5,5)~ THEN BEGIN 4
  SAY @23525
  IF ~RandomNum(5,1)~ THEN REPLY @23503 GOTO 5
  IF ~RandomNum(5,2)~ THEN REPLY @23503 GOTO 6
  IF ~RandomNum(5,3)~ THEN REPLY @23503 GOTO 7
  IF ~RandomNum(5,4)~ THEN REPLY @23503 GOTO 8
  IF ~RandomNum(5,5)~ THEN REPLY @23503 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @23527
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23529
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @32215
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @32216
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @32217
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~GlobalGT("41NateMetPlayer","GLOBAL",0)
 GlobalGT("41NateFreeQuest","GLOBAL",3)~ THEN BEGIN 10
  SAY @32218
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,1)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 0
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,2)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 1
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,3)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 2
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,4)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 3
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,5)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 4
  IF ~OpenState("AR4101_Door11",FALSE)~ THEN DO ~AddJournalEntry(@23489,QUEST)~ GOTO 12
END

IF WEIGHT #1
~Global("41NateMetPlayer","GLOBAL",0)
 GlobalGT("41NateFreeQuest","GLOBAL",3)~ THEN BEGIN 11
  SAY @33568
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,1)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 0
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,2)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 1
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,3)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 2
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,4)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 3
  IF ~OpenState("AR4101_Door11",TRUE)
      RandomNum(5,5)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 4
  IF ~OpenState("AR4101_Door11",FALSE)~ THEN DO ~AddJournalEntry(@23490,QUEST)~ GOTO 12
END

IF WEIGHT #2
~OpenState("AR4101_Door11",FALSE)~ THEN BEGIN 12
  SAY @33569
  IF ~~ THEN DO ~SetGlobal("PrisonerTalk","MYAREA",0)~ EXIT
END
