BEGIN ~11ELYTHA~

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @432
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @433 GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @434 GOTO 2
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @440 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 1
  SAY @445
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @446 GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @447 GOTO 2
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @449 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @450
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @451 GOTO 3
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @451 GOTO 5
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @441 GOTO 25
  IF ~~ THEN REPLY @452 GOTO 11
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @453
  IF ~~ THEN REPLY @454 GOTO 7
  IF ~~ THEN REPLY @456 GOTO 6
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @457
  IF ~~ THEN REPLY @454 GOTO 7
  IF ~~ THEN REPLY @456 GOTO 6
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @459
  IF ~~ THEN REPLY @454 GOTO 7
  IF ~~ THEN REPLY @456 GOTO 6
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @460
  IF ~~ THEN REPLY @454 GOTO 7
  IF ~~ THEN REPLY @452 GOTO 11
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @461
  IF ~Global("Valin_Saved","GLOBAL",0)~ THEN REPLY @462 DO ~AddJournalEntry(@282,QUEST)~ GOTO 35
  IF ~GlobalGT("Valin_Saved","GLOBAL",0)
      GlobalLT("Valin_Saved","GLOBAL",2)
      Global("Valin_Quest","GLOBAL",0)~ THEN REPLY @463 DO ~AddXP2DA("IW2EX1E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                            EraseJournalEntry(@282)
                                                            EraseJournalEntry(@8058)
                                                            EraseJournalEntry(@5132)
                                                            EraseJournalEntry(@8068)
                                                            AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~~ THEN REPLY @464 GOTO 9
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @752 GOTO 8
  IF ~!Class(LastTalkedToBy,RANGER_ALL)
      Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @752 GOTO 8
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1718
  IF ~Global("Valin_Saved","GLOBAL",0)~ THEN REPLY @1719 DO ~AddJournalEntry(@282,QUEST)~ GOTO 35
  IF ~GlobalGT("Valin_Saved","GLOBAL",0)
      GlobalLT("Valin_Saved","GLOBAL",2)
      Global("Valin_Quest","GLOBAL",0)~ THEN REPLY @1720 DO ~AddXP2DA("IW2EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                             EraseJournalEntry(@282)
                                                             EraseJournalEntry(@8058)
                                                             EraseJournalEntry(@5132)
                                                             EraseJournalEntry(@8068)
                                                             AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1722
  IF ~~ THEN REPLY @1723 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1724
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @1727 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @1728 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1729 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1730
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1733 GOTO 3
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1733 GOTO 5
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~~ THEN REPLY @444 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1734
  IF ~~ THEN REPLY @1735 DO ~AddJournalEntry(@276,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @1736
  IF ~!Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @1737 GOTO 14
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @1739 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @1740
  IF ~~ THEN REPLY @1741 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @16433
  IF ~~ THEN REPLY @1741 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @16434
  IF ~~ THEN REPLY @24481 DO ~SetGlobal("Know_Bottle_Tears","GLOBAL",1)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @24483
  IF ~GlobalGT("Know_Veira","GLOBAL",0)~ THEN REPLY @24484 DO ~AddJournalEntry(@277,QUEST)~ GOTO 18
  IF ~Global("Know_Veira","GLOBAL",0)
      GlobalGT("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @24484 DO ~AddJournalEntry(@277,QUEST)~ GOTO 18
  IF ~Global("Know_Veira","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @24485 GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY @24495
  IF ~Global("Blew_It","GLOBAL",0)~ THEN REPLY @24496 DO ~SetGlobal("Know_Bottle_Tears","GLOBAL",2)~ GOTO 19
  IF ~Global("Blew_It","GLOBAL",1)~ THEN REPLY @24497 DO ~SetGlobal("Know_Bottle_Tears","GLOBAL",2)~ GOTO 22
END

IF ~~ THEN BEGIN 19
  SAY @24499
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @24501
  IF ~~ THEN REPLY @24502 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @25091
  IF ~~ THEN REPLY @25092 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @25093
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @25094 GOTO 3
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @25094 GOTO 5
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~~ THEN REPLY @25095 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25097 EXIT
END

IF WEIGHT #1
~Global("Targos_Phase","GLOBAL",2)~ THEN BEGIN 23
  SAY @25098
  IF ~~ THEN REPLY @25099 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 24
  SAY @25100
  IF ~~ THEN REPLY @447 GOTO 2
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25101 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @25102
  IF ~~ THEN REPLY @25103 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @25104
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @25105
  IF ~~ THEN REPLY @25106 DO ~GiveGoldForce(500)
                              TakePartyItem("z1genvbo")
                              DestroyItem("z1genvbo")
                              SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @25107 GOTO 29
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @25107 GOTO 28
  IF ~Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25108 DO ~GiveItemCreate("ZZJ5GT",LastTalkedToBy,0,0,0)
                                                               TakePartyItem("z1genvbo")
                                                               DestroyItem("z1genvbo")
                                                               SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~!Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25108 DO ~GiveItemCreate("ZZJ5ST",LastTalkedToBy,0,0,0)
                                                                TakePartyItem("z1genvbo")
                                                                DestroyItem("z1genvbo")
                                                                SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
END

IF ~~ THEN BEGIN 28
  SAY @25109
  IF ~~ THEN REPLY @25110 DO ~GiveGoldForce(500)
                              TakePartyItem("z1genvbo")
                              DestroyItem("z1genvbo")
                              SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25111 DO ~GiveItemCreate("ZZJ5GT",LastTalkedToBy,0,0,0)
                                                               TakePartyItem("z1genvbo")
                                                               DestroyItem("z1genvbo")
                                                               SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~!Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25111 DO ~GiveItemCreate("ZZJ5ST",LastTalkedToBy,0,0,0)
                                                                TakePartyItem("z1genvbo")
                                                                DestroyItem("z1genvbo")
                                                                SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @25113
  IF ~~ THEN REPLY @25114 DO ~GiveGoldForce(700)
                              TakePartyItem("z1genvbo")
                              DestroyItem("z1genvbo")
                              SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25115 DO ~GiveItemCreate("ZZJ5GT",LastTalkedToBy,0,0,0)
                                                               TakePartyItem("z1genvbo")
                                                               DestroyItem("z1genvbo")
                                                               SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
  IF ~!Global("Veira_Turned","GLOBAL",2)~ THEN REPLY @25115 DO ~GiveItemCreate("ZZJ5ST",LastTalkedToBy,0,0,0)
                                                                TakePartyItem("z1genvbo")
                                                                DestroyItem("z1genvbo")
                                                                SetGlobal("Elytharra_Tear","GLOBAL",1)~ GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @25116
  IF ~Global("Elytharra_Store","GLOBAL",0)~ THEN REPLY @25117 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)~ THEN REPLY @25117 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @25118 EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @25238 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @25239
  IF ~~ THEN REPLY @25240 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @25241
  IF ~~ THEN REPLY @25242 DO ~SetGlobal("Know_Brimstone_Vellum","GLOBAL",1)
                              AddJournalEntry(@275,QUEST)~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @25243
  IF ~Global("Phaen_Loses_It","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @25244 DO ~AddXP2DA("IW2EX1A")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                               EraseJournalEntry(@275)
                                                               EraseJournalEntry(@9619)
                                                               AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Phaen_Loses_It","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @25244 GOTO 57
  IF ~Global("Phaen_Loses_It","GLOBAL",0)~ THEN REPLY @25245 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",1)~ GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @25246
  IF ~~ THEN REPLY @25247 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @25248
  IF ~~ THEN DO ~SetGlobal("Valin_Quest","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @25249
  IF ~Global("Know_Valin","GLOBAL",0)~ THEN REPLY @25250 GOTO 37
  IF ~Global("Know_Valin","GLOBAL",1)~ THEN REPLY @27218 GOTO 37
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @27222
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Kit(LastTalkedToBy,MAGESCHOOL_DIVINER)~ THEN REPLY @27223 GOTO 47
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_DIVINER)~ THEN REPLY @27225 GOTO 46
  IF ~Global("Know_Valin","GLOBAL",0)~ THEN REPLY @27226 GOTO 38
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @27269
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27270 EXIT
END

IF WEIGHT #0
~TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
 Global("Elytharra_Drow","GLOBAL",0)~ THEN BEGIN 39
  SAY @27271
  IF ~~ THEN REPLY @27360 DO ~SetGlobal("Elytharra_Drow","GLOBAL",1)~ GOTO 40
  IF ~~ THEN REPLY @27361 DO ~SetGlobal("Elytharra_Drow","GLOBAL",1)~ GOTO 40
  IF ~~ THEN REPLY @27383 DO ~SetGlobal("Elytharra_Drow","GLOBAL",2)~ GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY @27384
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @27385
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @27386
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @446 GOTO 31
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @447 GOTO 2
  IF ~PartyHasItem("z1vellum")
      !PartyHasItemIdentified("z1vellum")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @435 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1vellum")
      Global("Expose_Phaen_Quest","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @436 GOTO 32
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalLT("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 DO ~AddXP2DA("IW2EX1A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@429)
                                                             EraseJournalEntry(@275)
                                                             EraseJournalEntry(@9619)
                                                             AddJournalEntry(@283,QUEST_DONE)~ GOTO 43
  IF ~Global("Expose_Phaen_Quest","GLOBAL",1)
      Global("Phaen_Loses_It","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Phaen","GLOBAL",2)~ THEN REPLY @437 GOTO 57
  IF ~Global("Valin_Saved","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      GlobalGT("Valin_Quest","GLOBAL",0)~ THEN REPLY @438 DO ~AddXP2DA("IW2EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@431)
                                                              EraseJournalEntry(@282)
                                                              EraseJournalEntry(@8058)
                                                              EraseJournalEntry(@5132)
                                                              EraseJournalEntry(@8068)
                                                              AddJournalEntry(@284,QUEST_DONE)~ GOTO 53
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @441 GOTO 25
  IF ~Global("Elytharra_Store","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @442 DO ~SetGlobal("Elytharra_Store","GLOBAL",1)~ GOTO 10
  IF ~Global("Elytharra_Store","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @443 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @449 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @27387
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @27388 GOTO 44
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 GOTO 44
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(150)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      CheckStatLT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(200)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(250)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~CheckStatLT(LastTalkedToBy,14,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(150)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,13,CON)
      CheckStatLT(LastTalkedToBy,16,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(200)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~  CheckStatGT(LastTalkedToBy,15,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(250)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)~ GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @27391
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @27392 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ GOTO 45
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @27394 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ GOTO 45
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27395 DO ~StartStore("11Elytha",LastTalkedToBy)
                                                         SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27396 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27404 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ GOTO 25
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27428 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)
                                                         StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27436 DO ~SetGlobal("Expose_Phaen_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @27437
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @439 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @448 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @441 GOTO 25
  IF ~~ THEN REPLY @27548 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27436 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @27585
  IF ~~ THEN REPLY @27586 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @27587
  IF ~~ THEN REPLY @27588 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @27589
  IF ~GlobalLT("Expose_Phaen_Quest","GLOBAL",2)
      GlobalLT("Garradun_Quest","GLOBAL",3)~ THEN REPLY @27590 GOTO 52
  IF ~GlobalGT("Expose_Phaen_Quest","GLOBAL",1)
      GlobalLT("Garradun_Quest","GLOBAL",3)~ THEN REPLY @27590 GOTO 49
  IF ~GlobalLT("Expose_Phaen_Quest","GLOBAL",2)
      GlobalGT("Garradun_Quest","GLOBAL",2)~ THEN REPLY @27590 GOTO 50
  IF ~GlobalGT("Expose_Phaen_Quest","GLOBAL",1)
      GlobalGT("Garradun_Quest","GLOBAL",2)~ THEN REPLY @27590 GOTO 51
END

IF ~~ THEN BEGIN 49
  SAY @29059
  IF ~~ THEN REPLY @29060 GOTO 38
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 50
  SAY @29061
  IF ~~ THEN REPLY @29062 GOTO 59
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 51
  SAY @29085
  IF ~~ THEN REPLY @29086 GOTO 59
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @29087
  IF ~~ THEN REPLY @27226 GOTO 38
  IF ~~ THEN REPLY @1721 GOTO 9
  IF ~~ THEN REPLY @27220 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @29088
  IF ~~ THEN REPLY @31364 DO ~SetGlobal("Valin_Saved","GLOBAL",2)~ GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @31365
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @31366
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31367 GOTO 56
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @31367 GOTO 56
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31367 DO ~GiveGoldForce(150)~ GOTO 56
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      CheckStatLT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31367 DO ~GiveGoldForce(200)
                                                         GiveItemCreate("RING13",LastTalkedToBy,0,0,0)~ GOTO 56
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31367 DO ~GiveGoldForce(250)
                                                         GiveItemCreate("RING13",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC26",LastTalkedToBy,0,0,0)~ GOTO 56
  IF ~CheckStatLT(LastTalkedToBy,14,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31368 DO ~GiveGoldForce(150)~ GOTO 56
  IF ~CheckStatGT(LastTalkedToBy,13,CON)
      CheckStatLT(LastTalkedToBy,16,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31368 DO ~GiveGoldForce(200)
                                                         GiveItemCreate("RING13",LastTalkedToBy,0,0,0)~ GOTO 56
  IF ~  CheckStatGT(LastTalkedToBy,15,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @31368 DO ~GiveGoldForce(250)
                                                         GiveItemCreate("RING13",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC26",LastTalkedToBy,0,0,0)~ GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @31370
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @27392 GOTO 45
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @27394 GOTO 45
  IF ~PartyHasItem("z1gengbo")
      !PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @33721 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Know_Bottle_Tears","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @33722 GOTO 12
  IF ~PartyHasItem("z1genvbo")
      Global("Elytharra_Tear","GLOBAL",0)
      Global("Dock_Goblin_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @33723 GOTO 25
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27428 DO ~StartStore("11Elytha",LastTalkedToBy)~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27436 EXIT
END

IF ~~ THEN BEGIN 57
  SAY @31371
  IF ~~ THEN REPLY @33539 DO ~AddXP2DA("IW2EX1H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@430)
                              EraseJournalEntry(@275)
                              EraseJournalEntry(@9619)
                              AddJournalEntry(@285,QUEST_DONE)~ GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @33540
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @27388 GOTO 44
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 GOTO 44
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(300)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      CheckStatLT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(400)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27388 DO ~GiveGoldForce(500)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~CheckStatLT(LastTalkedToBy,14,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(300)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,13,CON)
      CheckStatLT(LastTalkedToBy,16,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(400)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)~ GOTO 44
  IF ~CheckStatGT(LastTalkedToBy,15,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @27390 DO ~GiveGoldForce(500)
                                                         GiveItemCreate("AMUL10",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)~ GOTO 44
END

IF ~~ THEN BEGIN 59
  SAY @33541
  IF ~~ THEN REPLY @33542 GOTO 9
  IF ~~ THEN REPLY @33543 EXIT
END
