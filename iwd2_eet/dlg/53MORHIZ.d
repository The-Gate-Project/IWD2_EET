BEGIN ~53MORHIZ~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @38555
  IF ~!Global("SPRITE_IS_DEADElder_Brain","GLOBAL",0)~ THEN REPLY @423 GOTO 1
  IF ~Global("SPRITE_IS_DEADElder_Brain","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,15,CON)~ THEN REPLY @38559 GOTO 1
  IF ~!Global("53ElderB_Permission","GLOBAL",0)
      Global("SPRITE_IS_DEADElder_Brain","GLOBAL",0)~ THEN REPLY @38560 GOTO 2
  IF ~~ THEN REPLY @38561 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @38556
  IF ~~ THEN DO ~//SetHPPercent(Myself, 45, MAX_HP)
                 ApplySpellRES("IDSHP45",Myself)
                 //AddExperiencePartyCR(8)
                 AddXPWorthOnce(Myself,TRUE)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @38557
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @38558
  IF ~~ THEN EXIT
END
