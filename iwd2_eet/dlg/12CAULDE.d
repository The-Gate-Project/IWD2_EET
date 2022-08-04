BEGIN ~12CAULDE~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14897
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @14899 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @14900 GOTO 3
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @14901 GOTO 4
  IF ~~ THEN REPLY @14902 GOTO 5
  IF ~~ THEN REPLY @14903 GOTO 15
  IF ~~ THEN REPLY @14904 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Caulder_Pissed","GLOBAL",0)~ THEN BEGIN 1
  SAY @14906
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @14907 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @14909 GOTO 3
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @14911 GOTO 4
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14912 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14914 GOTO 6
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14916 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @14917
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14918 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14914 GOTO 6
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14919 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14920
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14918 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14914 GOTO 6
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14921 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14922
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14918 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14914 GOTO 6
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14919 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @14923
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14924 DO ~SetGlobal("Catapult_Quest","GLOBAL",1)~ GOTO 6
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14925 GOTO 6
  IF ~~ THEN REPLY @14915 DO ~SetGlobal("Catapult_Quest","GLOBAL",1)~ FLAGS 0x200 GOTO 15 /*true*/
  IF ~~ THEN REPLY @14919 DO ~SetGlobal("Catapult_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14927
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @14928 GOTO 8
  IF ~Race(LastTalkedToBy,GNOME)~ THEN REPLY @14928 GOTO 8
  IF ~!Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,GNOME)
      CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @14928 GOTO 8
  IF ~~ THEN REPLY @14981 GOTO 7
  IF ~~ THEN REPLY @14986 GOTO 7
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14987 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14988
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      PartyHasItem("HQHAMM")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      PartyHasItem("HAMM02")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      PartyHasItem("z1hammcr")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      !PartyHasItem("z1hammcr")~ THEN REPLY @14991 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14993 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14994
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      PartyHasItem("HQHAMM")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      PartyHasItem("HAMM02")~ THEN REPLY @14989 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      PartyHasItem("z1hammcr")~ THEN REPLY @14991 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      !PartyHasItem("z1hammcr")~ THEN REPLY @14991 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14993 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14995
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @14996 DO ~AddXP2DA("IW2EX2E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@14839)
                                                        SetGlobal("Catapult_Quest","GLOBAL",2)
                                                        AddJournalEntry(@14725,QUEST)~ GOTO 10
  IF ~Race(LastTalkedToBy,GNOME)~ THEN REPLY @14997 DO ~AddXP2DA("IW2EX2E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@14839)
                                                        SetGlobal("Catapult_Quest","GLOBAL",2)
                                                        AddJournalEntry(@14725,QUEST)~ GOTO 10
  IF ~Race(LastTalkedToBy,HALFLING)~ THEN REPLY @14998 DO ~AddXP2DA("IW2EX2E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@14839)
                                                           SetGlobal("Catapult_Quest","GLOBAL",2)
                                                           AddJournalEntry(@14725,QUEST)~ GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY @14999 DO ~AddJournalEntry(@12735,QUEST)~ GOTO 16
  IF ~CheckStatLT(LastTalkedToBy,14,WIS)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @15002 DO ~AddJournalEntry(@12735,QUEST)~ GOTO 16
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @15003 DO ~AddXP2DA("IW2EX2E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@14839)
                                                                SetGlobal("Catapult_Quest","GLOBAL",2)
                                                                AddJournalEntry(@14622,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @14993 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @15004
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @15005 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      PartyHasItem("HQHAMM")~ THEN REPLY @15005 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      PartyHasItem("HAMM02")~ THEN REPLY @15005 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      PartyHasItem("z1hammcr")~ THEN REPLY @15005 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      !PartyHasItem("z1hammcr")~ THEN REPLY @15006 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @15008
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @15009 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @15010
  IF ~~ THEN REPLY @15014 DO ~SetGlobal("Catapult_Quest","GLOBAL",3)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @15017
  IF ~~ THEN REPLY @15020 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@14896)
                              EraseJournalEntry(@14725)
                              EraseJournalEntry(@12735)
                              EraseJournalEntry(@14622)
                              AddJournalEntry(@14822,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @15021 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@14896)
                              EraseJournalEntry(@14725)
                              EraseJournalEntry(@12735)
                              EraseJournalEntry(@14622)
                              AddJournalEntry(@14822,QUEST_DONE)~ GOTO 14
  IF ~~ THEN REPLY @15022 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@14896)
                              EraseJournalEntry(@14725)
                              EraseJournalEntry(@12735)
                              EraseJournalEntry(@14622)
                              AddJournalEntry(@14822,QUEST_DONE)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @15023
  IF ~~ THEN REPLY @15024 GOTO 15
  IF ~~ THEN REPLY @15036 EXIT
  IF ~~ THEN REPLY @15037 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @15038
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @15039 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @15040 GOTO 6
  IF ~~ THEN REPLY @15043 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @15044
  IF ~~ THEN REPLY @15045 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @15046 DO ~SetGlobal("Caulder_Pissed","GLOBAL",1)~ EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Caulder_Pissed","GLOBAL",1)~ THEN BEGIN 17
  SAY @15047
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @14907 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @14909 GOTO 3
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @14911 GOTO 4
  IF ~Global("Catapult_Quest","GLOBAL",0)~ THEN REPLY @14912 GOTO 5
  IF ~Global("Catapult_Quest","GLOBAL",1)~ THEN REPLY @14914 GOTO 6
  IF ~~ THEN REPLY @14915 GOTO 15
  IF ~~ THEN REPLY @15048 EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Catapult_Quest","GLOBAL",2)~ THEN BEGIN 18
  SAY @15049
  IF ~PartyHasItem("HAMM01")~ THEN REPLY @15050 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      PartyHasItem("HQHAMM")~ THEN REPLY @15050 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      PartyHasItem("HAMM02")~ THEN REPLY @15050 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      PartyHasItem("z1hammcr")~ THEN REPLY @15050 GOTO 12
  IF ~!PartyHasItem("HAMM01")
      !PartyHasItem("HQHAMM")
      !PartyHasItem("HAMM02")
      !PartyHasItem("z1hammcr")~ THEN REPLY @15051 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Catapult_Quest","GLOBAL",3)~ THEN BEGIN 19
  SAY @15052
  IF ~~ THEN REPLY @27356 EXIT
  IF ~~ THEN REPLY @27357 EXIT
END
