BEGIN ~12WEAPON~

IF WEIGHT #2
~!Dead("TRAINING_KEG")~ THEN BEGIN 0
  SAY @7241
  IF ~OR(4)
        Class(LastTalkedToBy,FIGHTER_ALL)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,MONK)
      !Kit(LastTalkedToBy,BEASTMASTER)~ THEN REPLY @7250 DO ~SetGlobal("Melee_Keg_Warning","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @7251 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7253
  IF ~~ THEN REPLY @7254 DO ~ChangeSpecifics(LastTalkedToBy,125)~ EXIT
  IF ~~ THEN REPLY @7255 DO ~ChangeSpecifics(LastTalkedToBy,125)~ EXIT
END

IF WEIGHT #5
~Dead("TRAINING_KEG")~ THEN BEGIN 2
  SAY @7256
  IF ~OR(4)
        Class(LastTalkedToBy,FIGHTER_ALL)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,MONK)
      !Kit(LastTalkedToBy,BEASTMASTER)~ THEN REPLY @7257 DO ~SetGlobal("Stop_Weapon","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7258 DO ~SetGlobal("Melee_Keg_Warning","GLOBAL",2)
                             SetGlobal("Stop_Weapon","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @7259 DO ~SetGlobal("Melee_Keg_Warning","GLOBAL",2)
                             SetGlobal("Stop_Weapon","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @7260
  IF ~~ THEN REPLY @7261 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7262
  IF ~~ THEN REPLY @7261 EXIT
END

IF WEIGHT #4
~Dead("TRAINING_KEG")
 GlobalGT("Stop_Weapon","GLOBAL",0)
 GlobalLT("Melee_Keg_Warning","GLOBAL",3)~ THEN BEGIN 5
  SAY @7264
  IF ~OR(4)
        Class(LastTalkedToBy,FIGHTER_ALL)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,MONK)
      !Kit(LastTalkedToBy,BEASTMASTER)~ THEN REPLY @7265 DO ~SetGlobal("Melee_Keg_Warning","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7274 EXIT
END

IF WEIGHT #3
~Dead("TRAINING_KEG")
 Global("Melee_Keg_Warning","GLOBAL",3)~ THEN BEGIN 6
  SAY @7275
  IF ~~ THEN REPLY @7276 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7277
  IF ~~ THEN REPLY @7278 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @7279
  IF ~~ THEN REPLY @7280 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @7281
  IF ~~ THEN REPLY @7399 DO ~AddXP2DA("IW2EX2E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@7240)
                             AddJournalEntry(@7239,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @41417
  IF ~~ THEN REPLY @7401 DO ~SetGlobal("Melee_Keg_Warning","GLOBAL",3)
                             GiveItemCreate("z1shldct",LastTalkedToBy,1,1,1)~ EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @7402
  IF ~~ THEN REPLY @7403 EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 12
  SAY @7406
  IF ~~ THEN REPLY @7408 EXIT
END
