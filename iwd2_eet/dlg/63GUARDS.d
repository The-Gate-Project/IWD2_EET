BEGIN ~63GUARDS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @36531
  IF ~PartyHasItem("z6gendp")~ THEN REPLY @36532 DO ~SetGlobal("First_Warning","GLOBAL",1)~ EXIT
  IF ~!PartyHasItem("z6gendp")
      CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @36532 DO ~SetGlobal("First_Warning","GLOBAL",1)~ EXIT
  IF ~!PartyHasItem("z6gendp")~ THEN REPLY @36532 GOTO 1
  IF ~~ THEN REPLY @36533 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @36534
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
~ THEN BEGIN 2
  SAY @36572
  IF ~~ THEN DO ~Enemy()~ EXIT
END
