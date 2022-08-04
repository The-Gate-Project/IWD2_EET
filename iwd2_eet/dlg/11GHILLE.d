BEGIN ~11GHILLE~

IF WEIGHT #6
~True()~ THEN BEGIN 0
  SAY @4651
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @4652 DO ~SetGlobal("Know_Ghille","GLOBAL",1)
                                                                   SetGlobal("Ghille_Attack","GLOBAL",1)~ GOTO 1
  IF ~Global("Ulbrec_Gate","GLOBAL",1)~ THEN REPLY @4653 DO ~SetGlobal("Know_Ghille","GLOBAL",1)~ GOTO 9
  IF ~Global("Ulbrec_Gate","GLOBAL",0)~ THEN REPLY @4653 DO ~SetGlobal("Know_Ghille","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @4654 DO ~SetGlobal("Know_Ghille","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4657
  IF ~Global("IW1007_Visited","GLOBAL",1)~ THEN REPLY @4658 GOTO 2
  IF ~Global("IW1007_Visited","GLOBAL",0)~ THEN REPLY @4659 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4660
  IF ~~ THEN REPLY @4661 GOTO 3
  IF ~~ THEN REPLY @4662 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4663
  IF ~~ THEN REPLY @4662 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Ghille_Attack","GLOBAL",1)~ THEN BEGIN 4
  SAY @4664
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Ulbrec","GLOBAL",1)~ THEN REPLY @4665 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Ulbrec","GLOBAL",0)~ THEN REPLY @4667 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Know_Ulbrec","GLOBAL",1)~ THEN REPLY @4668 GOTO 6
  IF ~Global("Know_Ulbrec","GLOBAL",0)~ THEN REPLY @4669 GOTO 3
  IF ~Global("Know_Ulbrec","GLOBAL",0)~ THEN REPLY @4670 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4671
  IF ~Global("Ulbrec_Gate","GLOBAL",1)~ THEN REPLY @4653 DO ~SetGlobal("Ghille_Attack","GLOBAL",0)~ GOTO 9
  IF ~Global("Ulbrec_Gate","GLOBAL",0)~ THEN REPLY @4653 DO ~SetGlobal("Ghille_Attack","GLOBAL",0)~ GOTO 7
  IF ~~ THEN REPLY @4669 DO ~SetGlobal("Ghille_Attack","GLOBAL",0)~ GOTO 8
  IF ~~ THEN REPLY @4672 DO ~SetGlobal("Ghille_Attack","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4673
  IF ~~ THEN REPLY @4674 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4675
  IF ~~ THEN REPLY @4661 GOTO 8
  IF ~~ THEN REPLY @4676 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4677
  IF ~~ THEN REPLY @4676 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @4678
  IF ~~ THEN REPLY @4679 EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("IW2000_Visited","GLOBAL",0)~ THEN BEGIN 10
  SAY @28435
  IF ~~ THEN REPLY @28436 EXIT
END

IF WEIGHT #2
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Fortress_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @28437
  IF ~~ THEN REPLY @28438 EXIT
END

IF WEIGHT #3
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Fortress_Quest","GLOBAL",1)~ THEN BEGIN 12
  SAY @28439
  IF ~~ THEN REPLY @28440 EXIT
END

IF WEIGHT #4
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 GlobalGT("Fortress_Quest","GLOBAL",1)~ THEN BEGIN 13
  SAY @28441
  IF ~~ THEN REPLY @28442 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @28443
  IF ~~ THEN REPLY @28444 EXIT
END
