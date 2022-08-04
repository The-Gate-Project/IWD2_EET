BEGIN ~12DRILL~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24284
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @24285 GOTO 1
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @24286 GOTO 2
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @24287 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24288 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24289 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @24290 GOTO 4
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @38745 GOTO 4
  IF ~~ THEN REPLY @24291 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @24292
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24288 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24289 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @24290 GOTO 4
  IF ~~ THEN REPLY @24293 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27159
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24288 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24289 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @24290 GOTO 4
  IF ~~ THEN REPLY @27160 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @27355
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24288 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24289 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @24290 GOTO 4
  IF ~~ THEN REPLY @27160 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @28355
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @28555 DO ~AddXP2DA("IW2EX2E")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                          SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                          AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @28575 DO ~AddXP2DA("IW2EX2E")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                          SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                          AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28577 DO ~AddXP2DA("IW2EX2E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                        SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                        AddJournalEntry(@24278,QUEST)~ GOTO 6
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38748 DO ~AddXP2DA("IW2EX2E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                           SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                           AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38749 DO ~AddXP2DA("IW2EX2E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                              SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                              AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38750 DO ~AddXP2DA("IW2EX2E")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                         SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                         AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38751 DO ~AddXP2DA("IW2EX2E")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                         SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                         AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38752 DO ~AddXP2DA("IW2EX2E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                        SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                        AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38753 DO ~AddXP2DA("IW2EX2E")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                          SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                          AddJournalEntry(@24278,QUEST)~ GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @50005 DO ~AddXP2DA("IW2EX2E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                                  SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                                  AddJournalEntry(@24278,QUEST)~ GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @50005 DO ~AddXP2DA("IW2EX2E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@24281)
                                                                  SetGlobal("Recruit_Blessing","GLOBAL",1)
                                                                  AddJournalEntry(@24278,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @28578
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @28579 EXIT
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @28580 EXIT
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38754 EXIT
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38755 EXIT
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38756 EXIT
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38757 EXIT
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38758 EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @50006 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @28582
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @28583 EXIT
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28584 EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,GODTALOS)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28584 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @28585
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28586 DO ~AddXP2DA("IW2EX2E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@24282)
                                                                  SetGlobal("Recruit_Inspired","GLOBAL",1)
                                                                  AddJournalEntry(@24279,QUEST)~ GOTO 8
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28587 DO ~AddXP2DA("IW2EX2E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@24282)
                                                                 SetGlobal("Recruit_Inspired","GLOBAL",1)
                                                                 AddJournalEntry(@24280,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @28588
  IF ~~ THEN REPLY @28589 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28590
  IF ~~ THEN REPLY @28591 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @28592
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @24285 GOTO 1
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @24286 GOTO 2
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @24287 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24288 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Recruit_Inspired","GLOBAL",0)~ THEN REPLY @24289 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("Recruit_Blessing","GLOBAL",0)~ THEN REPLY @24290 GOTO 4
  IF ~~ THEN REPLY @24291 EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 11
  SAY @28593
  IF ~~ THEN REPLY @28594 EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 12
  SAY @28595
  IF ~~ THEN REPLY @28596 EXIT
END
