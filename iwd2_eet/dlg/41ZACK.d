BEGIN ~41ZACK~

IF ~~ THEN BEGIN 0
  SAY @32232
  IF ~AreaCheck("IW4100")
      Global("41PlayerSawTempleSideDoor","GLOBAL",1)
      OpenState("AR4100_Door14",FALSE)~ THEN REPLY @32240 GOTO 19
  IF ~PartyHasItem("z4bookos")
      !PartyHasItem("z4genbe")
      !Global("41ZackTask","GLOBAL",11)
      !Global("41ZackTask","GLOBAL",12)
      GlobalLT("40MendingSpell","GLOBAL",2)
      Global("41NoZackBellRepeat","GLOBAL",0)~ THEN REPLY @32242 DO ~SetGlobal("41ZackTask","GLOBAL",0)
                                                                     GiveItemCreate("z4genbe",LastTalkedToBy,0,0,0)
                                                                     SetGlobal("41NoZackBellRepeat","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32466 GOTO 7
  IF ~~ THEN REPLY @32469 GOTO 8
  IF ~OR(2)
        Global("41TempleQuest","GLOBAL",1)
        Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @32471 GOTO 11
  IF ~Global("41TempleQuest","GLOBAL",3)~ THEN REPLY @32471 GOTO 41
  IF ~Global("41TempleQuest","GLOBAL",0)~ THEN REPLY @32545 DO ~SetGlobal("41TempleQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~~ THEN REPLY @32546 GOTO 29
END

IF ~~ THEN BEGIN 1
  SAY @32547
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 2
  SAY @32549
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 3
  SAY @32550
  IF ~~ THEN GOTO 0
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @32551
  IF ~OR(2)
        Race(LastTalkedToBy,GNOME)
        Race(LastTalkedToBy,HALFLING)
      OR(3)
        //Sequence(Myself,SLEEP)
        //Sequence(Myself,DIE)
        //Sequence(Myself,TWITCH)
        Global("Sequence","LOCALS",16)
        Global("Sequence","LOCALS",5)
        Global("Sequence","LOCALS",9)~ THEN REPLY @32552 DO ~AddXP2DA("IW2EX8H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@32202)
                                                             SetGlobal("41RescueQuest","GLOBAL",1)
                                                             EraseJournalEntry(@22971)
                                                             AddJournalEntry(@18898,QUEST_DONE)
                                                             SetGlobal("Sequence","LOCALS",1)
                                                             PlayDead(0)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~OR(2)
        Race(LastTalkedToBy,GNOME)
        Race(LastTalkedToBy,HALFLING)
      //!Sequence(Myself,SLEEP)
      //!Sequence(Myself,DIE)
      //!Sequence(Myself,TWITCH)
      !Global("Sequence","LOCALS",16)
      !Global("Sequence","LOCALS",5)
      !Global("Sequence","LOCALS",9)~ THEN REPLY @32552 DO ~AddXP2DA("IW2EX8H")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@32202)
                                                            SetGlobal("41RescueQuest","GLOBAL",1)
                                                            EraseJournalEntry(@22971)
                                                            AddJournalEntry(@18898,QUEST_DONE)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~!Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,HALFLING)
      OR(3)
        //Sequence(Myself,SLEEP)
        //Sequence(Myself,DIE)
        //Sequence(Myself,TWITCH)
        Global("Sequence","LOCALS",16)
        Global("Sequence","LOCALS",5)
        Global("Sequence","LOCALS",9)~ THEN REPLY @32553 DO ~AddXP2DA("IW2EX8H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@32202)
                                                             SetGlobal("41RescueQuest","GLOBAL",1)
                                                             EraseJournalEntry(@22971)
                                                             AddJournalEntry(@18898,QUEST_DONE)
                                                             SetGlobal("Sequence","LOCALS",1)
                                                             PlayDead(0)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~!Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,HALFLING)
      //!Sequence(Myself,SLEEP)
      //!Sequence(Myself,DIE)
      //!Sequence(Myself,TWITCH)
      !Global("Sequence","LOCALS",16)
      !Global("Sequence","LOCALS",5)
      !Global("Sequence","LOCALS",9)~ THEN REPLY @32553 DO ~AddXP2DA("IW2EX8H")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@32202)
                                                            SetGlobal("41RescueQuest","GLOBAL",1)
                                                            EraseJournalEntry(@22971)
                                                            AddJournalEntry(@18898,QUEST_DONE)~ FLAGS 0x200 GOTO 5 /*true*/
END

IF ~~ THEN BEGIN 5
  SAY @32554
  IF ~PartyHasItem("z4genzb")~ THEN REPLY @32555 DO ~TakePartyItem("z4genzb")~ GOTO 6
  IF ~~ THEN REPLY @32556 GOTO 8
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,1)~ THEN REPLY @32720 GOTO 0
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,2)~ THEN REPLY @32720 GOTO 1
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,3)~ THEN REPLY @32720 GOTO 2
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,4)~ THEN REPLY @32720 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32721 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32721 GOTO 30
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32722 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32722 GOTO 29
END

IF ~~ THEN BEGIN 6
  SAY @32723
  IF ~~ THEN REPLY @32724 GOTO 8
  IF ~OR(2)
        Global("41TempleQuest","GLOBAL",1)
        Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @32471 GOTO 11
  IF ~Global("41TempleQuest","GLOBAL",0)~ THEN REPLY @32545 DO ~SetGlobal("41TempleQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~Global("41TempleQuest","GLOBAL",3)~ THEN REPLY @32471 GOTO 41
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32725 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32725 GOTO 29
END

IF ~~ THEN BEGIN 7
  SAY @32726
  IF ~~ THEN REPLY @32730 GOTO 36
  IF ~OR(2)
        Global("41TempleQuest","GLOBAL",1)
        Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @32731 GOTO 11
  IF ~Global("41TempleQuest","GLOBAL",0)~ THEN REPLY @32731 DO ~SetGlobal("41TempleQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~Global("41TempleQuest","GLOBAL",3)~ THEN REPLY @32731 GOTO 41
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 GOTO 29
END

IF ~~ THEN BEGIN 8
  SAY @32733
  IF ~GlobalLT("41AochaQuest","GLOBAL",3)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @32734 DO ~SetGlobal("41AochaQuest","GLOBAL",2)~ GOTO 31
  IF ~GlobalLT("41AochaQuest","GLOBAL",2)~ THEN REPLY @32735 DO ~SetGlobal("41AochaQuest","GLOBAL",2)
                                                                 AddJournalEntry(@32188,QUEST)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,1)~ THEN REPLY @32720 GOTO 0
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,2)~ THEN REPLY @32720 GOTO 1
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,3)~ THEN REPLY @32720 GOTO 2
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,4)~ THEN REPLY @32720 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 GOTO 29
END

IF ~~ THEN BEGIN 9
  SAY @32736
  IF ~GlobalLT("41AochaQuest","GLOBAL",3)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @32737 DO ~SetGlobal("41AochaQuest","GLOBAL",2)~ GOTO 31
  IF ~GlobalLT("41AochaQuest","GLOBAL",2)~ THEN REPLY @32735 DO ~SetGlobal("41AochaQuest","GLOBAL",2)
                                                                 AddJournalEntry(@32188,QUEST)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~~ THEN REPLY @32797 GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @32798 DO ~SetGlobal("41RescueQuest","GLOBAL",3)~ GOTO 10 //5,Diplomacy
  IF ~!CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @32798 DO ~SetGlobal("41RescueQuest","GLOBAL",2)~ GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @32799 DO ~SetGlobal("41RescueQuest","GLOBAL",4)~ GOTO 10
  IF ~!CheckStatLT(LastTalkedToBy,13,CHR)
      !CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @32799 DO ~SetGlobal("41RescueQuest","GLOBAL",3)~ GOTO 10 //10,Diplomacy
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @32799 DO ~SetGlobal("41RescueQuest","GLOBAL",2)~ GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @32800 DO ~Enemy()~ EXIT
  IF ~!CheckStatLT(LastTalkedToBy,13,CHR)
      !CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @32800 DO ~SetGlobal("41RescueQuest","GLOBAL",4)~ GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @32800 DO ~SetGlobal("41RescueQuest","GLOBAL",3)~ GOTO 10
  IF ~~ THEN REPLY @32801 GOTO 29
END

IF ~~ THEN BEGIN 10
  SAY @32802
  IF ~RandomNum(4,1)~ THEN REPLY @32720 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @32720 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @32720 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @32720 GOTO 3
  IF ~~ THEN REPLY @32803 GOTO 30
  IF ~~ THEN REPLY @32804 GOTO 29
END

IF ~~ THEN BEGIN 11
  SAY @32805
  IF ~Global("41TempleQuest","GLOBAL",2)
      GlobalGT("41ZackTempleInfo","GLOBAL",0)~ THEN REPLY @32806 GOTO 32
  IF ~GlobalLT("41TempleQuest","GLOBAL",2)
      GlobalGT("41ZackTempleInfo","GLOBAL",0)~ THEN REPLY @32807 DO ~SetGlobal("41TempleQuest","GLOBAL",2)~ GOTO 32
  IF ~GlobalLT("41TempleQuest","GLOBAL",2)
      Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32808 DO ~SetGlobal("41TempleQuest","GLOBAL",2)
                                                                SetGlobal("41AochaQuest","GLOBAL",1)
                                                                AddJournalEntry(@32200,QUEST)~ FLAGS 0x200 GOTO 9
  IF ~GlobalLT("41TempleQuest","GLOBAL",2)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32808 DO ~SetGlobal("41TempleQuest","GLOBAL",2)
                                                                 AddJournalEntry(@32200,QUEST)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @425 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @425 GOTO 29
END

IF ~~ THEN BEGIN 12
  SAY @32810
  IF ~~ THEN REPLY @32811 DO ~GiveItemCreate("BRAC09",LastTalkedToBy,0,0,0)
                              GiveItemCreate("MISC43",LastTalkedToBy,0,0,0)
                              GiveItemCreate("z0ring75",LastTalkedToBy,0,0,0)
                              SetGlobal("41ZackAreaNum","GLOBAL",4100)
                              SetGlobal("41ZackTask","GLOBAL",14)
                              SetGlobal("41ZackAochaMove","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @32812
  IF ~RandomNum(4,1)~ THEN REPLY @32720 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @32720 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @32720 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @32720 GOTO 3
  IF ~~ THEN REPLY @32813 GOTO 30
  IF ~~ THEN REPLY @32814 GOTO 29
END

IF ~~ THEN BEGIN 14
  SAY @32815
  IF ~~ THEN REPLY @32816 DO ~SetGlobal("41ZackTask","GLOBAL",1)
                              SetGlobal("41ZackAreaNum","GLOBAL",4001)
                              SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @32817 GOTO 29
END

IF ~~ THEN BEGIN 15
  SAY @32818
  IF ~~ THEN REPLY @32819 DO ~SetGlobal("41ZackTask","GLOBAL",15)
                              SetGlobal("41ZackAreaNum","GLOBAL",4100)
                              SetGlobal("40OswaldAwake","GLOBAL",1)
                              SetGlobal("LeaveArea","LOCALS",1)~ GOTO 29
END

IF ~~ THEN BEGIN 16
  SAY @32820
  IF ~Global("41PlayerSawTopAltar","GLOBAL",1)
      !Global("41FakeAltarDestroyed","GLOBAL",1)
      !AreaCheck("IW4101")~ THEN REPLY @32821 DO ~SetGlobal("41ZackTask","GLOBAL",3)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4101)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~Global("41PlayerSawTopAltar","GLOBAL",1)
      !Global("41FakeAltarDestroyed","GLOBAL",1)
      AreaCheck("IW4101")~ THEN REPLY @32821 DO ~SetGlobal("41ZackTask","GLOBAL",3)~ EXIT
  IF ~Global("41PlayerSawBottomAltar","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",0)
      !AreaCheck("IW4102")~ THEN REPLY @32822 DO ~SetGlobal("41ZackTask","GLOBAL",6)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4102)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~Global("41PlayerSawBottomAltar","GLOBAL",1)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",0)
      AreaCheck("IW4102")~ THEN REPLY @32822 DO ~SetGlobal("41ZackTask","GLOBAL",6)~ EXIT
  IF ~!AreaCheck("IW4100")~ THEN REPLY @32823 DO ~SetGlobal("41ZackTask","GLOBAL",15)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4100)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~AreaCheck("IW4100")~ THEN REPLY @32823 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 17
  SAY @32824
  IF ~Global("41ZackTask","GLOBAL",4)~ THEN REPLY @32819 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 35
  IF ~Global("41ZackTask","GLOBAL",7)~ THEN REPLY @32819 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 18
  SAY @32825
  IF ~AreaCheck("IW4101")~ THEN REPLY @32826 DO ~SetGlobal("41ZackTask","GLOBAL",3)~ GOTO 29
  IF ~AreaCheck("IW4102")~ THEN REPLY @32826 DO ~SetGlobal("41ZackTask","GLOBAL",6)~ GOTO 29
  IF ~!AreaCheck("IW4100")~ THEN REPLY @32827 DO ~SetGlobal("41ZackTask","GLOBAL",15)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4100)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~AreaCheck("IW4100")~ THEN REPLY @32827 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 19
  SAY @32828
  IF ~~ THEN REPLY @32829 DO ~SetGlobal("41ZackTask","GLOBAL",9)~ GOTO 29
  IF ~~ THEN REPLY @32823 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 20
  SAY @32830
  IF ~AreaCheck("IW4000")~ THEN REPLY @32917 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                 SetGlobalTimer("41BelladonnaTimer","GLOBAL",300)~ GOTO 33
  IF ~!AreaCheck("IW4000")~ THEN REPLY @32917 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4000)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",300)~ GOTO 34
  IF ~AreaCheck("IW4100")~ THEN REPLY @32918 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                 SetGlobalTimer("41BelladonnaTimer","GLOBAL",2400)~ GOTO 33
  IF ~!AreaCheck("IW4100")~ THEN REPLY @32918 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4100)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",2400)~ GOTO 34
  IF ~AreaCheck("IW4101")~ THEN REPLY @32919 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                 SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)~ GOTO 33
  IF ~!AreaCheck("IW4101")~ THEN REPLY @32919 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4101)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)~ GOTO 34
  IF ~AreaCheck("IW4102")~ THEN REPLY @32920 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                 SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)~ GOTO 33
  IF ~!AreaCheck("IW4102")~ THEN REPLY @32920 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4102)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)~ GOTO 34
  IF ~~ THEN REPLY @32823 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 21
  SAY @32921
  IF ~~ THEN REPLY @32819 GOTO 29
END

IF ~~ THEN BEGIN 22
  SAY @32922
  IF ~~ THEN REPLY @21776 EXIT
  IF ~!AreaCheck("IW4000")~ THEN REPLY @32924 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4000)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",300)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~!AreaCheck("IW4100")~ THEN REPLY @32925 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4100)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",2400)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~!AreaCheck("IW4101")~ THEN REPLY @32926 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4101)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~!AreaCheck("IW4102")~ THEN REPLY @32927 DO ~SetGlobal("41ZackTask","GLOBAL",11)
                                                  SetGlobal("41ZackAreaNum","GLOBAL",4102)
                                                  SetGlobalTimer("41BelladonnaTimer","GLOBAL",7200)
                                                  SetGlobal("LeaveArea","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @32827 DO ~SetGlobal("41ZackTask","GLOBAL",0)~ GOTO 29
END

IF ~~ THEN BEGIN 23
  SAY @32928
  IF ~~ THEN REPLY @32811 EXIT
END

IF ~Global("41AochaQuest","GLOBAL",2)~ THEN BEGIN 24
  SAY @32929
  IF ~GlobalLT("41AochaQuest","GLOBAL",3)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @32930 DO ~SetGlobal("41AochaQuest","GLOBAL",2)~ GOTO 31
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,1)~ THEN REPLY @32720 GOTO 0
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,2)~ THEN REPLY @32720 GOTO 1
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,3)~ THEN REPLY @32720 GOTO 2
  IF ~!Global("41RescueQuest","GLOBAL",1)
      RandomNum(4,4)~ THEN REPLY @32720 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32931 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32931 GOTO 30
  IF ~~ THEN REPLY @33288 DO ~AddJournalEntry(@32188,QUEST)~ GOTO 29
END

IF ~Global("41TempleQuest","GLOBAL",2)~ THEN BEGIN 25
  SAY @33289
  IF ~GlobalGT("41ZackTempleInfo","GLOBAL",0)~ THEN REPLY @32930 GOTO 32
  IF ~RandomNum(4,1)~ THEN REPLY @33290 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @33290 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @33290 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @33290 GOTO 3
  IF ~~ THEN REPLY @32931 GOTO 30
  IF ~~ THEN REPLY @33297 GOTO 29
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 26
  SAY @33298
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~RandomNum(4,1)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 GOTO 0
  IF ~RandomNum(4,2)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 GOTO 1
  IF ~RandomNum(4,3)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 GOTO 2
  IF ~RandomNum(4,4)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32720 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32803 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~Global("41RescueQuest","GLOBAL",2)~ THEN REPLY @40330 DO ~StartStore("41Zack3",LastTalkedToBy)~ EXIT
  IF ~Global("41RescueQuest","GLOBAL",3)~ THEN REPLY @40331 DO ~StartStore("41Zack2",LastTalkedToBy)~ EXIT
  IF ~Global("41RescueQuest","GLOBAL",4)~ THEN REPLY @40332 DO ~StartStore("41Zack1",LastTalkedToBy)~ EXIT
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32722 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32722 GOTO 29
END

IF ~~ THEN BEGIN 27
  SAY @33299
  IF ~~ THEN REPLY @33300 DO ~SetGlobal("41ZackTask","GLOBAL",13)~ EXIT
  IF ~~ THEN REPLY @33307 DO ~SetGlobal("41ZackTask","GLOBAL",0)
                              ClearAllActions()~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @33308
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @33309
  IF ~Global("41AochaQuest","GLOBAL",2)
      !Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @33485 GOTO 27
  IF ~!Global("41AochaQuest","GLOBAL",2)
      Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @33485 GOTO 28
  IF ~Global("41AochaQuest","GLOBAL",2)
      Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @33485 GOTO 27
  IF ~!Global("41AochaQuest","GLOBAL",2)
      !Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @33485 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @33486
  IF ~Global("41RescueQuest","GLOBAL",2)~ THEN REPLY @33487 DO ~StartStore("41Zack3",LastTalkedToBy)~ EXIT
  IF ~Global("41RescueQuest","GLOBAL",3)~ THEN REPLY @33487 DO ~StartStore("41Zack2",LastTalkedToBy)~ EXIT
  IF ~Global("41RescueQuest","GLOBAL",4)~ THEN REPLY @33487 DO ~StartStore("41Zack1",LastTalkedToBy)~ EXIT
  IF ~RandomNum(4,1)~ THEN REPLY @33488 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @33488 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @33488 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @33488 GOTO 3
  IF ~~ THEN REPLY @33489 GOTO 29
END

IF ~~ THEN BEGIN 31
  SAY @33490
  IF ~GlobalLT("41RescueQuest","GLOBAL",4)
      Global("SPRITE_IS_DEADAocha","GLOBAL",0)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @33491 DO ~AddXP2DA("IW2EX8VH")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                   SetGlobal("41AochaQuest","GLOBAL",3)
                                                                   SetGlobal("41RescueQuest","GLOBAL",2)
                                                                   EraseJournalEntry(@32188)
                                                                   AddJournalEntry(@32189,QUEST_DONE)~ GOTO 12
  IF ~Global("41RescueQuest","GLOBAL",4)
      Global("SPRITE_IS_DEADAocha","GLOBAL",0)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @33491 DO ~AddXP2DA("IW2EX8VH")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                   SetGlobal("41AochaQuest","GLOBAL",3)
                                                                   SetGlobal("41RescueQuest","GLOBAL",3)
                                                                   EraseJournalEntry(@32188)
                                                                   AddJournalEntry(@32189,QUEST_DONE)~ GOTO 12
  IF ~Global("41RescueQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADAocha","GLOBAL",0)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @33492 DO ~AddXP2DA("IW2EX8H")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                   SetGlobal("41AochaQuest","GLOBAL",3)
                                                                   SetGlobal("41RescueQuest","GLOBAL",3)
                                                                   EraseJournalEntry(@32188)
                                                                   AddJournalEntry(@32189,QUEST_DONE)~ GOTO 13
  IF ~GlobalGT("41RescueQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADAocha","GLOBAL",0)
      Global("41PlayerSawAocha","GLOBAL",1)~ THEN REPLY @33492 DO ~AddXP2DA("IW2EX8H")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                   SetGlobal("41AochaQuest","GLOBAL",3)
                                                                   SetGlobal("41RescueQuest","GLOBAL",4)
                                                                   EraseJournalEntry(@32188)
                                                                   AddJournalEntry(@32189,QUEST_DONE)~ GOTO 13
  IF ~Global("41PlayerKilledAocha","GLOBAL",1)
      !Global("SPRITE_IS_DEADAocha","GLOBAL",0)~ THEN REPLY @33493 DO ~AddXP2DA("IW2EX8H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                       SetGlobal("41AochaQuest","GLOBAL",3)
                                                                       SetGlobal("41RescueQuest","GLOBAL",4)
                                                                       EraseJournalEntry(@32188)
                                                                       AddJournalEntry(@32189,QUEST_DONE)~ GOTO 13
  IF ~Global("41PlayerKilledAocha","GLOBAL",1)
      !Global("SPRITE_IS_DEADAocha","GLOBAL",0)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @33494 DO ~AddXP2DA("IW2EX8H")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@32226)
                                                                 SetGlobal("41AochaQuest","GLOBAL",3)
                                                                 EraseJournalEntry(@32188)
                                                                 AddJournalEntry(@32189,QUEST_DONE)
                                                                 Enemy()~ EXIT
  IF ~~ THEN REPLY @33495 GOTO 29
END

IF ~~ THEN BEGIN 32
  SAY @33496
  IF ~GlobalLT("41RescueQuest","GLOBAL",4)
      Global("41ZackTempleInfo","GLOBAL",1)~ THEN REPLY @33497 DO ~AddXP2DA("IW2EX8E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32227)
                                                                   SetGlobal("41RescueQuest","GLOBAL",2)
                                                                   SetGlobal("41TempleQuest","GLOBAL",3)
                                                                   AddJournalEntry(@32201,QUEST)~ GOTO 23
  IF ~Global("41RescueQuest","GLOBAL",4)
      Global("41ZackTempleInfo","GLOBAL",1)~ THEN REPLY @33497 DO ~AddXP2DA("IW2EX8E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32227)
                                                                   SetGlobal("41RescueQuest","GLOBAL",3)
                                                                   SetGlobal("41TempleQuest","GLOBAL",3)
                                                                   AddJournalEntry(@32201,QUEST)~ GOTO 23
  IF ~Global("41ZackTempleInfo","GLOBAL",2)~ THEN REPLY @33498 DO ~AddXP2DA("IW2EX8A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32228)
                                                                   SetGlobal("41RescueQuest","GLOBAL",2)
                                                                   SetGlobal("41TempleQuest","GLOBAL",3)
                                                                   AddJournalEntry(@32201,QUEST)~ GOTO 23
  IF ~Global("41ZackTempleInfo","GLOBAL",3)~ THEN REPLY @33499 DO ~AddXP2DA("IW2EX8H")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32229)
                                                                   SetGlobal("41RescueQuest","GLOBAL",2)
                                                                   SetGlobal("41TempleQuest","GLOBAL",3)
                                                                   AddJournalEntry(@32201,QUEST)~ GOTO 23
  IF ~Global("41ZackTempleInfo","GLOBAL",4)~ THEN REPLY @33577 DO ~AddXP2DA("IW2EX8VH")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@32231)
                                                                   SetGlobal("41RescueQuest","GLOBAL",2)
                                                                   SetGlobal("41TempleQuest","GLOBAL",3)
                                                                   AddJournalEntry(@32201,QUEST)~ GOTO 23
  IF ~RandomNum(4,1)~ THEN REPLY @33578 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @33578 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @33578 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @33578 GOTO 3
  IF ~~ THEN REPLY @33579 GOTO 30
  IF ~~ THEN REPLY @33580 GOTO 29
END

IF ~~ THEN BEGIN 33
  SAY @33581
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @33582
  IF ~~ THEN DO ~SetGlobal("LeaveArea","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @33583
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 36
  SAY @33584
  IF ~OR(2)
        Global("41TempleQuest","GLOBAL",1)
        Global("41TempleQuest","GLOBAL",2)~ THEN REPLY @33586 GOTO 11
  IF ~Global("41TempleQuest","GLOBAL",0)~ THEN REPLY @33586 DO ~SetGlobal("41TempleQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 11 /*true*/
  IF ~Global("41TempleQuest","GLOBAL",3)~ THEN REPLY @33586 GOTO 41
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @32732 GOTO 29
END

IF ~~ THEN BEGIN 37
  SAY @33587
  IF ~~ THEN REPLY @32930 DO ~SetGlobal("41WormTraining","GLOBAL",2)~ GOTO 38
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~RandomNum(4,1)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 0
  IF ~RandomNum(4,2)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 1
  IF ~RandomNum(4,3)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 2
  IF ~RandomNum(4,4)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33589 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33589 GOTO 30
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33590 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33590 GOTO 29
END

IF ~~ THEN BEGIN 38
  SAY @33591
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @33592
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @33593
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~RandomNum(4,1)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 0
  IF ~RandomNum(4,2)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 1
  IF ~RandomNum(4,3)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 2
  IF ~RandomNum(4,4)
      !Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33588 GOTO 3
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33594 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33594 GOTO 30
  IF ~Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33595 DO ~SetGlobal("41AochaQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~!Global("41RescueQuest","GLOBAL",1)~ THEN REPLY @33595 GOTO 29
END

IF ~~ THEN BEGIN 41
  SAY @33990
  IF ~RandomNum(4,1)~ THEN REPLY @33588 GOTO 0
  IF ~RandomNum(4,2)~ THEN REPLY @33588 GOTO 1
  IF ~RandomNum(4,3)~ THEN REPLY @33588 GOTO 2
  IF ~RandomNum(4,4)~ THEN REPLY @33588 GOTO 3
  IF ~~ THEN REPLY @33594 GOTO 30
  IF ~~ THEN REPLY @425 GOTO 29
END
