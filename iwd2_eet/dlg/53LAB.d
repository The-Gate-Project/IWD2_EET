BEGIN ~53LAB~

IF ~Global("Imp_Lab","GLOBAL",0)~ THEN BEGIN 0
  SAY @25778
  IF ~Global("SPRITE_IS_DEADImphraili","GLOBAL",0)~ THEN REPLY @35738 EXTERN ~53IMPHRA~ 24
  IF ~!Global("SPRITE_IS_DEADImphraili","GLOBAL",0)~ THEN REPLY @35738 GOTO 2
  IF ~~ THEN REPLY @35739 EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @26840
  IF ~~ THEN REPLY @35738 GOTO 2
  IF ~~ THEN REPLY @35739 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35741
  IF ~//CheckSkillGT(LastTalkedToBy, 7, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        CheckStatGT(LastTalkedToBy,45,LORE)
      PartyHasItem("POTN52")
      GlobalLT("53Lab_Chem","GLOBAL",10)~ THEN REPLY @35742 DO ~TakePartyItemNum("POTN52",1) //POTN_08
                                                                DestroyItem("POTN52")
                                                                GiveItemCreate("POTN55",LastTalkedToBy,1,0,0)
                                                                IncrementGlobal("53Lab_Chem","GLOBAL",1)
                                                                AddJournalEntry(@35518,QUEST)~ GOTO 4 //POTN_52
  IF ~//CheckSkillGT(LastTalkedToBy, 7, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        CheckStatGT(LastTalkedToBy,45,LORE)
      PartyHasItem("POTN52") //POTN_08
      GlobalGT("53Lab_Chem","GLOBAL",9)
      GlobalLT("53Lab_Chem","GLOBAL",99)~ THEN REPLY @35742 DO ~SetGlobal("53Lab_Chem","GLOBAL",100)
                                                                EraseJournalEntry(@35518)
                                                                EraseJournalEntry(@35731)
                                                                EraseJournalEntry(@27313)
                                                                EraseJournalEntry(@27322)
                                                                AddJournalEntry(@35730,QUEST_DONE)~ GOTO 3
  IF ~//CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      !Global("53GolIm","GLOBAL",0)
      PartyHasItem("z5bookig")
      PartyHasItem("z5miscis")~ THEN REPLY @35744 DO ~TakePartyItem("z5bookig")
                                                      TakePartyItem("z5miscis")
                                                      DestroyItem("z5bookig")
                                                      DestroyItem("z5miscis")
                                                      GiveItemCreate("z5miscig",LastTalkedToBy,0,0,0)
                                                      EraseJournalEntry(@27325)
                                                      EraseJournalEntry(@27327)
                                                      AddJournalEntry(@35735,QUEST_DONE)~ GOTO 6
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)
      //CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      PartyHasItem("z5bookis")
      PartyHasItem("z5miscis")
      Global("53Lab_SA","GLOBAL",0)~ THEN REPLY @35743 DO ~TakePartyItem("z5bookis")
                                                           TakePartyItem("z5miscis")
                                                           DestroyItem("z5bookis")
                                                           DestroyItem("z5miscis")
                                                           ChangeStat(LastTalkedToBy,MAXHITPOINTS,5,ADD)
                                                           AddJournalEntry(@35731,QUEST)~ GOTO 5
  IF ~//CheckSkillGT(LastTalkedToBy, 3, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,13,INT)
        CheckStatGT(LastTalkedToBy,25,LORE)
      PartyHasItem("z5bookiv")
      PartyHasItem("z5miscim")
      PartyHasItem("z5miscis")~ THEN REPLY @35745 DO ~TakePartyItem("z5bookiv")
                                                      TakePartyItem("z5miscim")
                                                      TakePartyItem("z5miscis")
                                                      DestroyItem("z5bookiv")
                                                      DestroyItem("z5miscim")
                                                      DestroyItem("z5miscis")
                                                      GiveItemCreate("z5misciv",LastTalkedToBy,0,0,0)
                                                      AddJournalEntry(@35736,QUEST)~ GOTO 7
  IF ~//CheckSkillGT(LastTalkedToBy, 7, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        CheckStatGT(LastTalkedToBy,45,LORE)
      PartyHasItem("z0misc40")~ THEN REPLY @27290 DO ~TakePartyItem("z0misc40")
                                                      DestroyItem("z0misc40")
                                                      GiveItemCreate("POTN04",LastTalkedToBy,2,0,0)
                                                      AddJournalEntry(@27313,QUEST)~ GOTO 8
  IF ~//CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)
      PartyHasItem("z0misc40")~ THEN REPLY @27296 DO ~TakePartyItem("z0misc40")
                                                      DestroyItem("z0misc40")
                                                      ChangeStat(LastTalkedToBy,RESISTCOLD,5,ADD)
                                                      ChangeStat(LastTalkedToBy,RESISTFIRE,-5,ADD)
                                                      AddJournalEntry(@27322,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @35739 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35746
  IF ~//CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      !Global("53GolIm","GLOBAL",0)
      PartyHasItem("z5bookig")
      PartyHasItem("z5miscis")~ THEN REPLY @35744 DO ~TakePartyItem("z5bookig")
                                                      TakePartyItem("z5miscis")
                                                      DestroyItem("z5bookig")
                                                      DestroyItem("z5miscis")
                                                      GiveItemCreate("z5miscig",LastTalkedToBy,0,0,0)
                                                      EraseJournalEntry(@27325)
                                                      EraseJournalEntry(@27327)
                                                      AddJournalEntry(@35735,QUEST_DONE)~ GOTO 6
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)
      //CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      PartyHasItem("z5bookis")
      PartyHasItem("z5miscis")
      Global("53Lab_SA","GLOBAL",0)~ THEN REPLY @35743 DO ~TakePartyItem("z5bookis")
                                                           TakePartyItem("z5miscis")
                                                           DestroyItem("z5bookis")
                                                           DestroyItem("z5miscis")
                                                           ChangeStat(LastTalkedToBy,MAXHITPOINTS,5,ADD)
                                                           AddJournalEntry(@35731,QUEST)~ GOTO 5
  IF ~//CheckSkillGT(LastTalkedToBy, 3, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,13,INT)
        CheckStatGT(LastTalkedToBy,25,LORE)
      PartyHasItem("z5bookiv")
      PartyHasItem("z5miscim")
      PartyHasItem("z5miscis")~ THEN REPLY @35745 DO ~TakePartyItem("z5bookiv")
                                                      TakePartyItem("z5miscim")
                                                      TakePartyItem("z5miscis")
                                                      DestroyItem("z5bookiv")
                                                      DestroyItem("z5miscim")
                                                      DestroyItem("z5miscis")
                                                      GiveItemCreate("z5misciv",LastTalkedToBy,0,0,0)
                                                      AddJournalEntry(@35736,QUEST)~ GOTO 7
  IF ~//CheckSkillGT(LastTalkedToBy, 7, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        CheckStatGT(LastTalkedToBy,45,LORE)
      PartyHasItem("z0misc40")~ THEN REPLY @27290 DO ~TakePartyItem("z0misc40")
                                                      DestroyItem("z0misc40")
                                                      GiveItemCreate("POTN04",LastTalkedToBy,2,0,0)
                                                      AddJournalEntry(@27313,QUEST)~ GOTO 8
  IF ~//CheckSkillGT(LastTalkedToBy, 9, Alchemy)
      OR(2)
        CheckStatGT(LastTalkedToBy,18,INT)
        CheckStatGT(LastTalkedToBy,60,LORE)
      Kit(LastTalkedToBy,MAGESCHOOL_TRANSMUTER)
      PartyHasItem("z0misc40")~ THEN REPLY @27296 DO ~TakePartyItem("z0misc40")
                                                      DestroyItem("z0misc40")
                                                      ChangeStat(LastTalkedToBy,RESISTCOLD,5,ADD)
                                                      ChangeStat(LastTalkedToBy,RESISTFIRE,-5,ADD)
                                                      AddJournalEntry(@27322,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @35739 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35747
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @35753
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @35755
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @27288
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @27289
  IF ~~ THEN EXIT
END
