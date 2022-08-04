BEGIN ~30HOBDGU~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15905
  IF ~Global("30hobDGu_Pass","GLOBAL",1)~ THEN REPLY @15906 GOTO 2
  IF ~~ THEN REPLY @15907 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15911 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15913 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15915 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15916 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15919 DO ~SetGlobal("Door_Guard_Nodes","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @15927
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @33511
  IF ~~ THEN DO ~AddXP2DA("IW2EX5E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@15904)
                 SetGlobal("30hobDGu_Pass","GLOBAL",2)
                 SetGlobal("AR3001_Door_Unlocked","GLOBAL",1)
                 SetGlobal("Door_Guard_Nodes","GLOBAL",2)
                 AddJournalEntry(@15901,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("Door_Guard_Nodes","GLOBAL",1)~ THEN BEGIN 3
  SAY @15905
  IF ~Global("30hobDGu_Pass","GLOBAL",1)~ THEN REPLY @15906 GOTO 2
  IF ~~ THEN REPLY @15907 GOTO 1
  IF ~~ THEN REPLY @15911 GOTO 1
  IF ~~ THEN REPLY @15913 GOTO 1
  IF ~~ THEN REPLY @15915 GOTO 1
  IF ~~ THEN REPLY @15916 GOTO 1
  IF ~~ THEN REPLY @15919 GOTO 1
END
