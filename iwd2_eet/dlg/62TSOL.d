BEGIN ~62TSOL~

IF WEIGHT #2
~OpenState("AR6200_Tusk_Gate",TRUE)
 GlobalGT("Kratuuk_Team_Dead","GLOBAL",9)~ THEN BEGIN 0
  SAY @33458
  IF ~!Global("Find_Elven_Cleric","GLOBAL",1)
      !Global("Find_Elven_Cleric","GLOBAL", 2)~ THEN REPLY @33459 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 1
  IF ~Global("Find_Elven_Cleric","GLOBAL",1)~ THEN REPLY @33460 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 1
  IF ~Global("Find_Elven_Cleric","GLOBAL", 2)~ THEN REPLY @33461 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @33462 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @33463
  IF ~~ THEN REPLY @33464 DO ~SetGlobal("Find_Elven_Cleric","GLOBAL",1)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @33465 DO ~SetGlobal("Find_Elven_Cleric","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @33466
  IF ~~ THEN REPLY @33469 DO ~AddXP2DA("IW2EX13E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33457)
                              StartCutSceneMode()
                              StartCutScene("62cTsol")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @33470
  IF ~~ THEN REPLY @33471 DO ~AddXP2DA("IW2EX13A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23074)
                              StartCutSceneMode()
                              StartCutScene("62cTsol")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @33472
  IF ~~ THEN REPLY @33473 GOTO 2
  IF ~~ THEN REPLY @33474 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @35470
  IF ~~ THEN REPLY @36912 DO ~AddXP2DA("IW2EX13A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23074)
                              StartCutSceneMode()
                              StartCutScene("62cTsol")~ EXIT
END

IF WEIGHT #0
~OpenState("AR6200_Tusk_Gate",FALSE)~ THEN BEGIN 6
  SAY @37110
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~GlobalLT("Kratuuk_Team_Dead","GLOBAL",10)
 OpenState("AR6200_Tusk_Gate",TRUE)~ THEN BEGIN 7
  SAY @37773
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~OpenState("AR6200_Tusk_Gate",TRUE)
 GlobalGT("Kratuuk_Team_Dead","GLOBAL",9)
 //SubRace(LastTalkedToBy,ELF_DROW)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN BEGIN 8
  SAY @37774
  IF ~!Global("Find_Elven_Cleric","GLOBAL",1)
      !Global("Find_Elven_Cleric","GLOBAL", 2)~ THEN REPLY @37775 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 1
  IF ~Global("Find_Elven_Cleric","GLOBAL",1)~ THEN REPLY @37776 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 1
  IF ~Global("Find_Elven_Cleric","GLOBAL", 2)~ THEN REPLY @37777 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @37778 DO ~SetGlobal("Freed_Elves","GLOBAL",2)~ GOTO 2
END
