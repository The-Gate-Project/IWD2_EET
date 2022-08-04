BEGIN ~63VASHTI~

IF WEIGHT #5
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26008
  IF ~~ THEN REPLY @38108 GOTO 25
  IF ~~ THEN REPLY @38109 GOTO 25
END

IF ~~ THEN BEGIN 1
  SAY @26014
  IF ~~ THEN REPLY @26015 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @26016
  IF ~~ THEN REPLY @26017 DO ~AddJournalEntry(@25999,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @26018
  IF ~~ THEN REPLY @26019 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @26020
  IF ~~ THEN REPLY @26021 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @26022
  IF ~~ THEN REPLY @26023 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",3)
                              AddJournalEntry(@26000,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @26024 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",2)
                              AddJournalEntry(@26001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @26025 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",1)
                              AddJournalEntry(@26002,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @26026
  IF ~Global("SH_Cook_Dead","GLOBAL",1)~ THEN REPLY @38465 GOTO 18
  IF ~~ THEN REPLY @26027 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @26028
  IF ~~ THEN REPLY @26029 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @26030
  IF ~~ THEN REPLY @26031 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @26032
  IF ~~ THEN REPLY @26009 GOTO 1
  IF ~~ THEN REPLY @26012 GOTO 11
  IF ~~ THEN REPLY @26013 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @26033
  IF ~~ THEN REPLY @26009 GOTO 1
  IF ~~ THEN REPLY @26010 GOTO 8
  IF ~~ THEN REPLY @26012 GOTO 11
  IF ~~ THEN REPLY @26013 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @26034
  IF ~~ THEN REPLY @26009 GOTO 1
  IF ~~ THEN REPLY @26010 GOTO 8
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @26011 GOTO 10
  IF ~~ THEN REPLY @26035 GOTO 12
  IF ~~ THEN REPLY @26013 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @26036
  IF ~~ THEN REPLY @26037 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @26038
  IF ~~ THEN REPLY @26039 GOTO 10
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)~ THEN BEGIN 14
  SAY @26040
  IF ~~ THEN REPLY @26009 GOTO 1
  IF ~~ THEN REPLY @26010 GOTO 8
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @26011 GOTO 10
  IF ~~ THEN REPLY @26012 GOTO 11
  IF ~~ THEN REPLY @26013 EXIT
END

IF WEIGHT #2
~Global("SH_Talk_Cook","GLOBAL",1)~ THEN BEGIN 15
  SAY @26041
  IF ~~ THEN REPLY @26023 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",3)
                              AddJournalEntry(@26000,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @26024 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",2)
                              AddJournalEntry(@26001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @26025 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",1)
                              AddJournalEntry(@26002,QUEST)~ EXIT
END

IF WEIGHT #3
~Global("SH_Talk_Cook","GLOBAL",2)~ THEN BEGIN 16
  SAY @26042
  IF ~~ THEN REPLY @26023 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",3)
                              AddJournalEntry(@26000,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @26024 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",2)
                              AddJournalEntry(@26001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @26025 DO ~SetGlobal("SH_Talk_Cook","GLOBAL",1)
                              AddJournalEntry(@26002,QUEST)~ EXIT
END

IF WEIGHT #4
~Global("SH_Talk_Cook","GLOBAL",3)~ THEN BEGIN 17
  SAY @26043
  IF ~!Global("SH_Cook_Refused","GLOBAL",1)~ THEN REPLY @26044 EXIT
  IF ~Global("SH_Cook_Refused","GLOBAL",1)
      !Global("SH_Cook_Dead","GLOBAL",1)~ THEN REPLY @26045 DO ~AddJournalEntry(@26003,QUEST)~ GOTO 18
  IF ~Global("SH_Cook_Dead","GLOBAL",1)~ THEN REPLY @38465 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @26046
  IF ~~ THEN REPLY @26023 DO ~SetGlobal("SH_Food_Thief","GLOBAL",3)
                              //TriggerActivation("Food_Thief_Trig",TRUE)
                              ~ GOTO 19
  IF ~~ THEN REPLY @26047 DO ~SetGlobal("SH_Food_Thief","GLOBAL",3)
                              //TriggerActivation("Food_Thief_Trig",TRUE)
                              ~ GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @26048
  IF ~~ THEN REPLY @26049 DO ~Activate("6301Cook")
                              Activate("Zaem")
                              ActionOverride("6301Cook",SetGlobal("IwIHidden","LOCALS",0))
                              ActionOverride("Zaem",SetGlobal("IwIHidden","LOCALS",0))
                              StartCutSceneMode()
                              StartCutScene("63cSFood")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @26050
  IF ~~ THEN REPLY @26027 DO ~Activate("6301Cook")
                              Activate("Zaem")
                              ActionOverride("6301Cook",SetGlobal("IwIHidden","LOCALS",0))
                              ActionOverride("Zaem",SetGlobal("IwIHidden","LOCALS",0))
                              StartCutSceneMode()
                              StartCutScene("63cSFood")
~ EXIT
END

IF WEIGHT #0
~Global("SH_Food_Thief","GLOBAL",3)~ THEN BEGIN 21
  SAY @26051
  IF ~!Global("SH_No_Food_Steal","GLOBAL",4)
      !Global("SPRITE_IS_DEADZaem","GLOBAL",1)~ THEN REPLY @26044 EXIT
  IF ~Global("SH_No_Food_Steal","GLOBAL",4)~ THEN REPLY @26052 DO ~AddXP2DA("IW2EX14H")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@26006)
                                                                   SetGlobal("SH_Food_Thief","GLOBAL",4)
                                                                   EraseJournalEntry(@25999)
                                                                   EraseJournalEntry(@26000)
                                                                   EraseJournalEntry(@26001)
                                                                   EraseJournalEntry(@26002)
                                                                   EraseJournalEntry(@26003)
                                                                   EraseJournalEntry(@37141)
                                                                   EraseJournalEntry(@37143)
                                                                   EraseJournalEntry(@29529)
                                                                   AddJournalEntry(@26004,QUEST_DONE)~ GOTO 22
  IF ~Global("SPRITE_IS_DEADZaem","GLOBAL",1)~ THEN REPLY @26053 DO ~AddXP2DA("IW2EX14A")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@26007)
                                                                     SetGlobal("SH_Food_Thief","GLOBAL",4)
                                                                     EraseJournalEntry(@25999)
                                                                     EraseJournalEntry(@26000)
                                                                     EraseJournalEntry(@26001)
                                                                     EraseJournalEntry(@26002)
                                                                     EraseJournalEntry(@26003)
                                                                     EraseJournalEntry(@37141)
                                                                     EraseJournalEntry(@37143)
                                                                     EraseJournalEntry(@29529)
                                                                     AddJournalEntry(@26005,QUEST_DONE)~ GOTO 23
  IF ~GlobalGT("SH_No_Food_Steal","GLOBAL",0)
      GlobalLT("SH_No_Food_Steal","GLOBAL",4)~ THEN REPLY @38689 GOTO 27
END

IF ~~ THEN BEGIN 22
  SAY @26054
  IF ~~ THEN REPLY @26049 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @26055
  IF ~~ THEN REPLY @26049 EXIT
END

IF WEIGHT #1
~Global("SH_Food_Thief","GLOBAL",4)~ THEN BEGIN 24
  SAY @26056
  IF ~~ THEN REPLY @26049 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38110
  IF ~~ THEN REPLY @38111 GOTO 26
  IF ~~ THEN REPLY @38112 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @38113
  IF ~~ THEN REPLY @10683 GOTO 1
  IF ~~ THEN REPLY @26010 GOTO 8
  IF ~!Global("SH_Know_Jerre","GLOBAL",1)~ THEN REPLY @26011 GOTO 10
  IF ~~ THEN REPLY @26012 GOTO 11
  IF ~~ THEN REPLY @11612 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @38688
  IF ~~ THEN REPLY @2188 DO ~Activate("6301Cook")
                             Activate("Zaem")
                             ActionOverride("6301Cook",SetGlobal("IwIHidden","LOCALS",0))
                             ActionOverride("Zaem",SetGlobal("IwIHidden","LOCALS",0))
                             StartCutSceneMode()
                             StartCutScene("63cSFood")
~ EXIT
END
