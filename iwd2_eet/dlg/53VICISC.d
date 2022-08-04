BEGIN ~53VICISC~

IF ~True()~ THEN BEGIN 0
  SAY @2498
  IF ~PartyHasItem("z5misciv")~ THEN REPLY @521 DO ~TakePartyItem("z5misciv")
                                                    DestroyItem("z5misciv")
                                                    AddXPWorthOnce(Myself,TRUE)
                                                    Kill(Myself)~ EXIT
  IF ~~ THEN REPLY @35739 EXIT
END
