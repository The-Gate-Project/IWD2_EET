BEGIN ~53FORGE~

IF ~~ THEN BEGIN 0
  SAY @27344
  IF ~~ THEN EXIT
END

IF ~Global("53Forge","GLOBAL",0)~ THEN BEGIN 1
  SAY @27346
  IF ~//LevelInClassGT(LastTalkedToBy, 12, Fighter)
      ClassLevelGT(LastTalkedToBy,WARRIOR,20)
      //Subrace(LastTalkedToBy, Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @27347 DO ~SetGlobal("53Forge","GLOBAL",1)
                                                                                          GiveItemCreate("z5hfaxdf",LastTalkedToBy,0,0,0)~ GOTO 2
  IF ~//LevelInClassGT(LastTalkedToBy, 5, Fighter)
      ClassLevelGT(LastTalkedToBy,WARRIOR,13)
      //LevelInClassLT(LastTalkedToBy, 13, Fighter)
      ClassLevelLT(LastTalkedToBy,WARRIOR,21)
      //Subrace(LastTalkedToBy, Dwarf_Gray)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @27347 DO ~SetGlobal("53Forge","GLOBAL",1)
                                                                                          GiveItemCreate("z5ax1hdf",LastTalkedToBy,0,0,0)~ GOTO 2
  IF ~//LevelInClassGT(LastTalkedToBy, 5, Fighter)
      ClassLevelGT(LastTalkedToBy,WARRIOR,13)
      //!Subrace(LastTalkedToBy, Dwarf_Gray)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @27347 DO ~SetGlobal("53Forge","GLOBAL",1)
                                                                                           GiveItemCreate("AX1H02",LastTalkedToBy,0,0,0)~ GOTO 2
  IF ~//LevelInClassLT(LastTalkedToBy, 6, Fighter)
      ClassLevelLT(LastTalkedToBy,WARRIOR,14)~ THEN REPLY @27347 DO ~SetGlobal("53Forge","GLOBAL",1)
                                                                     GiveItemCreate("HQAXE",LastTalkedToBy,0,0,0)~ GOTO 2
  IF ~~ THEN REPLY @27348 DO ~SetGlobal("53Forge","GLOBAL",1)
                              GiveItemCreate("z0ax1h01",LastTalkedToBy,0,0,0)~ EXIT
  IF ~~ THEN REPLY @27349 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27350
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @28890
  IF ~~ THEN EXIT
END
