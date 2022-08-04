BEGIN ~11RAGNIB~

IF WEIGHT #5
~Global("Know_Ragni","GLOBAL",0)~ THEN BEGIN 0
  SAY @26889
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @26890 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26891 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @26892 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 4
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @26893 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @26894 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38759 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38760 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38761 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 4
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38762 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38763 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 5
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38764 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @50003 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 4
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @26906 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @26919 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @26921
  IF ~~ THEN EXTERN ~11DENHAM~ 24
END

IF ~~ THEN BEGIN 2
  SAY @26941
  IF ~~ THEN EXTERN ~11DENHAM~ 25
END

IF ~~ THEN BEGIN 3
  SAY @26942
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @26948
  IF ~~ THEN EXTERN ~11DENHAM~ 26
END

IF ~~ THEN BEGIN 5
  SAY @26949
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @26950
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Know_Ragni","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @26951
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @26952
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26953
  IF ~~ THEN EXTERN ~11DENHAM~ 27
END

IF ~~ THEN BEGIN 10
  SAY @26954
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26955
  IF ~~ THEN EXTERN ~11DENHAM~ 28
END

IF ~~ THEN BEGIN 12
  SAY @26956
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @26957
  IF ~~ THEN DO ~SetGlobal("Know_Chimera","GLOBAL",1)~ EXTERN ~11DENHAM~ 29
END

IF ~~ THEN BEGIN 14
  SAY @26958
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26959 GOTO 15
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @26960
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @26961
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @26962
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @26963
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @26964
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @26965
  IF ~~ THEN REPLY @26966 GOTO 21
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26967 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @26968
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26969 EXIT
END

IF WEIGHT #6
~Global("Know_Ragni","GLOBAL",1)~ THEN BEGIN 22
  SAY @26970
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 GOTO 17
  IF ~~ THEN REPLY @26946 GOTO 18
  IF ~~ THEN REPLY @26947 EXIT
END

IF WEIGHT #4
~GlobalGT("Goblins_Attack_Palisade","GLOBAL",0)
 !Global("Ragni_Thanked","GLOBAL",1)~ THEN BEGIN 23
  SAY @26971
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      Global("Garradun_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ GOTO 28
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)
                                                                          SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)
                              StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",3)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @26946 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @26947 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @26972
  IF ~~ THEN EXTERN ~11DENHAM~ 2
END

IF ~~ THEN BEGIN 25
  SAY @26973
  IF ~~ THEN EXTERN ~11DENHAM~ 5
END

IF ~~ THEN BEGIN 26
  SAY @26974
  IF ~~ THEN EXTERN ~11DENHAM~ 6
END

IF ~~ THEN BEGIN 27
  SAY @26975
  IF ~~ THEN EXTERN ~11DENHAM~ 12
END

IF ~~ THEN BEGIN 28
  SAY @26976
  IF ~~ THEN DO ~SetGlobal("Ragni_Garradun","GLOBAL",1)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @26977
  IF ~~ THEN REPLY @26978 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)
                              StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Targos_Phase","GLOBAL",3)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @26946 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @26947 DO ~SetGlobal("Ragni_Thanked","GLOBAL",1)~ EXIT
END

IF WEIGHT #3
~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 30
  SAY @26979
  IF ~~ THEN REPLY @26980 GOTO 31
  IF ~~ THEN REPLY @26981 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @26982
  IF ~~ THEN REPLY @26981 EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADGarradun","GLOBAL",0)
 Global("Ragni_Dop","GLOBAL",0)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 32
  SAY @26983
  IF ~~ THEN REPLY @26984 EXIT
  IF ~~ THEN REPLY @26985 EXIT
END

IF WEIGHT #1
~!Global("SPRITE_IS_DEADGarradun","GLOBAL",0)
 Global("Ragni_Dop","GLOBAL",0)
 Global("Know_Ragni","GLOBAL",0)~ THEN BEGIN 33
  SAY @26986
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @26890 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                            SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26891 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                             SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @26892 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                          SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 4
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @26893 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                        SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 5
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @26894 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                          SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38765 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                           SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38766 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                              SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38767 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                         SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 4
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38768 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                         SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 3
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38769 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                        SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 5
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38770 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                          SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @50003 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                           SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 4
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @26906 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                                                        SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @37635 DO ~SetGlobal("Know_Ragni","GLOBAL",1)
                              SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 1
END

IF WEIGHT #2
~!Global("SPRITE_IS_DEADGarradun","GLOBAL",0)
 Global("Ragni_Dop","GLOBAL",0)
 Global("Know_Ragni","GLOBAL",1)~ THEN BEGIN 34
  SAY @26986
  IF ~PartyHasItem("z1gengle")
      Global("Ragni_Garradun","GLOBAL",0)
      GlobalLT("Garradun_Quest","GLOBAL",2)
      !Global("SPRITE_IS_DEADGarradun","GLOBAL",0)~ THEN REPLY @26943 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @26944 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)
                              StartStore("11RagniB",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 9
  IF ~Global("Targos_Phase","GLOBAL",1)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 13
  IF ~Global("Targos_Phase","GLOBAL",2)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 16
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN REPLY @26945 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @26946 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @26987 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @26947 DO ~SetGlobal("Ragni_Dop","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @36172
  IF ~~ THEN EXTERN ~11DENHAM~ 40
END
