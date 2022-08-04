BEGIN ~62GUARD~

IF ~Global("SPRITE_IS_DEADPuuk","GLOBAL",1)~ THEN BEGIN 0
  SAY @30314
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADPuuk","GLOBAL",2)
                 Enemy()~ EXIT
END
