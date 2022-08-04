BEGIN ~60HIEPHE~

IF WEIGHT #0~AreaCheck("IW6003")
 Global("Hiepherus_Intro","GLOBAL",2)~ THEN BEGIN 0
  SAY @28878
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28879 GOTO 4
  IF ~~ THEN REPLY @28880 GOTO 3
  IF ~Global("Bane_Iselore","GLOBAL",0)~ THEN REPLY @28881 DO ~SetGlobal("Bane_Iselore","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @28882 GOTO 3
  IF ~~ THEN REPLY @28883 GOTO 3
  IF ~~ THEN REPLY @28885 GOTO 3
END

IF WEIGHT #1~AreaCheck("IW6003")~ THEN BEGIN 1
  SAY @28886
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28879 GOTO 4
  IF ~~ THEN REPLY @28887 GOTO 3
  IF ~Global("Bane_Iselore","GLOBAL",0)~ THEN REPLY @28881 DO ~SetGlobal("Bane_Iselore","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @28882 GOTO 3
  IF ~~ THEN REPLY @28888 GOTO 3
  IF ~~ THEN REPLY @28885 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @28889
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28879 GOTO 4
  IF ~Global("60_Got_Threat","GLOBAL",0)~ THEN REPLY @30640 GOTO 3
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @30641 GOTO 4
  IF ~Global("60_Got_Threat","GLOBAL",1)~ THEN REPLY @40912 GOTO 36
  IF ~Global("60_Got_Threat","GLOBAL",0)~ THEN REPLY @28882 GOTO 3
  IF ~Global("60_Got_Threat","GLOBAL",0)~ THEN REPLY @28888 GOTO 3
  IF ~Global("60_Got_Threat","GLOBAL",0)~ THEN REPLY @28885 GOTO 3
  IF ~Global("60_Got_Threat","GLOBAL",1)~ THEN REPLY @40913 GOTO 36
  IF ~Global("60_Got_Threat","GLOBAL",1)~ THEN REPLY @40914 GOTO 36
  IF ~Global("60_Got_Threat","GLOBAL",1)~ THEN REPLY @40915 GOTO 36
END

IF ~~ THEN BEGIN 3
  SAY @30642
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @28879 DO ~SetGlobal("60_Got_Threat","GLOBAL",1)~ GOTO 4
  IF ~Global("Bane_Iselore","GLOBAL",0)~ THEN REPLY @28881 DO ~SetGlobal("60_Got_Threat","GLOBAL",1)
                                                               SetGlobal("Bane_Iselore","GLOBAL",1)~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @30643 DO ~SetGlobal("60_Got_Threat","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @30645 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @30646
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #6
~True()~ THEN BEGIN 5
  SAY @30648
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @30649 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                        AddJournalEntry(@28868,QUEST)~ GOTO 6
  IF ~!Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @30650 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                         AddJournalEntry(@28868,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @30651 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @30652 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                Enemy()
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 34
  IF ~~ THEN REPLY @33531 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)
                              StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @33532
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34286 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @34429 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34430 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34431 GOTO 7
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34433 GOTO 7
  IF ~~ THEN REPLY @34434 GOTO 9
  IF ~~ THEN REPLY @34435 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @34436 GOTO 25
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @37833 GOTO 13
  IF ~~ THEN REPLY @33531 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @37834
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37835 GOTO 8
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @37836 GOTO 8
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @37836 GOTO 8
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @37837 GOTO 8
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @37838 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @38000
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @38001
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @38002
  IF ~~ THEN REPLY @38003 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @38004 GOTO 13
  IF ~~ THEN REPLY @33531 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @38005
  IF ~~ THEN REPLY @38006 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @38004 GOTO 13
  IF ~~ THEN REPLY @33531 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @38007
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @38008
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @38009
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @38010
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34286 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @34429 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34430 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34431 GOTO 7
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38011 GOTO 7
  IF ~~ THEN REPLY @34434 GOTO 9
  IF ~~ THEN REPLY @34435 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @37833 GOTO 13
  IF ~~ THEN REPLY @33531 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF WEIGHT #2
~Gender(LastTalkedToBy,MALE)
 OR(2)
   //SubRace(LastTalkedToBy,HUMAN_TIEFLING)
   TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
   Race(LastTalkedToBy,HALFORC)~ THEN BEGIN 16
  SAY @38012
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @30649 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                        AddJournalEntry(@28868,QUEST)~ GOTO 6
  IF ~//SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38013 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                          AddJournalEntry(@28868,QUEST)~ GOTO 32
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 18
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38016 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~//!SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38017 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                           AddJournalEntry(@28868,QUEST)~ GOTO 32
  IF ~~ THEN REPLY @38018 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @38019 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 34
  IF ~~ THEN REPLY @38020 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 12
  IF ~//SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38021 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                          Enemy()
                                                                                          AddJournalEntry(@28868,QUEST)~ EXIT
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38022 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                          AddJournalEntry(@28868,QUEST)
                                                          StartCutSceneMode()
                                                          StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @38023
  IF ~~ THEN REPLY @38024 GOTO 6
  IF ~~ THEN REPLY @38017 GOTO 32
  IF ~~ THEN REPLY @38018 GOTO 14
  IF ~~ THEN REPLY @38019 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @38020 GOTO 12
  IF ~~ THEN REPLY @38022 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @38025
  IF ~~ THEN REPLY @38026 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @38027
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @38028
  IF ~~ THEN REPLY @38029 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @38030
  IF ~~ THEN REPLY @38031 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@28876)
                              SetGlobal("Bane_Iselore","GLOBAL",1)
                              AddJournalEntry(@28869,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @38032
  IF ~~ THEN REPLY @38033 DO ~AddJournalEntry(@28870,QUEST)~ GOTO 23
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34286 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @38034 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38035 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38036 GOTO 7
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38037 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
END

IF ~~ THEN BEGIN 23
  SAY @38038
  IF ~~ THEN REPLY @38039 GOTO 12
  IF ~~ THEN REPLY @38040 GOTO 12
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34286 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @38034 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38041 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38036 GOTO 7
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38042 GOTO 7
END

IF ~~ THEN BEGIN 24
  SAY @38043
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 25
  SAY @38044
  IF ~~ THEN REPLY @38045 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @38046
  IF ~~ THEN GOTO 19
END

IF WEIGHT #3
~Gender(LastTalkedToBy,FEMALE)
 OR(2)
   //SubRace(LastTalkedToBy,HUMAN_TIEFLING)
   TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
   Race(LastTalkedToBy,HALFORC)~ THEN BEGIN 27
  SAY @38047
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @30649 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                        AddJournalEntry(@28868,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @38048 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 28
  IF ~TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38049 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                          AddJournalEntry(@28868,QUEST)~ GOTO 28
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 18
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38016 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~//SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38050 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                          AddJournalEntry(@28868,QUEST)~ GOTO 32
  IF ~//!SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38018 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                           AddJournalEntry(@28868,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @38019 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 29
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 34
  IF ~~ THEN REPLY @38051 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 12
  IF ~//SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @38021 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                                          Enemy()
                                                                                          AddJournalEntry(@28868,QUEST)~ EXIT
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @38022 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                          AddJournalEntry(@28868,QUEST)
                                                          StartCutSceneMode()
                                                          StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @38052
  IF ~~ THEN REPLY @38053 GOTO 29
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38054 GOTO 25
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @38051 GOTO 12
  IF ~~ THEN REPLY @38055 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @38056
  IF ~~ THEN GOTO 20
END

IF WEIGHT #4
~Gender(LastTalkedToBy,FEMALE)
 //Race(LastTalkedToBy,DROW)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN BEGIN 30
  SAY @38057
  IF ~~ THEN REPLY @38048 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 28
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 18
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38058 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~~ THEN REPLY @38018 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @38019 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 29
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 34
  IF ~~ THEN REPLY @38020 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @38059 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)
                              StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF WEIGHT #5
~OR(2)
   //SubRace(LastTalkedToBy,ELF_DROW)
   TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
   //SubRace(LastTalkedToBy,DWARF_GRAY)
   TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 31
  SAY @38060
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 18
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38014 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)~ THEN REPLY @38015 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38058 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                                AddJournalEntry(@28868,QUEST)~ GOTO 25
  IF ~~ THEN REPLY @38017 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 32
  IF ~~ THEN REPLY @38018 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @38019 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 19
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                                                              AddJournalEntry(@28868,QUEST)~ GOTO 34
  IF ~~ THEN REPLY @38020 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              AddJournalEntry(@28868,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @38059 DO ~SetGlobal("Hiepherus_Intro","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @38061
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @38010
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34286 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @34429 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34430 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      !Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34431 GOTO 7
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @34433 GOTO 7
  IF ~~ THEN REPLY @34434 GOTO 9
  IF ~~ THEN REPLY @34435 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33362 GOTO 34
  IF ~~ THEN REPLY @37833 GOTO 13
  IF ~~ THEN REPLY @33531 DO ~StartCutSceneMode()
                              StartCutScene("60c6000b")~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @38685
  IF ~~ THEN REPLY @38686 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @38687
  IF ~~ THEN DO ~AddXP2DA("IW2EX12E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@28877)
                 SetGlobal("Hiepherus_Intro","GLOBAL",2)
                 AddJournalEntry(@28871,QUEST)
                 StartCutSceneMode()
                 StartCutScene("60c6000c")~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @40911
  IF ~~ THEN DO ~Enemy()~ EXIT
END
