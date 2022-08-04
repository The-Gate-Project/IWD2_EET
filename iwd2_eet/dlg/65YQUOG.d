BEGIN ~65YQUOG~

IF ~Global("30Yquog_Quest","GLOBAL",3)~ THEN BEGIN 0
  SAY @33637
  IF ~~ THEN REPLY @33639 GOTO 1
  IF ~~ THEN REPLY @33640 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @33641
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33642 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33643 GOTO 2
  IF ~~ THEN REPLY @33644 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @33645
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33660 GOTO 12
  IF ~PartyHasItem("MISC80")
      !PartyHasItem("MISC62")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33661 GOTO 14
  IF ~PartyHasItem("z0MISC29")
      !PartyHasItem("MISC62")
      !PartyHasItem("MISC80")~ THEN REPLY @33662 GOTO 16
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @33663 GOTO 3
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @33663 GOTO 23
  IF ~!PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33664 GOTO 18
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33665 GOTO 20
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33666 GOTO 22
  IF ~~ THEN REPLY @33668 DO ~Enemy ()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @33669
  IF ~~ THEN REPLY @33670 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @33671
  IF ~~ THEN REPLY @33672 DO ~AddXP2DA("IW2EX14VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33628)~ GOTO 5
  IF ~~ THEN REPLY @33673 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33629)
                              StartCutSceneMode()
                              StartCutScene("65cYquF1")~ EXIT
  IF ~~ THEN REPLY @33689 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @33690
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("65cYquF0")~ EXIT
END

IF ~Global("30Yquog_Quest","GLOBAL",2)~ THEN BEGIN 6
  SAY @33692
  IF ~~ THEN REPLY @33693 GOTO 7
  IF ~~ THEN REPLY @33694 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @33695
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33660 GOTO 12
  IF ~PartyHasItem("MISC80")
      !PartyHasItem("MISC62")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33661 GOTO 14
  IF ~PartyHasItem("z0MISC29")
      !PartyHasItem("MISC62")
      !PartyHasItem("MISC80")~ THEN REPLY @33662 GOTO 16
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @33663 GOTO 3
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @33698 GOTO 23
  IF ~!PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33664 GOTO 18
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33665 GOTO 20
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33666 GOTO 22
  IF ~~ THEN REPLY @33668 DO ~Enemy ()~ EXIT
END

IF ~Global("30Yquog_Quest","GLOBAL",1)~ THEN BEGIN 8
  SAY @33699
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33700 GOTO 12
  IF ~PartyHasItem("MISC80")
      !PartyHasItem("MISC62")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33701 GOTO 14
  IF ~PartyHasItem("z0MISC29")
      !PartyHasItem("MISC62")
      !PartyHasItem("MISC80")~ THEN REPLY @33706 GOTO 16
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @33707 GOTO 3
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @33698 GOTO 23
  IF ~!PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33664 GOTO 18
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33665 GOTO 20
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33666 GOTO 22
  IF ~~ THEN REPLY @33668 DO ~Enemy ()~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 9
  SAY @33708
  IF ~~ THEN REPLY @33709 GOTO 10
  IF ~~ THEN REPLY @33640 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @33710
  IF ~~ THEN REPLY @33711 GOTO 11
  IF ~~ THEN REPLY @33712 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @33713
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33700 GOTO 12
  IF ~PartyHasItem("MISC80")
      !PartyHasItem("MISC62")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33701 GOTO 14
  IF ~PartyHasItem("z0MISC29")
      !PartyHasItem("MISC62")
      !PartyHasItem("MISC80")~ THEN REPLY @33706 GOTO 16
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @33714 GOTO 3
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @33698 GOTO 23
  IF ~!PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33664 GOTO 18
  IF ~PartyHasItem("MISC62")
      PartyHasItem("MISC80")
      !PartyHasItem("z0MISC29")~ THEN REPLY @33665 GOTO 20
  IF ~PartyHasItem("MISC62")
      !PartyHasItem("MISC80")
      PartyHasItem("z0MISC29")~ THEN REPLY @33666 GOTO 22
  IF ~~ THEN REPLY @33668 DO ~Enemy ()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @33715
  IF ~~ THEN REPLY @33716 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33631)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @33717
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @33718
  IF ~~ THEN REPLY @37812 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33632)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @33717
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @37813
  IF ~~ THEN REPLY @37814 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33633)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @37815
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @37817
  IF ~~ THEN REPLY @37818 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33634)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @33717
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @37819
  IF ~~ THEN REPLY @39563 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33635)~ GOTO 19
END

IF ~~ THEN BEGIN 21
  SAY @33717
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @37821
  IF ~~ THEN REPLY @37820 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33635)~ GOTO 21
END

IF ~~ THEN BEGIN 23
  SAY @37822
  IF ~~ THEN REPLY @37823 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33636)~ GOTO 19
END

IF ~~ THEN BEGIN 24
  SAY @37815
  IF ~~ THEN DO ~Enemy()~ EXIT
END
