BEGIN ~00BAHSH~

IF WEIGHT #0 ~Global("Bashshar","GLOBAL",0)~ THEN BEGIN 0
  SAY @38783
  IF ~~ THEN REPLY @38798 DO ~SetGlobal("Bashshar_Know","GLOBAL",1)
                              SetGlobal("Bashshar","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @38799 DO ~SetGlobal("Bashshar","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @38800 DO ~SetGlobal("Bashshar","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @38801
  IF ~~ THEN REPLY @38802 GOTO 4
  IF ~~ THEN REPLY @38799 GOTO 2
  IF ~~ THEN REPLY @38800 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @38803
  IF ~~ THEN REPLY @38804 GOTO 3
  IF ~Global("Bashshar_Know","GLOBAL",0)~ THEN REPLY @38798 DO ~SetGlobal("Bashshar_Know","GLOBAL",1)~ GOTO 1
  IF ~!Global("Bashshar_Know","GLOBAL",0)
      //LevelLT(LastTalkedToBy,16)
      ~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                              StartStore("00Bashs1",LastTalkedToBy)~ EXIT
  IF ~False()
      !Global("Bashshar_Know","GLOBAL",0)
      LevelGT(LastTalkedToBy,15)
      LevelLT(LastTalkedToBy,21)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs2",LastTalkedToBy)~ EXIT
  IF ~False()
      !Global("Bashshar_Know","GLOBAL",0)
      LevelGT(LastTalkedToBy,20)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38800 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @38806
  IF ~Global("Bashshar_Service","GLOBAL",0)~ THEN REPLY @38807 GOTO 11
  IF ~!Global("Bashshar_Service","GLOBAL",0)~ THEN REPLY @38807 GOTO 12
  IF ~~ THEN REPLY @38808 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @38809
  IF ~~ THEN REPLY @39245 GOTO 3
  IF ~//LevelLT(LastTalkedToBy,16)
      ~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                              StartStore("00Bashs1",LastTalkedToBy)~ EXIT
  IF ~False()
      LevelGT(LastTalkedToBy,15)
      LevelLT(LastTalkedToBy,21)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs2",LastTalkedToBy)~ EXIT
  IF ~False()
      LevelGT(LastTalkedToBy,20)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38800 EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 5
  SAY @39244
  IF ~Global("Bashshar_Know","GLOBAL",0)~ THEN REPLY @38798 DO ~SetGlobal("Bashshar_Know","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @38799 GOTO 2
  IF ~!Global("Bashshar_Know","GLOBAL",0)
      //LevelLT(LastTalkedToBy,16)
      ~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                              StartStore("00Bashs1",LastTalkedToBy)~ EXIT
  IF ~False()
      !Global("Bashshar_Know","GLOBAL",0)
      LevelGT(LastTalkedToBy,15)
      LevelLT(LastTalkedToBy,21)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs2", LastTalkedToBy)~ EXIT
  IF ~False()
      !Global("Bashshar_Know","GLOBAL",0)
      LevelGT(LastTalkedToBy,20)~ THEN REPLY @38805 DO ~IncrementGlobal("Bashshar_Service","GLOBAL",1)
                                                        StartStore("00Bashs3", LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38800 EXIT
END

IF WEIGHT #1 ~GlobalGT("Bashshar_Service","GLOBAL",2)~ THEN BEGIN 6
  SAY @39246
  IF ~~ THEN REPLY @39247 DO ~SetGlobal("Bashshar_Service","GLOBAL",4)
                              TakePartyItem("z5genad")
                              DestroyItem("z5genad")~ GOTO 7
  IF ~~ THEN REPLY @39248 DO ~SetGlobal("Bashshar_Service","GLOBAL",4)
                              TakePartyItem("z5genad")
                              DestroyItem("z5genad")~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @39249
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @39251
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @39252
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @39253
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @39254
  IF ~~ THEN DO ~SetGlobal("Bashshar","GLOBAL",3)
                 SetGlobal("Bashshar_Service","GLOBAL",5)
                 GiveItemCreate("z0bracbb",LastTalkedToBy,1,0,0)
                 GiveItemCreate("MISC41",LastTalkedToBy,1,0,0)
                 GiveItemCreate("CLCK01",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @39255
  IF ~~ THEN DO ~SetGlobal("Bashshar","GLOBAL",3)
                 SetGlobal("Bashshar_Service","GLOBAL",5)~ EXIT
END
