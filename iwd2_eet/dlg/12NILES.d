BEGIN ~12NILES~

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10656
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @10657 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @10658 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 2
  IF ~PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~PartyHasItem("COFFEE")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10660 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 7
  IF ~PartyHasItem("z0potn55")~ THEN REPLY @10661 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 8
  IF ~!PartyHasItem("MISC61")
      !PartyHasItem("z0potn55")
      !PartyHasItem("COFFEE")
      !PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10662 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @10663 DO ~AddJournalEntry(@10633,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @10664
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10665 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @10666 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10667 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @10668 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10669
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10665 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @10666 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10667 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @10668 DO ~SetGlobal("Niles_Pissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10670
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10671 DO ~AddXP2DA("IW2EX2A")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@10654)
                                                             EraseJournalEntry(@10633)
                                                             AddJournalEntry(@10634,QUEST_DONE)~ GOTO 4
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @11846 DO ~AddXP2DA("IW2EX2A")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@10654)
                                                                EraseJournalEntry(@10633)
                                                                AddJournalEntry(@10634,QUEST_DONE)~ GOTO 4
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @11854 DO ~AddXP2DA("IW2EX2A")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@10654)
                                                                 EraseJournalEntry(@10633)
                                                                 AddJournalEntry(@10634,QUEST_DONE)~ GOTO 4
  IF ~~ THEN REPLY @11855 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11861
  IF ~~ THEN REPLY @11862 DO ~SetGlobal("Niles_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #5
~Global("Niles_Leave","GLOBAL",1)~ THEN BEGIN 5
  SAY @11864
  IF ~~ THEN REPLY @11862 DO ~SetGlobal("Niles_Leave","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11865
  IF ~~ THEN REPLY @11871 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11872
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @11873 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @11873 GOTO 2
  IF ~PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11874 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11874 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11880 DO ~SetGlobal("Niles_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @11881 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @11882
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @11873 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @11873 GOTO 2
  IF ~PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11874 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11874 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @11880 DO ~SetGlobal("Niles_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @11881 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @11883
  IF ~PartyHasItem("MISC61")~ THEN REPLY @11884 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(3)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 11
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11884 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(3)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 11
  IF ~~ THEN REPLY @11885 DO ~SetGlobal("Niles_Haggle","GLOBAL",1)~ FLAGS 0x200 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @11886 DO ~SetGlobal("Niles_Haggle","GLOBAL",2)~ FLAGS 0x200 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @11888 DO ~SetGlobal("Niles_Haggle","GLOBAL",3)~ FLAGS 0x200 GOTO 10
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @11889 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @11889 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @11890
  IF ~PartyHasItem("MISC61")~ THEN REPLY @11891 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(3)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 11
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11891 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(3)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 11
  IF ~Global("Niles_Haggle","GLOBAL",1)
      PartyHasItem("MISC61")~ THEN REPLY @11892 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(5)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",1)
      !PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11892 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(5)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",2)
      PartyHasItem("MISC61")~ THEN REPLY @11893 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(10)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",2)
      !PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11893 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(10)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",3)
      PartyHasItem("MISC61")~ THEN REPLY @11894 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(15)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",3)
      !PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11894 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(15)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",3)
      PartyHasItem("MISC61")~ THEN REPLY @11895 DO ~AddXP2DA("IW2EX2E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                    GiveGoldForce(20)
                                                    TakePartyItem("MISC61")
                                                    EraseJournalEntry(@10633)
                                                    AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Global("Niles_Haggle","GLOBAL",3)
      !PartyHasItem("MISC61")
      PartyHasItem("z0misc17")~ THEN REPLY @11895 DO ~AddXP2DA("IW2EX2E")
                                                      DisplayStringNoNameDlg(LastTalkedToBy,@10655)
                                                      GiveGoldForce(20)
                                                      TakePartyItem("z0misc17")
                                                      EraseJournalEntry(@10633)
                                                      AddJournalEntry(@10636,QUEST_DONE)~ GOTO 12
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @12677 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @12677 GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY @12679
  IF ~~ THEN REPLY @12739 DO ~SetGlobal("Niles_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @12740
  IF ~~ THEN REPLY @12739 DO ~SetGlobal("Niles_Quest","GLOBAL",2)~ EXIT
END

IF WEIGHT #6
~Global("Niles_Quest","GLOBAL",1)~ THEN BEGIN 13
  SAY @14404
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @10657 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @10658 GOTO 2
  IF ~PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~PartyHasItem("COFFEE")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10660 GOTO 7
  IF ~PartyHasItem("z0potn55")~ THEN REPLY @10661 GOTO 8
  IF ~~ THEN REPLY @14405 EXIT
END

IF WEIGHT #8
~True()~ THEN BEGIN 14
  SAY @14408
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @10657 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @10658 GOTO 2
  IF ~PartyHasItem("MISC61")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~!PartyHasItem("MISC61")
      PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10659 DO ~AddJournalEntry(@10633,QUEST)~ GOTO 9
  IF ~PartyHasItem("COFFEE")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10660 GOTO 7
  IF ~PartyHasItem("z0potn55")~ THEN REPLY @10661 GOTO 8
  IF ~!PartyHasItem("MISC61")
      !PartyHasItem("z0potn55")
      !PartyHasItem("COFFEE")
      !PartyHasItem("z0misc17")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10662 DO ~SetGlobal("Niles_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @10663 EXIT
END

IF WEIGHT #7
~Global("Niles_Quest","GLOBAL",2)~ THEN BEGIN 15
  SAY @25701
  IF ~~ THEN REPLY @25702 GOTO 16
  IF ~~ THEN REPLY @25703 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @27750
  IF ~~ THEN REPLY @27751 EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 !Global("Niles_Quest","GLOBAL",2)~ THEN BEGIN 17
  SAY @28485
  IF ~~ THEN REPLY @28486 EXIT
END

IF WEIGHT #1
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Niles_Quest","GLOBAL",2)~ THEN BEGIN 18
  SAY @28567
  IF ~~ THEN REPLY @28568 EXIT
END

IF WEIGHT #2
~Global("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)
 !Global("Niles_Quest","GLOBAL",2)~ THEN BEGIN 19
  SAY @28569
  IF ~~ THEN REPLY @28570 EXIT
END

IF WEIGHT #3
~Global("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)
 Global("Niles_Quest","GLOBAL",2)~ THEN BEGIN 20
  SAY @28571
  IF ~~ THEN REPLY @28572 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @28573
  IF ~~ THEN REPLY @28574 EXIT
END
