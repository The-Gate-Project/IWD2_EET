BEGIN ~41ONDAB~

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @29009
  IF ~Global("41OriaIsEthereal","GLOBAL",1)
      !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @29010 GOTO 14
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      OR(2)
        Global("41XhaanGaveName","GLOBAL",1)
        Global("41TempestSaidName","GLOBAL",1)
      !Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @29011 DO ~SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)~ GOTO 11
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @29045 GOTO 11
  IF ~~ THEN REPLY @29047 GOTO 10
  IF ~~ THEN REPLY @29049 GOTO 2
  IF ~~ THEN REPLY @29050 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @29051 GOTO 3
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 !Global("41OndaboOffended","GLOBAL",1)~ THEN BEGIN 1
  SAY @29052
  IF ~Global("41OriaIsEthereal","GLOBAL",1 )
      !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @29054 GOTO 14
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      OR(2)
        Global("41XhaanGaveName","GLOBAL",1)
        Global("41TempestSaidName","GLOBAL",1)
      !Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @29011 DO ~SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)~ GOTO 11
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @29055 GOTO 11
  IF ~~ THEN REPLY @29047 GOTO 10
  IF ~~ THEN REPLY @29051 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @29056
  IF ~~ THEN REPLY @29057 GOTO 3
  IF ~~ THEN REPLY @29058 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @29051 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @29608
  IF ~~ THEN REPLY @29973 GOTO 4
  IF ~~ THEN REPLY @29974 GOTO 6
  IF ~~ THEN REPLY @29975 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @29976 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @29977
  IF ~~ THEN REPLY @29978 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @29979 GOTO 7
  IF ~~ THEN REPLY @29980 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @31594
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31606
  IF ~~ THEN REPLY @31615 GOTO 4
  IF ~~ THEN REPLY @31617 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @31619 GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY @31620
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("41OndaboOffended","GLOBAL",1)~ THEN BEGIN 8
  SAY @31621
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Exists("Acolyte_01")
 Exists("Acolyte_02")
 Exists("Acolyte_03")
 Exists("Acolyte_04")
 OR(4)
   Dead("Acolyte_01")
   Dead("Acolyte_02")
   Dead("Acolyte_03")
   Dead("Acolyte_04")~ THEN BEGIN 9
  SAY @31838
  IF ~~ THEN REPLY @31839 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @31840 DO ~SetGlobal("41OndaboOffended","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @31841 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @31842
  IF ~~ THEN REPLY @31843 GOTO 12
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @31845
  IF ~~ THEN REPLY @31843 GOTO 12
  IF ~~ THEN REPLY @31846 GOTO 13
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @31847
  IF ~!Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)
      OR(3)
        Global("41XhaanGaveName","GLOBAL",1)
        Global("41TempestSaidName","GLOBAL",1)
        Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @31846 GOTO 13
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31888
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @31889
  IF ~~ THEN REPLY @31890 GOTO 15
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @31891
  IF ~~ THEN REPLY @31892 GOTO 16
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31844 GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31844 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @31893
  IF ~NumTimesTalkedToLT(2)~ THEN REPLY @31894 DO ~AddJournalEntry(@29008,QUEST)~ GOTO 3
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @31894 DO ~AddJournalEntry(@29008,QUEST)~ EXIT
END
