BEGIN ~50PAIRI~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)
 CheckStatGT(LastTalkedToBy,15,CHR)
 Race(LastTalkedToBy,HALF_ELF)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @13991
  IF ~~ THEN REPLY @13992 GOTO 3
  IF ~~ THEN REPLY @13993 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~Class(LastTalkedToBy,SORCERER)~ THEN REPLY @13994 GOTO 10
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @13994 EXIT
END

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)
 Race(LastTalkedToBy,HALF_ELF)~ THEN BEGIN 1
  SAY @13996
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)~ THEN REPLY @13997 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @13998 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14135 GOTO 10
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14135 EXIT
END

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @14136
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)~ THEN REPLY @14137 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14135 GOTO 10
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14135 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14139
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",0)~ THEN REPLY @14140 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",1)~ THEN REPLY @14140 GOTO 17
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14137 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34341 GOTO 19
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 19
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 DO ~AddJournalEntry(@37610,QUEST)~ GOTO 21
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 DO ~AddJournalEntry(@38160,QUEST)~ GOTO 20
  IF ~~ THEN REPLY @392 GOTO 5
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14142 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14142 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14142 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14143
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",0)~ THEN REPLY @14148 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",1)~ THEN REPLY @14148 GOTO 17
  IF ~~ THEN REPLY @36931 GOTO 5
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14160 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @14163
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",0)~ THEN REPLY @14164 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",1)~ THEN REPLY @14164 GOTO 17
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14165 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @36931 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14160 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14166
  IF ~~ THEN REPLY @14170 DO ~SetGlobal("50Pairi","GLOBAL",2)~ GOTO 7
  IF ~~ THEN REPLY @14185 DO ~SetGlobal("50Pairi","GLOBAL",2)~ GOTO 7
  IF ~~ THEN REPLY @14186 GOTO 8
  IF ~~ THEN REPLY @14187 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @14188
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14190 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14191
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14190 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14192
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14190 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @14193
  IF ~//CheckStatLT(LastTalkedToBy,9,CLASSLEVELSORCERER)
      Class(LastTalkedToBy,SORCERER)
      LevelLT(LastTalkedToBy,17)~ THEN REPLY @14194 DO ~SetGlobal("50Sorcery","GLOBAL",0)~ GOTO 11
  IF ~//CheckStatGT(LastTalkedToBy,8,CLASSLEVELSORCERER)
      Class(LastTalkedToBy,SORCERER)
      LevelGT(LastTalkedToBy,16)~ THEN REPLY @14195 GOTO 12
  IF ~~ THEN REPLY @14196 GOTO 11
  IF ~~ THEN REPLY @14197 DO ~SetGlobal("50Sorcery","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @14198
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~~ THEN REPLY @14190 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @14199
  IF ~~ THEN REPLY @14200 DO ~AddXP2DA("IW2EX9E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@13990)
                              SetGlobal("50Sorcery","GLOBAL",2)
                              AddJournalEntry(@13923,QUEST_DONE)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @14201
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",0)~ THEN REPLY @14202 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",1)~ THEN REPLY @14202 GOTO 17
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14165 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~~ THEN REPLY @14203 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 CheckStatGT(LastTalkedToBy,15,CHR)
 Race(LastTalkedToBy,HALF_ELF)
 Gender(LastTalkedToBy,MALE)
 Global("50Pairi","GLOBAL",0)~ THEN BEGIN 14
  SAY @14204
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)
      Global("50Pairi","GLOBAL",0)~ THEN REPLY @14205 DO ~SetGlobal("50Pairi","GLOBAL",1)~ GOTO 6
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14165 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14206 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14206 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14206 EXIT
END

IF WEIGHT #5
~CheckStatGT(LastTalkedToBy,15,CHR)
 Race(LastTalkedToBy,HALF_ELF)
 Gender(LastTalkedToBy,MALE)
 Global("50Pairi","GLOBAL",1)~ THEN BEGIN 15
  SAY @14207
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      Race(LastTalkedToBy,HALF_ELF)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @14208 GOTO 17
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14206 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14206 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14206 EXIT
END

IF WEIGHT #6
~True()~ THEN BEGIN 16
  SAY @14212
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14189 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @24531 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @24531 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @24531 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @24919
  IF ~GlobalGT("50Hunter_Know","GLOBAL",0)
      Global("50PairiQ","GLOBAL",0)~ THEN REPLY @14137 DO ~SetGlobal("50PairiQ","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @14138 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14190 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14190 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 18
  SAY @37856
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @36929
  IF ~~ THEN REPLY @36931 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @14160 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @14160 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @36930
  IF ~~ THEN REPLY @36931 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @13994 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @13994 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @13994 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @37901
  IF ~~ THEN REPLY @36931 GOTO 3
  IF ~Class(LastTalkedToBy,SORCERER)
      Global("50Sorcery","GLOBAL",0)~ THEN REPLY @13994 DO ~SetGlobal("50Sorcery","GLOBAL",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,SORCERER)
      GlobalGT("50Sorcery","GLOBAL",0)~ THEN REPLY @13994 EXIT
  IF ~!Class(LastTalkedToBy,SORCERER)~ THEN REPLY @13994 EXIT
END
