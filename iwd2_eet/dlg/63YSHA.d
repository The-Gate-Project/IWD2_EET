BEGIN ~63YSHA~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @27778
  IF ~~ THEN REPLY @27779 GOTO 1
  IF ~~ THEN REPLY @27780 GOTO 2
  IF ~~ THEN REPLY @36917 GOTO 20
  IF ~~ THEN REPLY @27781 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @27782
  IF ~~ THEN REPLY @27780 GOTO 2
  IF ~~ THEN REPLY @36917 GOTO 20
END

IF ~~ THEN BEGIN 2
  SAY @27783
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @27784 GOTO 3
  IF ~~ THEN REPLY @27785 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @27786
  IF ~~ THEN REPLY @27785 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @27787
  IF ~~ THEN REPLY @27788 GOTO 5
  IF ~~ THEN REPLY @27789 GOTO 6
  IF ~~ THEN REPLY @27781 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @27790
  IF ~~ THEN REPLY @27791 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @27792
  IF ~~ THEN REPLY @27794 GOTO 9
  IF ~~ THEN REPLY @27793 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @27795
  IF ~~ THEN REPLY @27796 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @27797
  IF ~~ THEN REPLY @27798 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @27799
  IF ~~ THEN REPLY @27800 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @27801
  IF ~~ THEN REPLY @27802 GOTO 11
  IF ~~ THEN REPLY @27803 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @27806
  IF ~~ THEN REPLY @27803 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @27807
  IF ~~ THEN REPLY @27808 GOTO 13
  IF ~~ THEN REPLY @27781 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @27809
  IF ~~ THEN REPLY @27810 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",3)
                              AddJournalEntry(@27775,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @36919 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",3)
                              AddJournalEntry(@27775,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @27811 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @27812
  IF ~~ THEN REPLY @27813 DO ~GiveItemCreate("z6genhp",LastTalkedToBy,1,0,0)~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 15
  SAY @27820
  IF ~~ THEN REPLY @27779 GOTO 1
  IF ~~ THEN REPLY @27780 GOTO 2
  IF ~~ THEN REPLY @27781 EXIT
END

IF WEIGHT #0
~Global("SH_Alter_Plans","GLOBAL",2)~ THEN BEGIN 16
  SAY @27821
  IF ~~ THEN REPLY @27822 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",3)
                              AddJournalEntry(@27775,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @36919 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",3)
                              AddJournalEntry(@27775,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @27811 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",2)~ EXIT
END

IF WEIGHT #1
~Global("SH_Alter_Plans","GLOBAL",3)~ THEN BEGIN 17
  SAY @27823
  IF ~PartyHasItem("z6genap")~ THEN REPLY @27826 DO ~AddXP2DA("IW2EX14A")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@27777)
                                                     TakePartyItem("z6genap")
                                                     EraseJournalEntry(@27775)
                                                     EraseJournalEntry(@37304)
                                                     AddJournalEntry(@27776,QUEST_DONE)~ GOTO 18
  IF ~!PartyHasItem("z6genap")~ THEN REPLY @27827 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @27832
  IF ~~ THEN REPLY @27833 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",4)~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36920 DO ~SetGlobal("SH_Alter_Plans","GLOBAL",4)~ EXIT
END

IF WEIGHT #2
~Global("SH_Alter_Plans","GLOBAL",4)~ THEN BEGIN 19
  SAY @27834
  IF ~~ THEN REPLY @27813 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @36915
  IF ~~ THEN REPLY @36916 GOTO 6
END
