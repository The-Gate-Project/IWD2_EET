BEGIN ~40ODEA~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18562
  IF ~~ THEN REPLY @18579 GOTO 1
  IF ~~ THEN REPLY @18580 GOTO 4
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @18581 GOTO 4
  IF ~~ THEN REPLY @18582 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @18584 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @18587
  IF ~!Global("40OdeaMentionedIllium","GLOBAL",1)~ THEN REPLY @18588 DO ~SetGlobal("40OdeaMentionedIllium","GLOBAL",1)~ GOTO 2
  IF ~Global("40OdeaMentionedIllium","GLOBAL",1)~ THEN REPLY @18589 GOTO 2
  IF ~!Global("40OdeaExplainedAndora","GLOBAL",1)~ THEN REPLY @18590 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
  IF ~Global("40OdeaExplainedAndora","GLOBAL",1)~ THEN REPLY @18605 GOTO 5
  IF ~~ THEN REPLY @18611 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @18612
  IF ~CheckStatGT(LastTalkedToBy,15,WIS) //6 Diplomacy
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @18616 DO ~SetGlobal("40OdeaMadeOffer","GLOBAL",1)~ GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,15,CON) //6 Intimidate
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @18624 GOTO 13
  IF ~~ THEN REPLY @18817 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @18824 GOTO 4
  IF ~~ THEN REPLY @18611 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @18832
  IF ~InPartySlot(LastTalkedToBy,0)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,1)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea2")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,2)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea3")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,3)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea4")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,4)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea5")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,5)~ THEN REPLY @18834 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea6")~ EXIT
  IF ~~ THEN REPLY @21928 DO ~SetGlobal("40OdeaMadeOffer","GLOBAL",3)~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @21929
  IF ~~ THEN REPLY @21932 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @18582 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @21933
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @21934 DO ~SetGlobal("40OdeaMadeOffer","GLOBAL",1)~ GOTO 3
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @21942 GOTO 10
  IF ~~ THEN REPLY @21945 GOTO 11
  IF ~~ THEN REPLY @22008 GOTO 8
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @32846 GOTO 14
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @32847 GOTO 15
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @40029 GOTO 16
  IF ~~ THEN REPLY @40030 GOTO 17
END

IF ~~ THEN BEGIN 6
  SAY @40031
  IF ~~ THEN DO ~SetGlobal("40ReturnToLedge","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @40033
  IF ~~ THEN REPLY @40034 DO ~AddJournalEntry(@18561,QUEST)~ GOTO 18
END

IF ~~ THEN BEGIN 8
  SAY @40035
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @40036 DO ~SetGlobal("40OdeaMadeOffer","GLOBAL",1)~ GOTO 3
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @21942 GOTO 10
  IF ~~ THEN REPLY @21945 GOTO 11
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @32846 GOTO 14
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @32847 GOTO 15
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @40029 GOTO 16
  IF ~~ THEN REPLY @40030 GOTO 17
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @40037
  IF ~Global("40OdeaMentionedIllium","GLOBAL",1)~ THEN REPLY @40038 GOTO 2
  IF ~Global("40OdeaMadeOffer","GLOBAL",1)
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @40039 GOTO 3
  IF ~!Global("40OdeaExplainedAndora","GLOBAL",1)~ THEN REPLY @40040 DO ~SetGlobal("40OdeaExplainedAndora","GLOBAL",1)~ GOTO 5
  IF ~Global("40OdeaExplainedAndora","GLOBAL",1)~ THEN REPLY @40041 GOTO 5
  IF ~~ THEN REPLY @40042 GOTO 10
  IF ~~ THEN REPLY @40043 GOTO 6
  IF ~~ THEN REPLY @40044 GOTO 17
END

IF ~~ THEN BEGIN 10
  SAY @40045
  IF ~~ THEN DO ~AddJournalEntry(@18539,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @40046
  IF ~~ THEN DO ~AddJournalEntry(@18539,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @40047
  IF ~~ THEN REPLY @40034 DO ~SetGlobal("40KnowCult","GLOBAL",1)~ FLAGS 0x200 GOTO 18 /*true*/
END

IF ~~ THEN BEGIN 13
  SAY @40048
  IF ~InPartySlot(LastTalkedToBy,0)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,1)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea2")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,2)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea3")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,3)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea4")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,4)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea5")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,5)~ THEN REPLY @40049 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea6")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @40050
  IF ~~ THEN REPLY @40051 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,13,CON) //3 Intimidate
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @40052 GOTO 13
  IF ~CheckStatGT(LastTalkedToBy,13,CHR) //3 Diplomacy
      Global("SPRITE_IS_DEADIllium","GLOBAL",0)~ THEN REPLY @40053 GOTO 19
  IF ~~ THEN REPLY @40054 GOTO 6
END

IF ~~ THEN BEGIN 15
  SAY @40055
  IF ~~ THEN REPLY @40056 GOTO 6
  IF ~~ THEN REPLY @40057 GOTO 13
  IF ~~ THEN REPLY @40058 GOTO 18
END

IF ~~ THEN BEGIN 16
  SAY @40059
  IF ~~ THEN REPLY @40060 DO ~SetGlobal("40OdeaMadeOffer","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @40061 GOTO 6
  IF ~~ THEN REPLY @40062 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @40064
  IF ~~ THEN REPLY @40065 DO ~SetGlobal("40ReturnToLedge","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @40066
  IF ~~ THEN REPLY @18579 GOTO 1
  IF ~Global("40OdeaMentionedIllium","GLOBAL",1)~ THEN REPLY @18589 GOTO 2
  IF ~Global("40OdeaExplainedAndora","GLOBAL",1)~ THEN REPLY @40041 GOTO 5
  IF ~~ THEN REPLY @40067 GOTO 10
  IF ~Global("40KnowCult","GLOBAL",1)~ THEN REPLY @40068 DO ~SetGlobal("40KnowCult","GLOBAL",2)~ GOTO 7
  IF ~~ THEN REPLY @40065 DO ~SetGlobal("40ReturnToLedge","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @40069
  IF ~InPartySlot(LastTalkedToBy,0)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,1)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea2")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,2)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea3")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,3)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea4")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,4)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea5")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,5)~ THEN REPLY @40070 DO ~ClearAllActions()
                                                           StartCutSceneMode()
                                                           StartCutScene("40cOdea6")~ EXIT
END

IF WEIGHT #0
~Global("40Illium_Perm","GLOBAL",1)~ THEN BEGIN 20
  SAY @41338
  IF ~~ THEN EXIT
END
