BEGIN ~52ARUMA~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10750
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10752 DO ~Enemy()~ GOTO 11
  IF ~~ THEN REPLY @10751 DO ~SetGlobal("52Aruma_Request","GLOBAL",1)
                              AddJournalEntry(@10742,QUEST)~ GOTO 8
END

IF WEIGHT #4
~True()~ THEN BEGIN 1
  SAY @10754
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10759
  IF ~~ THEN REPLY @10760 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @10761
  IF ~~ THEN EXTERN ~52DOLON~ 7
END

IF ~~ THEN BEGIN 4
  SAY @10764
  IF ~~ THEN EXTERN ~52DOLON~ 8
END

IF ~~ THEN BEGIN 5
  SAY @10765
  IF ~~ THEN EXTERN ~52DOLON~ 10
END

IF ~~ THEN BEGIN 6
  SAY @10766
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10767
  IF ~~ THEN REPLY @10768 DO ~SetGlobal("52Aruma_Gone","GLOBAL",1)
                              AddJournalEntry(@10743,QUEST)~ EXTERN ~52DOLON~ 11
END

IF ~~ THEN BEGIN 8
  SAY @11100
  IF ~~ THEN REPLY @11135 GOTO 9
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25679
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @38501 GOTO 27
  IF ~!Class(LastTalkedToBy,MONK)~ THEN REPLY @25680 GOTO 14
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @30764
  IF ~GlobalLT("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11135 GOTO 9
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @30765
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @30766
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @30767
  IF ~~ THEN REPLY @30768 DO ~SetGlobal("52Exile","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @30769
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END

IF WEIGHT #2
~Global("52Aruma_Gone","GLOBAL",1)~ THEN BEGIN 15
  SAY @30770
  IF ~~ THEN REPLY @10768 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @30771
  IF ~~ THEN REPLY @30772 GOTO 17
  IF ~~ THEN REPLY @30775 DO ~SetGlobal("52Salisam_Offer","GLOBAL",2)~ GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @30776
  IF ~~ THEN REPLY @30777 DO ~AddXP2DA("IW2EX11E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10748)
                              SetGlobal("52Salisam_Offer","GLOBAL",2)
                              EraseJournalEntry(@10463)
                              EraseJournalEntry(@10464)
                              EraseJournalEntry(@10747)
                              AddJournalEntry(@10745,QUEST)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @30778
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @30779 EXIT
END

IF WEIGHT #1
~Global("52Salisam_Offer","GLOBAL",2)~ THEN BEGIN 19
  SAY @30780
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @30779 EXIT
END

IF WEIGHT #0
~Global("52Morohem_Master","GLOBAL",9)~ THEN BEGIN 20
  SAY @30781
  IF ~!Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @30788 DO ~AddXP2DA("IW2EX11A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10749)
                                                                   SetGlobal("52Salisam_Offer","GLOBAL",3)
                                                                   EraseJournalEntry(@10462)
                                                                   EraseJournalEntry(@10463)
                                                                   EraseJournalEntry(@10464)
                                                                   EraseJournalEntry(@10465)
                                                                   EraseJournalEntry(@9878)
                                                                   EraseJournalEntry(@10742)
                                                                   EraseJournalEntry(@10745)
                                                                   EraseJournalEntry(@10747)
                                                                   EraseJournalEntry(@10932)
                                                                   EraseJournalEntry(@10931)
                                                                   AddJournalEntry(@10746,QUEST_DONE)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~!Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @30779 DO ~AddXP2DA("IW2EX11A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10749)
                                                                   SetGlobal("52Salisam_Offer","GLOBAL",3)
                                                                   EraseJournalEntry(@10462)
                                                                   EraseJournalEntry(@10463)
                                                                   EraseJournalEntry(@10464)
                                                                   EraseJournalEntry(@10465)
                                                                   EraseJournalEntry(@9878)
                                                                   EraseJournalEntry(@10742)
                                                                   EraseJournalEntry(@10745)
                                                                   EraseJournalEntry(@10747)
                                                                   EraseJournalEntry(@10932)
                                                                   EraseJournalEntry(@10931)
                                                                   AddJournalEntry(@10746,QUEST_DONE)~ EXIT
  IF ~Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @30788 GOTO 10
  IF ~Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @30779 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @30790
  IF ~~ THEN DO ~AddJournalEntry(@10747,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @30793
  IF ~OR(2)
        CheckStatGT(LastTalkedToBy,16,CON)
        CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @30794 GOTO 23
  IF ~//Or(2)
      CheckStatLT(LastTalkedToBy,17,CON)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @30794 GOTO 24
  IF ~~ THEN REPLY @30796 DO ~AddJournalEntry(@32061,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @30798 DO ~AddJournalEntry(@32062,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY @30799
  IF ~GlobalLT("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11135 GOTO 9
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10744,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @30800
  IF ~~ THEN REPLY @30796 DO ~AddJournalEntry(@32061,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @30798 DO ~AddJournalEntry(@32062,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @30801
  IF ~~ THEN DO ~Enemy()
                 SetGlobal("TEAM_0_ENEMY","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @30801
  IF ~~ THEN DO ~Enemy()
                 SetGlobal("52PC_Flee","GLOBAL",1)
                 SetGlobal("TEAM_0_ENEMY","MYAREA",1)
                 StartCutSceneMode()
                 StartCutScene("PC_5200a")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @38500
  IF ~~ THEN REPLY @419 GOTO 14
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ EXTERN ~52DOLON~ 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10755 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 21
  IF ~Global("52Salisam_Offer","GLOBAL",1)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @30763 GOTO 13
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10756 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               AddJournalEntry(@10498,QUEST_DONE)~ GOTO 12
  IF ~~ THEN REPLY @10757 GOTO 10
  IF ~~ THEN REPLY @10758 EXIT
END
