BEGIN ~11DENHAM~

IF WEIGHT #1
~Global("Know_Denham","GLOBAL",0)~ THEN BEGIN 0
  SAY @25123
  IF ~~ THEN REPLY @25124 DO ~SetGlobal("Know_Denham","GLOBAL",1)
                              StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ GOTO 10
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ GOTO 11
  IF ~PartyHasItem("z1gengle")
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25127 DO ~SetGlobal("Know_Denham","GLOBAL",1)
                                                                         SetGlobal("Garradun_Quest","GLOBAL",2)~ GOTO 35
  IF ~PartyHasItem("z1gengle")
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25128 DO ~AddXP2DA("IW2EX1E")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@25122)
                                                                          SetGlobal("Know_Denham","GLOBAL",1)
                                                                          SetGlobal("Garradun_Quest","GLOBAL",2)
                                                                          AddJournalEntry(@25120,QUEST)~ GOTO 38
  IF ~~ THEN REPLY @25129 DO ~SetGlobal("Know_Denham","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25130
  IF ~~ THEN EXTERN ~11RAGNIB~ 24
END

IF ~~ THEN BEGIN 2
  SAY @25132
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @25133
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~~ THEN REPLY @25129 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @25745
  IF ~~ THEN EXTERN ~11RAGNIB~ 25
END

IF ~~ THEN BEGIN 5
  SAY @25746
  IF ~~ THEN EXTERN ~11RAGNIB~ 26
END

IF ~~ THEN BEGIN 6
  SAY @25747
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @25748
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @25749
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~~ THEN REPLY @25129 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25752
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10
  SAY @25753
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~~ THEN REPLY @25129 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @25754
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38771 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38772 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38773 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38774 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38775 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38776 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
  IF ~!Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @39875 DO ~SetGlobal("Know_Red_Knight","GLOBAL",1)~ EXTERN ~11RAGNIB~ 27
END

IF ~~ THEN BEGIN 12
  SAY @25756
  IF ~PartyHasItem("z1gengle")
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25127 DO ~SetGlobal("Garradun_Quest","GLOBAL",2)~ GOTO 35
  IF ~PartyHasItem("z1gengle")
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25128 DO ~AddXP2DA("IW2EX1E")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@25122)
                                                                          SetGlobal("Know_Denham","GLOBAL",1)
                                                                          SetGlobal("Garradun_Quest","GLOBAL",2)
                                                                          AddJournalEntry(@25120,QUEST)~ GOTO 38
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 GOTO 10
  IF ~~ THEN REPLY @25757 GOTO 13
  IF ~~ THEN REPLY @25758 GOTO 16
  IF ~~ THEN REPLY @25759 GOTO 18
  IF ~~ THEN REPLY @25760 GOTO 20
  IF ~~ THEN REPLY @25129 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @25761
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @26629
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @26630
  IF ~PartyHasItem("z1gengle")
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25127 DO ~SetGlobal("Garradun_Quest","GLOBAL",2)~ GOTO 35
  IF ~PartyHasItem("z1gengle")
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25128 DO ~AddXP2DA("IW2EX1E")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@25122)
                                                                          SetGlobal("Know_Denham","GLOBAL",1)
                                                                          SetGlobal("Garradun_Quest","GLOBAL",2)
                                                                          AddJournalEntry(@25120,QUEST)~ GOTO 38
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 GOTO 10
  IF ~~ THEN REPLY @25757 GOTO 13
  IF ~~ THEN REPLY @25758 GOTO 16
  IF ~~ THEN REPLY @25759 GOTO 18
  IF ~~ THEN REPLY @25760 GOTO 20
  IF ~~ THEN REPLY @25129 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @26633
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @26635
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 18
  SAY @26636
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @26637
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 20
  SAY @26638
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @26639
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @26641
  IF ~~ THEN GOTO 15
END

IF WEIGHT #2
~Global("Know_Denham","GLOBAL",1)~ THEN BEGIN 23
  SAY @26642
  IF ~PartyHasItem("z1gengle")
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25127 DO ~SetGlobal("Garradun_Quest","GLOBAL",2)~ GOTO 35
  IF ~PartyHasItem("z1gengle")
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @25128 DO ~AddXP2DA("IW2EX1E")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@25122)
                                                                          SetGlobal("Know_Denham","GLOBAL",1)
                                                                          SetGlobal("Garradun_Quest","GLOBAL",2)
                                                                          AddJournalEntry(@25120,QUEST)~ GOTO 38
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 GOTO 10
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25757 GOTO 13
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25758 GOTO 16
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25759 GOTO 18
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @8025 GOTO 20
  IF ~~ THEN REPLY @26644 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @26719
  IF ~~ THEN EXTERN ~11RAGNIB~ 7
END

IF ~~ THEN BEGIN 25
  SAY @26721
  IF ~~ THEN EXTERN ~11RAGNIB~ 8
END

IF ~~ THEN BEGIN 26
  SAY @26725
  IF ~~ THEN EXTERN ~11RAGNIB~ 7
END

IF ~~ THEN BEGIN 27
  SAY @26797
  IF ~~ THEN EXTERN ~11RAGNIB~ 10
END

IF ~~ THEN BEGIN 28
  SAY @26813
  IF ~~ THEN EXTERN ~11RAGNIB~ 12
END

IF ~~ THEN BEGIN 29
  SAY @26814
  IF ~~ THEN EXTERN ~11RAGNIB~ 14
END

IF ~~ THEN BEGIN 30
  SAY @26815
  IF ~~ THEN REPLY @26816 GOTO 31
  IF ~~ THEN REPLY @26817 GOTO 32
END

IF ~~ THEN BEGIN 31
  SAY @26821
  IF ~~ THEN REPLY @26817 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @26825
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @26833
  IF ~~ THEN DO ~AddXP2DA("IW2EX1E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25121)
                 TakePartyItem("z1gengle")
                 DestroyItem("z1gengle")
                 GiveItemCreate("z1genden",LastTalkedToBy,1,1,1)
                 AddJournalEntry(@25119,QUEST)~ GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @26838
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 GOTO 10
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25757 GOTO 13
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25758 GOTO 16
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25759 GOTO 18
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @39900 GOTO 20
  IF ~~ THEN REPLY @26644 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @26844
  IF ~~ THEN REPLY @26878 GOTO 36
  IF ~~ THEN REPLY @26881 GOTO 36
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26882 DO ~TakePartyItem("z1gengle")~ GOTO 30
END

IF ~~ THEN BEGIN 36
  SAY @26883
  IF ~~ THEN REPLY @26884 DO ~TakePartyItem("z1gengle")~ GOTO 30
END

IF WEIGHT #0
~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 37
  SAY @26885
  IF ~~ THEN REPLY @26886 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @26887
  IF ~~ THEN REPLY @26817 GOTO 32
END

IF ~~ THEN BEGIN 39
  SAY @26888
  IF ~~ THEN REPLY @25134 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @25125 GOTO 1
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @25125 GOTO 4
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @25125 GOTO 9
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @25125 GOTO 10
  IF ~!Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25126 GOTO 11
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25757 GOTO 13
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25758 GOTO 16
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @25759 GOTO 18
  IF ~Global("Know_Red_Knight","GLOBAL",1)~ THEN REPLY @39901 GOTO 20
  IF ~~ THEN REPLY @26644 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @36173
  IF ~~ THEN REPLY @36174 DO ~AddXP2DA("IW2EX1E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@25122)
                              SetGlobal("Know_Denham","GLOBAL",1)
                              SetGlobal("Garradun_Quest","GLOBAL",2)
                              AddJournalEntry(@25120,QUEST)~ GOTO 38
END
