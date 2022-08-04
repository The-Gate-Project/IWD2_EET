BEGIN ~10HEDRON~

IF WEIGHT #0
 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2579
  IF ~~ THEN REPLY @2580 GOTO 1
  IF ~~ THEN REPLY @2582 GOTO 2
  IF ~~ THEN REPLY @2583 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @2585
  IF ~~ THEN REPLY @2583 GOTO 3
  IF ~~ THEN REPLY @2587 GOTO 4
  IF ~~ THEN REPLY @2589 GOTO 7
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 2
  SAY @2593
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @2595
  IF ~~ THEN REPLY @2587 GOTO 4
  IF ~~ THEN REPLY @2589 GOTO 7
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 4
  SAY @2596
  IF ~~ THEN REPLY @2597 GOTO 7
  IF ~Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2598 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @2599
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @2600
  IF ~GlobalLT("Hedron_Quest","GLOBAL",4)~ THEN REPLY @2601 GOTO 13
  IF ~~ THEN REPLY @2602 GOTO 7
  IF ~~ THEN REPLY @2603 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2604
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 8
  SAY @2605
  IF ~~ THEN REPLY @2606 GOTO 9
  IF ~~ THEN REPLY @2607 GOTO 10
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 9
  SAY @2608
  IF ~~ THEN REPLY @2607 GOTO 10
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 10
  SAY @2609
  IF ~~ THEN REPLY @2610 GOTO 11
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 11
  SAY @2611
  IF ~~ THEN REPLY @2612 GOTO 17
END

IF ~~ THEN BEGIN 12
  SAY @2613
  IF ~Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2614 GOTO 15
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 13
  SAY @2615
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @2616
  IF ~Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2617 GOTO 15
  IF ~~ THEN REPLY @2591 GOTO 17
  IF ~GlobalGT("Know_Hedron","GLOBAL",0)~ THEN REPLY @2618 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @2620
  IF ~~ THEN REPLY @2621 GOTO 7
  IF ~~ THEN REPLY @2591 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @2622
  IF ~~ THEN REPLY @2591 GOTO 17
  IF ~~ THEN REPLY @2623 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @2625
  IF ~~ THEN REPLY @2626 DO ~AddJournalEntry(@739,QUEST)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @2627
  IF ~Global("Know_Hedron","GLOBAL",0)~ THEN REPLY @2629 GOTO 19
  IF ~Global("Know_Hedron","GLOBAL",1)~ THEN REPLY @2629 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @2630
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @2631
  IF ~~ THEN REPLY @2632 DO ~SetGlobal("Know_Hedron","GLOBAL",1)~ EXIT
END

IF WEIGHT #3
~GlobalGT("Reig_Quest","GLOBAL",0)
 Global("Dock_Goblin_Quest","GLOBAL",0)
 Global("Hedron_Know_Attack","GLOBAL",0)~ THEN BEGIN 21
  SAY @2633
  IF ~~ THEN REPLY @2634 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @2635 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",1)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @2636
  IF ~~ THEN REPLY @2637 DO ~AddJournalEntry(@2568,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @2638 DO ~AddJournalEntry(@2568,QUEST)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @2639
  IF ~!Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2640 DO ~SetGlobal("Hedron_Quest","GLOBAL",5)
                                                                              EraseJournalEntry(@2568)
                                                                              EraseJournalEntry(@467)
                                                                              EraseJournalEntry(@466)
                                                                              EraseJournalEntry(@754)
                                                                              AddJournalEntry(@2571,QUEST_DONE)~ GOTO 24
  IF ~GlobalGT("Hedron_Quest","GLOBAL",1)
      GlobalLT("Hedron_Quest","GLOBAL",4)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2641 DO ~AddXP2DA("IW2EX1E")
                                                                             DisplayStringNoNameDlg(LastTalkedToBy,@2578)
                                                                             SetGlobal("Hedron_Quest","GLOBAL",4)
                                                                             EraseJournalEntry(@2568)
                                                                             EraseJournalEntry(@467)
                                                                             EraseJournalEntry(@466)
                                                                             EraseJournalEntry(@754)
                                                                             AddJournalEntry(@2569,QUEST_DONE)~ GOTO 27
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("AR1004_GOBLINS_CLEAR","GLOBAL",1)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2642 DO ~SetGlobal("Hedron_Quest","GLOBAL",4)~ GOTO 25
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2643 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ GOTO 26
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2644 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)
                                                                             RestPartyEx(0,0,TRUE)~ EXIT
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2645 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @2646
  IF ~~ THEN REPLY @2648 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @2649
  IF ~~ THEN REPLY @2650 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@2578)
                             EraseJournalEntry(@2568)
                             EraseJournalEntry(@467)
                             EraseJournalEntry(@466)
                             EraseJournalEntry(@754)
                             AddJournalEntry(@2569,QUEST_DONE)~ GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @2669
  IF ~~ THEN REPLY @2670 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @2671 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @2672
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @2673 GOTO 29
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @2673 GOTO 29
  IF ~CheckStatLT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2674 DO ~GiveGoldForce(73)~ GOTO 28
  IF ~CheckStatGT(LastTalkedToBy,11,CHR)
      CheckStatLT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2674 DO ~GiveGoldForce(123)
                                                        GiveItem("MISC17",LastTalkedToBy)~ GOTO 28
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2674 DO ~GiveGoldForce(173)
                                                        GiveItem("MISC17",LastTalkedToBy)~ GOTO 28
  IF ~CheckStatLT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2675 DO ~GiveGoldForce(73)~ GOTO 29
  IF ~CheckStatGT(LastTalkedToBy,11,CHR)
      CheckStatLT(LastTalkedToBy,16, CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2675 DO ~GiveGoldForce(123)
                                                        GiveItem("MISC17",LastTalkedToBy)~ GOTO 29
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2675 DO ~GiveGoldForce(173)
                                                        GiveItem("MISC17",LastTalkedToBy)~ GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @2676
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @2677 EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @2678 EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2679 EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2680 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @2681
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @2682 EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @2683 EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2679 EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @2680 EXIT
END

IF WEIGHT #4
~GlobalGT("Reig_Quest","GLOBAL",0)
 GlobalLT("Hedron_Know_Attack","GLOBAL",2)~ THEN BEGIN 30
  SAY @2684
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Hedron_Know_Attack","GLOBAL",2)
      GlobalLT("Hedron_Quest","GLOBAL",4)~ THEN REPLY @2685 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",2)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Hedron_Know_Attack","GLOBAL",2)
      GlobalLT("Hedron_Quest","GLOBAL",4)~ THEN REPLY @17206 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",2)~ GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Hedron_Know_Attack","GLOBAL",2)
      GlobalGT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @17207 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",2)
                                                                 RestPartyEx(0,0,TRUE)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Hedron_Know_Attack","GLOBAL",2)
      GlobalGT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @17214 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",2)~ GOTO 35
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Hedron_Know_Attack","GLOBAL",2)
      GlobalGT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @18633 DO ~SetGlobal("Hedron_Know_Attack","GLOBAL",2)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @18634 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @20739 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @20740
  IF ~~ THEN REPLY @2637 GOTO 32
  IF ~~ THEN REPLY @20741 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @20742
  IF ~!Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2640 DO ~SetGlobal("Hedron_Quest","GLOBAL",5)
                                                                              EraseJournalEntry(@2568)
                                                                              EraseJournalEntry(@467)
                                                                              EraseJournalEntry(@466)
                                                                              EraseJournalEntry(@754)
                                                                              AddJournalEntry(@2571,QUEST_DONE)~ GOTO 24
  IF ~GlobalGT("Hedron_Quest","GLOBAL",1)
      GlobalLT("Hedron_Quest","GLOBAL",4)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2641 DO ~AddXP2DA("IW2EX1E")
                                                                             DisplayStringNoNameDlg(LastTalkedToBy,@2578)
                                                                             SetGlobal("Hedron_Quest","GLOBAL",4)
                                                                             EraseJournalEntry(@2568)
                                                                             EraseJournalEntry(@467)
                                                                             EraseJournalEntry(@466)
                                                                             EraseJournalEntry(@754)
                                                                             AddJournalEntry(@2569,QUEST_DONE)~ GOTO 27
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("AR1004_GOBLINS_CLEAR","GLOBAL",1)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2642 DO ~SetGlobal("Hedron_Quest","GLOBAL",4)~ GOTO 25
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2643 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ GOTO 26
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2644 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)
                                                                             RestPartyEx(0,0,TRUE)~ EXIT
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2645 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~GlobalGT("Hedron_Know_Attack","GLOBAL",0)
 GlobalGT("Hedron_Quest","GLOBAL",0)
 GlobalLT("Hedron_Quest","GLOBAL",4)~ THEN BEGIN 33
  SAY @20743
  IF ~!Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2640 DO ~SetGlobal("Hedron_Quest","GLOBAL",5)
                                                                              EraseJournalEntry(@2568)
                                                                              EraseJournalEntry(@467)
                                                                              EraseJournalEntry(@466)
                                                                              EraseJournalEntry(@754)
                                                                              AddJournalEntry(@2571,QUEST_DONE)~ GOTO 24
  IF ~GlobalGT("Hedron_Quest","GLOBAL",1)
      GlobalLT("Hedron_Quest","GLOBAL",4)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2641 DO ~AddXP2DA("IW2EX1E")
                                                                             DisplayStringNoNameDlg(LastTalkedToBy,@2578)
                                                                             SetGlobal("Hedron_Quest","GLOBAL",4)
                                                                             EraseJournalEntry(@2568)
                                                                             EraseJournalEntry(@467)
                                                                             EraseJournalEntry(@466)
                                                                             EraseJournalEntry(@754)
                                                                             AddJournalEntry(@2569,QUEST_DONE)~ GOTO 27
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("AR1004_GOBLINS_CLEAR","GLOBAL",1)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2642 DO ~SetGlobal("Hedron_Quest","GLOBAL",4)~ GOTO 25
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @20744 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ GOTO 26
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2644 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)
                                                                             RestPartyEx(0,0,TRUE)~ EXIT
  IF ~GlobalLT("Hedron_Quest","GLOBAL",2)
      Global("SPRITE_IS_DEADFirtha_Kerdos","GLOBAL",0)~ THEN REPLY @2645 DO ~SetGlobal("Hedron_Quest","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Reig_Quest","GLOBAL",0)~ THEN BEGIN 34
  SAY @21332
  IF ~~ THEN REPLY @2583 GOTO 3
  IF ~~ THEN REPLY @2587 GOTO 4
  IF ~~ THEN REPLY @21334 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @21335 GOTO 35
  IF ~Global("Reig_Quest","GLOBAL",0)~ THEN REPLY @27210 GOTO 37
  IF ~GlobalGT("Reig_Quest","GLOBAL",0)~ THEN REPLY @27210 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @27211
  IF ~~ THEN REPLY @27212 GOTO 36
  IF ~~ THEN REPLY @2618 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @27214
  IF ~GlobalLT("Hedron_Quest","GLOBAL",4)~ THEN REPLY @27215 GOTO 13
  IF ~~ THEN REPLY @2618 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @27216
  IF ~~ THEN REPLY @27217 EXIT
END

IF WEIGHT #5
~Global("Hedron_Know_Attack","GLOBAL",2)~ THEN BEGIN 38
  SAY @27752
  IF ~~ THEN REPLY @2583 GOTO 3
  IF ~~ THEN REPLY @2587 GOTO 4
  IF ~~ THEN REPLY @21334 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @21335 GOTO 35
  IF ~~ THEN REPLY @27210 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @27753
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @27754
  IF ~~ THEN REPLY @27755 GOTO 9
  IF ~~ THEN REPLY @27756 GOTO 8
  IF ~~ THEN REPLY @2607 GOTO 10
  IF ~~ THEN REPLY @2591 GOTO 17
END
