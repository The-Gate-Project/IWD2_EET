BEGIN ~20GENVIL~

IF ~RandomNum(5,1)
    NumTimesTalkedTo(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 0
  SAY @2531
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    NumTimesTalkedTo(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 1
  SAY @2533
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    NumTimesTalkedTo(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 2
  SAY @2534
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    NumTimesTalkedTo(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 3
  SAY @2535
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(5,6)
    NumTimesTalkedTo(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 4
  SAY @2536
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 5
  SAY @2537
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
    NumTimesTalkedTo(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 6
  SAY @2538
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    NumTimesTalkedTo(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 7
  SAY @2539
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    NumTimesTalkedTo(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 8
  SAY @2540
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    NumTimesTalkedTo(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 9
  SAY @2541
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(5,6)
    NumTimesTalkedTo(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 10
  SAY @2542
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
    GlobalGT("SR_Rescue_Villagers","GLOBAL",3)~ THEN BEGIN 11
  SAY @2543
  IF ~~ THEN EXIT
END
