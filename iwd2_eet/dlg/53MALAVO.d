BEGIN ~53MALAVO~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22516
  IF ~~ THEN REPLY @22517 GOTO 1
  IF ~~ THEN REPLY @22518 GOTO 3
  IF ~//!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @22519 GOTO 4
  IF ~//SubRace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @22520 GOTO 5
  IF ~Race(LastTalkedToBy,ELF)
      //!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @22521 GOTO 7
  IF ~Race(LastTalkedToBy,DWARF)
      //!SubRace(LastTalkedToBy,DWARF_GRAY)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @22522 GOTO 7
  IF ~//SubRace(LastTalkedToBy,GNOME_DEEP)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))~ THEN REPLY @22523 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @22530
  IF ~~ THEN DO ~SetGlobal("Know_Malavon","GLOBAL",1)
                 AddJournalEntry(@22511,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @22532
  IF ~~ THEN REPLY @22533 GOTO 9
  IF ~~ THEN REPLY @22534 GOTO 10
  IF ~~ THEN REPLY @22535 GOTO 11
END

IF ~~ THEN BEGIN 3
  SAY @22536
  IF ~~ THEN REPLY @22533 GOTO 9
  IF ~~ THEN REPLY @22534 GOTO 10
  IF ~~ THEN REPLY @22535 GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @22537
  IF ~~ THEN REPLY @22533 GOTO 9
  IF ~~ THEN REPLY @22534 GOTO 10
  IF ~~ THEN REPLY @22535 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @22538
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @22539
  IF ~~ THEN REPLY @22533 GOTO 9
  IF ~~ THEN REPLY @22534 GOTO 10
  IF ~~ THEN REPLY @22535 GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY @22540
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @22541
  IF ~~ THEN REPLY @22533 GOTO 9
  IF ~~ THEN REPLY @22534 GOTO 10
  IF ~~ THEN REPLY @22535 GOTO 11
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22542 GOTO 13
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22542 GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @22543
  IF ~~ THEN DO ~SetGlobal("Entered_Compound","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("53Cmala1")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @22544
  IF ~~ THEN REPLY @22545 GOTO 9
  IF ~~ THEN REPLY @22546 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @22547
  IF ~~ THEN REPLY @22545 GOTO 9
  IF ~~ THEN REPLY @22548 DO ~SetGlobal("53Refused_Entrance","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22549
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("53Cmala2")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22552
  IF ~~ THEN REPLY @22545 GOTO 9
  IF ~~ THEN REPLY @22548 DO ~SetGlobal("53Refused_Entrance","GLOBAL",1)~ GOTO 12
END

IF WEIGHT #3
~Global("Know_Malavon","GLOBAL",1)
 Global("Entered_Compound","GLOBAL",1)~ THEN BEGIN 14
  SAY @22555
  IF ~~ THEN EXTERN ~53KADRES~ 13
END

IF WEIGHT #4
~!Global("Know_Malavon","GLOBAL",1)
 Global("Entered_Compound","GLOBAL",1)~ THEN BEGIN 15
  SAY @22556
  IF ~~ THEN DO ~SetGlobal("Know_Malavon","GLOBAL",1)
                 AddJournalEntry(@22511,QUEST)~ EXTERN ~53KADRES~ 13
END

IF ~~ THEN BEGIN 16
  SAY @22557
  IF ~~ THEN EXTERN ~53VIIZRA~ 8
END

IF ~~ THEN BEGIN 17
  SAY @22558
  IF ~~ THEN REPLY @22533 GOTO 20
  IF ~~ THEN REPLY @22559 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @22560
  IF ~~ THEN REPLY @22561 DO ~AddJournalEntry(@22512,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @22562
  IF ~~ THEN REPLY @22533 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22563
  IF ~~ THEN REPLY @22564 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @22565
  IF ~~ THEN REPLY @22567 GOTO 24
  IF ~//SubRace(LastTalkedToBy,PURERACE)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22568 GOTO 22
  IF ~//SubRace(LastTalkedToBy,PURERACE)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22570 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @22571
  IF ~~ THEN REPLY @22573 GOTO 24
  IF ~~ THEN REPLY @22579 DO ~Enemy()~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @22580
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @22581
  IF ~~ THEN REPLY @22582 GOTO 25
  IF ~~ THEN REPLY @22583 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @22586
  IF ~~ THEN REPLY @22564 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @22589
  IF ~~ THEN REPLY @22590 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @22591
  IF ~~ THEN REPLY @22592 GOTO 28
  IF ~~ THEN REPLY @22593 GOTO 31
  IF ~CheckStatGT(LastTalkedToBy,12,INT)
      Global("50NYM","GLOBAL",2)~ THEN REPLY @22594 GOTO 32
END

IF ~~ THEN BEGIN 28
  SAY @22595
  IF ~~ THEN EXTERN ~53VIIZRA~ 9
END

IF ~~ THEN BEGIN 29
  SAY @22596
  IF ~~ THEN EXTERN ~53VIIZRA~ 10
END

IF ~~ THEN BEGIN 30
  SAY @22597
  IF ~~ THEN REPLY @22593 GOTO 31
  IF ~~ THEN REPLY @22598 GOTO 34
END

IF ~~ THEN BEGIN 31
  SAY @22599
  IF ~~ THEN REPLY @22600 DO ~AddJournalEntry(@32857,QUEST)~ GOTO 33
  IF ~~ THEN REPLY @22598 GOTO 34
END

IF ~~ THEN BEGIN 32
  SAY @22601
  IF ~~ THEN REPLY @22593 GOTO 31
END

IF ~~ THEN BEGIN 33
  SAY @22602
  IF ~~ THEN DO ~SetGlobal("Viciscamera_Quest","GLOBAL",1)~ EXTERN ~53KADRES~ 14
END

IF ~~ THEN BEGIN 34
  SAY @22603
  IF ~~ THEN REPLY @22604 DO ~SetGlobal("Viciscamera_Quest","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 35
  SAY @22605
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @22629
  IF ~~ THEN REPLY @22630 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @22631
  IF ~~ THEN REPLY @32856 DO ~AddJournalEntry(@32857,QUEST)~ GOTO 33
END

IF WEIGHT #2
~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN BEGIN 38
  SAY @22642
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @22643 GOTO 39
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22646 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @22648
  IF ~GlobalGT("Know_Imphraili","GLOBAL",0)
      Global("Know_Viciscamera","GLOBAL",1)
      !Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22650 GOTO 40
  IF ~GlobalGT("Know_Imphraili","GLOBAL",0)
      Global("Know_Viciscamera","GLOBAL",1)
      Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22651 GOTO 40
  IF ~!Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)
      !Global("Know_Viciscamera","GLOBAL",1)
      Global("Viciscamera_Seen","GLOBAL",1)~ THEN REPLY @22652 GOTO 45
  IF ~!Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)
      Global("Know_Viciscamera","GLOBAL",1)
      Global("Viciscamera_Seen","GLOBAL",1)~ THEN REPLY @22653 GOTO 45
  IF ~Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)
      !Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22654 DO ~AddXP2DA("IW2EX11H")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@22514)
                                                                           SetGlobal("53Malavon_Viciscamera","GLOBAL",1)~ GOTO 46
  IF ~Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)
      Global("Know_Imphraili","GLOBAL",0)
      Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN REPLY @22656 DO ~AddXP2DA("IW2EX11H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@22514)
                                                                          SetGlobal("53Malavon_Viciscamera","GLOBAL",1)~ GOTO 46
  IF ~~ THEN REPLY @22658 GOTO 51
END

IF ~~ THEN BEGIN 40
  SAY @22659
  IF ~~ THEN REPLY @22661 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @22662
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @22663
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @22664
  IF ~!Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22666 GOTO 44
  IF ~Global("SPRITE_IS_DEADViciscamera","GLOBAL",1)~ THEN REPLY @22667 DO ~AddXP2DA("IW2EX11H")
                                                                            DisplayStringNoNameDlg(LastTalkedToBy,@22514)
                                                                            SetGlobal("53Malavon_Viciscamera","GLOBAL",1)~ GOTO 46
END

IF ~~ THEN BEGIN 44
  SAY @22668
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @22669
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @22670
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)~ THEN REPLY @22671 DO ~AddXP2DA("IW2EX11A")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@22515)~ GOTO 47
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~!Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)~ THEN REPLY @22533 GOTO 48
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      !Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22533 GOTO 48
END

IF ~~ THEN BEGIN 47
  SAY @22673
  //IF ~~ THEN DO ~HideCreature("Ginafae_Despana",FALSE)~ EXTERN ~53GINAFA~ 19
  IF ~~ THEN DO ~SetGlobal("53UnhideGinafae","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("53Cmala4")~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @22674
  IF ~~ THEN REPLY @22607 DO ~SetGlobal("Viciscamera_Quest","GLOBAL",2)
                              EraseJournalEntry(@39488)
                              EraseJournalEntry(@32857)
                              EraseJournalEntry(@22900)
                              EraseJournalEntry(@22419)
                              EraseJournalEntry(@22420)
                              EraseJournalEntry(@22421)
                              EraseJournalEntry(@35736)
                              AddJournalEntry(@22513,QUEST_DONE)
                              StartCutSceneMode()
                              StartCutScene("53Cmala3")~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @22675
  IF ~Global("53Malavon_Viciscamera","GLOBAL",1)~ THEN GOTO 48
  IF ~Global("53Malavon_Viciscamera","GLOBAL",0)~ THEN REPLY @22643 GOTO 39
  IF ~Global("53Malavon_Viciscamera","GLOBAL",0)~ THEN REPLY @22641 GOTO 50
  IF ~Global("53Malavon_Viciscamera","GLOBAL",0)~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~Global("53Malavon_Viciscamera","GLOBAL",0)~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 50
  SAY @22676
  IF ~~ THEN REPLY @22677 GOTO 52
  IF ~~ THEN REPLY @22678 GOTO 53
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 51
  SAY @22679
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @22680
  IF ~~ THEN REPLY @22678 GOTO 53
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @22681
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @22682
  IF ~~ THEN REPLY @22677 GOTO 52
  IF ~Global("Convinced_Ginafae","GLOBAL",1)
      !Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("SPRITE_IS_DEADViciscamera","GLOBAL",0)~ THEN REPLY @33657 GOTO 55
  IF ~Global("SPRITE_IS_DEADGinafae","GLOBAL",1)
      Global("Explained_Ginafae_Dead","GLOBAL",0)~ THEN REPLY @22672 DO ~SetGlobal("Explained_Ginafae_Dead","GLOBAL",1)
                                                                         EraseJournalEntry(@22313)
                                                                         EraseJournalEntry(@22315)
                                                                         EraseJournalEntry(@22314)
                                                                         AddJournalEntry(@32859,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF ~~ THEN BEGIN 55
  SAY @33649
  IF ~~ THEN REPLY @22643 GOTO 39
  IF ~~ THEN REPLY @22641 GOTO 50
  IF ~~ THEN REPLY @22606 DO ~StartStore("53Malavo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22607 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 56
  SAY @27282
  IF ~~ THEN REPLY @399 EXIT
END
