BEGIN ~40BDAWN~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7734
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @7738 GOTO 10
  IF ~Global("IW4100_Visited","GLOBAL",0)~ THEN REPLY @7741 GOTO 11
  IF ~Global("40KnowCult","GLOBAL",2)~ THEN REPLY @7742 GOTO 9
  IF ~!Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @7744 DO ~SetGlobal("40BeodaewnMentionedDen","GLOBAL",1)~ GOTO 2
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17949 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17954 GOTO 3
  IF ~~ THEN REPLY @17955 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @17956
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~Global("40KnowCult","GLOBAL",2)~ THEN REPLY @17957 GOTO 9
  IF ~!Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @7744 DO ~SetGlobal("40BeodaewnMentionedDen","GLOBAL",1)~ GOTO 2
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17949 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17954 GOTO 3
  IF ~~ THEN REPLY @17959 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @17961
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17963 GOTO 4
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17965 GOTO 3
  IF ~OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,14,INT)
      CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @17967 GOTO 3
  IF ~~ THEN REPLY @17969 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17973
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      !Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @17992 GOTO 12
  IF ~OR(2)
        Class(LastTalkedToBy,CLERIC_ALL)
        Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @17994 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,15,CON)
      Global("40KnowCult","GLOBAL",2)~ THEN REPLY @17995 DO ~SetGlobal("40KnowCult","GLOBAL",3)~ GOTO 13
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @17998 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18045
  IF ~~ THEN REPLY @18046 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18047 EXIT
END

IF WEIGHT #0
~Allegiance(Myself,ENEMY)~ THEN BEGIN 5
  SAY @18048
  IF ~TimeOfDay(DAY)~ THEN DO ~AddXP2DA("IW2EX7A")
                               DisplayStringNoNameDlg(LastTalkedToBy,@7729)
                               AddJournalEntry(@7722,QUEST_DONE)~ GOTO 6
  IF ~!TimeOfDay(DAY)~ THEN DO ~AddXP2DA("IW2EX7A")
                                DisplayStringNoNameDlg(LastTalkedToBy,@7729)
                                AddJournalEntry(@7722,QUEST_DONE)~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @18050
  IF ~~ THEN DO ~AddJournalEntry(@7728,QUEST_DONE)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @18053
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @18055
  IF ~~ THEN DO ~SetGlobal("GaveSpeech","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @18056
  IF ~~ THEN REPLY @18057 GOTO 3
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @7738 GOTO 10
  IF ~Global("IW4100_Visited","GLOBAL",0)~ THEN REPLY @7741 GOTO 11
  IF ~!Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @7744 DO ~SetGlobal("40BeodaewnMentionedDen","GLOBAL",1)~ GOTO 2
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17949 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17954 GOTO 3
  IF ~~ THEN REPLY @17955 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @18058
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~Global("IW4100_Visited","GLOBAL",0)~ THEN REPLY @7741 GOTO 11
  IF ~!Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @7744 DO ~SetGlobal("40BeodaewnMentionedDen","GLOBAL",1)~ GOTO 2
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17949 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17954 GOTO 3
  IF ~~ THEN REPLY @17955 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @18059
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~GlobalLT("40MendingSpell","GLOBAL",2)~ THEN REPLY @7738 GOTO 10
  IF ~!Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @7744 DO ~SetGlobal("40BeodaewnMentionedDen","GLOBAL",1)~ GOTO 2
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~Global("40BeodaewnMentionedDen","GLOBAL",1)
      OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17949 GOTO 2
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17954 GOTO 3
  IF ~~ THEN REPLY @17959 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @18060
  IF ~CheckStatGT(LastTalkedToBy,15,CON)
      CheckStatGT(LastTalkedToBy,13,CHR)
      Global("40KnowCult","GLOBAL",2)~ THEN REPLY @18061 DO ~SetGlobal("40KnowCult","GLOBAL",3)~ GOTO 13
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18069 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @17998 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @18070
  IF ~~ THEN REPLY @18071 GOTO 14
  IF ~~ THEN REPLY @18072 DO ~ChangeStoreMarkup("40Bdawn",150,70)~ GOTO 14
  IF ~~ THEN REPLY @18073 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @18074
  IF ~~ THEN REPLY @7735 DO ~StartStore("40Bdawn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18075 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @17998 EXIT
END

IF WEIGHT #1
~Global("BeodaewnWarning","MYAREA",1)~ THEN BEGIN 15
  SAY @40354
  IF ~Global("PlayerSawWerewolfChange","MYAREA",1)~ THEN REPLY @17947 GOTO 3
  IF ~OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17963 GOTO 4
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("40PlayerSawDen","GLOBAL",1)~ THEN REPLY @17965 GOTO 3
  IF ~OR(4) //2
        //CheckSkillGT(LastTalkedToBy,5,Wilderness_Lore)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID)
        Class(LastTalkedToBy,FIGHTER_DRUID)
        Global("40PlayerSawDen","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,14,INT)
      CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @17967 GOTO 3
  IF ~~ THEN REPLY @17969 EXIT
END
