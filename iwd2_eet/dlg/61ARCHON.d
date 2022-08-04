BEGIN ~61ARCHON~

IF ~True()~ THEN BEGIN 0
  SAY @35807
  IF ~!Global("CurrentDestination","MYAREA",3)
      Global("PlayerCanRequestExit","MYAREA",1)~ THEN REPLY @35810 DO ~SetGlobal("DestinationRequest","LOCALS",3)~ GOTO 1
  IF ~!Global("CurrentDestination","MYAREA",2)
      Global("PlayerSawGuardPost","MYAREA",1)~ THEN REPLY @35809 DO ~SetGlobal("DestinationRequest","LOCALS",2)~ GOTO 1
  IF ~!Global("CurrentDestination","MYAREA",4)
      Global("PlayerKnowsLothar","MYAREA",1)~ THEN REPLY @35811 DO ~SetGlobal("DestinationRequest","LOCALS",4)~ GOTO 1
  IF ~!Global("61CurrentDay","GLOBAL",3)
      !Global("CurrentDestination","MYAREA",5)
      Global("PlayerKnowsPyrosDead","MYAREA",0)~ THEN REPLY @35812 DO ~SetGlobal("PlayerKnowsPyrosDead","MYAREA",1)
                                                                       AddJournalEntry(@35806,QUEST)~ GOTO 4
  IF ~!Global("CurrentDestination","MYAREA",5)
      Global("PlayerKnowsPyrosDead","MYAREA",1)~ THEN REPLY @35813 DO ~SetGlobal("DestinationRequest","LOCALS",5)~ GOTO 1
  IF ~Global("61CurrentDay","GLOBAL",3)
      !Global("CurrentDestination","MYAREA",5)
      Global("PlayerKnowsPyrosDead","MYAREA",0)~ THEN REPLY @36480 DO ~SetGlobal("PlayerKnowsPyrosDead","MYAREA",2)
                                                                       AddJournalEntry(@36559,QUEST)~ GOTO 5
  IF ~!Global("CurrentDestination","MYAREA",6)
      Global("PlayerKnowsJasper","MYAREA",1)~ THEN REPLY @35814 DO ~SetGlobal("DestinationRequest","LOCALS",6)~ GOTO 1
  IF ~!Global("CurrentDestination","MYAREA",7)
      Global("PlayerKnowsStash","MYAREA",1)
      Global("PlayerSawAmphitheatre","MYAREA",1)
      Global("PlayerSawGuardPost","MYAREA",1)
      Global("PlayerKnowsLothar","MYAREA",1)
      GlobalLT("61CurrentDay","GLOBAL",2)
      Global("MephitLairOccupied","MYAREA",0)~ THEN REPLY @35815 DO ~SetGlobal("DestinationRequest","LOCALS",7)~ GOTO 1
  IF ~!Global("CurrentDestination","MYAREA",8)
      Global("PlayerSawAmphitheatre","MYAREA",1)~ THEN REPLY @35816 DO ~SetGlobal("DestinationRequest","LOCALS",8)~ GOTO 1
  IF ~!Global("CurrentDestination","MYAREA",1)~ THEN REPLY @35808 DO ~SetGlobal("DestinationRequest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @30477 DO ~SetGlobal("DestinationRequest","LOCALS",0)
                              StartStore("61Archon",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35817 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @35818
  IF ~NumInParty(1)
      PartyGoldGT(299)~ THEN REPLY @35819 DO ~TakePartyGold(300)~ GOTO 2
  IF ~NumInParty(2)
      PartyGoldGT(599)~ THEN REPLY @35819 DO ~TakePartyGold(600)~ GOTO 2
  IF ~NumInParty(3)
      PartyGoldGT(899)~ THEN REPLY @35819 DO ~TakePartyGold(900)~ GOTO 2
  IF ~NumInParty(4)
      PartyGoldGT(1199)~ THEN REPLY @35819 DO ~TakePartyGold(1200)~ GOTO 2
  IF ~NumInParty(5)
      PartyGoldGT(1499)~ THEN REPLY @35819 DO ~TakePartyGold(1500)~ GOTO 2
  IF ~NumInParty(6)
      PartyGoldGT(1799)~ THEN REPLY @35819 DO ~TakePartyGold(1800)~ GOTO 2
  IF ~NumInParty(1)
      !PartyGoldGT(299)~ THEN REPLY @35819 GOTO 3
  IF ~NumInParty(2)
      !PartyGoldGT(599)~ THEN REPLY @35819 GOTO 3
  IF ~NumInParty(3)
      !PartyGoldGT(899)~ THEN REPLY @35819 GOTO 3
  IF ~NumInParty(4)
      !PartyGoldGT(1199)~ THEN REPLY @35819 GOTO 3
  IF ~NumInParty(5)
      !PartyGoldGT(1499)~ THEN REPLY @35819 GOTO 3
  IF ~NumInParty(6)
      !PartyGoldGT(1799)~ THEN REPLY @35819 GOTO 3
  IF ~~ THEN REPLY @36807 DO ~SetGlobal("DestinationRequest","LOCALS",0)
                              StartStore("61Archon",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("MaxArchonBluffs","MYAREA",0)~ THEN REPLY @38340 DO ~IncrementGlobal("MaxArchonBluffs","MYAREA",-1)~ GOTO 2
  IF ~~ THEN REPLY @35820 GOTO 0
  IF ~~ THEN REPLY @35822 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35824
  IF ~~ THEN DO ~SetGlobal("TravelStep","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35826
  IF ~~ THEN REPLY @38488 GOTO 6
  IF ~~ THEN REPLY @1487 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35827
  IF ~~ THEN REPLY @35835 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ GOTO 0
  IF ~~ THEN REPLY @35836 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @36477
  IF ~~ THEN REPLY @36478 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ GOTO 0
  IF ~~ THEN REPLY @17971 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @38486
  IF ~CheckStatGT(LastTalkedToBy,1,STR)~ THEN REPLY @38490 DO ~ChangeStat(LastTalkedToBy,STR,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38474)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,1,INT)~ THEN REPLY @38491 DO ~ChangeStat(LastTalkedToBy,INT,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38475)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,1,WIS)~ THEN REPLY @38492 DO ~ChangeStat(LastTalkedToBy,WIS,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38477)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,1,DEX)~ THEN REPLY @38493 DO ~ChangeStat(LastTalkedToBy,DEX,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38479)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,1,CON)~ THEN REPLY @38494 DO ~ChangeStat(LastTalkedToBy,CON,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38481)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,1,CHR)~ THEN REPLY @38495 DO ~ChangeStat(LastTalkedToBy,CHR,-1,ADD)
                                                               DisplayString(LastTalkedToBy,@38482)~ EXIT
  IF ~~ THEN REPLY @38496 DO ~SetGlobal("DestinationRequest","LOCALS",0)
                              StartStore("61Archon",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("MaxArchonBluffs","MYAREA",0)~ THEN REPLY @38497 DO ~IncrementGlobal("MaxArchonBluffs","MYAREA",-1)~ EXIT
  IF ~~ THEN REPLY @38498 DO ~SetGlobal("DestinationRequest","LOCALS",0)~ EXIT
END
