BEGIN ~41TALISM~

IF ~RandomNum(5,1)
    !HasItem("z4cimirr",Myself)~ THEN BEGIN 0
  SAY @34237
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
    !HasItem("z4cimirr",Myself)~ THEN BEGIN 1
  SAY @34239
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
    !HasItem("z4cimirr",Myself)~ THEN BEGIN 2
  SAY @34240
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
    !HasItem("z4cimirr",Myself)~ THEN BEGIN 3
  SAY @34241
  IF ~~ THEN EXIT
END

IF ~!HasItem("z4cimirr",Myself)~ THEN BEGIN 4
  SAY @34242
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 5
  SAY @34257
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 6
  SAY @34258
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 7
  SAY @34259
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 8
  SAY @34265
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @34266
  IF ~~ THEN EXIT
END
