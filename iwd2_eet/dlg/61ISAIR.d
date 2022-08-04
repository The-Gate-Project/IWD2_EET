BEGIN ~61ISAIR~

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @29432
  IF ~~ THEN EXTERN ~60MADAE~ 0
END

IF ~~ THEN BEGIN 1
  SAY @29434
  IF ~~ THEN REPLY @29435 GOTO 2
  IF ~~ THEN REPLY @29436 GOTO 3
  IF ~~ THEN REPLY @29437 GOTO 3
  IF ~~ THEN REPLY @29438 EXTERN ~60MADAE~ 1
  IF ~~ THEN REPLY @29439 EXTERN ~60MADAE~ 2
  IF ~Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @29440 GOTO 4
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @50012 GOTO 2
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @29441 EXTERN ~60MADAE~ 2
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @29441 EXTERN ~60MADAE~ 2
  IF ~Class(LastTalkedToBy,PALADIN)~ THEN REPLY @29442 EXTERN ~60MADAE~ 3
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @29443 EXTERN ~60MADAE~ 3
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @29444 GOTO 5
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @29445 GOTO 6
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @29446 GOTO 7
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @29447 EXTERN ~60MADAE~ 4
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @29448 GOTO 8
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @29449 EXTERN ~60MADAE~ 5
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @29451 EXTERN ~60MADAE~ 6
  IF ~~ THEN REPLY @29453 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @29454
  IF ~~ THEN REPLY @29455 EXTERN ~60MADAE~ 7
  IF ~~ THEN REPLY @29456 EXTERN ~60MADAE~ 8
  IF ~~ THEN REPLY @29457 GOTO 10
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 3
  SAY @29459
  IF ~~ THEN REPLY @29460 EXTERN ~60MADAE~ 7
  IF ~~ THEN REPLY @29461 EXTERN ~60MADAE~ 7
  IF ~~ THEN REPLY @29462 EXTERN ~60MADAE~ 10
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 4
  SAY @29463
  IF ~~ THEN REPLY @29455 EXTERN ~60MADAE~ 7
  IF ~~ THEN REPLY @29456 EXTERN ~60MADAE~ 8
  IF ~~ THEN REPLY @29457 GOTO 10
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 5
  SAY @29464
  IF ~~ THEN REPLY @29455 EXTERN ~60MADAE~ 7
  IF ~~ THEN REPLY @29456 EXTERN ~60MADAE~ 8
  IF ~~ THEN REPLY @29457 GOTO 10
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 6
  SAY @29465
  IF ~~ THEN REPLY @29466 EXTERN ~60MADAE~ 8
  IF ~~ THEN REPLY @29467 EXTERN ~60MADAE~ 9
  IF ~~ THEN REPLY @29468 EXTERN ~60MADAE~ 10
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 7
  SAY @29469
  IF ~~ THEN REPLY @29470 GOTO 11
  IF ~~ THEN REPLY @29471 GOTO 11
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 8
  SAY @29472
  IF ~~ THEN REPLY @29473 EXTERN ~60MADAE~ 11
  IF ~~ THEN REPLY @29474 EXTERN ~60MADAE~ 8
  IF ~~ THEN REPLY @29475 GOTO 11
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 9
  SAY @29476
  IF ~~ THEN REPLY @29477 GOTO 11
  IF ~~ THEN REPLY @29478 GOTO 11
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 10
  SAY @29479
  IF ~~ THEN REPLY @29480 GOTO 15
  IF ~~ THEN REPLY @29481 GOTO 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @29482 GOTO 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @29482 GOTO 16
  IF ~~ THEN REPLY @29458 DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                              Enemy()~ EXTERN ~60MADAE~ 17
END

IF ~~ THEN BEGIN 11
  SAY @29483
  IF ~~ THEN EXTERN ~60MADAE~ 14
END

IF ~~ THEN BEGIN 12
  SAY @29484
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 13
  SAY @29485
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 14
  SAY @29486
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 15
  SAY @29487
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 16
  SAY @29488
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 17
  SAY @29489
  IF ~~ THEN EXTERN ~60MADAE~ 15
END

IF ~~ THEN BEGIN 18
  SAY @29490
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF ~~ THEN BEGIN 19
  SAY @29491
  IF ~~ THEN DO ~SetGlobal("Ready_To_Retreat","GLOBAL",0)
                 Enemy()~ EXTERN ~60MADAE~ 16
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 GlobalLT("Final_Battle_Progress","GLOBAL",1)~ THEN BEGIN 20
  SAY @29492
  IF ~~ THEN DO ~SetGlobal("Final_Battle_Progress","GLOBAL",1)~ EXTERN ~60MADAE~ 18
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Final_Battle_Progress","GLOBAL",1)
 !Global("Pool_Tainted","GLOBAL",1)~ THEN BEGIN 21
  SAY @29493
  IF ~~ THEN DO ~SetGlobal("Final_Battle_Progress","GLOBAL",2)~ EXTERN ~60MADAE~ 19
END

IF ~~ THEN BEGIN 22
  SAY @29494
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Final_Battle_Progress","GLOBAL",1)
 Global("Pool_Tainted","GLOBAL",1)~ THEN BEGIN 23
  SAY @29495
  IF ~~ THEN DO ~SetGlobal("Final_Battle_Progress","GLOBAL",2)~ EXTERN ~60MADAE~ 20
END

IF ~~ THEN BEGIN 24
  SAY @29496
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Final_Battle_Progress","GLOBAL",2)~ THEN BEGIN 25
  SAY @29497
  IF ~~ THEN DO ~SetGlobal("Final_Battle_Progress","GLOBAL",3)~ EXTERN ~60MADAE~ 21
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Final_Battle_Progress","GLOBAL",3)~ THEN BEGIN 26
  SAY @29498
  IF ~~ THEN EXTERN ~64ORRICK~ 68
END

IF ~~ THEN BEGIN 27
  SAY @29499
  IF ~~ THEN EXTERN ~60MADAE~ 23
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Ready_To_Retreat","GLOBAL",0)~ THEN BEGIN 28
  SAY @32053
  IF ~~ THEN EXIT
END
