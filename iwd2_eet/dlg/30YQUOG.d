BEGIN ~30YQUOG~

IF WEIGHT #11
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @31681
  IF ~~ THEN REPLY @31682 GOTO 1
  IF ~~ THEN REPLY @31683 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31684
  IF ~~ THEN REPLY @31685 GOTO 2
  IF ~Global("Krunbars_Bracers_Quest","GLOBAL",1)~ THEN REPLY @31687 GOTO 32
  IF ~~ THEN REPLY @31688 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31689
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31690 GOTO 3
  IF ~~ THEN REPLY @31691 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31692
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31693 GOTO 4
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35427 GOTO 41
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @36911 GOTO 41
  IF ~~ THEN REPLY @31694 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @31695
  IF ~~ THEN REPLY @31696 GOTO 5
  IF ~~ THEN REPLY @31697 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @31698
  IF ~~ THEN REPLY @31699 GOTO 6
  IF ~~ THEN REPLY @31700 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31701
  IF ~~ THEN REPLY @31702 GOTO 7
  IF ~~ THEN REPLY @31703 GOTO 14
  IF ~~ THEN REPLY @31700 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31704
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31705 GOTO 8
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @31707
  IF ~~ THEN REPLY @31708 GOTO 9
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @31709
  IF ~~ THEN REPLY @31710 GOTO 10
  IF ~~ THEN REPLY @31711 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @31712
  IF ~~ THEN REPLY @31713 GOTO 11
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @31714
  IF ~~ THEN REPLY @31715 GOTO 12
  IF ~~ THEN REPLY @31716 GOTO 13
  IF ~~ THEN REPLY @31717 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @31718
  IF ~~ THEN REPLY @31719 DO ~SetGlobal("30Yquog_Quest","GLOBAL",1)
                              SetGlobal("30Know_Pass_Xvim","GLOBAL",1)
                              AddJournalEntry(@31638,QUEST)~ EXIT
  IF ~~ THEN REPLY @31720 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31721
  IF ~~ THEN REPLY @31722 GOTO 12
  IF ~~ THEN REPLY @31723 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @31724
  IF ~~ THEN REPLY @31715 GOTO 12
  IF ~~ THEN REPLY @31720 DO ~Enemy()~ EXIT
END

IF WEIGHT #10
~Global("30Yquog_Quest","GLOBAL",1)~ THEN BEGIN 15
  SAY @31725
  IF ~~ THEN REPLY @31726 GOTO 16
  IF ~~ THEN REPLY @31727 GOTO 22
  IF ~~ THEN REPLY @31728 EXIT
  IF ~~ THEN REPLY @31720 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @31729
  IF ~~ THEN REPLY @31705 GOTO 17
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31707
  IF ~~ THEN REPLY @31708 GOTO 18
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @31709
  IF ~~ THEN REPLY @31710 GOTO 19
  IF ~~ THEN REPLY @31711 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @31712
  IF ~~ THEN REPLY @31713 GOTO 20
  IF ~~ THEN REPLY @31706 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @31730
  IF ~~ THEN REPLY @31731 GOTO 15
  IF ~~ THEN REPLY @31716 GOTO 21
  IF ~~ THEN REPLY @31732 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @31733
  IF ~~ THEN REPLY @31734 GOTO 15
  IF ~~ THEN REPLY @31736 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @31737
  IF ~~ THEN REPLY @31739 GOTO 15
  IF ~~ THEN REPLY @31719 EXIT
  IF ~~ THEN REPLY @31740 DO ~Enemy()~ EXIT
END

IF WEIGHT #8
~Global("30Yquog_Quest","GLOBAL",2)
 Global("SPRITE_IS_DEADKruntur","Global",0)~ THEN BEGIN 23
  SAY @31741
  IF ~PartyHasItem("z3yqmes")~ THEN REPLY @31750 DO ~AddXP2DA("IW2EX6A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@31679)
                                                     TakePartyItem("z3yqmes")
                                                     EraseJournalEntry(@31638)
                                                     EraseJournalEntry(@31658)
                                                     EraseJournalEntry(@31796)
                                                     EraseJournalEntry(@31645)
                                                     EraseJournalEntry(@31802)
                                                     AddJournalEntry(@31661,QUEST_DONE)~ GOTO 24
  IF ~~ THEN REPLY @32971 EXIT
  IF ~~ THEN REPLY @31740 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @31752
  IF ~~ THEN REPLY @31759 DO ~DestroyItem("z3yqmes")
                              GiveItemCreate("RMEW_02",LastTalkedToBy,1,1,0)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @31765
  IF ~~ THEN REPLY @31766 DO ~SetGlobal("30Yquog_Quest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @31768 DO ~Enemy()~ EXIT
END

IF WEIGHT #6
~Global("30Yquog_Quest","GLOBAL",1)
 !Global("SPRITE_IS_DEADKruntur","Global",0)
 PartyHasItem("z3yqmes")~ THEN BEGIN 26
  SAY @31769
  IF ~~ THEN REPLY @31770 GOTO 31
END

IF WEIGHT #9
~Global("Krunbars_Bracers_Quest","GLOBAL",1)
 Global("30Yquog_Quest","GLOBAL",1)~ THEN BEGIN 27
  SAY @31772
  IF ~~ THEN REPLY @31773 GOTO 28
  IF ~~ THEN REPLY @31779 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @31785
  IF ~~ THEN REPLY @31787 DO ~GiveItem("z0bractb",LastTalkedToBy)~ GOTO 29
  IF ~~ THEN REPLY @31788 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @31791
  IF ~~ THEN REPLY @31794 DO ~SetGlobal("Krunbars_Bracers_Quest","GLOBAL",2)~ GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @32908
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @32910
  IF ~~ THEN DO ~EraseJournalEntry(@31638)
                 EraseJournalEntry(@31658)
                 EraseJournalEntry(@31796)
                 EraseJournalEntry(@31645)
                 EraseJournalEntry(@31802)
                 AddJournalEntry(@31666,QUEST)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @31785
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32911 GOTO 33
  IF ~~ THEN REPLY @31788 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @32912
  IF ~~ THEN REPLY @32913 DO ~GiveItem("z0bractb",LastTalkedToBy)~ GOTO 34
  IF ~~ THEN REPLY @31788 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @32914
  IF ~~ THEN REPLY @33524 DO ~AddXP2DA("IW2EX6VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31680)
                              SetGlobal("Krunbars_Bracers_Quest","GLOBAL",2)
                              SetGlobal("30Yquog_Quest","GLOBAL",1)
                              AddJournalEntry(@31658,QUEST)~ EXIT
END

IF WEIGHT #5
~Global("30Yquog_Quest","GLOBAL",3)~ THEN BEGIN 35
  SAY @33525
  IF ~~ THEN REPLY @33526 EXIT
  IF ~~ THEN REPLY @33527 DO ~Enemy()~ EXIT
END

IF WEIGHT #7
~Global("30Yquog_Quest","GLOBAL",2)
 !Global("SPRITE_IS_DEADKruntur","Global",0)
 PartyHasItem("z3yqmes")~ THEN BEGIN 36
  SAY @31769
  IF ~~ THEN REPLY @31770 GOTO 31
END

IF WEIGHT #2
~!Global("SPRITE_IS_DEADIlquag","GLOBAL",0)~ THEN BEGIN 37
  SAY @33528
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #1
~!Global("SPRITE_IS_DEADTequag","GLOBAL",0)~ THEN BEGIN 38
  SAY @33529
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADIlquag","GLOBAL",0)
 !Global("SPRITE_IS_DEADTequag","GLOBAL",0)~ THEN BEGIN 39
  SAY @33530
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #3
~!Global("SPRITE_IS_DEADKruntur","Global",0)~ THEN BEGIN 40
  SAY @33730
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @36906
  IF ~~ THEN GOTO 6
END

IF WEIGHT #4
~Global("Pissed_Off_Lacky","GLOBAL",1)~ THEN BEGIN 42
  SAY @40405
  IF ~~ THEN DO ~Enemy()~ EXIT
END
