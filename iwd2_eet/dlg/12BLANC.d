BEGIN ~12BLANC~

IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)
    Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 0
  SAY @31410
  IF ~~ THEN EXIT
END

IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 1
  SAY @31412
  IF ~~ THEN EXIT
END
