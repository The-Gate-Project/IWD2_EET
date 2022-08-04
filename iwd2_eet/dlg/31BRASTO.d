BEGIN ~31BRASTO~

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("30brasto_escape","GLOBAL",0)~ THEN BEGIN 0
  SAY @640
  IF ~~ THEN REPLY @644 GOTO 1
  IF ~~ THEN REPLY @645 GOTO 2
  IF ~~ THEN REPLY @685 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @688
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 2
  SAY @691
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 3
  SAY @693
  IF ~~ THEN REPLY @694 GOTO 13
  IF ~~ THEN REPLY @696 GOTO 13
END

IF ~~ THEN BEGIN 4
  SAY @697
  IF ~~ THEN REPLY @698 GOTO 5
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 22
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 11
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @702 GOTO 14
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @704
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699  GOTO 22
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 11
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @702 GOTO 14
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @705
  IF ~False()~ THEN REPLY @706 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @707 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @708 GOTO 20
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @709
  IF ~False()~ THEN REPLY @706 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @707 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @708 GOTO 20
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @710
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @711
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @712
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @713 GOTO 11
  IF ~~ THEN REPLY @714 GOTO 5
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~~ THEN REPLY @716 GOTO 20
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @702 GOTO 14
  IF ~~ THEN REPLY @717 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @718
  IF ~~ THEN REPLY @714 DO ~AddJournalEntry(@636,QUEST)~ GOTO 5
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)
                                                               AddJournalEntry(@636,QUEST)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 DO ~AddJournalEntry(@636,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @719 DO ~AddJournalEntry(@636,QUEST)~ GOTO 20
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @702 DO ~AddJournalEntry(@636,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @720 DO ~AddJournalEntry(@636,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @721
  IF ~~ THEN REPLY @722 GOTO 3
  IF ~~ THEN REPLY @694 GOTO 13
  IF ~!Global("SPRITE_IS_DEADEnnelia","GLOBAL",0)~ THEN REPLY @723 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @724
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @725 DO ~SetGlobal("30brasto_Nodes","GLOBAL",3)
                                                                        AddJournalEntry(@635,QUEST)~ FLAGS 0x200 GOTO 4 /*true*/
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @726 DO ~AddJournalEntry(@635,QUEST)~ GOTO 29
END

IF ~~ THEN BEGIN 14
  SAY @727
  IF ~~ THEN REPLY @728 GOTO 15
  IF ~~ THEN REPLY @735 GOTO 20
END

IF ~~ THEN BEGIN 15
  SAY @5012
  IF ~~ THEN REPLY @5014 DO ~SetGlobal("30brasto_escape","GLOBAL",1)
                             SetGlobal("Braston_Paused_State","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @5015 GOTO 20
END

IF WEIGHT #4
~GlobalGT("30brasto_escape","GLOBAL",0)
 GlobalLT("30brasto_escape","GLOBAL",4)~ THEN BEGIN 16
  SAY @5016
  IF ~~ THEN REPLY @5017 DO ~SetGlobal("Braston_Paused_State","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @5018 DO ~SetGlobal("Braston_Paused_State","GLOBAL",1)~ EXIT
END

IF WEIGHT #5
~Global("30brasto_escape","GLOBAL",4)
 Global("SPRITE_IS_DEADEnnelia","GLOBAL",0)~ THEN BEGIN 17
  SAY @5019
  IF ~!Global("30enneli_nodes","GLOBAL",1)~ THEN REPLY @5020 EXTERN ~30ENNELI~ 34
  IF ~Global("30enneli_nodes","GLOBAL",1)~ THEN REPLY @5020 EXTERN ~30ENNELI~ 35
END

IF WEIGHT #6
~Global("30brasto_escape","GLOBAL",4)
 Global("Braston_Knows_Ennelia_Dead","GLOBAL",1)
 !Global("SPRITE_IS_DEADEnnelia","GLOBAL",0)~ THEN BEGIN 18
  SAY @5021
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @5022
  IF ~~ THEN REPLY @717 DO ~AddXP2DA("IW2EX6A")
                            DisplayStringNoNameDlg(LastTalkedToBy,@639)
                            SetGlobal("30enneli_nodes","GLOBAL",2)
                            SetGlobal("Braston_Ennelia_Leave","GLOBAL",1)
                            SetGlobal("BRASTON_KNOWS_ENELIA_DEAD","GLOBAL",1)
                            EraseJournalEntry(@16065)
                            EraseJournalEntry(@16067)
                            AddJournalEntry(@637,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @12654
  IF ~~ THEN REPLY @698 GOTO 5
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 22
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 11
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @702 GOTO 14
  IF ~~ THEN REPLY @703 EXIT
END

IF WEIGHT #8
~NumTimesTalkedToGT(0)~ THEN BEGIN 21
  SAY @12656
  IF ~~ THEN REPLY @698 GOTO 5
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 22
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 11
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @12657 GOTO 14
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @12658
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @15985
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @15987
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @713 GOTO 11
  IF ~~ THEN REPLY @714 GOTO 25
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 6
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 7
  IF ~~ THEN REPLY @716 GOTO 20
  IF ~~ THEN REPLY @717 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @704
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 22
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 26
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 27
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 28
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @718
  IF ~~ THEN REPLY @714 DO ~AddJournalEntry(@636,QUEST)~ GOTO 25
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)
                                                               AddJournalEntry(@636,QUEST)~ GOTO 27
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 DO ~AddJournalEntry(@636,QUEST)~ GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @705
  IF ~False()~ THEN REPLY @706 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @707 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @15989 GOTO 29
  IF ~~ THEN REPLY @16047 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @709
  IF ~False()~ THEN REPLY @706 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @707 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @708 GOTO 29
  IF ~~ THEN REPLY @703 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @12654
  IF ~~ THEN REPLY @698 GOTO 25
  IF ~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 22
  IF ~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)~ THEN REPLY @699 GOTO 8
  IF ~GlobalGT("31guthma_CS","GLOBAL",0)~ THEN REPLY @700 GOTO 26
  IF ~Global("30brasto_Nodes","GLOBAL",0)~ THEN REPLY @701 DO ~SetGlobal("30brasto_Nodes","GLOBAL",1)~ GOTO 27
  IF ~Global("30brasto_Nodes","GLOBAL",1)~ THEN REPLY @701 GOTO 28
  IF ~~ THEN REPLY @703 EXIT
END

IF WEIGHT #3
~Global("Braston_Paused_State","GLOBAL",2)
 GlobalGT("30brasto_escape","GLOBAL",0)
 GlobalLT("30brasto_escape","GLOBAL",4)~ THEN BEGIN 30
  SAY @16053
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~Global("30brasto_escape","GLOBAL",4)
 !Global("Braston_Knows_Ennelia_Dead","GLOBAL",1)
 !Global("SPRITE_IS_DEADEnnelia","GLOBAL",0)~ THEN BEGIN 31
  SAY @16055
  IF ~~ THEN REPLY @16057 GOTO 19
  IF ~~ THEN REPLY @33423 DO ~Enemy()~ EXIT
END

IF WEIGHT #2
~Global("Braston_Ennelia_Leave","GLOBAL",1)
 !Global("BRASTON_KNOWS_ENELIA_DEAD","GLOBAL",1)~ THEN BEGIN 32
  SAY @33424
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("Braston_Ennelia_Leave","GLOBAL",1)
 Global("BRASTON_KNOWS_ENELIA_DEAD","GLOBAL",1)~ THEN BEGIN 33
  SAY @39460
  IF ~~ THEN EXIT
END
