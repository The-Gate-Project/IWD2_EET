BEGIN ~30GOBPON~

IF WEIGHT #0 ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15899
  IF ~~ THEN REPLY @15900 GOTO 1
  IF ~~ THEN REPLY @28708 GOTO 3
  IF ~~ THEN REPLY @28709 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @28710 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @28711
  IF ~~ THEN REPLY @28712 GOTO 4
  IF ~~ THEN REPLY @28714 GOTO 2
  IF ~~ THEN REPLY @28708 GOTO 3
  IF ~~ THEN REPLY @28709 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @28710 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @28715
  IF ~~ THEN REPLY @28712 GOTO 4
  IF ~~ THEN REPLY @28708 GOTO 3
  IF ~~ THEN REPLY @28709 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @28710 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @28716
  IF ~~ THEN REPLY @28712 GOTO 4
  IF ~~ THEN REPLY @28714 GOTO 2
  IF ~~ THEN REPLY @28709 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @28717 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @28718
  IF ~~ THEN REPLY @28744 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)
                              AddJournalEntry(@15776,QUEST)~ GOTO 6
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @28745 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)
                                                      AddJournalEntry(@15776,QUEST)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @29197 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)
                                                      AddJournalEntry(@15776,QUEST)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~~ THEN REPLY @28746 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~~ THEN REPLY @28747 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~~ THEN REPLY @28748 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~!Global("30gobPon_Spid","GLOBAL",1)~ THEN REPLY @28751 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)
                                                                 AddJournalEntry(@15777,QUEST)~ EXIT
  IF ~~ THEN REPLY @28749 DO ~SetGlobal("30gobPon_Spid","GLOBAL",1)
                              Enemy()~ EXIT
END

IF WEIGHT #1
~Global("30gobPon_Spid","GLOBAL",1)~ THEN BEGIN 5
  SAY @29196
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @28745 GOTO 7
  IF ~PartyHasItem("z3wspidq")~ THEN REPLY @29197 GOTO 7
  IF ~~ THEN REPLY @28746 GOTO 8
  IF ~~ THEN REPLY @28747 GOTO 9
  IF ~~ THEN REPLY @28748 GOTO 10
  IF ~~ THEN REPLY @29198 GOTO 6
  IF ~~ THEN REPLY @28749 DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @29199
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @29201
  IF ~Global("30gobPon_Spid","GLOBAL",1)
      !Global("30hobDGu_Pass","GLOBAL",1)
      NumItemsParty("z3wspidr",1)~ THEN REPLY @29202 DO ~AddXP2DA("IW2EX5A")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@15870)
                                                         SetGlobal("30gobPon_Spid","GLOBAL",2)
                                                         TakePartyItem("z3wspidr")
                                                         DestroyItem("z3wspidr")~ GOTO 11
  IF ~Global("30gobPon_Spid","GLOBAL",1)
      !Global("30hobDGu_Pass","GLOBAL",1)
      NumItemsPartyGT("z3wspidr",1)~ THEN REPLY @29619 DO ~AddXP2DA("IW2EX5H")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@15869)
                                                           SetGlobal("30gobPon_Spid","GLOBAL",2)
                                                           TakePartyItemAll("z3wspidr")
                                                           DestroyItem("z3wspidr")~ GOTO 11
  IF ~Global("30gobPon_Spid","GLOBAL",2)
      Global("30hobDGu_Pass","GLOBAL",1)
      NumItemsParty("z3wspidr",1)~ THEN REPLY @29620 DO ~AddXP2DA("IW2EX5E")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@15875)
                                                         TakePartyItem("z3wspidr")
                                                         DestroyItem("z3wspidr")~ GOTO 14
  IF ~Global("30gobPon_Spid","GLOBAL",2)
      Global("30hobDGu_Pass","GLOBAL",1)
      NumItemsPartyGT("z3wspidr",1)~ THEN REPLY @29621 DO ~AddXP2DA("IW2EX5E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@15872)
                                                           TakePartyItemAll("z3wspidr")
                                                           DestroyItem("z3wspidr")~ GOTO 14
  IF ~Global("30gobPon_Spid","GLOBAL",1)
      !Global("30hobDGu_Pass","GLOBAL",1)
      PartyHasItem("z3wspidq")~ THEN REPLY @29622 DO ~AddXP2DA("IW2EX5VH")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@15877)
                                                      TakePartyItem("z3wspidq")
                                                      DestroyItem("z3wspidq")~ GOTO 15
  IF ~Global("30gobPon_Spid","GLOBAL",2)
      Global("30hobDGu_Pass","GLOBAL",1)
      PartyHasItem("z3wspidq")~ THEN REPLY @29622 DO ~AddXP2DA("IW2EX5VH")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@15877)
                                                      TakePartyItem("z3wspidq")
                                                      DestroyItem("z3wspidq")~ GOTO 16
  IF ~~ THEN REPLY @29625 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @29626
  IF ~~ THEN REPLY @28744 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 6
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @28745 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @29197 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @28747 GOTO 9
  IF ~~ THEN REPLY @30499 GOTO 4
  IF ~~ THEN REPLY @28748 GOTO 10
  IF ~!Global("30gobPon_Spid","GLOBAL",1)~ THEN REPLY @30505 DO ~AddJournalEntry(@15777,QUEST)~ EXIT
  IF ~~ THEN REPLY @2504 DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @30510
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @28745 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~PartyHasItem("z3wspidq")~ THEN REPLY @29197 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @28746 GOTO 8
  IF ~~ THEN REPLY @28744 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @30499 GOTO 4
  IF ~~ THEN REPLY @28748 GOTO 10
  IF ~!Global("30gobPon_Spid","GLOBAL",1)~ THEN REPLY @30505 DO ~AddJournalEntry(@15777,QUEST)~ EXIT
  IF ~~ THEN REPLY @2501 DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @30513
  IF ~PartyHasItem("z3wspidr")~ THEN REPLY @28745 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~PartyHasItem("z3wspidq")~ THEN REPLY @29197 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @28744 DO ~AddJournalEntry(@15776,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @28746 GOTO 8
  IF ~~ THEN REPLY @28747 GOTO 9
  IF ~~ THEN REPLY @30499 GOTO 4
  IF ~!Global("30gobPon_Spid","GLOBAL",1)~ THEN REPLY @30516 DO ~AddJournalEntry(@15777,QUEST)~ EXIT
  IF ~~ THEN REPLY @2502 DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @31598
  IF ~~ THEN DO ~SetGlobal("30hobDGu_Pass","GLOBAL",1)
                 EraseJournalEntry(@15776)
                 EraseJournalEntry(@15777)
                 AddJournalEntry(@15778,QUEST_DONE)~ FLAGS 0x200 GOTO 12 /*true*/
END

IF WEIGHT #2
~Global("30gobPon_Spid","GLOBAL",2)~ THEN BEGIN 12
  SAY @31599
  IF ~!Global("30gopon_No_More","GLOBAL",1)
      NumItemsParty("z3wspidr",1)~ THEN REPLY @31600 GOTO 7
  IF ~!Global("30gopon_No_More","GLOBAL",1)
      NumItemsPartyGT("z3wspidr",1)~ THEN REPLY @31601 GOTO 7
  IF ~!Global("30gopon_No_More","GLOBAL",1)
      Global("30gobPon_Spid","GLOBAL",2)
      Global("30hobDGu_Pass","GLOBAL",1)
      PartyHasItem("z3wspidq")~ THEN REPLY @29622 DO ~TakePartyItem("z3wspidq")
                                                      DestroyItem("z3wspidq")~ GOTO 16
  IF ~~ THEN REPLY @31602 GOTO 13
  IF ~~ THEN REPLY @31603 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @28710 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31604
  IF ~~ THEN REPLY @32085 DO ~SetGlobal("30gobPon_Betrayer","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("30cPond0")~ EXIT
  IF ~~ THEN REPLY @32086 DO ~SetGlobal("30gobPon_Betrayer","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("30cPond0")~ EXIT
  IF ~~ THEN REPLY @32087 GOTO 14
  IF ~~ THEN REPLY @28710 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @32088
  IF ~~ THEN DO ~SetGlobal("30gopon_No_More","GLOBAL",1)~ FLAGS 0x200 GOTO 12 /*true*/
END

IF ~~ THEN BEGIN 15
  SAY @32089
  IF ~~ THEN DO ~SetGlobal("30hobDGu_Pass","GLOBAL",1)
                 SetGlobal("30gobPon_Spid","GLOBAL",2)
                 EraseJournalEntry(@15776)
                 EraseJournalEntry(@15777)
                 AddJournalEntry(@15778,QUEST_DONE)~ FLAGS 0x200 GOTO 12 /*true*/
END

IF ~~ THEN BEGIN 16
  SAY @32090
  IF ~~ THEN DO ~AddXP2DA("IW2EX5VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@15877)~ GOTO 12
END
