BEGIN ~10BROGAN~

IF WEIGHT #6
~True()~ THEN BEGIN 0
  SAY @27698
  IF ~~ THEN REPLY @27702 DO ~SetGlobal("Know_Brogan","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @27703 DO ~SetGlobal("Know_Brogan","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @27704
  IF ~~ THEN DO ~AddJournalEntry(@27682,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @27706
  IF ~Global("Know_Iron_Collar","GLOBAL",0)
      !Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27707 GOTO 3
  IF ~Global("Know_Iron_Collar","GLOBAL",0)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27708 GOTO 3
  IF ~Global("Know_Iron_Collar","GLOBAL",1)
      !Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27709 GOTO 3
  IF ~Global("Know_Iron_Collar","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27710 GOTO 3
  IF ~Global("Know_Iron_Collar","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27711 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @27712
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @27713
  IF ~!Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27714 GOTO 8
  IF ~!Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27715 GOTO 8
  IF ~Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27716 GOTO 7
  IF ~Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27717 DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",1)~ GOTO 5
  IF ~Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27718 DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",1)
                                                                               AddJournalEntry(@27686,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27719
  IF ~~ THEN REPLY @27720 DO ~AddJournalEntry(@27686,QUEST)~ EXIT
END

IF WEIGHT #1
~GlobalGT("Iron_Collar_Quest","GLOBAL",0)
 GlobalLT("Iron_Collar_Quest","GLOBAL",3)
 Global("Brogan_Quest","GLOBAL",0)
 Global("IW1002_Visited","GLOBAL",0)~ THEN BEGIN 6
  SAY @27721
  IF ~!Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27714 GOTO 8
  IF ~!Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27715 GOTO 8
  IF ~Global("Iron_Collar_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27722 DO ~AddXP2DA("IW2EX1E")
                                                                               DisplayStringNoNameDlg(LastTalkedToBy,@27693)
                                                                               SetGlobal("Iron_Collar_Quest","GLOBAL",3)
                                                                               AddJournalEntry(@27683,QUEST)~ GOTO 8
  IF ~Global("Iron_Collar_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27723 DO ~AddXP2DA("IW2EX1E")
                                                                               DisplayStringNoNameDlg(LastTalkedToBy,@27693)
                                                                               SetGlobal("Iron_Collar_Quest","GLOBAL",3)
                                                                               AddJournalEntry(@27683,QUEST)~ GOTO 8
  IF ~GlobalLT("Iron_Collar_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27724 GOTO 7
  IF ~GlobalLT("Iron_Collar_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @27725 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @27726
  IF ~CheckStatGT(LastTalkedToBy,13,STR)~ THEN REPLY @27727 DO ~AddXP2DA("IW2EX1E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@27695)
                                                                AddJournalEntry(@27684,QUEST)~ GOTO 8
  IF ~Global("Iron_Collar_Quest","GLOBAL",0)~ THEN REPLY @27717 DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",1)~ GOTO 5
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @27728 DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @27718 DO ~SetGlobal("Iron_Collar_Quest","GLOBAL",1)
                              AddJournalEntry(@27686,QUEST)~ EXIT
  IF ~Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @27729 DO ~AddXP2DA("IW2EX1E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@27695)
                                                                   AddJournalEntry(@27684,QUEST)~ GOTO 8
  IF ~Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @27730 DO ~AddXP2DA("IW2EX1E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@27695)
                                                                   AddJournalEntry(@27684,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @27731
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @27732 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @27733 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @27734
  IF ~~ THEN REPLY @27735 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @27736 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ EXIT
END

IF WEIGHT #5
~Global("Brogan_Quest","GLOBAL",1)~ THEN BEGIN 10
  SAY @27737
  IF ~Global("IW1002_Visited","GLOBAL",0)~ THEN REPLY @27738 EXIT
  IF ~Global("IW1002_Visited","GLOBAL",1)
      Global("AR1002_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @27739 EXIT
  IF ~Global("AR1002_GOBLINS_CLEAR","GLOBAL",1)~ THEN REPLY @27740 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @27869
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27870 GOTO 12
  IF ~~ THEN REPLY @27871 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @27884
  IF ~~ THEN REPLY @27871 EXIT
END

IF WEIGHT #4
~Global("Brogan_Quest","GLOBAL",1)
 Global("IW1002_Visited","GLOBAL",1)
 Global("IW1007_Visited","GLOBAL",1)~ THEN BEGIN 13
  SAY @27885
  IF ~Global("AR1007_GOBLINS_CLEAR","GLOBAL",1)~ THEN REPLY @28015 GOTO 14
  IF ~Global("AR1007_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28016 EXIT
  IF ~Global("AR1007_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28017 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @28018
  IF ~!PartyHasItem("z1vellum")~ THEN REPLY @28019 GOTO 15
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @28020 GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY @28021
  IF ~~ THEN DO ~AddXP2DA("IW2EX1A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@27697)
                 EraseJournalEntry(@27682)
                 EraseJournalEntry(@27686)
                 EraseJournalEntry(@27683)
                 EraseJournalEntry(@27684)
                 AddJournalEntry(@27685,QUEST)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @28022
  IF ~~ THEN REPLY @28023 DO ~SetGlobal("Brogan_Quest","GLOBAL",2)~ GOTO 17
  IF ~~ THEN REPLY @28024 DO ~SetGlobal("Brogan_Quest","GLOBAL",2)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @28025
  IF ~~ THEN REPLY @28026 DO ~SetGlobal("Brogan_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #3
~Global("IW1002_Visited","GLOBAL",1)
 Global("Know_Brogan","GLOBAL",0)~ THEN BEGIN 18
  SAY @28217
  IF ~Global("AR1002_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28218 EXIT
  IF ~Global("AR1002_GOBLINS_CLEAR","GLOBAL",1)
      Global("IW1007_Visited","GLOBAL",0)~ THEN REPLY @28219 GOTO 11
  IF ~Global("IW1007_Visited","GLOBAL",1)
      Global("AR1007_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28220 EXIT
  IF ~Global("AR1007_GOBLINS_CLEAR","GLOBAL",1)~ THEN REPLY @28221 GOTO 14
END

IF WEIGHT #0
~Global("Brogan_Leave","GLOBAL",1)~ THEN BEGIN 19
  SAY @28222
  IF ~~ THEN REPLY @28023 GOTO 17
  IF ~~ THEN REPLY @28024 EXIT
END

IF WEIGHT #2
~GlobalGT("Iron_Collar_Quest","GLOBAL",0)
 GlobalLT("Iron_Collar_Quest","GLOBAL",3)
 Global("Brogan_Quest","GLOBAL",0)
 Global("IW1002_Visited","GLOBAL",1)~ THEN BEGIN 20
  SAY @28217
  IF ~Global("AR1002_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28223 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ EXIT
  IF ~Global("AR1002_GOBLINS_CLEAR","GLOBAL",1)
      Global("IW1007_Visited","GLOBAL",0)~ THEN REPLY @28224 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ GOTO 11
  IF ~Global("IW1007_Visited","GLOBAL",1)
      Global("AR1007_GOBLINS_CLEAR","GLOBAL",0)~ THEN REPLY @28225 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ EXIT
  IF ~Global("AR1007_GOBLINS_CLEAR","GLOBAL",1)~ THEN REPLY @28221 DO ~SetGlobal("Brogan_Quest","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 21
  SAY @28226
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @28417
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Class(LastTalkedToBy,SORCERER)~ THEN REPLY @28418 EXIT
  IF ~Class(LastTalkedToBy,SORCERER)~ THEN REPLY @28419 EXIT
  IF ~!Class(LastTalkedToBy,MAGE_ALL)
      !Class(LastTalkedToBy,SORCERER)~ THEN REPLY @28420 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @28421
  IF ~~ THEN DO ~AddXP2DA("IW2EX1A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@27697)
                 EraseJournalEntry(@27682)
                 EraseJournalEntry(@27686)
                 EraseJournalEntry(@27683)
                 EraseJournalEntry(@27684)
                 AddJournalEntry(@27685,QUEST)~ GOTO 16
END
