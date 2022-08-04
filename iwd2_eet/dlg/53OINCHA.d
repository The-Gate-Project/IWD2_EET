BEGIN ~53OINCHA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22752
  IF ~~ THEN REPLY @22753 GOTO 1
  IF ~~ THEN REPLY @22754 GOTO 2
  IF ~~ THEN REPLY @22755 GOTO 1
  IF ~~ THEN REPLY @22756 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @22757
  IF ~~ THEN REPLY @22758 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @22759 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @22760 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @22756 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @22761
  IF ~~ THEN REPLY @22753 GOTO 1
  IF ~~ THEN REPLY @22762 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @22763 GOTO 1
  IF ~~ THEN REPLY @22756 DO ~SetGlobal("53Stone_Quest","GLOBAL",1)
                              AddJournalEntry(@22747,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @22766
  IF ~PartyHasItem("z5amulbs")~ THEN REPLY @22770 GOTO 9
  IF ~~ THEN REPLY @22771 GOTO 6
  IF ~~ THEN REPLY @22772 GOTO 7
  IF ~~ THEN REPLY @22773 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22774
  IF ~PartyHasItem("z5amulbs")~ THEN REPLY @22770 GOTO 9
  IF ~~ THEN REPLY @22771 GOTO 6
  IF ~~ THEN REPLY @22772 GOTO 7
  IF ~~ THEN REPLY @22773 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22775
  IF ~PartyHasItem("z5amulbs")~ THEN REPLY @22770 GOTO 9
  IF ~~ THEN REPLY @22771 GOTO 6
  IF ~~ THEN REPLY @22772 GOTO 7
  IF ~~ THEN REPLY @22773 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22792
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22794
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
    !GlobalGT("53Stone_Quest","GLOBAL",1)~ THEN BEGIN 8
  SAY @22795
  IF ~PartyHasItem("z5amulbs")~ THEN REPLY @22796 GOTO 9
  IF ~PartyHasItem("z5amulbs")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22797 GOTO 10
  IF ~!PartyHasItem("z5amulbs")~ THEN REPLY @22797 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @22798
  IF ~~ THEN REPLY @22799 DO ~AddXP2DA("IW2EX11A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@22750)
                              TakePartyItem("z5amulbs")
                              GiveItem("z1beltmk",LastTalkedToBy)
                              SetGlobal("53Stone_Quest","GLOBAL",3)
                              EraseJournalEntry(@22747)
                              AddJournalEntry(@22748,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @22800 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @22801
  IF ~~ THEN REPLY @22799 DO ~AddXP2DA("IW2EX11A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@22750)
                              TakePartyItem("z5amulbs")
                              GiveItem("z1beltmk", LastTalkedToBy)
                              SetGlobal("53Stone_Quest","GLOBAL",3)
                              EraseJournalEntry(@22747)
                              AddJournalEntry(@22748,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @22800 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @22802
  IF ~~ THEN REPLY @22803 EXIT
  IF ~~ THEN REPLY @22756 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22804
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22805
  IF ~~ THEN REPLY @22799 DO ~AddXP2DA("IW2EX11A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@22750)
                              TakePartyItem("z5amulbs")
                              GiveItem("z1beltmk", LastTalkedToBy)
                              SetGlobal("53Stone_Quest","GLOBAL",3)
                              EraseJournalEntry(@22747)
                              AddJournalEntry(@22748,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @22806 DO ~AddXP2DA("IW2EX11A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@22751)
                              SetGlobal("53Stone_Quest","GLOBAL",2)
                              Enemy()
                              EraseJournalEntry(@22747)
                              AddJournalEntry(@22749,QUEST_DONE)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @22807
  IF ~~ THEN REPLY @22808 EXIT
  IF ~~ THEN REPLY @22809 EXIT
  IF ~~ THEN REPLY @22756 EXIT
END

IF ~Global("53Stone_Quest","GLOBAL",2)~ THEN BEGIN 15
  SAY @22810
  IF ~~ THEN REPLY @22811 DO ~Enemy()~ GOTO 16
  IF ~~ THEN REPLY @22812 DO ~Enemy()~ GOTO 17
  IF ~~ THEN REPLY @22813 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @22814
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @22815
  IF ~~ THEN EXIT
END
