BEGIN ~41INGRAT~

IF WEIGHT #0
~AreaCheck("IW4100")
 NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @970
  IF ~~ THEN EXTERN ~41RAHM~ 0
END

IF ~~ THEN BEGIN 1
  SAY @972
  IF ~~ THEN REPLY @973 EXTERN ~41RAHM~ 2
END

IF ~~ THEN BEGIN 2
  SAY @974
  IF ~PartyHasItem("z1gengle")~ THEN REPLY @975 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@968)
                                                    SetGlobal("41Ingrath_Deliver","GLOBAL",1)
                                                    TakePartyItem("z1gengle")
                                                    DestroyItem("z1gengle")
                                                    EraseJournalEntry(@25120)
                                                    EraseJournalEntry(@28450)
                                                    AddJournalEntry(@961,QUEST)~ GOTO 5
  IF ~PartyHasItem("z1gengol")~ THEN REPLY @975 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@968)
                                                    SetGlobal("41Ingrath_Deliver","GLOBAL",1)
                                                    TakePartyItem("z1gengol")
                                                    DestroyItem("z1gengol")
                                                    EraseJournalEntry(@25120)
                                                    EraseJournalEntry(@28450)
                                                    AddJournalEntry(@961,QUEST)~ GOTO 5
  IF ~PartyHasItem("z1genden")~ THEN REPLY @977 DO ~AddXP2DA("IW2EX4E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@969)
                                                    SetGlobal("41Ingrath_Deliver","GLOBAL",2)
                                                    TakePartyItem("z1genden")
                                                    DestroyItem("z1genden")
                                                    EraseJournalEntry(@25120)
                                                    EraseJournalEntry(@25119)
                                                    EraseJournalEntry(@28450)
                                                    AddJournalEntry(@966,QUEST)~ EXTERN ~41RAHM~ 3
  IF ~!PartyHasItem("z1gengle")
      !PartyHasItem("z1gengol")
      !PartyHasItem("z1genden")~ THEN REPLY @978 EXTERN ~41RAHM~ 5
END

IF ~~ THEN BEGIN 3
  SAY @979
  IF ~~ THEN EXTERN ~41RAHM~ 4
END

IF ~~ THEN BEGIN 4
  SAY @980
  IF ~~ THEN REPLY @981 EXTERN ~41RAHM~ 6
END

IF ~~ THEN BEGIN 5
  SAY @983
  IF ~~ THEN REPLY @978 EXTERN ~41RAHM~ 5
END

IF WEIGHT #7
~True()~ THEN BEGIN 6
  SAY @986
  IF ~~ THEN REPLY @988 EXIT
END

IF WEIGHT #1
~AreaCheck("IW5005")
 NumTimesTalkedTo(0)
 Global("50Dragon","GLOBAL",1)~ THEN BEGIN 7
  SAY @991
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @993 GOTO 8
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37454 DO ~AddJournalEntry(@967,QUEST)~ GOTO 25
END

IF ~~ THEN BEGIN 8
  SAY @994
  IF ~~ THEN REPLY @995 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @997
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @998 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @998 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @999
  IF ~OR(2)
        CheckStat(LastTalkedToBy,146,HATEDRACE)
        CheckStat(LastTalkedToBy,186,HATEDRACE)~ THEN REPLY @37441 GOTO 12
  IF ~~ THEN REPLY @1000 GOTO 12
  IF ~~ THEN REPLY @1001 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @7504
  IF ~OR(2)
        CheckStat(LastTalkedToBy,146,HATEDRACE)
        CheckStat(LastTalkedToBy,186,HATEDRACE)~ THEN REPLY @37441 GOTO 12
  IF ~~ THEN REPLY @1000 GOTO 12
  IF ~~ THEN REPLY @1001 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @7505
  IF ~~ THEN REPLY @7506 GOTO 13
  IF ~~ THEN REPLY @7515 DO ~SetGlobal("50Dragon","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @7593
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37445 DO ~SetGlobal("50Dragon","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @7515 DO ~SetGlobal("50Dragon","GLOBAL",2)~ EXIT
END

IF WEIGHT #2
~AreaCheck("IW5005")
 Global("50Dragon","GLOBAL",2)~ THEN BEGIN 14
  SAY @7659
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37445 EXIT
  IF ~~ THEN REPLY @7515 EXIT
END

IF WEIGHT #3
~Global("50Dragon","GLOBAL",3)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 15
  SAY @7662
  IF ~~ THEN REPLY @7667 GOTO 17
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37445 EXIT
  IF ~~ THEN REPLY @7515 EXIT
END

IF WEIGHT #4
~Global("50Dragon","GLOBAL",3)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 16
  SAY @7668
  IF ~~ THEN REPLY @7667 GOTO 17
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37445 EXIT
  IF ~~ THEN REPLY @7515 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @7669
  IF ~~ THEN REPLY @7681 EXIT
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37445 EXIT
  IF ~~ THEN REPLY @7515 EXIT
END

IF WEIGHT #5
~GlobalGT("50Dragon","GLOBAL",3)
 AreaCheck("IW5005")~ THEN BEGIN 18
  SAY @7683
  IF ~~ THEN REPLY @7684 DO ~SetGlobal("50Dragon","GLOBAL",5)~ GOTO 19
  IF ~~ THEN REPLY @7686 DO ~SetGlobal("50Dragon","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @7687
  IF ~~ THEN REPLY @7688 GOTO 20
  IF ~~ THEN REPLY @7515 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @7689
  IF ~~ THEN EXTERN ~50NWSOLD~ 0
END

IF ~~ THEN BEGIN 21
  SAY @7690
  IF ~~ THEN REPLY @7691 GOTO 22
  IF ~~ THEN REPLY @7693 EXIT
  IF ~~ THEN REPLY @7515 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @7694
  IF ~Global("41Ingrath_Deliver","GLOBAL",1)~ THEN REPLY @7695 DO ~AddJournalEntry(@967,QUEST)
                                                                   Enemy()~ GOTO 23
  IF ~Global("41Ingrath_Deliver","GLOBAL",1)~ THEN REPLY @7696 DO ~AddJournalEntry(@967,QUEST)
                                                                   Enemy()~ GOTO 23
  IF ~Global("41Ingrath_Deliver","GLOBAL",0)~ THEN REPLY @7695 DO ~AddJournalEntry(@967,QUEST)
                                                                   Enemy()~ GOTO 24
  IF ~Global("41Ingrath_Deliver","GLOBAL",0)~ THEN REPLY @7696 DO ~AddJournalEntry(@967,QUEST)
                                                                   Enemy()~ GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @7697
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @7699
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~GlobalGT("50Dragon","GLOBAL",3)
 AreaCheck("IW5100")~ THEN BEGIN 25
  SAY @7700
  IF ~Global("41Ingrath_Deliver","GLOBAL",1)~ THEN REPLY @7701 DO ~SetGlobal("50Dragon","GLOBAL",5)
                                                                   AddJournalEntry(@967,QUEST)~ GOTO 26
  IF ~Global("41Ingrath_Deliver","GLOBAL",0)~ THEN REPLY @7701 DO ~SetGlobal("50Dragon","GLOBAL",5)
                                                                   AddJournalEntry(@967,QUEST)~ GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @7703
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @7705
  IF ~~ THEN DO ~Enemy()~ EXIT
END
