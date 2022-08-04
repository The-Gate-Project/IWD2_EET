BEGIN ~11PHAEN~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9632
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @9633 DO ~SetGlobal("Know_Phaen","GLOBAL",1)~ GOTO 17
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9634 DO ~SetGlobal("Know_Phaen","GLOBAL",1)
                                                                   AddJournalEntry(@9616,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @9635 DO ~SetGlobal("Know_Phaen","GLOBAL",1)
                             AddJournalEntry(@9616,QUEST)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @9636
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @9633 DO ~SetGlobal("Know_Phaen","GLOBAL",1)~ GOTO 17
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9634 GOTO 3
  IF ~PartyHasItem("z1vellum")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9637 GOTO 6
  IF ~~ THEN REPLY @9638 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9639
  IF ~~ THEN REPLY @9640 GOTO 4
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @9637 GOTO 6
  IF ~~ THEN REPLY @9641 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9643
  IF ~~ THEN REPLY @9640 GOTO 4
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @9637 GOTO 6
  IF ~~ THEN REPLY @9641 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9644
  IF ~~ THEN REPLY @9645 GOTO 5
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @9637 GOTO 6
  IF ~~ THEN REPLY @9646 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9647
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @9648 GOTO 8
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @9637 GOTO 6
  IF ~~ THEN REPLY @9646 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9649
  IF ~~ THEN REPLY @9650 GOTO 7
  IF ~Global("Know_Brimstone_Vellum","GLOBAL",0)~ THEN REPLY @9651 GOTO 7
  IF ~Global("Know_Brimstone_Vellum","GLOBAL",1)~ THEN REPLY @9656 GOTO 19
  IF ~~ THEN REPLY @9646 GOTO 16
END

IF ~~ THEN BEGIN 7
  SAY @9657
  IF ~~ THEN REPLY @9663 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @9664 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @9665
  IF ~~ THEN REPLY @9668 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @9669 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @9670
  IF ~~ THEN REPLY @9671 GOTO 10
  IF ~~ THEN REPLY @9672 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @9673
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9674 GOTO 12
  IF ~~ THEN REPLY @24921 DO ~SetGlobal("Phaen_Loses_It","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @24922
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9674 GOTO 12
  IF ~~ THEN REPLY @24921 DO ~SetGlobal("Phaen_Loses_It","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @24923
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @24935 GOTO 13
  IF ~~ THEN REPLY @24936 DO ~SetGlobal("Phaen_Loses_It","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @24937
  IF ~~ THEN REPLY @24938 DO ~AddXP2DA("IW2EX1A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@9631)
                              SetGlobal("Know_Phaen","GLOBAL",2)
                              AddJournalEntry(@9620,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @24936 DO ~SetGlobal("Phaen_Loses_It","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @24939
  IF ~~ THEN REPLY @24941 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @24942
  IF ~~ THEN REPLY @24944 DO ~SetGlobal("Phaen_Loses_It","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @24945
  IF ~Global("Know_Brimstone_Vellum","GLOBAL",0)~ THEN REPLY @24947 GOTO 7
  IF ~Global("Know_Brimstone_Vellum","GLOBAL",1)~ THEN REPLY @24948 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @24950
  IF ~~ THEN REPLY @24951 GOTO 18
  IF ~Global("IW1007_Visited","GLOBAL",1)~ THEN REPLY @27236 GOTO 18
  IF ~PartyHasItem("z1vellum")~ THEN REPLY @27237 GOTO 6
END

IF ~~ THEN BEGIN 18
  SAY @27240
  IF ~~ THEN REPLY @27242 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @28725
  IF ~~ THEN REPLY @9663 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @9664 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9629)
                             AddJournalEntry(@9619,QUEST)~ GOTO 9
END
