BEGIN ~51SPE~

IF WEIGHT #2
~Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @8495
  IF ~~ THEN REPLY @8496 GOTO 2
  IF ~~ THEN REPLY @8497 GOTO 2
END

IF WEIGHT #3
~True()~ THEN BEGIN 1
  SAY @8498
  IF ~~ THEN REPLY @8496 GOTO 2
  IF ~~ THEN REPLY @8497 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @8499
  IF ~~ THEN REPLY @31511 GOTO 3
  IF ~~ THEN REPLY @31512 GOTO 3
  IF ~~ THEN REPLY @31513 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @31514
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@8492,QUEST)~ EXIT
END

IF WEIGHT #1
~GlobalGT("51Spectre","GLOBAL",0)~ THEN BEGIN 4
  SAY @31516
  IF ~~ THEN REPLY @31517 GOTO 5
  IF ~~ THEN REPLY @31518 GOTO 5
  IF ~~ THEN REPLY @31519 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @31520
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)
  	  CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @31521 GOTO 6
  IF ~~ THEN REPLY @31522 GOTO 7
  IF ~~ THEN REPLY @31519 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @31523
  IF ~~ THEN REPLY @31524 DO ~SetGlobal("51Spectre","GLOBAL",2)
                              AddJournalEntry(@8493,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31525
  IF ~~ THEN REPLY @31524 DO ~//AddexperienceParty(3000)
                              AddXP2DA("IW2EX7H")
                              SetGlobal("51Spectre","GLOBAL",3)
                              AddJournalEntry(@8494,QUEST_DONE)~ EXIT
END

IF WEIGHT #0
~GlobalGT("51Spectre","GLOBAL",2)~ THEN BEGIN 8
  SAY @31526
  IF ~~ THEN EXIT
END
