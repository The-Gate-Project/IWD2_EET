BEGIN ~60CHEAP~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @38575
  IF ~!Kit(LastTalkedToBy,MAGESCHOOL_CONJURER)~ THEN REPLY @38576 DO ~SetGlobal("60Cheap_Ass_Marketing_Ploy","GLOBAL",1)~ GOTO 1
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_CONJURER)~ THEN REPLY @38577 DO ~SetGlobal("60Cheap_Ass_Marketing_Ploy","GLOBAL",1)~ GOTO 2
  IF ~//CheckSkillGT(LastTalkedToBy,8,KNOWLEDGE_ARCANA)
      CheckStatGT(LastTalkedToBy,50,LORE)
      !Kit(LastTalkedToBy,MAGESCHOOL_CONJURER)~ THEN REPLY @38577 DO ~SetGlobal("60Cheap_Ass_Marketing_Ploy","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @38578 DO ~SetGlobal("60Cheap_Ass_Marketing_Ploy","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @38579
  IF ~~ THEN REPLY @38580 GOTO 2
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_ABJURER)
      Global("60NoShit_On_Sheemish","GLOBAL",0)~ THEN REPLY @38581 GOTO 4
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Class(LastTalkedToBy,SORCERER)
      !Kit(LastTalkedToBy,MAGESCHOOL_ABJURER)
      Global("60NoShit_On_Sheemish","GLOBAL",0)~ THEN REPLY @38582 GOTO 4
  IF ~Class(LastTalkedToBy,SORCERER)
      //!Kit(LastTalkedToBy,MAGESCHOOL_ABJURER)
      Global("60NoShit_On_Sheemish","GLOBAL",0)~ THEN REPLY @38582 GOTO 4
  IF ~~ THEN REPLY @38583 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @38584
  IF ~~ THEN REPLY @38585 DO ~SetGlobal("60Elemental_Purpose","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @38586 DO ~SetGlobal("60Elemental_Purpose","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @38587 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @38588
  IF ~Global("60NoShit_On_Sheemish","GLOBAL",0)~ THEN REPLY @38589 GOTO 4
  IF ~!Global("60Elemental_Purpose","GLOBAL",1)~ THEN REPLY @38590 DO ~SetGlobal("60Elemental_Purpose","GLOBAL",1)~ GOTO 5
  IF ~Global("60Elemental_Purpose","GLOBAL",1)~ THEN REPLY @38591 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38587 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @38592
  IF ~~ THEN REPLY @38593 GOTO 6
  IF ~~ THEN REPLY @38594 GOTO 7
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @38595
  IF ~~ THEN REPLY @38596 DO ~AddJournalEntry(@38572,QUEST)~ GOTO 7
  IF ~Global("60NoShit_On_Sheemish","GLOBAL",0)~ THEN REPLY @38597 DO ~AddJournalEntry(@38572,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @38598 DO ~AddJournalEntry(@38572,QUEST)
                              StartStore("60Cheap",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @38599
  IF ~Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @38600 DO ~SetGlobal("60NoShit_On_Sheemish","GLOBAL",1)
                                                                         SetQuestDone(@38572)~ GOTO 8
  IF ~!Global("SPRITE_IS_DEADSheemish","GLOBAL",1)~ THEN REPLY @38601 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @38602
  IF ~!Global("60Elemental_Purpose","GLOBAL",1)~ THEN REPLY @38590 DO ~SetGlobal("60Elemental_Purpose","GLOBAL",1)~ GOTO 5
  IF ~Global("60Elemental_Purpose","GLOBAL",1)~ THEN REPLY @38603 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38587 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @38604
  IF ~~ THEN REPLY @38605 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @38606 GOTO 7
  IF ~~ THEN REPLY @38607 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @38608
  IF ~~ THEN REPLY @38607 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@38574)
                              SetGlobal("60Shit_On_Sheemish","GLOBAL",1)
                              SetGlobal("60Ghost_Gone","GLOBAL",1)
                              EraseJournalEntry(@38572)
                              AddJournalEntry(@38573,QUEST_DONE)~ EXIT
END

IF WEIGHT #0
~Global("60Ghost_Gone","GLOBAL",1)~ THEN BEGIN 10
  SAY @38609
  IF ~~ THEN REPLY @38607 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",1)~ EXIT
END
