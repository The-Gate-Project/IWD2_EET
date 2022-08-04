BEGIN ~10CRANDA~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1695
  IF ~~ THEN REPLY @1698 DO ~SetGlobal("Know_Crandall","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @1702 DO ~SetGlobal("Know_Crandall","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @1704
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1706
  IF ~Global("Reig_Quest","GLOBAL",1)
      Global("Know_Magdar","GLOBAL",0)~ THEN REPLY @1707 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1708 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1709 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1710 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1711
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @1712
  IF ~~ THEN REPLY @1713 GOTO 5
  IF ~~ THEN REPLY @1714 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1715
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 6
  SAY @1716
  IF ~~ THEN REPLY @1970 GOTO 7
  IF ~~ THEN REPLY @16393 DO ~SetGlobal("Crandall_Leave","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16394
  IF ~~ THEN REPLY @16393 DO ~SetGlobal("Crandall_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @28227
  IF ~Global("Reig_Quest","GLOBAL",1)
      Global("Know_Magdar","GLOBAL",0)~ THEN REPLY @1707 GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1713 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @28228 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @28229 EXIT
END

IF WEIGHT #0
~Global("Crandall_Leave","GLOBAL",1)~ THEN BEGIN 9
  SAY @28230
  IF ~~ THEN REPLY @1970 GOTO 7
  IF ~~ THEN REPLY @16393 DO ~SetGlobal("Crandall_Leave","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @28231
  IF ~~ THEN REPLY @28232 GOTO 11
  IF ~Global("Reig_Quest","GLOBAL",1)
      Global("Know_Magdar","GLOBAL",0)~ THEN REPLY @1707 GOTO 4
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @28233 EXIT
  IF ~Class(LastTalkedToBy,MONK)
      !Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @28234 EXIT
  IF ~!Class(LastTalkedToBy,THIEF_ALL)
      !Class(LastTalkedToBy,MONK)
      Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @35726 EXIT
  IF ~!Class(LastTalkedToBy,THIEF_ALL)
      !Class(LastTalkedToBy,MONK)
      !Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @28235 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @28236
  IF ~Global("Reig_Quest","GLOBAL",1)
      Global("Know_Magdar","GLOBAL",0)~ THEN REPLY @1707 GOTO 4
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @28412 EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @28413 EXIT
  IF ~!Class(LastTalkedToBy,THIEF_ALL)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @28235 EXIT
END
