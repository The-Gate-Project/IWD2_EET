BEGIN ~62GORG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @25402
  IF ~Global("Kill_Mdarfein_Quest","GLOBAL",1)
      !Global("SPRITE_IS_DEADKratuuk","GLOBAL",1)~ THEN REPLY @25403 GOTO 1
  IF ~!Global("Kill_Mdarfein_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @25404 GOTO 2
  IF ~Global("Kill_Mdarfein_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADKratuuk","GLOBAL",1)~ THEN REPLY @25404 GOTO 2
  IF ~!Global("SPRITE_IS_DEADKratuuk","GLOBAL",1)
      GlobalGT("Kratuuk_Team_Dead","GLOBAL",0)~ THEN REPLY @39385 GOTO 2
  IF ~~ THEN REPLY @25405 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25406
  IF ~~ THEN REPLY @25646 DO ~AddXP2DA("IW2EX13A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@25401)
                              SetGlobal("Scouts_Join","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @25650
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @35476
  IF ~~ THEN REPLY @25655 DO ~SetGlobal("Scouts_Join","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @35495 DO ~Enemy()~ EXIT
END
