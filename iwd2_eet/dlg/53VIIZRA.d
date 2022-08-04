BEGIN ~53VIIZRA~

IF WEIGHT #1
~Global("Talked_to_Viizra","GLOBAL",0)~ THEN BEGIN 0
  SAY @22901
  IF ~~ THEN REPLY @22905 DO ~SetGlobal("Talked_to_Viizra","GLOBAL",1)
                              SetGlobal("Viizra_Cynic","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22906 DO ~SetGlobal("Talked_to_Viizra","GLOBAL",1)
                              AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~SetGlobal("Talked_to_Viizra","GLOBAL",1)
                              StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22908 DO ~SetGlobal("Talked_to_Viizra","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @22909
  IF ~~ THEN REPLY @22910 GOTO 2
  IF ~~ THEN REPLY @22906 DO ~AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22912
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @22914
  IF ~~ THEN REPLY @22917 GOTO 4
  IF ~~ THEN REPLY @22918 GOTO 5
  IF ~~ THEN REPLY @22906 DO ~SetGlobal("Talked_to_Viizra","GLOBAL",1)
                              AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22919
  IF ~~ THEN REPLY @22906 DO ~AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22920
  IF ~~ THEN REPLY @22906 DO ~AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF WEIGHT #2
~!Global("Talked_to_Viizra","GLOBAL",0)~ THEN BEGIN 6
  SAY @22921
  IF ~!Global("Viizra_Cynic","GLOBAL",1)~ THEN REPLY @22922 DO ~SetGlobal("Viizra_Cynic","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22906 DO ~AddJournalEntry(@22900,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22923
  IF ~Global("Know_Lolthians","GLOBAL",0)~ THEN DO ~SetGlobal("Know_Lolthians","GLOBAL",1)
                                                    AddJournalEntry(@38814,QUEST)~ GOTO 11
  IF ~!Global("Know_Lolthians","GLOBAL",0)~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~!Global("Know_Lolthians","GLOBAL",0)~ THEN REPLY @22911 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22924
  IF ~~ THEN EXTERN ~53MALAVO~ 17
END

IF ~~ THEN BEGIN 9
  SAY @22925
  IF ~~ THEN EXTERN ~53MALAVO~ 29
END

IF ~~ THEN BEGIN 10
  SAY @22926
  IF ~~ THEN EXTERN ~53MALAVO~ 30
END

IF ~~ THEN BEGIN 11
  SAY @38718
  IF ~~ THEN REPLY @22907 DO ~StartStore("53Viizra",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22911 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 12
  SAY @38810
  IF ~~ THEN EXIT
END
