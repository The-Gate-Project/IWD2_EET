BEGIN ~10JORUN~

IF WEIGHT #9
~Global("Know_Jorun","GLOBAL",0)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @15380
  IF ~~ THEN REPLY @15381 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @15384
  IF ~~ THEN REPLY @15385 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @15386
  IF ~~ THEN REPLY @15387 GOTO 3
  IF ~~ THEN REPLY @15388 GOTO 3
  IF ~~ THEN REPLY @15389 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @15390
  IF ~Global("Jorun_Rest","GLOBAL",0)~ THEN REPLY @15394 GOTO 25
  IF ~~ THEN REPLY @15389 GOTO 4
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15395 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15396 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15397
  IF ~Global("Brogan_Quest","GLOBAL",2)~ THEN REPLY @15398 GOTO 9
  IF ~~ THEN REPLY @15399 DO ~AddJournalEntry(@15154,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @15400
  IF ~Global("Jorun_Rest","GLOBAL",0)~ THEN REPLY @15394 GOTO 25
  IF ~~ THEN REPLY @15401 DO ~SetGlobal("Ask_Caves","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @15402 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @15406
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @15439
  IF ~~ THEN REPLY @15457 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15458
  IF ~Global("Jorun_Rest","GLOBAL",0)~ THEN REPLY @15394 GOTO 25
  IF ~Global("Ask_Caves","GLOBAL",0)~ THEN REPLY @15459 DO ~SetGlobal("Ask_Caves","GLOBAL",1)~ GOTO 6
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15460 DO ~SetGlobal("Ask_Caves","GLOBAL",0)
                                                             SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15461 DO ~SetGlobal("Ask_Caves","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15462
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @15463
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @15464
  IF ~~ THEN REPLY @15399 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @15466
  IF ~Global("Jorun_Rest","GLOBAL",0)~ THEN REPLY @15394 GOTO 25
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15468 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15469 EXIT
END

IF WEIGHT #8
~Global("Know_Jorun","GLOBAL",1)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 13
  SAY @15470
  IF ~Global("Jorun_Rest","GLOBAL",0)~ THEN REPLY @15394 GOTO 25
  IF ~~ THEN REPLY @15471 GOTO 4
  IF ~~ THEN REPLY @15472 EXIT
END

IF WEIGHT #10
~Global("Know_Jorun","GLOBAL",0)
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 14
  SAY @15473
  IF ~~ THEN REPLY @15474 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @15475
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @15476 GOTO 21
  IF ~~ THEN REPLY @15477 GOTO 16
  IF ~~ THEN REPLY @15478 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @15479
  IF ~~ THEN REPLY @15480 GOTO 17
  IF ~~ THEN REPLY @15478 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @15481
  IF ~~ THEN REPLY @15482 GOTO 18
  IF ~~ THEN REPLY @15483 GOTO 18
  IF ~~ THEN REPLY @15484 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @15485
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @15486
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @15487 GOTO 21
  IF ~~ THEN REPLY @15503 EXIT
END

IF WEIGHT #11
~Global("Know_Jorun","GLOBAL",1)
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 20
  SAY @15504
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @15487 GOTO 21
  IF ~~ THEN REPLY @15480 GOTO 17
  IF ~~ THEN REPLY @15507 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @15508
  IF ~~ THEN REPLY @15509 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @15510
  IF ~~ THEN REPLY @15511 DO ~SetGlobal("Lumber_Quest","GLOBAL",4)
                              GiveItemCreate("z1gencrw",LastTalkedToBy,0,0,0)
                              AddJournalEntry(@15159,QUEST)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @15512
  IF ~~ THEN REPLY @15513 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @15514
  IF ~~ THEN REPLY @15515 DO ~SetGlobal("Jorun_Help","GLOBAL",1)
                              SetGlobal("Ask_Caves","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @15516
  IF ~~ THEN REPLY @15519 DO ~SetGlobal("Jorun_Rest","GLOBAL",1)
                              SetGlobal("Ask_Caves","GLOBAL",0)
                              AddJournalEntry(@15164,QUEST_DONE)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @15521
  IF ~PartyHasItem("HELM08")~ THEN REPLY @15522 GOTO 27
  IF ~PartyHasItem("HELM08")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15523 GOTO 28
  IF ~!PartyHasItem("HELM08")~ THEN REPLY @15524 GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @15525
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15526 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15526 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @15528
  IF ~!PartyHasItem("HELM08")~ THEN REPLY @15532 GOTO 29
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15538 GOTO 29
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15539 GOTO 36
END

IF ~~ THEN BEGIN 29
  SAY @15540
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15541 GOTO 30
  IF ~~ THEN REPLY @15542 GOTO 4
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15526 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15526 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @15543
  IF ~~ THEN REPLY @15542 GOTO 4
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15526 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15526 EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 31
  SAY @15582
  IF ~~ THEN REPLY @15583 GOTO 33
  IF ~~ THEN REPLY @15584 GOTO 33
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 32
  SAY @27202
  IF ~~ THEN REPLY @27203 GOTO 33
  IF ~~ THEN REPLY @15584 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @27205
  IF ~~ THEN REPLY @27206 DO ~SetGlobal("Jorun_Dwarf","GLOBAL",1)
                              SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 34
  IF ~~ THEN REPLY @27875 DO ~SetGlobal("Jorun_Dwarf","GLOBAL",1)
                              SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @27877
  IF ~~ THEN REPLY @15385 GOTO 2
END

IF WEIGHT #2
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 35
  SAY @28410
  IF ~~ THEN REPLY @15381 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 36
  SAY @28411
  IF ~~ THEN REPLY @15542 GOTO 4
  IF ~Global("Jorun_Help","GLOBAL",0)~ THEN REPLY @15526 DO ~SetGlobal("Jorun_Help","GLOBAL",1)~ GOTO 24
  IF ~Global("Jorun_Help","GLOBAL",1)~ THEN REPLY @15526 EXIT
END

IF WEIGHT #4
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 37
  SAY @35298
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @35308 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @35309 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 16
END

IF WEIGHT #5
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 38
  SAY @35299
  IF ~Global("Lumber_Quest","GLOBAL",3)~ THEN REPLY @35306 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @35307 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 16
END

IF WEIGHT #6
~NumTimesTalkedTo(0)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 39
  SAY @35300
  IF ~~ THEN REPLY @35305 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 15
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,DWARF)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 40
  SAY @35301
  IF ~~ THEN REPLY @35304 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 1
END

IF WEIGHT #7
~NumTimesTalkedTo(0)
 Race(LastTalkedToBy,DWARF)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 41
  SAY @35302
  IF ~~ THEN REPLY @35303 DO ~SetGlobal("Know_Jorun","GLOBAL",1)~ GOTO 15
END
