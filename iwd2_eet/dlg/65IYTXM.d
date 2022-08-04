BEGIN ~65IYTXM~

IF ~~ THEN BEGIN 0
  SAY @25838
  IF ~~ THEN REPLY @27259 GOTO 1
  IF ~~ THEN REPLY @27260 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @28533
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @28534 GOTO 3 //!Alignment(LastTalkedToBy,NONE)
  IF ~~ THEN REPLY @28536 GOTO 2
END

IF WEIGHT #9
~Global("SH_Kill_Slaves","GLOBAL",2)~ THEN BEGIN 2
  SAY @28537
  IF ~~ THEN DO ~SetGlobal("SH_Pissed_Off_Iyachtu","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("65cIyac1")
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @28539
  IF ~~ THEN REPLY @28760 GOTO 4
  IF ~~ THEN REPLY @28761 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @28762
  IF ~~ THEN REPLY @28763 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @29254
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @29255
  IF ~~ THEN REPLY @30460 GOTO 7
  IF ~~ THEN REPLY @30461 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @32197
  IF ~~ THEN REPLY @32198 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @34670
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      GlobalLT("SH_Dead_Slaves","GLOBAL",10)~ THEN REPLY @34671 DO ~SetGlobal("SH_Kill_Slaves","GLOBAL",1)
                                                                    SetGlobal("SH_Nix_Illmater_Ritual","GLOBAL",1)
                                                                    AddJournalEntry(@24408,QUEST)~ GOTO 9
  IF ~!Global("SH_Kill_Slaves","GLOBAL",1)
      GlobalGT("SH_Dead_Slaves","GLOBAL",9)~ THEN REPLY @41105 DO ~SetGlobal("SH_Nix_Illmater_Ritual","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @34672 GOTO 2
END

IF ~~ THEN BEGIN 9
  SAY @34673
  IF ~~ THEN EXIT
END

IF WEIGHT #11
~Global("SH_Kill_Slaves","GLOBAL",1)~ THEN BEGIN 10
  SAY @36885
  IF ~~ THEN REPLY @38247 DO ~SetGlobal("SH_Kill_Slaves","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @38246 GOTO 2
END

IF WEIGHT #10
~Global("SH_Kill_Slaves","GLOBAL",1)
 GlobalGT("SH_Dead_Slaves","GLOBAL",9)~ THEN BEGIN 11
  SAY @38248
  IF ~~ THEN DO ~AddXP2DA("IW2EX15E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25829)
                 SetGlobal("SH_Kill_Slaves","GLOBAL",5)
                 SetGlobal("SH_No_Demons","GLOBAL",1)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@25416,QUEST)~ EXIT
END

IF WEIGHT #13
~NumTimesTalkedTo(0)
 !Global("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN BEGIN 12
  SAY @38249
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN BEGIN 13
  SAY @38250
  IF ~~ THEN EXIT
END

IF WEIGHT #12
~NumTimesTalkedToGT(0)
 !Global("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN BEGIN 14
  SAY @38249
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)
 Kit(LastTalkedToBy,OHBANE)~ THEN BEGIN 15
  SAY @38251
  IF ~~ THEN REPLY @38252 GOTO 16
  IF ~~ THEN REPLY @38253 GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY @38254
  IF ~~ THEN REPLY @38255 GOTO 17
  IF ~~ THEN REPLY @38253 GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY @38256
  IF ~~ THEN REPLY @38257 GOTO 18
  IF ~~ THEN REPLY @38258 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @38259
  IF ~~ THEN REPLY @38260 GOTO 19
  IF ~~ THEN REPLY @38258 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @38261
  IF ~~ THEN DO ~AddXP2DA("IW2EX15A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25836)
                 SetGlobal("SPRITE_IS_DEADToralSorn","GLOBAL",2)
                 SetGlobal("SH_No_Demons","GLOBAL",1)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@25437,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @28537
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADToralSorn","GLOBAL",3)
                 StartCutSceneMode()
                 StartCutScene("65cIyac1")
                 Enemy()~ EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",2)~ THEN BEGIN 21
  SAY @38262
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)
 Kit(LastTalkedToBy,OHMASK)~ THEN BEGIN 22
  SAY @38263
  IF ~~ THEN REPLY @38252 GOTO 23
  IF ~~ THEN REPLY @38264 GOTO 20
END

IF ~~ THEN BEGIN 23
  SAY @38265
  IF ~~ THEN REPLY @38266 GOTO 24
  IF ~~ THEN REPLY @38264 GOTO 20
END

IF ~~ THEN BEGIN 24
  SAY @38256
  IF ~~ THEN REPLY @38267 GOTO 25
  IF ~~ THEN REPLY @38268 GOTO 20
END

IF ~~ THEN BEGIN 25
  SAY @38269
  IF ~~ THEN REPLY @38260 GOTO 26
  IF ~~ THEN REPLY @38268 GOTO 20
END

IF ~~ THEN BEGIN 26
  SAY @38270
  IF ~~ THEN DO ~AddXP2DA("IW2EX15A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25836)
                 SetGlobal("SPRITE_IS_DEADToralSorn","GLOBAL",2)
                 SetGlobal("SH_No_Demons","GLOBAL",1)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@25437,QUEST)~ EXIT
END

IF WEIGHT #4
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)
 Kit(LastTalkedToBy,GODTALOS)~ THEN BEGIN 27
  SAY @38271
  IF ~~ THEN REPLY @38272 GOTO 20
END

IF WEIGHT #5
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)~ THEN BEGIN 28
  SAY @38273
  IF ~~ THEN REPLY @27259 GOTO 29
  IF ~~ THEN REPLY @38274 GOTO 20
END

IF ~~ THEN BEGIN 29
  SAY @38275
  IF ~~ THEN REPLY @38276 GOTO 30
  IF ~~ THEN REPLY @38274 GOTO 20
END

IF ~~ THEN BEGIN 30
  SAY @38256
  IF ~~ THEN REPLY @38277 GOTO 31
  IF ~~ THEN REPLY @38278 GOTO 20
END

IF ~~ THEN BEGIN 31
  SAY @38279
  IF ~~ THEN REPLY @38280 GOTO 32
  IF ~~ THEN REPLY @38281 GOTO 20
END

IF ~~ THEN BEGIN 32
  SAY @38282
  IF ~~ THEN DO ~AddXP2DA("IW2EX15A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25836)
                 SetGlobal("SPRITE_IS_DEADToralSorn","GLOBAL",2)
                 SetGlobal("SH_No_Demons","GLOBAL",1)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@25437,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",3)~ THEN BEGIN 33
  SAY @38249
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~Global("SH_Pissed_Off_Iyachtu","GLOBAL",1)~ THEN BEGIN 34
  SAY @38249
  IF ~~ THEN EXIT
END

IF WEIGHT #8
~Global("SH_Kill_Slaves","GLOBAL",2)
 GlobalGT("SH_Dead_Slaves","GLOBAL",9)~ THEN BEGIN 35
  SAY @38248
  IF ~~ THEN DO ~AddXP2DA("IW2EX15E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@25829)
                 SetGlobal("SH_Kill_Slaves","GLOBAL",5)
                 SetGlobal("SH_No_Demons","GLOBAL",1)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@25416,QUEST)~ EXIT
END
