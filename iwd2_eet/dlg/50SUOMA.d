BEGIN ~50SUOMA~

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2715
  IF ~Global("50Nym","GLOBAL",0)~ THEN REPLY @2716 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                       EraseJournalEntry(@6594)~ GOTO 2
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2717 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                                     EraseJournalEntry(@6594)~ GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",1)~ THEN REPLY @2717 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                                     EraseJournalEntry(@6594)~ GOTO 27
  IF ~~ THEN REPLY @2718 DO ~SetGlobal("50Suoma","GLOBAL",1)
                             EraseJournalEntry(@6594)~ GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                         EraseJournalEntry(@6594)~ GOTO 3
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",0)~ THEN REPLY @2720 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                              EraseJournalEntry(@6594)~ GOTO 4
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~SetGlobal("50Suoma","GLOBAL",1)
                                                     AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     EraseJournalEntry(@6594)
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~SetGlobal("50Suoma","GLOBAL",1)
                             EraseJournalEntry(@6594)
                             StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2723 DO ~SetGlobal("50Suoma","GLOBAL",1)
                             EraseJournalEntry(@6594)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2724
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",0)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 27
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 GOTO 3
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",0)~ THEN REPLY @2720 GOTO 4
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2726 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2727
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",0)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 27
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",0)~ THEN REPLY @2720 GOTO 4
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2728 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2729
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",0)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2725 GOTO 27
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",0)~ THEN REPLY @2720 GOTO 4
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2728 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2731
  IF ~~ THEN REPLY @2732 GOTO 5
  IF ~~ THEN REPLY @2733 GOTO 6
  IF ~~ THEN REPLY @2734 GOTO 1
  IF ~~ THEN REPLY @2735 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2736
  IF ~~ THEN REPLY @2733 GOTO 6
  IF ~~ THEN REPLY @2734 GOTO 1
  IF ~~ THEN REPLY @2735 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @2737
  IF ~~ THEN REPLY @2738 GOTO 7
  IF ~~ THEN REPLY @2734 GOTO 1
  IF ~~ THEN REPLY @2735 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2739
  IF ~~ THEN REPLY @2740 DO ~SetGlobal("50Suoma_Help","GLOBAL",1)
                             AddJournalEntry(@2703,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @2741 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2742
  IF ~GlobalGT("50Venla_Children","GLOBAL",1)~ THEN REPLY @2743 DO ~SetGlobal("50Suoma_Help","GLOBAL",2)
                                                                    EraseJournalEntry(@3175)
                                                                    EraseJournalEntry(@3191)
                                                                    EraseJournalEntry(@34747)
                                                                    EraseJournalEntry(@8128)
                                                                    EraseJournalEntry(@8126)
                                                                    EraseJournalEntry(@8127)
                                                                    EraseJournalEntry(@8461)
                                                                    EraseJournalEntry(@8462)
                                                                    EraseJournalEntry(@8463)
                                                                    SetQuestDone(@2703)
                                                                    AddJournalEntry(@2704,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @2744 GOTO 1
  IF ~~ THEN REPLY @2745 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2746
  IF ~GlobalGT("50Tahvo_Wight","GLOBAL",1)~ THEN REPLY @2747 DO ~SetGlobal("50Suoma_Help","GLOBAL",3)
                                                                 EraseJournalEntry(@5665)
                                                                 EraseJournalEntry(@4403)
                                                                 EraseJournalEntry(@4406)
                                                                 EraseJournalEntry(@37610)
                                                                 SetQuestDone(@2704)
                                                                 AddJournalEntry(@2705,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @2744 GOTO 1
  IF ~~ THEN REPLY @2745 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2748
  IF ~GlobalGT("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @2749 DO ~AddXP2DA("IW2EX9H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@2713)
                                                                  SetGlobal("50Suoma_Help","GLOBAL",4)
                                                                  EraseJournalEntry(@2705)
                                                                  EraseJournalEntry(@4733)
                                                                  EraseJournalEntry(@4735)
                                                                  EraseJournalEntry(@4737)
                                                                  EraseJournalEntry(@4738)
                                                                  EraseJournalEntry(@6157)
                                                                  EraseJournalEntry(@8305)
                                                                  EraseJournalEntry(@8421)
                                                                  EraseJournalEntry(@8422)
                                                                  AddJournalEntry(@2706,QUEST_DONE)~ GOTO 11
  IF ~~ THEN REPLY @2744 GOTO 1
  IF ~~ THEN REPLY @2745 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @2750
  IF ~~ THEN REPLY @2751 DO ~SetGlobal("50Suoma_Help","GLOBAL",5)
                             SetGlobal("50Twins_Attack","GLOBAL",1)
                             AddJournalEntry(@2707,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @2752 DO ~SetGlobal("50Suoma_Help","GLOBAL",5)
                             SetGlobal("50Twins_Attack","GLOBAL",1)
                             AddJournalEntry(@2707,QUEST)~ GOTO 12
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !Alignment(LastTalkedToBy,LAWFUL_GOOD)~ THEN REPLY @2753 DO ~SetGlobal("50Suoma_Help","GLOBAL",5)
                                                                   SetGlobal("50Twins_Attack","GLOBAL",1)
                                                                   AddJournalEntry(@2707,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @2754 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @2755
  IF ~~ THEN REPLY @2756 DO ~//SetCriticalPathObject(Myself,FALSE)
                             ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @2758
  IF ~~ THEN REPLY @2759 GOTO 26
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 GOTO 26
  IF ~~ THEN REPLY @2761 GOTO 26
END

IF ~~ THEN BEGIN 14
  SAY @2762
  IF ~~ THEN REPLY @2763 GOTO 1
  IF ~~ THEN REPLY @2764 EXIT
  IF ~~ THEN REPLY @2745 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @2765
  IF ~~ THEN REPLY @2766 GOTO 16
  IF ~~ THEN REPLY @2734 GOTO 1
  IF ~~ THEN REPLY @2767 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @2768
  IF ~~ THEN REPLY @2769 GOTO 1
  IF ~~ THEN REPLY @2770 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @2771
  IF ~~ THEN REPLY @2772 GOTO 18
  IF ~Global("50Nym","GLOBAL",0)~ THEN REPLY @2773 GOTO 2
  IF ~~ THEN REPLY @2774 GOTO 1
  IF ~~ THEN REPLY @2775 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @2776
  IF ~~ THEN REPLY @2732 GOTO 5
  IF ~~ THEN REPLY @2733 GOTO 6
  IF ~~ THEN REPLY @2734 GOTO 1
  IF ~~ THEN REPLY @2735 EXIT
END

IF WEIGHT #4
~Global("50Suoma_Help","GLOBAL",1)~ THEN BEGIN 19
  SAY @2777
  IF ~GlobalGT("50Venla_Children","GLOBAL",1)~ THEN REPLY @2778 DO ~SetGlobal("50Suoma_Help","GLOBAL",2)
                                                                    EraseJournalEntry(@3175)
                                                                    EraseJournalEntry(@3191)
                                                                    EraseJournalEntry(@34747)
                                                                    EraseJournalEntry(@8128)
                                                                    EraseJournalEntry(@8126)
                                                                    EraseJournalEntry(@8127)
                                                                    EraseJournalEntry(@8461)
                                                                    EraseJournalEntry(@8462)
                                                                    EraseJournalEntry(@8463)
                                                                    SetQuestDone(@2703)
                                                                    AddJournalEntry(@2704,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @2779 GOTO 1
  IF ~~ THEN REPLY @2780 EXIT
END

IF WEIGHT #5
~Global("50Suoma_Help","GLOBAL",2)~ THEN BEGIN 20
  SAY @2781
  IF ~GlobalGT("50Tahvo_Wight","GLOBAL",1)~ THEN REPLY @2782 DO ~SetGlobal("50Suoma_Help","GLOBAL",3)
                                                                 EraseJournalEntry(@5665)
                                                                 EraseJournalEntry(@4403)
                                                                 EraseJournalEntry(@4406)
                                                                 EraseJournalEntry(@37610)
                                                                 SetQuestDone(@2704)
                                                                 AddJournalEntry(@2705,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @2779 GOTO 1
  IF ~~ THEN REPLY @2780 EXIT
END

IF WEIGHT #6
~Global("50Suoma_Help","GLOBAL",3)~ THEN BEGIN 21
  SAY @2783
  IF ~GlobalGT("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @2749 DO ~AddXP2DA("IW2EX9H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@2713)
                                                                  SetGlobal("50Suoma_Help","GLOBAL",4)
                                                                  EraseJournalEntry(@2705)
                                                                  EraseJournalEntry(@4733)
                                                                  EraseJournalEntry(@4735)
                                                                  EraseJournalEntry(@4737)
                                                                  EraseJournalEntry(@4738)
                                                                  EraseJournalEntry(@6157)
                                                                  EraseJournalEntry(@8305)
                                                                  EraseJournalEntry(@8421)
                                                                  EraseJournalEntry(@8422)
                                                                  AddJournalEntry(@2706,QUEST_DONE)~ GOTO 11
  IF ~~ THEN REPLY @2779 GOTO 1
  IF ~~ THEN REPLY @2780 EXIT
END

IF WEIGHT #3
~Global("50Suoma_Help","GLOBAL",0)~ THEN BEGIN 22
  SAY @2784
  IF ~Global("50Nym","GLOBAL",0)~ THEN REPLY @2785 GOTO 2
  IF ~Global("50Suoma_Help","GLOBAL",0)
      Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2786 GOTO 17
  IF ~Global("50Suoma_Help","GLOBAL",0)
      !Global("SPRITE_IS_DEADLimha","GLOBAL",0)~ THEN REPLY @2786 GOTO 27
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 GOTO 3
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",0)~ THEN REPLY @2720 GOTO 4
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2730 EXIT
END

IF WEIGHT #7
~True()~ THEN BEGIN 23
  SAY @8458
  IF ~GlobalLT("50Suoma_Help","GLOBAL",5)~ THEN REPLY @2752 DO ~SetGlobal("50Suoma_Help","GLOBAL",5)
                                                                SetGlobal("50Twins_Attack","GLOBAL",1)
                                                                AddJournalEntry(@2707,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 GOTO 3
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8459 EXIT
END

IF WEIGHT #1
~Global("50Twins_Attack","GLOBAL",2)~ THEN BEGIN 24
  SAY @8460
  IF ~~ THEN REPLY @16626 DO ~SetGlobal("50Twins_Attack","GLOBAL",3)~ GOTO 25
  IF ~~ THEN REPLY @16634 DO ~SetGlobal("50Twins_Attack","GLOBAL",3)~ GOTO 25
  IF ~~ THEN REPLY @2718 DO ~SetGlobal("50Twins_Attack","GLOBAL",3)~ GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 DO ~SetGlobal("50Twins_Attack","GLOBAL",3)~ GOTO 3
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2745 DO ~SetGlobal("50Twins_Attack","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @16635
  IF ~~ THEN REPLY @2718 GOTO 15
  IF ~GlobalGT("50Nym","GLOBAL",0)~ THEN REPLY @2719 GOTO 3
  IF ~PartyHasItem("z5genfwr")~ THEN REPLY @2721 DO ~AddXP2DA("IW2EX9E")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@2714)
                                                     TakePartyItemAll("z5genfwr")
                                                     DestroyItem("z5genfwr")
                                                     AddJournalEntry(@2710,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @2722 DO ~StartStore("50Suoma",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2745 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @18309
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("50cTwin0")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @35536
  IF ~~ THEN REPLY @2772 GOTO 18
  IF ~Global("50Nym","GLOBAL",0)~ THEN REPLY @2773 GOTO 2
  IF ~~ THEN REPLY @2774 GOTO 1
  IF ~~ THEN REPLY @2775 EXIT
END

IF WEIGHT #0 ~See([ENEMY])~ THEN BEGIN 28
  SAY @38162
  IF ~~ THEN REPLY @399 EXIT
END
