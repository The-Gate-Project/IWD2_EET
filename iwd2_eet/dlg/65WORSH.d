BEGIN ~65WORSH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @28619
  IF ~~ THEN DO ~TakePartyGold(15)~ EXIT
END

IF ~PartyGoldGT(29)
    NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @28621
  IF ~~ THEN DO ~TakePartyGold(30)~ EXIT
END

IF ~PartyGoldLT(30)
    NumTimesTalkedToGT(0)~ THEN BEGIN 2
  SAY @35890
  IF ~~ THEN EXIT
END
