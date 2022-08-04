BEGIN ~20GENBO~

IF ~RandomNum(5,1)
    NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @30147
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @30149
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @30150
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @30151
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(5,6)
    NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @30152
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @30153
  IF ~~ THEN EXIT
END
