BEGIN ~63YXBU~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @36750
  IF ~~ THEN EXTERN ~63PFIN~ 0
END

IF ~~ THEN BEGIN 1
  SAY @36752
  IF ~~ THEN EXTERN ~63PFIN~ 2
END

IF ~~ THEN BEGIN 2
  SAY @36753
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @36754
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @36755
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      //!Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
      //!Subrace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @36756 GOTO 5
  IF ~//Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36756 GOTO 10
  IF ~//Subrace(LastTalkedToBy, HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36756 GOTO 11
  IF ~~ THEN REPLY @36757 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @36758
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @36759 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,15,INT)~ THEN REPLY @36760 EXTERN ~63PFIN~ 3
  IF ~~ THEN REPLY @36761 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @36762
  IF ~~ THEN REPLY @36763 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @36764
  IF ~~ THEN DO ~AddXP2DA("IW2EX14H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@36748)
                 StartCutSceneMode()
                 StartCutScene("63cDemLv")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @37653
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @37654
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @37655
  IF ~CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY @36759 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY @36760 EXTERN ~63PFIN~ 3
  IF ~~ THEN REPLY @36761 GOTO 8
END

IF ~~ THEN BEGIN 11
  SAY @37656
  IF ~CheckStatGT(LastTalkedToBy,17,INT)~ THEN REPLY @36759 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,18,INT)~ THEN REPLY @36760 EXTERN ~63PFIN~ 3
  IF ~~ THEN REPLY @36761 GOTO 8
END
