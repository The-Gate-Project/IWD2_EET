BEGIN ~52SALISA~

IF WEIGHT #12
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10510
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @10516
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @10518
  IF ~~ THEN REPLY @10522 GOTO 3
  IF ~~ THEN REPLY @10523 GOTO 4
  IF ~~ THEN REPLY @10524 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10525
  IF ~~ THEN REPLY @10526 GOTO 4
  IF ~~ THEN REPLY @10524 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10527
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      GlobalGT("52Aruma_Gone","GLOBAL",0)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10528 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10498,QUEST_DONE)~ GOTO 22
  IF ~~ THEN REPLY @10524 EXIT
END

IF WEIGHT #13
~True()~ THEN BEGIN 5
  SAY @10529
  IF ~Global("52Aruma_Request","GLOBAL",1)~ THEN REPLY @10530 DO ~SetGlobal("52Salisam_Offer","GLOBAL",1)~ GOTO 6
  IF ~!Global("52Aruma_Request","GLOBAL",1)~ THEN REPLY @10531 GOTO 4
  IF ~!Global("52Aruma_Request","GLOBAL",1)~ THEN REPLY @10532 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10533
  IF ~~ THEN REPLY @10534 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10535
  IF ~~ THEN REPLY @10537 GOTO 8
  IF ~~ THEN REPLY @10534 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @10538
  IF ~!Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10539 GOTO 9
  IF ~Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10539 GOTO 25
END

IF ~~ THEN BEGIN 9
  SAY @10540
  IF ~!Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10534 GOTO 10
  IF ~Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10534 GOTO 25
END

IF ~~ THEN BEGIN 10
  SAY @10541
  IF ~~ THEN REPLY @10534 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @10542
  IF ~~ THEN REPLY @10543 GOTO 12
  IF ~~ THEN REPLY @10534 DO ~AddJournalEntry(@10463,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @10544
  IF ~!Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10539 DO ~AddJournalEntry(@10463,QUEST)~ GOTO 13
  IF ~Global("52Salisam_Offer","GLOBAL",0)~ THEN REPLY @10539 GOTO 27
END

IF ~~ THEN BEGIN 13
  SAY @10545
  IF ~~ THEN REPLY @10546 GOTO 14
  IF ~~ THEN REPLY @10769 GOTO 15
  IF ~~ THEN REPLY @10770 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @10771
  IF ~~ THEN REPLY @10769 GOTO 15
  IF ~~ THEN REPLY @10770 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @10772
  IF ~~ THEN REPLY @10773 GOTO 16
  IF ~~ THEN REPLY @10546 GOTO 14
  IF ~~ THEN REPLY @10770 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @10774
  IF ~~ THEN REPLY @10546 GOTO 14
  IF ~~ THEN REPLY @10770 EXIT
END

IF WEIGHT #6
~Global("52Salisam_Offer","GLOBAL",1)~ THEN BEGIN 17
  SAY @10775
  IF ~PartyHasItem("z5gendol")~ THEN REPLY @10776 DO ~AddJournalEntry(@10464,QUEST)~ GOTO 20
  IF ~~ THEN REPLY @10777 GOTO 4
  IF ~~ THEN REPLY @10778 EXIT
END

IF WEIGHT #5
~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN BEGIN 18
  SAY @11074
  IF ~!Global("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11080 DO ~AddXP2DA("IW2EX11E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10507)
                                                                   SetGlobal("52Salisam_Offer","GLOBAL",2)
                                                                   EraseJournalEntry(@10463)
                                                                   EraseJournalEntry(@10464)
                                                                   EraseJournalEntry(@10747)
                                                                   AddJournalEntry(@10465,QUEST)~ GOTO 4
  IF ~!Global("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11087 DO ~AddXP2DA("IW2EX11E")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10507)
                                                                   SetGlobal("52Salisam_Offer","GLOBAL",2)
                                                                   EraseJournalEntry(@10463)
                                                                   EraseJournalEntry(@10464)
                                                                   EraseJournalEntry(@10747)
                                                                   AddJournalEntry(@10465,QUEST)~ EXIT
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      Global("52Salisam_Offer","GLOBAL",2)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10528 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10498,QUEST_DONE)~ GOTO 22
  IF ~Global("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11080 GOTO 4
  IF ~Global("52Salisam_Offer","GLOBAL",2)~ THEN REPLY @11087 EXIT
END

IF WEIGHT #3
~Global("52Morohem_Master","GLOBAL",9)~ THEN BEGIN 19
  SAY @11088
  IF ~!Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @29089 DO ~AddXP2DA("IW2EX11A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10508)
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
                                                                   AddJournalEntry(@10466,QUEST_DONE)~ GOTO 4
  IF ~!Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @29090 DO ~AddXP2DA("IW2EX11A")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@10508)
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
                                                                   AddJournalEntry(@10466,QUEST_DONE)~ EXIT
  IF ~GlobalGT("52Ven_Loot","GLOBAL",0)
      Global("52Salisam_Offer","GLOBAL",3)
      GlobalLT("52Ven_Loot","GLOBAL",4)~ THEN REPLY @10528 DO ~SetGlobal("52Ven_Loot","GLOBAL",4)
                                                               EraseJournalEntry(@10025)
                                                               EraseJournalEntry(@10026)
                                                               AddJournalEntry(@10498,QUEST_DONE)~ GOTO 22
  IF ~Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @29089 GOTO 4
  IF ~Global("52Salisam_Offer","GLOBAL",3)~ THEN REPLY @29090 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @29091
  IF ~~ THEN REPLY @10770 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @29092
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @29093
  IF ~~ THEN REPLY @29094 GOTO 4
  IF ~~ THEN REPLY @29095 EXIT
END

IF WEIGHT #4
~GlobalGT("52Aruma_Gone","GLOBAL",0)
 Global("52Salisam_Offer","GLOBAL",0)~ THEN BEGIN 23
  SAY @29096
  IF ~~ THEN REPLY @10534 GOTO 7
END

IF ~~ THEN BEGIN 24
  SAY @29097
  IF ~~ THEN REPLY @10537 GOTO 8
  IF ~~ THEN REPLY @10534 GOTO 9
END

IF ~~ THEN BEGIN 25
  SAY @29098
  IF ~~ THEN REPLY @10534 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @30877
  IF ~~ THEN REPLY @30878 GOTO 12
  IF ~~ THEN REPLY @10534 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @30879
  IF ~~ THEN REPLY @11080 DO ~AddXP2DA("IW2EX11E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10507)
                              SetGlobal("52Salisam_Offer","GLOBAL",2)
                              EraseJournalEntry(@10463)
                              EraseJournalEntry(@10464)
                              EraseJournalEntry(@10747)
                              AddJournalEntry(@10465,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @11087 DO ~AddXP2DA("IW2EX11E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10507)
                              SetGlobal("52Salisam_Offer","GLOBAL",2)
                              EraseJournalEntry(@10463)
                              EraseJournalEntry(@10464)
                              EraseJournalEntry(@10747)
                              AddJournalEntry(@10465,QUEST)~ EXIT
END

IF WEIGHT #1
~GlobalGT("52Exile","GLOBAL",0)
 AreaCheck("IW5200")~ THEN BEGIN 28
  SAY @30880
  IF ~~ THEN REPLY @30881 GOTO 29
  IF ~~ THEN REPLY @30882 GOTO 32
  IF ~~ THEN REPLY @30883 GOTO 32
  IF ~~ THEN REPLY @30884 GOTO 32
  IF ~~ THEN REPLY @30885 GOTO 33
END

IF ~~ THEN BEGIN 29
  SAY @30886
  IF ~~ THEN REPLY @30887 GOTO 30
  IF ~~ THEN REPLY @30888 GOTO 30
  IF ~~ THEN REPLY @30889 GOTO 32
END

IF ~~ THEN BEGIN 30
  SAY @30890
  IF ~~ THEN REPLY @30891 GOTO 31
  IF ~~ THEN REPLY @30892 GOTO 32
END

IF ~~ THEN BEGIN 31
  SAY @30893
  IF ~~ THEN REPLY @29095 DO ~SetGlobal("52Monks_Leave","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @30894
  IF ~~ THEN REPLY @30895 GOTO 29
  IF ~~ THEN REPLY @30896 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @30897
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~GlobalGT("52Monks_Leave","GLOBAL",0)~ THEN BEGIN 34
  SAY @30898
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~NumTimesTalkedTo(0)
 Kit(LastTalkedToBy,OLD_ORDER)~ THEN BEGIN 35
  SAY @38520
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END

IF WEIGHT #8
~NumTimesTalkedTo(0)
 Kit(LastTalkedToBy,BROKEN_ONES)~ THEN BEGIN 36
  SAY @38521
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END

IF WEIGHT #9
~NumTimesTalkedTo(0)
 Kit(LastTalkedToBy,DARK_MOON)~ THEN BEGIN 37
  SAY @38522
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 38
  SAY @38526
  IF ~~ THEN REPLY @10526 GOTO 4
  IF ~~ THEN REPLY @10524 EXIT
END

IF WEIGHT #2
~GlobalGT("52Exile","GLOBAL",0)
 !AreaCheck("IW5200")~ THEN BEGIN 39
  SAY @39562
  IF ~~ THEN EXIT
END

IF WEIGHT #10
~NumTimesTalkedTo(0)
 Kit(LastTalkedToBy,SUN_SOUL)~ THEN BEGIN 37
  SAY @80086
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END

IF WEIGHT #11
~NumTimesTalkedTo(0)
 Class(LastTalkedToBy,MONK)~ THEN BEGIN 37
  SAY @80087
  IF ~Global("51Barud_Monks","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10511 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @10515 DO ~AddJournalEntry(@10462,QUEST)~ GOTO 1
END
