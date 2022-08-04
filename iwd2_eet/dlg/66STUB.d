BEGIN ~66STUB~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24538
  IF ~PartyHasItem("z6gendp")
      OpenState("AR6702_Stair_Gate",FALSE)~ THEN REPLY @24539 DO ~SetGlobal("Unhide_Pudu","GLOBAL",1)~ GOTO 1
  IF ~!PartyHasItem("z6gendp")~ THEN REPLY @24539 DO ~SetGlobal("Unhide_Pudu","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @24540 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @24541
  IF ~~ THEN REPLY @24542 GOTO 2
  IF ~~ THEN REPLY @24543 EXIT
  IF ~~ THEN REPLY @24544 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24545
  IF ~PartyHasItem("z6keycp")~ THEN REPLY @24546 GOTO 3
  IF ~!PartyHasItem("z6keycp")~ THEN REPLY @24547 GOTO 4
  IF ~~ THEN REPLY @24543 EXIT
  IF ~~ THEN REPLY @24544 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @24548
  IF ~~ THEN REPLY @24549 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @24550
  IF ~~ THEN REPLY @24551 DO ~AddJournalEntry(@24537,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @24552
  IF ~~ THEN REPLY @24553 DO ~SetGlobal("Spoke_of_Pudu","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @24554 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @24555
  IF ~~ THEN REPLY @24554 EXIT
  IF ~~ THEN REPLY @24556 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @24559
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @24599
  IF ~PartyHasItem("z6keycp")
      Global("SPRITE_IS_DEADPudu","GLOBAL",1)~ THEN REPLY @28207 GOTO 3
  IF ~PartyHasItem("z6keycp")
      !Global("SPRITE_IS_DEADPudu","GLOBAL",1)~ THEN REPLY @28207 GOTO 9
  IF ~!PartyHasItem("z6keycp")
      OpenState("AR6702_Stair_Gate",FALSE)~ THEN REPLY @24539 GOTO 1
  IF ~~ THEN REPLY @28208 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @28209
  IF ~~ THEN DO ~SetGlobal("SH_Stub_Pissed","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("67cStub")~ EXIT
END
