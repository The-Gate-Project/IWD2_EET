BEGIN ~66CHUQ~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @34934
  IF ~~ THEN REPLY @34935 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @34936
  IF ~~ THEN REPLY @34937 GOTO 2
  IF ~~ THEN REPLY @34938 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @34939
  IF ~~ THEN REPLY @34940 GOTO 3
  IF ~~ THEN REPLY @34941 GOTO 6
  IF ~~ THEN REPLY @34938 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @34942
  IF ~~ THEN REPLY @34943 GOTO 4
  IF ~~ THEN REPLY @34944 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @34945
  IF ~~ THEN REPLY @34946 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @34947
  IF ~~ THEN REPLY @34948 EXIT
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @34949 GOTO 10
  IF ~~ THEN REPLY @34950 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @34951
  IF ~~ THEN REPLY @34952 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@34932)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @34953
  IF ~~ THEN REPLY @34952 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@34932)
                              Enemy()~ EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @34954
  IF ~~ THEN REPLY @35555 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @35556 GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY @35557
  IF ~~ THEN REPLY @35558 GOTO 7
  IF ~~ THEN REPLY @35559 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @35560
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35561 GOTO 11
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35562 GOTO 16
  IF ~~ THEN REPLY @35559 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @35563
  IF ~~ THEN REPLY @35564 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35565
  IF ~~ THEN REPLY @35566 GOTO 13
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35567 GOTO 7
END

IF ~~ THEN BEGIN 13
  SAY @35568
  IF ~~ THEN REPLY @35569 DO ~GiveItemCreate("z0genks",LastTalkedToBy,1,1,0)~ GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35567 GOTO 7
END

IF ~~ THEN BEGIN 14
  SAY @35570
  IF ~~ THEN REPLY @35571 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@34933)
                              SetGlobal("66_Ubchug","GLOBAL",1)
                              AddJournalEntry(@34931,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("66_Ubchug","GLOBAL",1)~ THEN BEGIN 15
  SAY @35572
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @35574
  IF ~~ THEN REPLY @35575 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@34932)
                              Enemy()~ EXIT
END
