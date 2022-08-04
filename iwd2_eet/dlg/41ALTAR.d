BEGIN ~41ALTAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21769
  IF ~Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @21774 DO ~AddXP2DA("IW2EX8VH")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@21727)
                                                                           AddJournalEntry(@18557,QUEST)~ GOTO 8
  IF ~Global("41PlayerKnowsTempestName","GLOBAL",0)~ THEN REPLY @21775 GOTO 2
  IF ~~ THEN REPLY @21781 GOTO 3
  IF ~~ THEN REPLY @21782 GOTO 9
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @21786
  IF ~Global("41PlayerKnowsTempestName","GLOBAL",1)~ THEN REPLY @21774 DO ~AddXP2DA("IW2EX8VH")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@21727)
                                                                           AddJournalEntry(@18557,QUEST)~ GOTO 8
  IF ~Global("41TempestSaidName","GLOBAL",1)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @21789 DO ~AddXP2DA("IW2EX8VH")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@21727)
                                                            SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)
                                                            AddJournalEntry(@18557,QUEST)~ GOTO 8
  IF ~Global("41TempestSaidName","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21790 DO ~AddXP2DA("IW2EX8VH")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@21758)
                                                                AddJournalEntry(@21698,QUEST)~ GOTO 8
  IF ~Global("41TempestSaidName","GLOBAL",1)
      !CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21790 GOTO 9
  IF ~Global("PlayerKnowsMe","LOCALS",0)
      Global("41PlayerKnowsTempestName","GLOBAL",0)~ THEN REPLY @21775 GOTO 2
  IF ~~ THEN REPLY @21781 GOTO 3
  IF ~~ THEN REPLY @21782 GOTO 9
END

IF ~~ THEN BEGIN 2
  SAY @21793
  IF ~Global("41TempestSaidName","GLOBAL",1)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @21794 DO ~AddXP2DA("IW2EX8VH")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@21727)
                                                            SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)
                                                            AddJournalEntry(@18557,QUEST)~ GOTO 8
  IF ~Global("41TempestSaidName","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,17,INT)~ THEN REPLY @21797 GOTO 9
  IF ~~ THEN REPLY @21801 GOTO 4
  IF ~~ THEN REPLY @21806 GOTO 3
  IF ~~ THEN REPLY @21814 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @21815
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)~ THEN REPLY @21816 GOTO 5
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21818 GOTO 5
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",1)
      Global("SPRITE_IS_DEADCathin","GLOBAL",1)
      Global("SPRITE_IS_DEADOria","GLOBAL",1)
      !CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21818 DO ~AddXP2DA("IW2EX8VH")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@21758)
                                                                 AddJournalEntry(@21698,QUEST)~ GOTO 8
  IF ~Global("41XhaanGaveName","GLOBAL",1)~ THEN REPLY @28799 GOTO 12
  IF ~~ THEN REPLY @28802 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @30544
  IF ~Global("PlayerKnowsMe","LOCALS",0)
      Global("41PlayerKnowsTempestName","GLOBAL",0)~ THEN REPLY @21775 GOTO 2
  IF ~~ THEN REPLY @21806 GOTO 3
  IF ~~ THEN REPLY @30546 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @30547
  IF ~~ THEN REPLY @30549 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,16,STR)~ THEN REPLY @32133 GOTO 6
  IF ~!CheckStatGT(LastTalkedToBy,16,STR)~ THEN REPLY @32133 DO ~AddXP2DA("IW2EX8VH")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@21758)
                                                                 AddJournalEntry(@21698,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @30546 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @32134
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @32135 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(1)~ THEN REPLY @32136 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(2)~ THEN REPLY @32137 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(3)~ THEN REPLY @32138 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(4)~ THEN REPLY @32139 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(5)~ THEN REPLY @32141 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)
      NumInParty(6)~ THEN REPLY @32142 DO ~SetGlobal("41TempestSaidName","GLOBAL",1)~ GOTO 7
  IF ~CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY @32143 GOTO 9
  IF ~~ THEN REPLY @33310 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @33312
  IF ~OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @21789 DO ~SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)~ GOTO 9
  IF ~CheckStatLT(LastTalkedToBy,17,INT)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @33313 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21790 DO ~AddXP2DA("IW2EX8VH")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@21758)
                                                                AddJournalEntry(@21698,QUEST)~ GOTO 8
  IF ~!CheckStatGT(LastTalkedToBy,16,CON)~ THEN REPLY @21790 GOTO 9
  IF ~~ THEN REPLY @30546 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @33314
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @33571
  IF ~RandomNum(4,1)~ THEN DO ~ReallyForceSpell(LastTalkedToBy,WIZARD_CONE_OF_COLD)~ EXIT //WIZARD_GEDLEES_ELECTRIC_LOOP
  IF ~RandomNum(4,2)~ THEN DO ~ReallyForceSpell(LastTalkedToBy, WIZARD_CHAIN_LIGHTNING)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ReallyForceSpell(LastTalkedToBy,WIZARD_ICE_STORM)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ReallyForceSpell(LastTalkedToBy, WIZARD_LIGHTNING_BOLT)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @33572
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 11
  SAY @33573
  IF ~~ THEN DO ~AddXP2DA("IW2EX8VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@21767)
                 AddJournalEntry(@21724,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 12
  SAY @33574
  IF ~~ THEN REPLY @30546 DO ~SetGlobal("PlayerKnowsMe","LOCALS",1)~ GOTO 9
END

IF ~~ THEN BEGIN 13
  SAY @33576
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
                 SetGlobal("41TempestDieRequest","MYAREA",1)
                 SetGlobal("41TempestSaidName","GLOBAL",1)~ EXIT
END
