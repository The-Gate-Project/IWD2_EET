BEGIN ~52SERSA~

IF ~True()~ THEN BEGIN 0
  SAY @9959
  IF ~NumTimesTalkedTo(0)
      !Global("52Sersa_Train","GLOBAL",2)~ THEN REPLY @9960 GOTO 1
  IF ~NumTimesTalkedToGT(0)
      !Global("52Sersa_Train","GLOBAL",2)~ THEN REPLY @9961 GOTO 8
  IF ~Global("52Sersa_Train","GLOBAL",2)~ THEN REPLY @9961 GOTO 10
  IF ~~ THEN REPLY @9962 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @9963
  IF ~~ THEN REPLY @9964 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                             RemoveAreaFlag(NOREST)
                             StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9965 GOTO 2
  IF ~~ THEN REPLY @9966 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9967
  IF ~GlobalLT("52Sersa_Train","GLOBAL",2)~ THEN REPLY @9968 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                                                                 RemoveAreaFlag(NOREST)
                                                                 StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~Global("52Sersa_Train","GLOBAL",2)~ THEN REPLY @9968 GOTO 7
  IF ~Global("52Sersa_Train","GLOBAL",0)~ THEN REPLY @9969 DO ~SetGlobal("52Sersa_Train","GLOBAL",1)
                                                               AddJournalEntry(@9955,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @9970 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9971
  IF ~//CheckStatGT(LastTalkedToBy, 9, CLASSLEVELMONK) 15, WIS
      Class(LastTalkedToBy,MONK)
      LevelGT(LastTalkedToBy,17)
      CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY @9972 GOTO 4
  IF ~//CheckStatGT(LastTalkedToBy, 0, CLASSLEVELMONK)
      //CheckStatLT(LastTalkedToBy, 10, CLASSLEVELMONK) 14, WIS
      Class(LastTalkedToBy,MONK)
      LevelGT(LastTalkedToBy,10)
      LevelLT(LastTalkedToBy,18)
      CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @9973 GOTO 4
  IF ~//CheckStatGT(LastTalkedToBy, 0, CLASSLEVELMONK)
      //CheckStatLT(LastTalkedToBy, 10, CLASSLEVELMONK) 15, WIS
      Class(LastTalkedToBy,MONK)
      LevelGT(LastTalkedToBy,10)
      LevelLT(LastTalkedToBy,18)
      CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY @9972 GOTO 4
  IF ~//CheckStatGT(LastTalkedToBy, 9, CLASSLEVELMONK) 14, WIS
      Class(LastTalkedToBy,MONK)
      LevelGT(LastTalkedToBy,17)
      CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @9974 DO ~AddXP2DA("IW2EX11E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@9958)
                                                               SetGlobal("52Sersa_Train","GLOBAL",2)
                                                               EraseJournalEntry(@9994)
                                                               EraseJournalEntry(@9955)
                                                               AddJournalEntry(@9956,QUEST_DONE)~ GOTO 6
  IF ~~ THEN REPLY @9975 GOTO 5
  IF ~~ THEN REPLY @9976 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                             RemoveAreaFlag(NOREST)
                             StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9970 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9977
  IF ~~ THEN REPLY @9975 GOTO 5
  IF ~~ THEN REPLY @9964 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                             RemoveAreaFlag(NOREST)
                             StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9978 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9979
  IF ~~ THEN REPLY @9964 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                             RemoveAreaFlag(NOREST)
                             StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9978 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9980
  IF ~~ THEN REPLY @9981 GOTO 7
  IF ~~ THEN REPLY @9978 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9982
  IF ~False()~ THEN REPLY @9983 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @9984 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @9966 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9985
  IF ~Global("52Sersa_Train","GLOBAL",1)
      //CheckStatGT(LastTalkedToBy, 9, CLASSLEVELMONK) 14, WIS
      Class(LastTalkedToBy,MONK)
      LevelGT(LastTalkedToBy,17)
      CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @9986 DO ~AddXP2DA("IW2EX11E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@9958)
                                                               SetGlobal("52Sersa_Train","GLOBAL",2)
                                                               EraseJournalEntry(@9994)
                                                               EraseJournalEntry(@9955)
                                                               AddJournalEntry(@9956,QUEST_DONE)~ GOTO 6
  IF ~Global("52Sersa_Train","GLOBAL",1)
      Global("52Svaltid_Sersa","GLOBAL",1)~ THEN REPLY @9988 DO ~AddXP2DA("IW2EX11E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@9958)
                                                                 SetGlobal("52Sersa_Train","GLOBAL",2)
                                                                 EraseJournalEntry(@9994)
                                                                 EraseJournalEntry(@9955)
                                                                 AddJournalEntry(@9957,QUEST_DONE)~ GOTO 9
  IF ~~ THEN REPLY @9964 DO ~SetGlobal("AllowAreaResting","MYAREA",1)
                             RemoveAreaFlag(NOREST)
                             StartStore("52Sersa",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9965 GOTO 2
  IF ~~ THEN REPLY @9966 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9989
  IF ~~ THEN REPLY @9981 GOTO 7
  IF ~~ THEN REPLY @9978 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9991
  IF ~~ THEN REPLY @9981 GOTO 7
  IF ~~ THEN REPLY @9965 GOTO 2
  IF ~~ THEN REPLY @9966 EXIT
END
