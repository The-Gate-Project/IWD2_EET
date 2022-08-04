BEGIN ~41LYSAR~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7018
  IF ~~ THEN REPLY @7025 GOTO 1
  IF ~!Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,12,INT)
      CheckStatGT(LastTalkedToBy,12,WIS)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      OR(2)
        !Class(LastTalkedToBy,CLERIC_ALL)
        Alignment(LastTalkedToBy,CHAOTIC_EVIL)
      CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @7038 GOTO 22
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @7038 GOTO 22
END

IF ~~ THEN BEGIN 1
  SAY @7044
  IF ~~ THEN REPLY @7045 GOTO 2
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 2
  SAY @7078
  IF ~Global("41GlacierConstruction","GLOBAL",1)~ THEN REPLY @7079 GOTO 3
  IF ~!Global("41GlacierConstruction","GLOBAL",1)~ THEN REPLY @7079 DO ~AddXP2DA("IW2EX7E")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@6996)
                                                                        SetGlobal("41GlacierConstruction","GLOBAL",1)
                                                                        AddJournalEntry(@6957,QUEST)~ FLAGS 0x200 GOTO 3 /*true*/
END

IF ~~ THEN BEGIN 3
  SAY @7082
  IF ~~ THEN REPLY @7084 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7086 GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7081 GOTO 28
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7032 GOTO 24
END

IF ~~ THEN BEGIN 4
  SAY @7085
  IF ~~ THEN REPLY @7045 GOTO 2
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 5
  SAY @7087
  IF ~~ THEN REPLY @7045 GOTO 2
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7086 GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7081 GOTO 28
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7032 GOTO 24
END

IF ~~ THEN BEGIN 6
  SAY @7088
  IF ~~ THEN REPLY @7089 GOTO 2
  IF ~~ THEN REPLY @7090 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~!Global("41MentionedLeaders","GLOBAL",1)~ THEN REPLY @7091 GOTO 12
  IF ~~ THEN REPLY @7092 GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY @18635
  IF ~~ THEN REPLY @7089 GOTO 2
  IF ~~ THEN REPLY @7090 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @18639 GOTO 17
  IF ~!Global("41MentionedLeaders","GLOBAL",1)~ THEN REPLY @7091 GOTO 12
  IF ~~ THEN REPLY @7092 GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @18641
  IF ~~ THEN REPLY @7045 GOTO 2
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 9
  SAY @18642
  IF ~~ THEN REPLY @18715 DO ~SetGlobal("41MadaePromise","GLOBAL",1)~ GOTO 10
  IF ~!Global("41MentionedLeaders","GLOBAL",1)~ THEN REPLY @7091 GOTO 12
  IF ~~ THEN REPLY @18716 DO ~SetGlobal("41AndoraDeal","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @18717
  IF ~~ THEN REPLY @7079 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)
                             SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @18718
  IF ~~ THEN REPLY @7092 GOTO 14
  IF ~~ THEN REPLY @18719 GOTO 15
  IF ~~ THEN REPLY @18720 GOTO 1
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL", 1)~ THEN REPLY @7086 GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7081 GOTO 28
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7032 GOTO 24
END

IF ~~ THEN BEGIN 12
  SAY @18721
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @18639 GOTO 17
  IF ~~ THEN REPLY @18720 GOTO 1
END

IF ~~ THEN BEGIN 13
  SAY @18722
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @18723
  IF ~~ THEN REPLY @18725 GOTO 1
  IF ~~ THEN REPLY @18719 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @18727
  IF ~Global("41GemInfo","GLOBAL",1)~ THEN REPLY @7092 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)
                                                           SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @18728 GOTO 1
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7086 GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7081 GOTO 28
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7032 GOTO 24
END

IF ~~ THEN BEGIN 16
  SAY @18730
  IF ~~ THEN REPLY @18719 GOTO 15
  IF ~~ THEN REPLY @18720 GOTO 1
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7086 GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7081 GOTO 28
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @7032 GOTO 24
END

IF ~~ THEN BEGIN 17
  SAY @18731
  IF ~~ THEN REPLY @7045 GOTO 2
  IF ~~ THEN REPLY @7065 DO ~SetGlobal("41TempleConstruction","GLOBAL",1)~ GOTO 8
  IF ~!Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7069 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @7071 DO ~SetGlobal("41RitualInfo","GLOBAL",1)~ GOTO 4
  IF ~!Global("41CrashInfo","GLOBAL",1)~ THEN REPLY @7072 DO ~AddXP2DA("IW2EX7E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@7003)
                                                              SetGlobal("41CrashInfo","GLOBAL",1)
                                                              AddJournalEntry(@6983,QUEST)~ GOTO 5
  IF ~Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7073 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                   SetGlobal("41MadaePromise","GLOBAL",1)
                                                                   SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 6
  IF ~!Global("41MentionedLegion","GLOBAL",1)~ THEN REPLY @7074 DO ~SetGlobal("41MadaeDeal","GLOBAL",1)
                                                                    SetGlobal("41MadaePromise","GLOBAL",1)
                                                                    SetGlobal("41GemInfo","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7076 DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 18
  SAY @18732
  IF ~Global("41NateFreeQuest","GLOBAL",2)~ THEN REPLY @18733 GOTO 19
  IF ~Global("41NateEquipmentQuest","GLOBAL",2)~ THEN REPLY @18734 GOTO 19
  IF ~Global("41NateFindSourceQuest","GLOBAL",2)~ THEN REPLY @18735 GOTO 19
  IF ~Global("41NateDestroySourceQuest","GLOBAL",2)~ THEN REPLY @18736 GOTO 19
  IF ~~ THEN REPLY @18738 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @18739
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 20
  SAY @18887
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 21
  SAY @18888
  IF ~~ THEN REPLY @18889 GOTO 20
  IF ~~ THEN REPLY @18890 GOTO 0
END

IF ~~ THEN BEGIN 22
  SAY @18891
  IF ~!Kit(LastTalkedToBy,GODTALOS)~ THEN GOTO 23
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38225 GOTO 1
END

IF ~~ THEN BEGIN 23
  SAY @18892
  IF ~!Global("41GlacierConstruction","GLOBAL",1)
      !Global("41RitualInfo","GLOBAL",1)
      !Global("41MadaePromise","GLOBAL",1)
      !Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @18894 GOTO 1
  IF ~Global("41GlacierConstruction","GLOBAL",1)
      Global("41RitualInfo","GLOBAL",1)
      Global("41MadaePromise","GLOBAL",1)
      Global("41MadaeDeal","GLOBAL",1)~ THEN REPLY @18895 GOTO 28
END

IF ~~ THEN BEGIN 24
  SAY @18897
  IF ~~ THEN REPLY @18899 DO ~ApplySpellRES("IWWI096",LastTalkedToBy)~ FLAGS 0x200 GOTO 28 /*true*/
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN BEGIN 25
  SAY @18900
  IF ~OR(2)
        !Global("SPRITE_IS_DEADOria","GLOBAL",1)
        !Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN REPLY @18901 GOTO 21
  IF ~Global("SPRITE_IS_DEADOria","GLOBAL",1)
      Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN GOTO 26
END

IF WEIGHT #2
~Global("SPRITE_IS_DEADOria","GLOBAL",1)
 Global("SPRITE_IS_DEADOriaEssence","GLOBAL",1)~ THEN BEGIN 26
  SAY @18903
  IF ~!Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN REPLY @18901 GOTO 21
  IF ~Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @18904
  IF ~~ THEN REPLY @18901 GOTO 21
END

IF ~~ THEN BEGIN 28
  SAY @18905
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @18906
  IF ~~ THEN DO ~//SetCriticalPathObject(Myself,FALSE)
                 ApplySpellRES("IWCPREM",Myself)
                 Enemy()~ EXIT
END

IF WEIGHT #0
~HPPercentLT(Myself,90)~ THEN BEGIN 30
  SAY @18907
  IF ~~ THEN DO ~SetGlobal("41SaidPainting2","GLOBAL",1)~ GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @18908
  IF ~//CheckAreaDiffLevel(1)
      DifficultyLT(NORMAL)~ THEN DO ~AddXP2DA("IW2EX9E")
                                     AddXPWorthOnce(Myself,TRUE)
                                     Kill(Myself)
                                     //AddExperiencePartyCR(11)
                                     ~ EXIT
  IF ~//CheckAreaDiffLevel(2)
      Difficulty(NORMAL)~ THEN DO ~AddXP2DA("IW2EX9A")
                                   AddXPWorthOnce(Myself,TRUE)
                                   Kill(Myself)
                                   //AddExperiencePartyCR(13)
                                   ~ EXIT
  IF ~//CheckAreaDiffLevel(3)
      DifficultyGT(NORMAL)~ THEN DO ~AddXP2DA("IW2EX9H")
                                     AddXPWorthOnce(Myself,TRUE)
                                     Kill(Myself)
                                     //AddExperiencePartyCR(15)
                                     ~ EXIT
END
