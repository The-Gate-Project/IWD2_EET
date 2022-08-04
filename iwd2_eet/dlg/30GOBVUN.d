BEGIN ~30GOBVUN~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @13930
  IF ~~ THEN REPLY @13931 DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @13932 GOTO 1
  IF ~CheckStatLT(LastTalkedToBy,12,CON)~ THEN REPLY @13933 GOTO 8
  IF ~CheckStatGT(LastTalkedToBy,13,CON)~ THEN REPLY @37963 GOTO 9
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @13934
  IF ~~ THEN REPLY @13935 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @13936 GOTO 2
  IF ~~ THEN REPLY @13937 GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY @13938
  IF ~~ THEN REPLY @13939 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @13940 GOTO 3
  IF ~~ THEN REPLY @13941 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @13942
  IF ~~ THEN REPLY @13943 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @13944 GOTO 4
  IF ~~ THEN REPLY @13945 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @13946
  IF ~~ THEN REPLY @13947 DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @13948 GOTO 5
  IF ~~ THEN REPLY @13949 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @13950
  IF ~~ THEN REPLY @13951 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @13952 GOTO 6
  IF ~~ THEN REPLY @13953 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @13960
  IF ~~ THEN REPLY @13961 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @13983 GOTO 7
  IF ~~ THEN REPLY @13984 GOTO 8
END

IF WEIGHT #0
~~ THEN BEGIN 7 //False()
  SAY @13985
  IF ~~ THEN REPLY @13987 DO ~AddXP2DA("IW2EX5A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@13928)
                              SetGlobal("VUNARG_LEAVING","GLOBAL",1) //30gobVun_leave
                              AddJournalEntry(@13925,QUEST)
                              //StartCutSceneMode()
                              //StartCutScene("30cVunLv")
                              ~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @28364
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @37965
  IF ~~ THEN REPLY @37967 DO ~AddXP2DA("IW2EX5H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@13928)
                              SetGlobal("VUNARG_LEAVING","GLOBAL",1) //30gobVun_leave
                              AddJournalEntry(@37968,QUEST)
                              //StartCutSceneMode()
                              //StartCutScene("30cVunLv")
                              ~ EXIT
END
