BEGIN ~12KADENC~

IF ~~ THEN BEGIN 0
  SAY @15290
  IF ~~ THEN EXTERN ~12GABLE~ 1
END

IF ~~ THEN BEGIN 1
  SAY @15292
  IF ~~ THEN EXTERN ~12GABLE~ 4
END

IF ~~ THEN BEGIN 2
  SAY @15295
  IF ~~ THEN EXTERN ~12GABLE~ 10
END

IF WEIGHT #2
~//!Dead("12KegArc")
 Global("Dead_12KegArc","GLOBAL",0)
 Global("Gable_Quest","GLOBAL",0)~ THEN BEGIN 3
  SAY @15296
  IF ~~ THEN EXTERN ~12GABLE~ 23
END

IF ~~ THEN BEGIN 4
  SAY @15297
  IF ~~ THEN EXTERN ~12GABLE~ 4
END

IF WEIGHT #3
~//Dead("12KegArc")
 !Global("Dead_12KegArc","GLOBAL",0)
 Global("Gable_Quest","GLOBAL",0)~ THEN BEGIN 5
  SAY @15298
  IF ~~ THEN EXTERN ~12GABLE~ 9
END

IF WEIGHT #4
~GlobalGT("Gable_Quest","GLOBAL",0)
 GlobalLT("Gable_Quest","GLOBAL",6)
 //!Dead("12KegArc")
 Global("Dead_12KegArc","GLOBAL",0)~ THEN BEGIN 6
  SAY @15299
  IF ~~ THEN REPLY @15300 EXIT
END

IF WEIGHT #5
~GlobalGT("Gable_Quest","GLOBAL",0)
 GlobalLT("Gable_Quest","GLOBAL",6)
 //Dead("12KegArc")
 !Global("Dead_12KegArc","GLOBAL",0)~ THEN BEGIN 7
  SAY @15301
  IF ~~ THEN REPLY @15302 EXIT
END

IF WEIGHT #6
~Global("Gable_Quest","GLOBAL",6)~ THEN BEGIN 8
  SAY @15308
  IF ~Global("Kadence_Reward","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15311 DO ~SetGlobal("Kadence_Reward","GLOBAL",1)
                                                         GiveGoldForce(4)
                                                         GiveItemCreate("z0misc17",LastTalkedToBy,1,0,0)~ GOTO 9
  IF ~Global("Kadence_Reward","GLOBAL",0)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36148 DO ~SetGlobal("Kadence_Reward","GLOBAL",1)~ GOTO 9
  IF ~Global("Kadence_Reward","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @36149 DO ~SetGlobal("Kadence_Reward","GLOBAL",1)~ GOTO 9
  IF ~Global("Kadence_Reward","GLOBAL",1)~ THEN REPLY @15312 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15314
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15315 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36150 EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @36151 EXIT
END

IF WEIGHT #0
~Global("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 10
  SAY @31416
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @31417
  IF ~~ THEN EXIT
END
