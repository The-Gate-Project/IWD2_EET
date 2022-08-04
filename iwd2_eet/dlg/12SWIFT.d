BEGIN ~12SWIFT~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9830
  IF ~~ THEN REPLY @10099 DO ~SetGlobal("Know_Swift_Thomas","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @10100 DO ~SetGlobal("Know_Swift_Thomas","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @10101 DO ~SetGlobal("Know_Swift_Thomas","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @10102
  IF ~GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",1)~ THEN REPLY @10103 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",0)~ THEN REPLY @10104 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~~ THEN REPLY @10105 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @10106 GOTO 3
  IF ~~ THEN REPLY @10107 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10108
  IF ~GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",1)~ THEN REPLY @10109 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",0)~ THEN REPLY @10110 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @10111 GOTO 3
  IF ~~ THEN REPLY @10112 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10113
  IF ~~ THEN REPLY @10114 EXIT
  IF ~~ THEN REPLY @10115 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10116
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @10118 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @10119 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10120 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10120 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @10121 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @10122
  IF ~GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",1)~ THEN REPLY @10103 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      GlobalGT("Lumber_Quest","GLOBAL",1)
      Global("Thomas_Permission","GLOBAL",0)~ THEN REPLY @10104 DO ~SetGlobal("Thomas_Permission","GLOBAL",2)~ GOTO 4
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)
      Global("Thomas_Permission","GLOBAL",2)~ THEN REPLY @10123 DO ~StartCutSceneMode()
                                                                    StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)
      Global("Thomas_Permission","GLOBAL",2)~ THEN REPLY @10119 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                    StartCutSceneMode()
                                                                    StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10124 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10124 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @10165 EXIT
END

IF WEIGHT #2
~Global("Thomas_Permission","GLOBAL",2)~ THEN BEGIN 6
  SAY @10166
  IF ~Global("Jump_Check","GLOBAL",1)
      !AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @10167 GOTO 8
  IF ~Global("Jump_Check","GLOBAL",2)
      !AreaCheckObject("IW1200",LastTalkedToBy)~ THEN REPLY @10168 GOTO 8
  IF ~Global("Jump_Check","GLOBAL",3)
      !AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @10169 GOTO 8
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @10118 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @10119 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10120 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @10120 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @10170 EXIT
END

IF WEIGHT #0
~Global("IW2000_Visited","GLOBAL",1)
 Global("IW3000_Visited","GLOBAL",0)~ THEN BEGIN 7
  SAY @28241
  IF ~~ THEN REPLY @28242 GOTO 9
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @10118 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @10119 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28243 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28243 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28244 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @28245
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @28246 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @28247 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28248 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28248 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28249 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28250
  IF ~~ THEN REPLY @28251 GOTO 10
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @10118 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @10119 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28243 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28243 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28244 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @28252
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @28253 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @28254 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28255 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28255 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28256 EXIT
END

IF WEIGHT #1
~Global("IW3000_Visited","GLOBAL",1)~ THEN BEGIN 11
  SAY @28257
  IF ~~ THEN REPLY @28258 GOTO 12
  IF ~~ THEN REPLY @28259 GOTO 12
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @28260 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @28261 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28262 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28262 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28263 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @28264
  IF ~!AreaCheckObject("IW1000",LastTalkedToBy)~ THEN REPLY @28265 DO ~SetGlobal("Jump_Check","GLOBAL",1)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1000a")~ EXIT
  IF ~!AreaCheckObject("IW1100",LastTalkedToBy)~ THEN REPLY @28266 DO ~SetGlobal("Jump_Check","GLOBAL",3)
                                                                       StartCutSceneMode()
                                                                       StartCutScene("ST_1100a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28487 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                        StartCutSceneMode()
                                                                        StartCutScene("ST_1200a")~ EXIT
  IF ~!AreaCheckObject("IW1200",LastTalkedToBy)
      GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @28487 DO ~SetGlobal("Jump_Check","GLOBAL",2)
                                                                          StartCutSceneMode()
                                                                          StartCutScene("ST_1200b")~ EXIT
  IF ~~ THEN REPLY @28488 EXIT
END
