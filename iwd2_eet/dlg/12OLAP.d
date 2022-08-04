BEGIN ~12OLAP~

IF WEIGHT #6
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18630
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @18631 DO ~SetGlobal("Know_Olap","GLOBAL",1)
                                                               AddJournalEntry(@15593,QUEST)~ GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @23449 DO ~SetGlobal("Know_Olap","GLOBAL",1)
                                                               AddJournalEntry(@15592,QUEST)~ EXIT
END

IF WEIGHT #7
~GlobalLT("Lumber_Quest","GLOBAL",2)~ THEN BEGIN 1
  SAY @23450
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @24089 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @23449 DO ~AddJournalEntry(@15592,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24090
  IF ~~ THEN REPLY @24091 DO ~SetGlobal("Lumber_Quest","GLOBAL",2)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @24529
  IF ~~ THEN REPLY @24530 GOTO 4
  IF ~~ THEN REPLY @25150 GOTO 5
  IF ~~ THEN REPLY @25163 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @25167
  IF ~~ THEN REPLY @25172 DO ~AddJournalEntry(@15595,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @25175
  IF ~Global("Know_Crane_Broke","GLOBAL",1)~ THEN REPLY @25177 GOTO 9
  IF ~Global("Know_Lumbar","GLOBAL",1)
      Global("Know_Crane_Broke","GLOBAL",0)~ THEN REPLY @25178 GOTO 6
  IF ~Global("Know_Lumbar","GLOBAL",0)~ THEN REPLY @25183 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @25202
  IF ~~ THEN REPLY @25210 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25214
  IF ~~ THEN REPLY @25210 EXIT
END

IF WEIGHT #8
~Global("Lumber_Quest","GLOBAL",2)~ THEN BEGIN 8
  SAY @25218
  IF ~Global("Know_Crane_Broke","GLOBAL",1)~ THEN REPLY @25226 GOTO 9
  IF ~Global("Know_Crane_Broke","GLOBAL",0)~ THEN REPLY @25228 GOTO 7
  IF ~Global("Know_Crane_Broke","GLOBAL",0)~ THEN REPLY @25263 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25264
  IF ~~ THEN REPLY @25265 DO ~SetGlobal("Lumber_Quest","GLOBAL",3)
                              AddJournalEntry(@15693,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @25269 DO ~SetGlobal("Lumber_Quest","GLOBAL",3)
                              AddJournalEntry(@15693,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @25270
  IF ~!Global("SPRITE_IS_DEADJorun","GLOBAL",0)~ THEN REPLY @25271 DO ~SetGlobal("Lumber_Quest_Aborted","GLOBAL",1)
                                                                       AddJournalEntry(@17060,QUEST)~ GOTO 11
  IF ~Global("SPRITE_IS_DEADJorun","GLOBAL",0)~ THEN REPLY @25272 GOTO 12
  IF ~Global("SPRITE_IS_DEADJorun","GLOBAL",0)~ THEN REPLY @25273 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @25274
  IF ~~ THEN REPLY @25275 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @25276
  IF ~~ THEN REPLY @25277 GOTO 13
  IF ~~ THEN REPLY @25278 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @25279
  IF ~Global("Know_Swift_Thomas","GLOBAL",1)~ THEN REPLY @34606 DO ~SetGlobal("Thomas_Permission","GLOBAL",1)~ GOTO 14
  IF ~Global("Know_Swift_Thomas","GLOBAL",0)~ THEN REPLY @25280 DO ~SetGlobal("Thomas_Permission","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @25281 DO ~SetGlobal("Thomas_Permission","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @25282
  IF ~~ THEN REPLY @25283 EXIT
END

IF WEIGHT #9
~GlobalGT("Lumber_Quest","GLOBAL",1)
 Global("Crane_Wheel","GLOBAL",0)
 Global("Lumber_Quest_Aborted","GLOBAL",0)~ THEN BEGIN 15
  SAY @25284
  IF ~~ THEN REPLY @25263 GOTO 16
  IF ~Global("Thomas_Permission","GLOBAL",1)~ THEN REPLY @25285 GOTO 14
  IF ~PartyHasItem("z1gencrw")~ THEN REPLY @25286 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @25299
  IF ~GlobalLT("Lumber_Quest","GLOBAL",3)~ THEN REPLY @25300 EXIT
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @25301 EXIT
  IF ~~ THEN REPLY @25302 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @25303
  IF ~~ THEN REPLY @25622 EXIT
END

IF WEIGHT #10
~GlobalGT("Crane_Wheel","GLOBAL",0)
 Global("Lumber_Quest_Aborted","GLOBAL",0)~ THEN BEGIN 18
  SAY @25624
  IF ~~ THEN REPLY @25625 DO ~AddJournalEntry(@15694,QUEST)~ EXIT
END

IF WEIGHT #11
~Global("Lumber_Quest_Aborted","GLOBAL",1)~ THEN BEGIN 19
  SAY @25626
  IF ~~ THEN REPLY @25275 EXIT
END

IF WEIGHT #5
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 20
  SAY @25627
  IF ~~ THEN REPLY @25628 EXIT
END

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 21
  SAY @25629
  IF ~~ THEN REPLY @25630 GOTO 23
  IF ~~ THEN REPLY @25631 GOTO 23
END

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN BEGIN 22
  SAY @25632
  IF ~~ THEN REPLY @25634 GOTO 23
  IF ~~ THEN REPLY @25635 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @25636
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @18631 DO ~AddJournalEntry(@15593,QUEST)~ GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @23449 DO ~AddJournalEntry(@15592,QUEST)~ EXIT
END

IF WEIGHT #4
~NumberOfTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))~ THEN BEGIN 24
  SAY @25637
  IF ~~ THEN REPLY @25640 GOTO 25
  IF ~~ THEN REPLY @25641 GOTO 25
  IF ~~ THEN REPLY @25642 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @25643
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @18631 DO ~AddJournalEntry(@15593,QUEST)~ GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @23449 DO ~AddJournalEntry(@15592,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @25644
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @18631 DO ~AddJournalEntry(@15593,QUEST)~ GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @23449 DO ~AddJournalEntry(@15592,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 27
  SAY @31742
  IF ~~ THEN REPLY @31743 EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 28
  SAY @31744
  IF ~~ THEN EXIT
END
