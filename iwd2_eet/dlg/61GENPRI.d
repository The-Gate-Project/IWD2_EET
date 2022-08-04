BEGIN ~61GENPRI~

IF WEIGHT #5
~NumTimesTalkedTo(0)
 CheckStat(Myself,1,XP)~ THEN BEGIN 0
  SAY @34981
  IF ~Global("61NheeroSaidPrison","GLOBAL",1)~ THEN REPLY @34982 GOTO 13
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34984 GOTO 12
  IF ~~ THEN REPLY @34985 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @34987 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #6
~NumTimesTalkedTo(0)
 CheckStat(Myself,2,XP)~ THEN BEGIN 1
  SAY @34988
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34984 GOTO 12
  IF ~~ THEN REPLY @34985 GOTO 6
  IF ~Global("Equipped","LOCALS",1)~ THEN REPLY @34986 GOTO 9
  IF ~Global("Equipped","LOCALS",0)~ THEN REPLY @34986 GOTO 10
  IF ~~ THEN REPLY @34987 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #7
~NumTimesTalkedTo(0)
 CheckStat(Myself,3,XP)~ THEN BEGIN 2
  SAY @34989
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34984 GOTO 12
  IF ~~ THEN REPLY @34985 GOTO 6
  IF ~~ THEN REPLY @34986 GOTO 11
  IF ~~ THEN REPLY @34987 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #8
~NumTimesTalkedToGT(0)
 CheckStat(Myself,1,XP)~ THEN BEGIN 3
  SAY @34991
  IF ~Global("61NheeroSaidPrison","GLOBAL",1)~ THEN REPLY @34982 GOTO 13
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34993 GOTO 12
  IF ~~ THEN REPLY @34994 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @34995 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #9
~NumTimesTalkedToGT(0)
 CheckStat(Myself,2,XP)~ THEN BEGIN 4
  SAY @34996
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34993 GOTO 12
  IF ~~ THEN REPLY @34994 GOTO 6
  IF ~Global("Equipped","LOCALS",1)~ THEN REPLY @34986 GOTO 9
  IF ~Global("Equipped","LOCALS",0)~ THEN REPLY @34986 GOTO 10
  IF ~~ THEN REPLY @34997 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #10
~NumTimesTalkedToGT(0)
 CheckStat(Myself,3,XP)~ THEN BEGIN 5
  SAY @34998
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @34993 GOTO 12
  IF ~~ THEN REPLY @34994 GOTO 6
  IF ~~ THEN REPLY @34986 GOTO 9
  IF ~~ THEN REPLY @34999 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35000
  IF ~CheckStat(Myself,1,XP)
      Global("Rested","LOCALS",1)~ THEN REPLY @35001 GOTO 7
  IF ~CheckStat(Myself,1,XP)
      !Global("Rested","LOCALS",1)~ THEN REPLY @35001 GOTO 8
  IF ~CheckStat(Myself,2,XP)
      Global("Equipped","LOCALS",1)~ THEN REPLY @35001 GOTO 9
  IF ~CheckStat(Myself,2,XP)
      Global("Equipped","LOCALS",0)~ THEN REPLY @35001 GOTO 10
  IF ~CheckStat(Myself,3,XP)~ THEN REPLY @35001 GOTO 11
  IF ~~ THEN REPLY @35002 DO ~SetGlobal("CurrentAction","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @35003
  IF ~Global("61PlayerSawArmory","GLOBAL",1)~ THEN REPLY @35004 DO ~SetGlobal("CurrentAction","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @35005 DO ~SetGlobal("CurrentAction","LOCALS",4)~ EXIT
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35007 GOTO 12
  IF ~~ THEN REPLY @35008 GOTO 6
END

IF ~~ THEN BEGIN 8
  SAY @35009
  IF ~Global("61PlayerSawArmory","GLOBAL",1)~ THEN REPLY @35004 DO ~SetGlobal("CurrentAction","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @35010 DO ~SetGlobal("CurrentAction","LOCALS",4)~ EXIT
  IF ~~ THEN REPLY @35011 DO ~SetGlobal("CurrentAction","LOCALS",3)~ EXIT
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35007 GOTO 12
  IF ~~ THEN REPLY @35008 GOTO 6
END

IF ~~ THEN BEGIN 9
  SAY @35012
  IF ~~ THEN REPLY @35016 DO ~SetGlobal("CurrentAction","LOCALS",4)~ EXIT
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35007 GOTO 12
  IF ~~ THEN REPLY @35008 GOTO 6
END

IF ~~ THEN BEGIN 10
  SAY @35017
  IF ~Global("61PlayerSawArmory","GLOBAL",1)~ THEN REPLY @35018 DO ~SetGlobal("CurrentAction","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @35019 DO ~SetGlobal("CurrentAction","LOCALS",4)~ EXIT
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35007 GOTO 12
  IF ~~ THEN REPLY @35008 GOTO 6
END

IF ~~ THEN BEGIN 11
  SAY @35020
  IF ~Global("61PlayerSawArmory","GLOBAL",1)~ THEN REPLY @35022 DO ~SetGlobal("CurrentAction","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @35023 DO ~SetGlobal("CurrentAction","LOCALS",4)~ EXIT
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35007 GOTO 12
  IF ~~ THEN REPLY @35008 GOTO 6
END

IF ~~ THEN BEGIN 12
  SAY @35000
  IF ~CheckStat(Myself,1,XP)
      Global("Rested","LOCALS",1)~ THEN REPLY @35001 GOTO 7
  IF ~CheckStat(Myself,1,XP)
      !Global("Rested","LOCALS",1)~ THEN REPLY @35001 GOTO 8
  IF ~CheckStat(Myself,2,XP)
      Global("Equipped","LOCALS",1)~ THEN REPLY @35001 GOTO 9
  IF ~CheckStat(Myself,2,XP)
      Global("Equipped","LOCALS",0)~ THEN REPLY @35001 GOTO 10
  IF ~CheckStat(Myself,3,XP)~ THEN REPLY @35001 GOTO 11
  IF ~~ THEN REPLY @35002 DO ~SetGlobal("CurrentAction","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @35024
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @35027
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35028 GOTO 12
  IF ~~ THEN REPLY @34994 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @35368 DO ~SetGlobal("CurrentAction","LOCALS",0)~ EXIT
END

IF WEIGHT #0
~Race(Myself,TROLL)~ THEN BEGIN 15
  SAY @35369
  IF ~~ THEN REPLY @35370 EXIT
END

IF WEIGHT #4
~Global("Betrayal","LOCALS",-1)
 Alignment(Myself,MASK_EVIL)
 HPPercentGT("05_WizardPrisoner",99)~ THEN BEGIN 16
  SAY @35371
  IF ~~ THEN REPLY @35447 DO ~SetGlobal("Betrayal", "LOCALS",2)
Enemy()~ EXIT
END

IF WEIGHT #3
~Global("Betrayal","LOCALS",1)
 Alignment(Myself,MASK_EVIL)
 HPPercentGT("05_WizardPrisoner",99)~ THEN BEGIN 17
  SAY @35448
  IF ~~ THEN REPLY @35449 GOTO 18
  IF ~~ THEN REPLY @35450 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @35451 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @35454
  IF ~Global("61NheeroSaidPrison","GLOBAL",1)~ THEN REPLY @34982 GOTO 13
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35455 GOTO 12
  IF ~~ THEN REPLY @35461 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @35450 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @41076 EXIT
END

IF WEIGHT #1
~NumTimesTalkedTo(0)
 Alignment(Myself,MASK_EVIL)
 HPPercentLT("05_WizardPrisoner",100)~ THEN BEGIN 19
  SAY @41077
  IF ~Global("61NheeroSaidPrison","GLOBAL",1)~ THEN REPLY @34982 GOTO 13
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35455 GOTO 12
  IF ~~ THEN REPLY @35461 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @41076 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Alignment(Myself,MASK_EVIL)
 HPPercentLT("05_WizardPrisoner",100)~ THEN BEGIN 20
  SAY @41078
  IF ~Global("61NheeroSaidPrison","GLOBAL",1)~ THEN REPLY @34982 GOTO 13
  IF ~Global("61RakshasaOfferValid","GLOBAL",1)~ THEN REPLY @35455 GOTO 12
  IF ~~ THEN REPLY @35461 GOTO 6
  IF ~Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 7
  IF ~!Global("Rested","LOCALS",1)~ THEN REPLY @34986 GOTO 8
  IF ~~ THEN REPLY @41076 EXIT
END
