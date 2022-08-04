BEGIN ~52DOLON~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10521
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10682 GOTO 2
  IF ~~ THEN REPLY @10683 GOTO 3
  IF ~~ THEN REPLY @10704 GOTO 5
  IF ~~ THEN REPLY @10707 EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 1
  SAY @10713
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10683 GOTO 3
  IF ~~ THEN REPLY @10704 GOTO 5
  IF ~~ THEN REPLY @10707 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10714
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10683 GOTO 3
  IF ~~ THEN REPLY @10704 GOTO 5
  IF ~~ THEN REPLY @10707 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10715
  IF ~~ THEN REPLY @10716 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10717
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10682 GOTO 2
  IF ~~ THEN REPLY @10704 GOTO 5
  IF ~~ THEN REPLY @10707 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10718
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      Global("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 6
  IF ~PartyHasItem("z5gendol")
      Global("52Letters","GLOBAL",0)
      GlobalGT("52Exile","GLOBAL",0)~ THEN REPLY @10674 DO ~SetGlobal("52Letters","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10683 GOTO 3
  IF ~~ THEN REPLY @10707 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10719
  IF ~~ THEN EXTERN ~52ARUMA~ 2
END

IF ~~ THEN BEGIN 7
  SAY @10723
  IF ~~ THEN EXTERN ~52ARUMA~ 4
END

IF ~~ THEN BEGIN 8
  SAY @10725
  IF ~~ THEN REPLY @10727 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @10728
  IF ~~ THEN EXTERN ~52ARUMA~ 5
END

IF ~~ THEN BEGIN 10
  SAY @10735
  IF ~~ THEN EXTERN ~52ARUMA~ 6
END

IF ~~ THEN BEGIN 11
  SAY @10740
  IF ~~ THEN REPLY @10707 DO ~TakePartyItem("z5gendol")
                              DestroyItem("z5gendol")~ EXIT
END

IF WEIGHT #0
~Global("52Aruma_Gone","GLOBAL",1)~ THEN BEGIN 12
  SAY @10741
  IF ~~ THEN REPLY @10707 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @10719
  IF ~~ THEN EXTERN ~52ARUMA~ 21
END
