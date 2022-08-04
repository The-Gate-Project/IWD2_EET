BEGIN ~41AURILW~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21846
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 2
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 20
  IF ~~ THEN REPLY @21873 DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21874 GOTO 16
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21874 GOTO 20
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 1
  SAY @21875
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 2
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 20
  IF ~~ THEN REPLY @21873 DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21876 GOTO 9
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21876 GOTO 20
END

IF ~~ THEN BEGIN 2
  SAY @21877
  IF ~Global("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @21878 GOTO 3
  IF ~OR(2)
        Global("41NateEquipmentQuest","GLOBAL",2)
        Global("41PartyPrisonEntry","GLOBAL",2)~ THEN REPLY @21879 GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @21880 GOTO 5
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      CheckStat(Myself,1,XP)~ THEN REPLY @21881 GOTO 6
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !CheckStat(Myself,1,XP)~ THEN REPLY @21881 GOTO 21
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      CheckStat(Myself,2,XP)~ THEN REPLY @21883 GOTO 7
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !CheckStat(Myself,2,XP)~ THEN REPLY @21883 GOTO 21
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      CheckStat(Myself,3,XP)~ THEN REPLY @21884 GOTO 8
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !CheckStat(Myself,3,XP)~ THEN REPLY @21884 GOTO 21
  IF ~~ THEN REPLY @21886 DO ~Enemy()~ EXIT
  IF ~NumTimesTalkedTo(0)
      Gender(Myself,MALE)~ THEN REPLY @21887 GOTO 16
  IF ~NumTimesTalkedTo(0)
      Gender(Myself,FEMALE)~ THEN REPLY @21888 GOTO 16
  IF ~NumTimesTalkedToGT(0)
      Gender(Myself,MALE)~ THEN REPLY @21887 GOTO 9
  IF ~NumTimesTalkedToGT(0)
      Gender(Myself,FEMALE)~ THEN REPLY @21888 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @21891
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      CheckStat(Myself,2,XP)~ THEN REPLY @21883 GOTO 7
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !CheckStat(Myself,2,XP)~ THEN REPLY @21883 GOTO 21
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @21893
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @21894
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      CheckStat(Myself,1,XP)~ THEN REPLY @21881 GOTO 6
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)
      !CheckStat(Myself,1,XP)~ THEN REPLY @21881 GOTO 21
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @21895
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @21896
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @21897
  IF ~NumTimesTalkedTo(0)~ THEN REPLY @21892 GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN REPLY @21892 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @21898
  IF ~RandomNum(10,1)~ THEN REPLY @21899 GOTO 10
  IF ~RandomNum(10,2)~ THEN REPLY @21899 GOTO 11
  IF ~RandomNum(10,3)~ THEN REPLY @21899 GOTO 12
  IF ~RandomNum(10,4)~ THEN REPLY @21899 GOTO 13
  IF ~RandomNum(10,5)~ THEN REPLY @21899 GOTO 14
  IF ~RandomNum(10,6)~ THEN REPLY @21899 GOTO 15
  IF ~RandomNum(10,7)~ THEN REPLY @21899 GOTO 16
  IF ~RandomNum(10,8)~ THEN REPLY @21899 GOTO 17
  IF ~RandomNum(10,9)~ THEN REPLY @21899 GOTO 18
  IF ~RandomNum(10,10)~ THEN REPLY @21899 GOTO 19
END

IF ~~ THEN BEGIN 10
  SAY @21901
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @21904
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21905
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @21906
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @21907
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @21908
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @21909
  IF ~~ THEN REPLY @21910 DO ~SetGlobal("41SaidPainting1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @21923
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @21924
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @21925
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @21926
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @21927
  IF ~NumTimesTalkedTo(0)~ THEN GOTO 16
  IF ~NumTimesTalkedToGT(0)~ THEN GOTO 9
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 22
  SAY @30022
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 2
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21872 GOTO 20
  IF ~~ THEN REPLY @21873 DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21876 GOTO 9
  IF ~!CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @21876 GOTO 20
END

IF WEIGHT #0
~AreaCheck("IW4100")~ THEN BEGIN 23
  SAY @30023
  IF ~~ THEN DO ~SetGlobal("41SherincalTalk", "MYAREA", 1)
Enemy()~ EXIT
END
