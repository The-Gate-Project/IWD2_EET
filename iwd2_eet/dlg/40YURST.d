BEGIN ~40YURST~

IF WEIGHT #3
~!Global("40YurstSave","GLOBAL",3)~ THEN BEGIN 0
  SAY @23562
  IF ~Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)

      !Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)
~ THEN REPLY @23649 DO ~IncrementGlobal("40YurstFlags2","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",2)
~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~!Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @23651 DO ~IncrementGlobal("40YurstFlags4","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",4)

                                                                  SetGlobal("40YurstSave","GLOBAL",1)~ GOTO 1
  IF ~!Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)
~ THEN REPLY @23681 DO ~IncrementGlobal("40YurstFlags2","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",2)
~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)

      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23683 GOTO 10
  IF ~!Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)

      Global("40PlayerSawGoublika","GLOBAL",1)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23684 GOTO 10
  IF ~!Global("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23690 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~!Global("40YurstFlags1","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",1)

      !Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)

      Global("40FomoriansDefeated","GLOBAL",1 )~ THEN REPLY @23691 DO ~IncrementGlobal("40YurstFlags1","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",1)
~ FLAGS 0x200 GOTO 21 /*true*/
  IF ~GlobalLT("40YurstSave","GLOBAL",2)
      Global("40PlayerSawGoublika","GLOBAL",1)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @24668 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~GlobalLT("40YurstSave","GLOBAL",2)
      !Global("40PlayerSawGoublika","GLOBAL",1)
      !Global("40FomoriansDefeated","GLOBAL",1)
      Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)
~ THEN REPLY @25524 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~Global("40YurstFlags8","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",8)
~ THEN REPLY @25525 GOTO 3
  IF ~~ THEN REPLY @25529 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25530
  IF ~!Global("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23690 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~~ THEN REPLY @25531 GOTO 2
  IF ~!Global("40YurstSave","GLOBAL",2)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25532 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~~ THEN REPLY @25533 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @25534
  IF ~!Global("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23690 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~!Global("40YurstSave","GLOBAL",2)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25535 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~!Global("40YurstSave","GLOBAL",2)
      Global("40PlayerSawGoublika","GLOBAL",1)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @24668 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~!Global("40PlayerSawGoublika","GLOBAL",1)~ THEN REPLY @25536 GOTO 3
  IF ~!Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25537 GOTO 10
  IF ~!Global("40YurstFlags8","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",8)
~ THEN REPLY @25538 DO ~IncrementGlobal("40YurstFlags8","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",8)
~ GOTO 3
  IF ~~ THEN REPLY @25533 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @25539
  IF ~!Global("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25609 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~!Global("40YurstSave","GLOBAL",2)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25611 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~!Global("40PlayerSawGoublika","GLOBAL",1)~ THEN REPLY @25612 GOTO 23
  IF ~~ THEN REPLY @25533 EXIT
END

IF WEIGHT #5
~Global("40YurstTraps","GLOBAL",1)~ THEN BEGIN 4
  SAY @25614
  IF ~~ THEN REPLY @25615 DO ~SetGlobal("40YurstTraps","GLOBAL",2)
                              AddJournalEntry(@23531,QUEST)~ EXIT
  IF ~Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @25789 GOTO 17
  IF ~!Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @23651 DO ~IncrementGlobal("40YurstFlags4","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",4)
~ FLAGS 0x200 GOTO 17 /*true*/
  IF ~~ THEN REPLY @25791 EXIT
END

IF WEIGHT #2
~GlobalGT("40YurstTraps","GLOBAL",1)~ THEN BEGIN 5
  SAY @25792
  IF ~Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @25789 GOTO 17
  IF ~!Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @23651 DO ~IncrementGlobal("40YurstFlags4","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",4)
~ FLAGS 0x200 GOTO 17 /*true*/
  IF ~~ THEN REPLY @25793 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @25794
  IF ~PartyHasItem("z4genpwc")~ THEN REPLY @25795 DO ~AddXP2DA("IW2EX7A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@23540)
                                                      SetGlobal("40YurstHeal","GLOBAL",3)
                                                      TakePartyItem("z4genpwc")
                                                      EraseJournalEntry(@20802)
                                                      EraseJournalEntry(@23531)
                                                      EraseJournalEntry(@21669)
                                                      AddJournalEntry(@20802,QUEST_DONE)
                                                      AddJournalEntry(@21671,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @25796 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25798
  IF ~~ THEN REPLY @28288 GOTO 14
  IF ~~ THEN REPLY @28291 GOTO 14
  IF ~~ THEN REPLY @28292 GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @28293
  IF ~!Global("40YurstTraps","GLOBAL",2)
      GlobalLT("TrapRemovalCount","MYAREA",12)~ THEN REPLY @28294 DO ~SetGlobal("40YurstTraps","GLOBAL",2)
                                                                      AddJournalEntry(@23531,QUEST)~ EXIT
  IF ~Global("TrapRemovalCount","MYAREA",12)
      GlobalLT("40YurstTraps","GLOBAL",3)~ THEN REPLY @28296 DO ~SetGlobal("40YurstTraps","GLOBAL",2)~ GOTO 9
  IF ~~ THEN REPLY @28297 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28298
  IF ~!Global("40YurstSave","GLOBAL",3)~ THEN GOTO 11
  IF ~Global("40YurstSave","GLOBAL",3)
      !Global("40YurstHeal", "GLOBAL",3)~ THEN GOTO 13
  IF ~Global("40YurstSave","GLOBAL",3)
      Global("40YurstHeal", "GLOBAL",3)~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @28300
  IF ~Global("40YurstFlags1","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",1)

      !Global("40YurstSave","GLOBAL",3)~ THEN REPLY @28302 DO ~SetGlobal("40YurstSave","GLOBAL",3)
                                                               IncrementGlobal("40YurstFlags1","GLOBAL",-1)
//IncrementGlobal("40YurstFlags","GLOBAL",-1)
~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~~ THEN REPLY @28297 EXIT
END

IF WEIGHT #0
~Global("40YurstSave","GLOBAL",2)~ THEN BEGIN 11
  SAY @28303
  IF ~GlobalLT("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)
      Global("40GoublikaQuest","GLOBAL",3)~ THEN REPLY @28304 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~GlobalLT("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)
      OR(3)
        Global("SPRITE_IS_DEAD03_Fomorian_01","GLOBAL",0)
        Global("SPRITE_IS_DEAD03_Fomorian_02","GLOBAL",0)
        Global("SPRITE_IS_DEAD03_Fomorian_03","GLOBAL",0)
      !Global("40GoublikaQuest", "GLOBAL",3)~ THEN REPLY @28305 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~GlobalLT("40YurstSave","GLOBAL",3)
      Global("40FomoriansDefeated","GLOBAL",1)
      !Global("SPRITE_IS_DEAD03_Fomorian_01","GLOBAL",0)
      !Global("SPRITE_IS_DEAD03_Fomorian_02","GLOBAL",0)
      !Global("SPRITE_IS_DEAD03_Fomorian_03","GLOBAL",0)
      !Global("40GoublikaQuest", "GLOBAL",3)~ THEN REPLY @28306 DO ~SetGlobal("40YurstSave","GLOBAL",3)~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)

      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @23683 GOTO 10
  IF ~!Global("40YurstFlags2","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",2)

      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @28308 DO ~IncrementGlobal("40YurstFlags2","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",2)
~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @25789 GOTO 1
  IF ~!Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @23651 DO ~IncrementGlobal("40YurstFlags4","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",4)
~ GOTO 1
  IF ~!Global("40YurstSave","GLOBAL",2)
      !Global("40FomoriansDefeated","GLOBAL",1)~ THEN REPLY @25611 DO ~SetGlobal("40YurstSave","GLOBAL",2)
                                                                       AddJournalEntry(@20802,QUEST)~ EXIT
  IF ~Global("40FomoriansDefeated","GLOBAL",0)~ THEN REPLY @28309 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @28310
  IF ~GlobalGT("40YurstSave","GLOBAL",0)~ THEN REPLY @28311 DO ~AddXP2DA("IW2EX7VH")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@23538)
                                                                SetGlobal("40YurstHeal","GLOBAL",1)
                                                                AddJournalEntry(@21668,QUEST_DONE)~ GOTO 13
  IF ~~ THEN REPLY @28312 DO ~AddXP2DA("IW2EX7VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23538)
                              SetGlobal("40YurstHeal","GLOBAL",1)
                              AddJournalEntry(@21668,QUEST_DONE)~ GOTO 13
  IF ~~ THEN REPLY @28314 DO ~AddXP2DA("IW2EX7VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23538)
                              SetGlobal("40YurstHeal","GLOBAL",1)
                              AddJournalEntry(@21668,QUEST_DONE)~ GOTO 13
  IF ~~ THEN REPLY @28319 DO ~AddXP2DA("IW2EX7VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23538)
                              AddJournalEntry(@21668,QUEST_DONE)~ EXIT
END

IF WEIGHT #4
~!Global("40YurstHeal","GLOBAL",3)~ THEN BEGIN 13
  SAY @28320
  IF ~!PartyHasItem("z4genpwc")~ THEN REPLY @28601 DO ~SetGlobal("40YurstHeal","GLOBAL",2)
                                                       AddJournalEntry(@21669,QUEST)~ EXIT
  IF ~PartyHasItem("z4genpwc")~ THEN REPLY @28636 DO ~AddXP2DA("IW2EX7A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@23540)
                                                      SetGlobal("40YurstHeal","GLOBAL",3)
                                                      TakePartyItem("z4genpwc")
                                                      EraseJournalEntry(@20802)
                                                      EraseJournalEntry(@23531)
                                                      EraseJournalEntry(@21669)
                                                      AddJournalEntry(@20802,QUEST_DONE)
                                                      AddJournalEntry(@21671,QUEST)~ GOTO 16
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN17")~ THEN REPLY @28637 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN17",1)
                                                    UseItem("POTN17",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN08")~ THEN REPLY @28638 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN08",1)
                                                    UseItem("POTN08",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN52")~ THEN REPLY @28639 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN52",1)
                                                    UseItem("POTN52",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN55")~ THEN REPLY @1000079 DO ~AddXP2DA("IW2EX4E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                      IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                      TakePartyItemNum("POTN55",1)
                                                      UseItem("POTN55",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("SPIRIT")~ THEN REPLY @28640 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("SPIRIT",1)
                                                    UseItem("SPIRIT",Myself)~ GOTO 6
  IF ~PartyHasItem("POTN26")
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28641 DO ~AddXP2DA("IW2EX4E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@23544)
                                                                 TakePartyItemNum("POTN26",1)
                                                                 UseItem("POTN26",Myself)
                                                                 Kill(Myself)~ EXIT
  IF ~~ THEN REPLY @28642 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @28643
  IF ~~ THEN REPLY @28796 GOTO 22
END

IF WEIGHT #1
~Global("40YurstHeal","GLOBAL",2)~ THEN BEGIN 15
  SAY @28853
  IF ~PartyHasItem("z4genpwc")~ THEN REPLY @28855 DO ~AddXP2DA("IW2EX7A")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@23540)
                                                      SetGlobal("40YurstHeal","GLOBAL",3)
                                                      TakePartyItem("z4genpwc")
                                                      EraseJournalEntry(@20802)
                                                      EraseJournalEntry(@23531)
                                                      EraseJournalEntry(@21669)
                                                      AddJournalEntry(@20802,QUEST_DONE)
                                                      AddJournalEntry(@21671,QUEST)~ GOTO 16
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN17")~ THEN REPLY @28637 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN17",1)
                                                    UseItem("POTN17",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN08")~ THEN REPLY @28638 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN08",1)
                                                    UseItem("POTN08",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN52")~ THEN REPLY @28639 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("POTN52",1)
                                                    UseItem("POTN52",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("POTN55")~ THEN REPLY @1000079 DO ~AddXP2DA("IW2EX4E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                      IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                      TakePartyItemNum("POTN55",1)
                                                      UseItem("POTN55",Myself)~ GOTO 6
  IF ~!Global("40YurstFlags64","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",64)

      PartyHasItem("SPIRIT")~ THEN REPLY @28640 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@23543)
                                                    IncrementGlobal("40YurstFlags64","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",64)

                                                    TakePartyItemNum("SPIRIT",1)
                                                    UseItem("SPIRIT",Myself)~ GOTO 6
  IF ~PartyHasItem("POTN26")
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @28641 DO ~AddXP2DA("IW2EX4E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@23544)
                                                                 TakePartyItemNum("POTN26",1)
                                                                 UseItem("POTN26",Myself)
                                                                 Kill(Myself)~ EXIT
  IF ~~ THEN REPLY @28309 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @28856
  IF ~Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @28857 GOTO 17
  IF ~!Global("40YurstFlags4","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",4)
~ THEN REPLY @28859 DO ~IncrementGlobal("40YurstFlags4","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",4)
~ FLAGS 0x200 GOTO 17 /*true*/
END

IF WEIGHT #6 ~True()~ THEN BEGIN 17
  SAY @29000
  IF ~Global("40YurstFlags32","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",32)
~ THEN REPLY @29001 GOTO 18
  IF ~!Global("40YurstFlags32","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",32)
~ THEN REPLY @29005 DO ~IncrementGlobal("40YurstFlags32","GLOBAL",1)
//IncrementGlobal("40YurstFlags","GLOBAL",32)
~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @37294
  IF ~~ THEN REPLY @40887 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @40888
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @40890
  IF ~~ THEN REPLY @40891 GOTO 7
  IF ~~ THEN REPLY @40892 GOTO 7
END

IF ~~ THEN BEGIN 21
  SAY @40894
  IF ~Global("40YurstFlags1","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",1)

      !Global("40YurstSave","GLOBAL",3)~ THEN REPLY @40895 DO ~SetGlobal("40YurstSave","GLOBAL",3)
                                                               IncrementGlobal("40YurstFlags1","GLOBAL",-1)
//IncrementGlobal("40YurstFlags","GLOBAL",-1)
~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~~ THEN REPLY @40896 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @40897
  IF ~~ THEN REPLY @41354 GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @40898
  IF ~Global("40YurstFlags1","GLOBAL",1)
//BitCheck("40YurstFlags","GLOBAL",1)

      !Global("40YurstSave","GLOBAL",3)~ THEN REPLY @40899 DO ~SetGlobal("40YurstSave","GLOBAL",3)
                                                               IncrementGlobal("40YurstFlags1","GLOBAL",-1)
//IncrementGlobal("40YurstFlags","GLOBAL",-1)
~ FLAGS 0x200 GOTO 12 /*true*/
  IF ~~ THEN REPLY @40896 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @41351
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @41353
  IF ~~ THEN DO ~Kill(Myself)~ EXIT
END
