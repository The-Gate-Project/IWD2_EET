BEGIN ~41XHAAN~

IF WEIGHT #2
~Global("SPRITE_IS_DEADCagedFury","GLOBAL",0)
 OR(6)
   HPPercentLT(Player1,100)
   HPPercentLT(Player2,100)
   HPPercentLT(Player3,100)
   HPPercentLT(Player4,100)
   HPPercentLT(Player5,100)
   HPPercentLT(Player6,100)~ THEN BEGIN 0
  SAY @31587
  IF ~~ THEN REPLY @33301 GOTO 1
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~Global("41XhaanPlayerKnowsLock","GLOBAL",1)
      OpenState("AR4101_Door13",FALSE)
      OpenState("AR4101_Door14",FALSE)
      OpenState("AR4101_Door15",FALSE)~ THEN REPLY @33303 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                                                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~OR(3)
        CheckStatGT(LastTalkedToBy,12,INT)
        //SubRace(LastTalkedToBy,HUMAN_TIEFLING)
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
        //SubRace(LastTalkedToBy,HUMAN_AASIMAR)
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33304 GOTO 5
  IF ~CheckStatLT(LastTalkedToBy,13,INT)
      //!SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
      //!SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33305 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33306 GOTO 5
  IF ~~ THEN REPLY @33317 DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY @33319 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @33321
  IF ~  !Global("41XhaanMindQuest","GLOBAL",0)~ THEN REPLY @33322 GOTO 2
  IF ~  Global("41XhaanMindQuest","GLOBAL",0)~ THEN REPLY @33323 DO ~SetGlobal("41XhaanGaveName","GLOBAL",1)
                                                                     SetGlobal("41XhaanMindQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~~ THEN REPLY @33324 GOTO 6
  IF ~~ THEN REPLY @33327 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @33319 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @33328
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33329 DO ~AddXP2DA("IW2EX8H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@31586)
                                                                          SetGlobal("41XhaanMindQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@31584)
                                                                          AddJournalEntry(@31585,QUEST_DONE)~ GOTO 9
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33330 DO ~SetGlobal("41XhaanMindQuest","GLOBAL",2)
                                                                           AddJournalEntry(@31584,QUEST)~ GOTO 7
  IF ~OR(2)
        CheckStatGT(LastTalkedToBy,16,INT)
        Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @33331 DO ~SetGlobal("41PlayerKnowsTempestName","GLOBAL",1)~ GOTO 12
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //!SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33332 GOTO 3
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @37959 GOTO 15
  IF ~~ THEN REPLY @33333 GOTO 6
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @33335
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33329 DO ~AddXP2DA("IW2EX8H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@31586)
                                                                          SetGlobal("41XhaanMindQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@31584)
                                                                          AddJournalEntry(@31585,QUEST_DONE)~ GOTO 9
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33336 DO ~SetGlobal("41XhaanMindQuest","GLOBAL",2)
                                                                           AddJournalEntry(@31584,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @33337
  IF ~!Global("41XhaanMindQuest","GLOBAL",0)~ THEN REPLY @33338 GOTO 2
  IF ~  Global("41XhaanMindQuest","GLOBAL",0)~ THEN REPLY @33341 DO ~SetGlobal("41XhaanGaveName","GLOBAL",1)
                                                                     SetGlobal("41XhaanMindQuest","GLOBAL",1)~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~~ THEN REPLY @33342 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @33343 GOTO 1
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @33345
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @33346
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @33347
  IF ~~ THEN REPLY @33348 DO ~SetGlobal("41XhaanMindQuest","GLOBAL",2)~ EXIT
END

IF WEIGHT #1
~Global("41XhaanMindQuest","GLOBAL",2)~ THEN BEGIN 8
  SAY @33351
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33352 DO ~AddXP2DA("IW2EX8H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@31586)
                                                                          SetGlobal("41XhaanMindQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@31584)
                                                                          AddJournalEntry(@31585,QUEST_DONE)~ GOTO 9
  IF ~Global("41XhaanPlayerKnowsLock","GLOBAL",1)
      OpenState("AR4101_Door13",FALSE)
      OpenState("AR4101_Door14",FALSE)
      OpenState("AR4101_Door15",FALSE)~ THEN REPLY @33303 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                                                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //!SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33332 GOTO 3
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @37959 GOTO 15
  IF ~~ THEN REPLY @33354 GOTO 1
  IF ~~ THEN REPLY @33356 EXIT
END

IF WEIGHT #0
~Global("41XhaanMindQuest","GLOBAL",3)~ THEN BEGIN 9
  SAY @33359
  IF ~Global("41XhaanPlayerKnowsLock","GLOBAL",1)
      OpenState("AR4101_Door13",FALSE)
      OpenState("AR4101_Door14",FALSE)
      OpenState("AR4101_Door15",FALSE)~ THEN REPLY @33360 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                                                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @33348 EXIT
END

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 10
  SAY @33361
  IF ~~ THEN REPLY @33440 GOTO 6
  IF ~~ THEN REPLY @33302 GOTO 4
  IF ~Global("41XhaanPlayerKnowsLock","GLOBAL",1)
      OpenState("AR4101_Door13",FALSE)
      OpenState("AR4101_Door14",FALSE)
      OpenState("AR4101_Door15",FALSE)~ THEN REPLY @33303 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                                                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~OR(3)
        CheckStatGT(LastTalkedToBy,12,INT)
        //SubRace(LastTalkedToBy,HUMAN_TIEFLING)
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
        //SubRace(LastTalkedToBy,HUMAN_AASIMAR)
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33441 GOTO 5
  IF ~CheckStatLT(LastTalkedToBy,13,INT)
      //!SubRace(LastTalkedToBy,HUMAN_TIEFLING)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))
      //!SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33442 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @33443 GOTO 5
  IF ~~ THEN REPLY @33444 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @33319 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 11
  SAY @33445
  IF ~~ THEN REPLY @33446 GOTO 4
  IF ~Global("41XhaanPlayerKnowsLock","GLOBAL",1)
      OpenState("AR4101_Door13",FALSE)
      OpenState("AR4101_Door14",FALSE)
      OpenState("AR4101_Door15",FALSE)~ THEN REPLY @33303 DO ~SetGlobal("41PlayerSawDais","GLOBAL",1)
                                                              AddJournalEntry(@33680,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @33447 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @33448
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33329 DO ~AddXP2DA("IW2EX8H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@31586)
                                                                          SetGlobal("41XhaanMindQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@31584)
                                                                          AddJournalEntry(@31585,QUEST_DONE)~ GOTO 9
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33330 DO ~SetGlobal("41XhaanMindQuest","GLOBAL",2)
                                                                           AddJournalEntry(@31584,QUEST)~ GOTO 7
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //!SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @33332 GOTO 3
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      //SubRace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @37959 GOTO 15
  IF ~~ THEN REPLY @33449 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @33450
  IF ~~ THEN REPLY @33343 GOTO 1
  IF ~~ THEN REPLY @33451 DO ~AddJournalEntry(@33681,QUEST)~ GOTO 14
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,14,INT)
      See([ENEMY.MONSTER.DEMONIC])~ THEN REPLY @39560 GOTO 1
  IF ~Global("SPRITE_IS_DEADLysara","GLOBAL",0)
      CheckStatGT(LastTalkedToBy,14,INT)
      !See([ENEMY.MONSTER.DEMONIC])~ THEN REPLY @39560 DO ~FadeToColor([0.0],0)
                                                           Unlock("AR4101_Door13")
                                                           Unlock("AR4101_Door14")
                                                           Unlock("AR4101_Door15")
                                                           OpenDoor("AR4101_Door13")
                                                           OpenDoor("AR4101_Door14")
                                                           OpenDoor("AR4101_Door15")
                                                           RestPartyEx(0,0,TRUE)
                                                           //RestParty()
                                                           //RestParty()
                                                           ApplySpellRES("IWWI096","02_White_Abishai_01")
                                                           ApplySpellRES("IWWI096","02_White_Abishai_02")
                                                           ApplySpellRES("IWWI096","02_White_Abishai_03")
                                                           ApplySpellRES("IWWI096","02_White_Abishai_04")
                                                           ApplySpellRES("IWWI096","02_White_Abishai_05")
                                                           FadeFromColor([0.0],0)~ EXIT
  IF ~~ THEN REPLY @33334 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @33452
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 15
  SAY @37954
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",3)
      Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33329 DO ~AddXP2DA("IW2EX8H")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@31586)
                                                                          SetGlobal("41XhaanMindQuest","GLOBAL",3)
                                                                          EraseJournalEntry(@31584)
                                                                          AddJournalEntry(@31585,QUEST_DONE)~ GOTO 9
  IF ~GlobalLT("41XhaanMindQuest","GLOBAL",2)
      !Global("SPRITE_IS_DEADCagedFury","GLOBAL",1)~ THEN REPLY @33336 DO ~SetGlobal("41XhaanMindQuest","GLOBAL",2)
                                                                           AddJournalEntry(@31584,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @23977 GOTO 4
  IF ~~ THEN REPLY @37960 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @36113 EXIT
END
