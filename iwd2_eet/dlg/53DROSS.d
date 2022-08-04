BEGIN ~53DROSS~

IF ~True()~ THEN BEGIN 0
  SAY @35633
  IF ~//Global("53Malavo_Dead","GLOBAL",0)
      //Global("53Kadres_Dead","GLOBAL",0)
      //Global("53Viizra_Dead","GLOBAL",0)
      !Global("SPRITE_IS_DEADMalavon","GLOBAL",0)
      !Global("SPRITE_IS_DEADViizra_Arabani","GLOBAL",0)
      !Global("SPRITE_IS_DEADKadresh_Olonrae","GLOBAL",0)
      !Global("Viciscamera_Quest","GLOBAL",2)~ THEN EXTERN ~53DROPR~ 2
  IF ~Global("Viciscamera_Quest","GLOBAL",2)~ THEN EXTERN ~53DROPR~ 3
  IF ~~ THEN EXTERN ~53DROPR~ 1
END
