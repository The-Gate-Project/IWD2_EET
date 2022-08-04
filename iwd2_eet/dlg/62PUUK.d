BEGIN ~62PUUK~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24183
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatGT(LastTalkedToBy,8,CHR)~ THEN REPLY @24594 GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatLT(LastTalkedToBy,9,CHR)~ THEN REPLY @37763 GOTO 4
  IF ~~ THEN REPLY @24595 DO ~//SetGlobal("SPRITE_IS_DEADPuuk","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25577
  IF ~~ THEN DO ~SetGlobal("Walk_to_Kratuuk","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("62cPuuk")~ EXIT
END

IF WEIGHT #2
~Global("Walk_to_Kratuuk","GLOBAL",1)~ THEN BEGIN 2
  SAY @27442
  IF ~~ THEN DO ~SetGlobal("Talk_to_Kratuuk","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~Global("Talk_to_Kratuuk","GLOBAL",1)~ THEN BEGIN 3
  SAY @34280
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @37766
  IF ~~ THEN DO ~SetGlobal("Aggro_Orcs","GLOBAL",1)
                 Enemy()~ EXIT
END
