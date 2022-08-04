BEGIN ~51ZAMA~

IF WEIGHT #1
~Global("51Zama","GLOBAL",0)~ THEN BEGIN 0
  SAY @8598
  IF ~GlobalGT("51Barud_Caves","GLOBAL",0)~ THEN REPLY @8599 DO ~SetGlobal("51Zama","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @8600 DO ~SetGlobal("51Zama","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @31160 DO ~SetGlobal("51Zama","GLOBAL",1)
                              StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8601 DO ~SetGlobal("51Zama","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @8602 DO ~SetGlobal("51Zama","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 1
  SAY @8603
  IF ~GlobalGT("51Barud_Caves","GLOBAL",0)
      Global("51Zama_Help","GLOBAL",0)~ THEN REPLY @8604 GOTO 2
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8602 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8607
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8608 DO ~SetGlobal("51Zama_Help","GLOBAL",1)
      	                                                     GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
      	                                                     GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
      	                                                     GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
      	                                                     AddJournalEntry(@8597,QUEST)~ GOTO 3 //POTN_52
  IF ~  CheckStatLT(LastTalkedToBy,14,CHR)
      OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8608 GOTO 4
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8609 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8611
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8612 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8613
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8609 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8614
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @8618 GOTO 6
  IF ~!Race(LastTalkedToBy,DWARF)~ THEN REPLY @8618 GOTO 7
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8612 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8619
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8626
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @8627
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8606 GOTO 9
  IF ~~ THEN REPLY @8612 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8628
  IF ~~ THEN REPLY @8629 GOTO 10
  IF ~~ THEN REPLY @8630 GOTO 10
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8612 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8631
  IF ~~ THEN REPLY @31161 DO ~StartStore("51Zama",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8605 GOTO 5
  IF ~~ THEN REPLY @8609 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 11
  SAY @36481
  IF ~~ THEN EXIT
END
