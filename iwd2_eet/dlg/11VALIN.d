BEGIN ~11VALIN~

IF WEIGHT #1
~True()~ THEN BEGIN 0
  SAY @9543
  IF ~PartyHasItem("z0potn55")
      HasItem("z1genvs",Myself)
      Global("Valin_Braehg","GLOBAL",1)~ THEN REPLY @9544 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@8070)
                                                              TakePartyItemNum("z0potn55",1)
                                                              AddJournalEntry(@8058,QUEST)~ GOTO 4
  IF ~PartyHasItem("z0potn55")
      !HasItem("z1genvs",Myself)~ THEN REPLY @9545 DO ~AddXP2DA("IW2EX1E")
                                                       DisplayStringNoNameDlg(LastTalkedToBy,@8070)
                                                       AddJournalEntry(@8058,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @9546 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                             AddJournalEntry(@5132,QUEST)~ GOTO 1
  IF ~Global("Valin_Quest","GLOBAL",1)
      Global("Valin_Braehg","GLOBAL",0)~ THEN REPLY @9547 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                                                              AddJournalEntry(@8068,QUEST)~ GOTO 2
  IF ~Global("Valin_Quest","GLOBAL",0)
      Class(LastTalkedToBy,MAGE)
      !Kit(LastTalkedToBy,MAGESCHOOL_DIVINER)
      Global("Valin_Braehg","GLOBAL",0)~ THEN REPLY @16426 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                                                               AddJournalEntry(@8068,QUEST)~ GOTO 2
  IF ~Global("Valin_Quest","GLOBAL",0)
      Kit(LastTalkedToBy,MAGESCHOOL_DIVINER)
      Global("Valin_Braehg","GLOBAL",0)~ THEN REPLY @16426 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                                                               AddJournalEntry(@8068,QUEST)~ GOTO 2
  IF ~Class(LastTalkedToBy,THIEF_ALL)
      HasItem("z1genvs",Myself)~ THEN REPLY @16427 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                                                       AddJournalEntry(@5132,QUEST)~ EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      HasItem("z1genvs",Myself)~ THEN REPLY @16427 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                                                       AddJournalEntry(@5132,QUEST)~ EXIT
  IF ~~ THEN REPLY @16428 DO ~SetGlobal("Know_Valin","GLOBAL",1)
                              AddJournalEntry(@5132,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @16429
  IF ~PartyHasItem("z0potn55")
      HasItem("z1genvs",Myself)
      Global("Valin_Braehg","GLOBAL",1)~ THEN REPLY @9544 DO ~TakePartyItemNum("z0potn55",1)~ GOTO 4
  IF ~PartyHasItem("z0potn55")
      !HasItem("z1genvs",Myself)~ THEN REPLY @9545 GOTO 4
  IF ~Class(LastTalkedToBy,THIEF_ALL)
      HasItem("z1genvs",Myself)~ THEN REPLY @16427 DO ~AddJournalEntry(@5132,QUEST)~ EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      HasItem("z1genvs",Myself)~ THEN REPLY @16427 DO ~AddJournalEntry(@5132,QUEST)~ EXIT
  IF ~~ THEN REPLY @16428 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16430
  IF ~!PartyHasItem("z0potn55")
      Global("Know_Braehg","GLOBAL",0)~ THEN REPLY @17226 DO ~SetGlobal("Valin_Braehg","GLOBAL",1)
                                                              AddJournalEntry(@8068,QUEST)~ GOTO 3
  IF ~!PartyHasItem("z0potn55")
      Global("Know_Braehg","GLOBAL",1)~ THEN REPLY @17227 DO ~SetGlobal("Valin_Braehg","GLOBAL",1)
                                                              AddJournalEntry(@8068,QUEST)~ GOTO 3
  IF ~PartyHasItem("z0potn55")
      HasItem("z1genvs",Myself)~ THEN REPLY @17228 DO ~AddXP2DA("IW2EX1E")
                                                       DisplayStringNoNameDlg(LastTalkedToBy,@8070)
                                                       TakePartyItemNum("z0potn55",1)
                                                       AddJournalEntry(@8058,QUEST)~ GOTO 4
  IF ~PartyHasItem("z0potn55")
      !HasItem("z1genvs",Myself)~ THEN REPLY @17319 DO ~AddXP2DA("IW2EX1E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@8070)
                                                        AddJournalEntry(@8058,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @17321
  IF ~Global("Know_Braehg","GLOBAL",0)~ THEN REPLY @17430 EXIT
  IF ~Global("Know_Braehg","GLOBAL",1)~ THEN REPLY @19466 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19469
  IF ~HasItem("z1genvs",Myself)~ THEN REPLY @19471 DO ~SetGlobal("Valin_Saved","GLOBAL",1)~ GOTO 5
  IF ~!HasItem("z1genvs",Myself)
      !PartyHasItem("z1genvs")~ THEN REPLY @23190 DO ~SetGlobal("Valin_Saved","GLOBAL",1)~ GOTO 6
  IF ~!HasItem("z1genvs",Myself)
      PartyHasItem("z1genvs")~ THEN REPLY @34642 DO ~SetGlobal("Valin_Saved","GLOBAL",1)~ GOTO 18
END

IF ~~ THEN BEGIN 5
  SAY @23231
  IF ~~ THEN REPLY @24112 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @24115
  IF ~~ THEN REPLY @24112 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @24179
  IF ~Global("Fortress_Quest","GLOBAL",0)~ THEN REPLY @24180 GOTO 8
  IF ~GlobalGT("Fortress_Quest","GLOBAL",0)~ THEN REPLY @24181 GOTO 11
  IF ~GlobalGT("Fortress_Quest","GLOBAL",0)~ THEN REPLY @24202 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @24456
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @24458
  IF ~~ THEN REPLY @24459 DO ~AddJournalEntry(@8059,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @24460
  IF ~~ THEN REPLY @24461 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @24462
  IF ~~ THEN REPLY @24463 DO ~AddJournalEntry(@8067,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @24464
  IF ~Global("Know_Oswald_Crash","GLOBAL",1)~ THEN REPLY @24465 GOTO 14
  IF ~Global("Know_Oswald_Crash","GLOBAL",1)~ THEN REPLY @24466 GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !HasItem("z1genvs",Myself)
      Global("Valin_Reward","GLOBAL",0)~ THEN REPLY @24467 DO ~SetGlobal("Valin_Reward","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @24469 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @24470
  IF ~Global("Know_Oswald_Crash","GLOBAL",1)~ THEN REPLY @24465 GOTO 14
  IF ~Global("Know_Oswald_Crash","GLOBAL",1)~ THEN REPLY @24466 GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !HasItem("z1genvs",Myself)
      Global("Valin_Reward","GLOBAL",0)~ THEN REPLY @24467 DO ~SetGlobal("Valin_Reward","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @24469 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @24471
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !HasItem("z1genvs",Myself)
      Global("Valin_Reward","GLOBAL",0)~ THEN REPLY @24467 DO ~SetGlobal("Valin_Reward","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @24472 EXIT
  IF ~~ THEN REPLY @24473 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @24474
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @24475 DO ~GiveGoldForce(61)~ GOTO 16
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)
      CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @24475 DO ~GiveGoldForce(134)
                                                                GiveItem("MISC22",LastTalkedToBy)~ GOTO 16
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @24475 DO ~GiveGoldForce(181)
                                                                GiveItem("MISC24",LastTalkedToBy)~ GOTO 16
  IF ~~ THEN REPLY @24476 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @24477
  IF ~~ THEN REPLY @24478 EXIT
END

IF WEIGHT #0
~GlobalGT("Valin_Saved","GLOBAL",0)~ THEN BEGIN 17
  SAY @24479
  IF ~PartyHasItem("z1genvs")~ THEN REPLY @34643 GOTO 19
  IF ~~ THEN REPLY @24480 GOTO 12
  IF ~~ THEN REPLY @28552 GOTO 7
  IF ~~ THEN REPLY @28553 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @34640
  IF ~~ THEN REPLY @34641 DO ~TakePartyItem("z1genvs")
                              DestroyItem("z1genvs")~ GOTO 7
END

IF ~~ THEN BEGIN 19
  SAY @34644
  IF ~~ THEN REPLY @34645 DO ~TakePartyItem("z1genvs")
                              DestroyItem("z1genvs")~ GOTO 12
  IF ~~ THEN REPLY @34646 DO ~TakePartyItem("z1genvs")
                              DestroyItem("z1genvs")~ GOTO 7
  IF ~~ THEN REPLY @34647 DO ~TakePartyItem("z1genvs")
                              DestroyItem("z1genvs")~ EXIT
END
