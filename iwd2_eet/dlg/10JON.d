BEGIN ~10JON~

IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @1393
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1397
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,CHR)
      Global("Jon_Has_No_Pants","GLOBAL",0)
      HasItem("DAGG01","Jon")~ THEN REPLY @1442 DO ~GiveItem("DAGG01",LastTalkedToBy)
                                                    SetGlobal("Jon_Has_No_Pants","GLOBAL",1)~ GOTO 3
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,INT)
      CheckStatLT(LastTalkedToBy,13,CHR)
      Global("Jon_Has_No_Pants","GLOBAL",0)
      HasItem("DAGG01","Jon")~ THEN REPLY @1442 DO ~GiveItem("DAGG01",LastTalkedToBy)
                                                    SetGlobal("Jon_Has_No_Pants","GLOBAL",1)~ GOTO 3
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,CHR)
      Global("Jon_Has_No_Pants","GLOBAL",0)
      !HasItem("DAGG01", "Jon")~ THEN REPLY @1442 DO ~SetGlobal("Jon_Has_No_Pants","GLOBAL",1)~ GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,12,INT)
      CheckStatLT(LastTalkedToBy,13,CHR)
      Global("Jon_Has_No_Pants","GLOBAL",0)
      !HasItem("DAGG01","Jon")~ THEN REPLY @1442 DO ~SetGlobal("Jon_Has_No_Pants","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @1443 GOTO 6
  IF ~~ THEN REPLY @1448 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1449
  IF ~~ THEN EXTERN ~10REIG~ 5
END

IF ~~ THEN BEGIN 3
  SAY @1450
  IF ~~ THEN REPLY @1451 GOTO 6
  IF ~~ THEN REPLY @1452 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1453
  IF ~~ THEN REPLY @1454 GOTO 6
  IF ~~ THEN REPLY @1455 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1459
  IF ~~ THEN EXTERN ~10REIG~ 25
END

IF ~~ THEN BEGIN 6
  SAY @1463
  IF ~~ THEN REPLY @1464 GOTO 7
  IF ~~ THEN REPLY @1465 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1466
  IF ~~ THEN REPLY @1467 EXIT
END

IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 8
  SAY @1468
  IF ~~ THEN REPLY @1469 GOTO 9
  IF ~~ THEN REPLY @1470 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @1471
  IF ~~ THEN REPLY @1472 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1474
  IF ~~ THEN REPLY @1475 EXIT
END
