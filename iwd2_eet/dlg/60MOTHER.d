BEGIN ~60MOTHER~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @38961
  IF ~Global("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38962 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                 AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38963 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38964 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 4
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",1)~ THEN REPLY @38965 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 5
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38966 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 13
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",2)~ THEN REPLY @38967 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 36
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @38968 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                AddJournalEntry(@38952,QUEST)~ GOTO 46
  IF ~//!ClassEx(LastTalkedToBy, Cleric)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,10)~ THEN REPLY @38969 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                        AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @38969 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                  AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @38970 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                 AddJournalEntry(@38952,QUEST)~ GOTO 47
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                          AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~~ THEN REPLY @38971 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                              AddJournalEntry(@38952,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @38972
  IF ~~ THEN DO ~AddJournalEntry(@38953,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @38974
  IF ~Global("60Egenia_Stage","GLOBAL",0)~ THEN DO ~SetGlobal("60Egenia_Stage","GLOBAL",1)~ GOTO 3
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @38975
  IF ~~ THEN REPLY @38976 GOTO 4
  IF ~~ THEN REPLY @38971 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @38977
  IF ~~ THEN REPLY @38978 GOTO 5
  IF ~~ THEN REPLY @38979 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @38980
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @38981
  IF ~GlobalLT("60Egenia_Stage","GLOBAL",2)~ THEN DO ~SetGlobal("60Egenia_Stage","GLOBAL",2)~ GOTO 7
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",1)~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @38982
  IF ~~ THEN REPLY @38983 GOTO 8
  IF ~~ THEN REPLY @38984 GOTO 10
  IF ~~ THEN REPLY @38979 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @38985
  IF ~~ THEN REPLY @38986 DO ~SetGlobal("60Egenia_Isair","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
END

IF ~~ THEN BEGIN 9
  SAY @38987
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38988 GOTO 13
  IF ~~ THEN REPLY @38984 GOTO 10
  IF ~~ THEN REPLY @38979 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @38989
  IF ~~ THEN DO ~SetGlobal("60Egenia_Madae","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @38990
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @38991
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38966 GOTO 13
  IF ~~ THEN REPLY @38992 GOTO 8
  IF ~~ THEN REPLY @38979 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @38993
  IF ~GlobalLT("60Egenia_Stage","GLOBAL",3)~ THEN DO ~SetGlobal("60Egenia_Stage","GLOBAL",3)~ GOTO 14
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",2)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @38994
  IF ~Global("60See_Future","GLOBAL",0)~ THEN REPLY @38995 GOTO 15
  IF ~~ THEN REPLY @38996 GOTO 37
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @38997 GOTO 40
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      !Global("60Know_IM_Weakness","GLOBAL",1)~ THEN REPLY @38998 GOTO 43
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)
      Global("60Egenia_Problem_Found","GLOBAL",1)~ THEN REPLY @38999 GOTO 24
  IF ~~ THEN REPLY @39000 GOTO 23
  IF ~~ THEN REPLY @39001 GOTO 23
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @39003
  IF ~~ THEN REPLY @39004 DO ~SetGlobal("60See_Future","GLOBAL",1)~ GOTO 16
  IF ~~ THEN REPLY @39005 DO ~SetGlobal("60See_Future","GLOBAL",1)~ GOTO 16
  IF ~~ THEN REPLY @39006 GOTO 36
  IF ~~ THEN REPLY @39007 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @39008
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @39009
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @39010
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @39011
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @39012
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @39013
  IF ~~ THEN DO ~AddXP2DA("IW2EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@38960)
                 AddJournalEntry(@38954,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @39014
  IF ~CheckStat(LastTalkedToBy,15,INT)
      !Global("60Know_IM_Weakness","GLOBAL",1)~ THEN REPLY @39015 GOTO 43
  IF ~~ THEN REPLY @39016 GOTO 23
  IF ~~ THEN REPLY @39017 GOTO 36
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @39018
  IF ~GlobalLT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39019 DO ~SetGlobal("60Egenia_Problem_Found","GLOBAL",1)~ GOTO 24
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39020 DO ~SetGlobal("60Egenia_Problem_Found","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @39017 DO ~SetGlobal("60Egenia_Problem_Found","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @39021
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39022 GOTO 25
  IF ~GlobalLT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39023 GOTO 36
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39024 GOTO 36
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39025 EXIT
  IF ~GlobalLT("60Twins_Story","GLOBAL",3)~ THEN REPLY @39026 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @39027
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @39028
  IF ~~ THEN REPLY @39029 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @39030
  IF ~~ THEN REPLY @39031 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @39032
  IF ~~ THEN REPLY @39033 DO ~AddJournalEntry(@38956,QUEST)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @39034
  IF ~~ THEN REPLY @39035 GOTO 35
  IF ~~ THEN REPLY @39036 GOTO 30
  IF ~~ THEN REPLY @39037 GOTO 30
  IF ~~ THEN REPLY @39038 GOTO 30
  IF ~~ THEN REPLY @39039 GOTO 30
  IF ~~ THEN REPLY @39040 GOTO 30
  IF ~~ THEN REPLY @39041 GOTO 30
  IF ~~ THEN REPLY @39042 GOTO 35
END

IF ~~ THEN BEGIN 30
  SAY @39043
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @39044
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @39045
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @39046
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @39047
  IF ~~ THEN REPLY @39048 DO ~AddXP2DA("IW2EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@38958)
                              SetGlobal("60Egenia_Gone","GLOBAL",1)
                              AddJournalEntry(@38957,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @39049
  IF ~~ THEN DO ~AddXP2DA("IW2EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@38958)
                 SetGlobal("60Egenia_Gone","GLOBAL",1)
                 AddJournalEntry(@38957,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @39050
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38988 GOTO 13
  IF ~~ THEN REPLY @39051 GOTO 8
  IF ~~ THEN REPLY @39052 GOTO 10
  IF ~Global("60See_Future","GLOBAL",0)~ THEN REPLY @38995 GOTO 15
  IF ~~ THEN REPLY @38996 GOTO 37
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @38997 GOTO 40
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      !Global("60Know_IM_Weakness","GLOBAL",1)~ THEN REPLY @38998 GOTO 43
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)
      Global("60Egenia_Problem_Found","GLOBAL",1)~ THEN REPLY @38999 GOTO 24
  IF ~~ THEN REPLY @39000 GOTO 23
  IF ~~ THEN REPLY @39001 GOTO 23
  IF ~~ THEN REPLY @39053 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @39054
  IF ~~ THEN REPLY @39055 GOTO 38
  IF ~~ THEN REPLY @39056 GOTO 36
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @39057
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @39058
  IF ~~ THEN REPLY @39056 GOTO 36
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @39059
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @39060
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @39061
  IF ~~ THEN REPLY @39056 GOTO 36
  IF ~~ THEN REPLY @39002 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @39062
  IF ~~ THEN DO ~AddXP2DA("IW2EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@38959)
                 SetGlobal("60Know_IM_Weakness","GLOBAL",1)
                 AddJournalEntry(@38955,QUEST)~ GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @39063
  IF ~~ THEN REPLY @39056 GOTO 36
  IF ~~ THEN REPLY @39002 EXIT
END

IF WEIGHT #0
~Global("60Egenia_Gone","GLOBAL",1)~ THEN BEGIN 45
  SAY @39064
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46
  SAY @39065
  IF ~Global("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38962 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                 AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38963 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38964 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 4
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",1)~ THEN REPLY @38965 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 5
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38966 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 13
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",2)~ THEN REPLY @38967 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 36
  IF ~~ THEN REPLY @38971 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                              AddJournalEntry(@38952,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @39066
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48
  SAY @39067
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @39068
  IF ~~ THEN DO ~AddXP2DA("IW2EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@38958)
                 SetGlobal("60Egenia_Gone","GLOBAL",1)
                 AddJournalEntry(@38957,QUEST)~ EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 50
  SAY @39069
  IF ~Global("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38962 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                 AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38963 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 1
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",0)~ THEN REPLY @38964 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 4
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",1)~ THEN REPLY @38965 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 5
  IF ~Global("60Egenia_Madae","GLOBAL",1)
      Global("60Egenia_Isair","GLOBAL",1)~ THEN REPLY @38966 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 13
  IF ~GlobalGT("60Twins_Story","GLOBAL",3)
      Global("60Egenia_Problem_Found","GLOBAL",1)~ THEN REPLY @40910 GOTO 24
  IF ~GlobalGT("60Egenia_Stage","GLOBAL",2)~ THEN REPLY @38967 DO ~AddJournalEntry(@38952,QUEST)~ GOTO 36
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @38968 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                AddJournalEntry(@38952,QUEST)~ GOTO 46
  IF ~//!ClassEx(LastTalkedToBy, Cleric)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,10)~ THEN REPLY @38969 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                        AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @38969 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                  AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @38970 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                                 AddJournalEntry(@38952,QUEST)~ GOTO 47
  IF ~Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @80083 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                                                          AddJournalEntry(@38952,QUEST)~ GOTO 48
  IF ~~ THEN REPLY @38971 DO ~SetGlobal("60Met_Egenia","GLOBAL",1)
                              AddJournalEntry(@38952,QUEST)~ EXIT
END
