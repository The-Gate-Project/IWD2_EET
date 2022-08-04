BEGIN ~52NONIN~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9835
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      !Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                      SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                      SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 13
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 15
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9838 GOTO 2
  IF ~~ THEN REPLY @9839 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                             AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
END

IF WEIGHT #4
~True()~ THEN BEGIN 1
  SAY @9840
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      !Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                      SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                      SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 13
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 15
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9838 GOTO 2
  IF ~Global("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                                                              AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~GlobalGT("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9841
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~Global("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9842 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                                                              AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~GlobalGT("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9842 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9843
  IF ~PartyHasItem("RING19")
      GlobalLT("52Nonin_Ring","GLOBAL",2)~ THEN REPLY @9844 DO ~SetGlobal("52Nonin_Ring","GLOBAL",2)~ GOTO 4
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9845 GOTO 7
  IF ~~ THEN REPLY @9842 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9846
  IF ~Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @9847 DO ~EraseJournalEntry(@9831)
                                                                    AddJournalEntry(@9832,QUEST_DONE)~ GOTO 14
  IF ~Global("52Nonin_Permission","GLOBAL",0)~ THEN REPLY @9847 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                    SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                    EraseJournalEntry(@9831)
                                                                    AddJournalEntry(@9832,QUEST_DONE)~ GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @9848 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @9849
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9850 GOTO 7
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9851 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9852
  IF ~Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @9853 DO ~EraseJournalEntry(@9831)
                                                                    AddJournalEntry(@9832,QUEST_DONE)~ GOTO 14
  IF ~Global("52Nonin_Permission","GLOBAL",0)~ THEN REPLY @9853 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                    SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                    EraseJournalEntry(@9831)
                                                                    AddJournalEntry(@9832,QUEST_DONE)~ GOTO 5
  IF ~~ THEN REPLY @9854 DO ~SetGlobal("52Nonin_Ring","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9855
  IF ~~ THEN REPLY @9847 DO ~AddXP2DA("IW2EX11A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9834)
                             TakePartyItem("z5ringno")
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             SetGlobal("52Nonin_Ring","GLOBAL",4)
                             EraseJournalEntry(@9831)
                             AddJournalEntry(@9833,QUEST_DONE)~ GOTO 8 //POTN_52
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @9859 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @9864
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9851 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9865
  IF ~~ THEN REPLY @9853 DO ~AddXP2DA("IW2EX11A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9834)
                             TakePartyItem("z5ringno")
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             GiveItemCreate("POTN55",LastTalkedToBy,1,1,0)
                             SetGlobal("52Nonin_Ring","GLOBAL",4)
                             EraseJournalEntry(@9831)
                             AddJournalEntry(@9833,QUEST_DONE)~ GOTO 8 //POTN_52
  IF ~~ THEN REPLY @9854 DO ~SetGlobal("52Nonin_Ring","GLOBAL",3)~ EXIT
END

IF WEIGHT #1
~GlobalGT("52Nonin_Ring","GLOBAL",0)
 !Global("52Nonin_Ring","GLOBAL",4)~ THEN BEGIN 10
  SAY @9866
  IF ~PartyHasItem("RING19")
      !Global("52Nonin_Ring","GLOBAL",2)
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9844 DO ~SetGlobal("52Nonin_Ring","GLOBAL",2)~ GOTO 4
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9845 GOTO 7
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      !Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @39284 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                      SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                      SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 13
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @39284 DO ~SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 15
  IF ~~ THEN REPLY @9867 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9869 GOTO 2
  IF ~~ THEN REPLY @9870 EXIT
END

IF WEIGHT #0
~Global("52Nonin_Ring","GLOBAL",3)~ THEN BEGIN 11
  SAY @9871
  IF ~PartyHasItem("RING19")
      !Global("52Nonin_Ring","GLOBAL",2)
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9872 DO ~SetGlobal("52Nonin_Ring","GLOBAL",2)~ GOTO 4
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9875 GOTO 7
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      !Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @39284 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                      SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                      SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 13
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @39284 DO ~SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 15
  IF ~~ THEN REPLY @9867 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9869 GOTO 2
  IF ~~ THEN REPLY @9870 EXIT
END

IF WEIGHT #2
 ~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN BEGIN 12
  SAY @9876
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      !Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~GiveItemCreate("z5keyst",LastTalkedToBy,0,0,0)
                                                                      SetGlobal("52Nonin_Permission","GLOBAL",1)
                                                                      SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 13
  IF ~Global("52Nonin_Storage","GLOBAL",1)
      Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @38511 DO ~SetGlobal("52Nonin_Storage","GLOBAL",2)~ GOTO 15
  IF ~PartyHasItem("RING19")
      !Global("52Nonin_Ring","GLOBAL",2)
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9872 DO ~SetGlobal("52Nonin_Ring","GLOBAL",2)~ GOTO 4
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9875 GOTO 7
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9877 GOTO 2
  IF ~Global("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9851 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                                                              AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~GlobalGT("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9851 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @38509
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9838 GOTO 2
  IF ~Global("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                                                              AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~GlobalGT("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @38510
  IF ~PartyHasItem("z5ringno")
      !Global("52Nonin_Ring","GLOBAL",4)~ THEN REPLY @9850 GOTO 7
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9851 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @39912
  IF ~~ THEN REPLY @9836 DO ~StartStore("52Nonin",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9838 GOTO 2
  IF ~Global("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 DO ~SetGlobal("52Nonin_Ring","GLOBAL",1)
                                                              AddJournalEntry(@9831,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~GlobalGT("52Nonin_Ring","GLOBAL",0)~ THEN REPLY @9839 EXIT
END
