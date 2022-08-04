BEGIN ~20RIKI~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @31426
  IF ~~ THEN REPLY @31427 GOTO 1
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @38412 GOTO 41
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @38412 GOTO 42
  IF ~~ THEN REPLY @31428 GOTO 28
END

IF ~~ THEN BEGIN 1
  SAY @31429
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @31430 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @31430 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @26423 GOTO 35
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31431 GOTO 28
END

IF ~~ THEN BEGIN 2
  SAY @31432
  IF ~~ THEN REPLY @31433 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      //!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31434 GOTO 6
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      //!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31434 GOTO 9
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38414 GOTO 6
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @38414 GOTO 9
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31435 GOTO 15
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38416 GOTO 15
END

IF ~~ THEN BEGIN 3
  SAY @31436
  IF ~~ THEN REPLY @31437 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @31438
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31439 GOTO 5
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38417 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @31440
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31434 GOTO 6
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31434 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @31441
  IF ~~ THEN REPLY @31442 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @31443
  IF ~~ THEN REPLY @31444 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @31445
  IF ~~ THEN REPLY @31446 DO ~AddJournalEntry(@31418,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @31447
  IF ~~ THEN REPLY @31448 GOTO 7
  IF ~~ THEN REPLY @31449 DO ~AddJournalEntry(@31419,QUEST)~ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @31450
  IF ~~ THEN REPLY @31451 DO ~SetGlobal("SH_Stop_Guards","GLOBAL",3)
                              SetGlobal("SH_Make_Sleep_Ptn","GLOBAL",1)
                              AddJournalEntry(@31420,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @31452
  IF ~~ THEN REPLY @31451 DO ~SetGlobal("SH_Stop_Guards","GLOBAL",3)
                              SetGlobal("SH_Make_Poison_Ptn","GLOBAL",1)
                              AddJournalEntry(@31421,QUEST)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @31453
  IF ~~ THEN REPLY @31454 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @31455
  IF ~~ THEN REPLY @31456 GOTO 14
  IF ~~ THEN REPLY @31457 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @31459
  IF ~~ THEN REPLY @31457 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @31460
  IF ~~ THEN REPLY @31461 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @31462
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31463 GOTO 17
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @37923 GOTO 17
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38418 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @31464
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31434 GOTO 6
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @31434 GOTO 9
END

IF ~~ THEN BEGIN 18
  SAY @31467
  IF ~~ THEN REPLY @31470 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31425)~ GOTO 19
  IF ~~ THEN REPLY @37924 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31425)~ GOTO 19
  IF ~Global("SH_Twins_Away","GLOBAL",1)~ THEN REPLY @37926 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @31471
  IF ~~ THEN REPLY @31472 DO ~SetGlobal("Unhide_Pudu","GLOBAL",1)
                              AddJournalEntry(@32255,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @31473
  IF ~~ THEN REPLY @31474 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @31475
  IF ~~ THEN REPLY @241 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @31477
  IF ~~ THEN REPLY @31478 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @31479
  IF ~~ THEN REPLY @31480 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @31481
  IF ~~ THEN REPLY @31454 DO ~SetGlobal("SH_Stop_Envoys","GLOBAL",1)
                              SetGlobal("SH_Do_Ritual","GLOBAL",4)~ GOTO 25
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31482 GOTO 26
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38416 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @31483
  IF ~~ THEN REPLY @41340 DO ~SetGlobal("SH_Riki_Stay_Store","GLOBAL",1)
                              //SetCriticalPathObject(Myself, False)
                              ApplySpellRES("IWCPREM",Myself)
                              StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31457 DO ~StartCutScene("63cRiki")~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @31462
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31463 DO ~AddJournalEntry(@31422,QUEST)~ GOTO 27
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @37923 GOTO 27
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38418 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @31464
  IF ~~ THEN REPLY @31484 DO ~SetGlobal("SH_Stop_Envoys","GLOBAL",1)
                              SetGlobal("SH_Do_Ritual","GLOBAL",4)~ GOTO 25
END

IF ~~ THEN BEGIN 28
  SAY @31485
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @31430 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @31430 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @26423 GOTO 35
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31437 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @31438
  IF ~//!SubRace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @31439 GOTO 30
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @38417 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @31440
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @31486 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @31486 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @31486 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @31486 GOTO 35
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 31
  SAY @31487
  IF ~~ THEN REPLY @31427 GOTO 1
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @38412 GOTO 41
  IF ~//SubRace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @38412 GOTO 42
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31428 GOTO 28
END

IF WEIGHT #1
~Global("SH_Stop_Guards","GLOBAL",3)~ THEN BEGIN 32
  SAY @31488
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @31489 GOTO 33
  IF ~!Global("SH_Guards_Sleep","GLOBAL",1)
      Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN REPLY @31490 DO ~AddXP2DA("IW2EX14H")
                                                                               DisplayStringNoNameDlg(LastTalkedToBy,@31424)
                                                                               SetGlobal("SH_Stop_Guards","GLOBAL",5)
                                                                               EraseJournalEntry(@31418)
                                                                               EraseJournalEntry(@31419)
                                                                               EraseJournalEntry(@31420)
                                                                               EraseJournalEntry(@31421)
                                                                               AddJournalEntry(@31423,QUEST)~ GOTO 34
  IF ~!Global("SH_Guards_Sleep","GLOBAL",1)
      Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @31490 DO ~AddXP2DA("IW2EX14H")
                                                                               DisplayStringNoNameDlg(LastTalkedToBy,@31424)
                                                                               SetGlobal("SH_Stop_Guards","GLOBAL",5)
                                                                               EraseJournalEntry(@31418)
                                                                               EraseJournalEntry(@31419)
                                                                               EraseJournalEntry(@31420)
                                                                               EraseJournalEntry(@31421)
                                                                               AddJournalEntry(@31423,QUEST)~ GOTO 36
  IF ~Global("SH_Guards_Sleep","GLOBAL",1)
      Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      !Global("SH_Riki_Seek_Priest","GLOBAL",1)~ THEN REPLY @39837 DO ~AddXP2DA("IW2EX14H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@31424)
                                                                       SetGlobal("SH_Stop_Guards","GLOBAL",5)
                                                                       EraseJournalEntry(@31418)
                                                                       EraseJournalEntry(@31419)
                                                                       EraseJournalEntry(@31420)
                                                                       EraseJournalEntry(@31421)
                                                                       AddJournalEntry(@31423,QUEST)~ GOTO 50
  IF ~Global("SH_Guards_Sleep","GLOBAL",1)
      Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)
      !Global("SH_Riki_Seek_Priest","GLOBAL",1)~ THEN REPLY @39837 DO ~AddXP2DA("IW2EX14H")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@31424)
                                                                       SetGlobal("SH_Stop_Guards","GLOBAL",5)
                                                                       EraseJournalEntry(@31418)
                                                                       EraseJournalEntry(@31419)
                                                                       EraseJournalEntry(@31420)
                                                                       EraseJournalEntry(@31421)
                                                                       AddJournalEntry(@31423,QUEST)~ GOTO 50
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @31491
  IF ~~ THEN REPLY @31492 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @31493
  IF ~~ THEN REPLY @31494 GOTO 18
END

IF ~~ THEN BEGIN 35
  SAY @32244
  IF ~~ THEN REPLY @2171 DO ~SetGlobal("SH_Riki_Seek_Priest","GLOBAL",1)
                             SetGlobal("SH_Do_Ritual","GLOBAL",3)
                             AddJournalEntry(@32254,QUEST)~ GOTO 40
  IF ~Global("SH_Kill_Slaves","GLOBAL",5)~ THEN REPLY @38423 GOTO 39
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)~ THEN REPLY @38447 GOTO 39
  IF ~Global("SH_Illmater_Ritual","GLOBAL",1)
      !Global("SH_Kill_Slaves","GLOBAL",5)~ THEN REPLY @38424 DO ~SetGlobal("SH_Do_Ritual","GLOBAL",3)~ GOTO 38
  IF ~Global("SH_Illmater_Ritual","GLOBAL",2)
      !Global("SH_Kill_Slaves","GLOBAL",5)~ THEN REPLY @39491 DO ~SetGlobal("SH_Do_Ritual","GLOBAL",3)~ GOTO 48
END

IF ~~ THEN BEGIN 36
  SAY @32246
  IF ~~ THEN REPLY @16884 DO ~SetGlobal("SH_Riki_Talk_Later","GLOBAL",1)
                              AddJournalEntry(@32254,QUEST)~ GOTO 35
END

IF WEIGHT #2
~Global("SH_Do_Ritual","GLOBAL",3)~ THEN BEGIN 37
  SAY @32247
  IF ~Global("SH_Riki_Seek_Priest","GLOBAL",1)~ THEN REPLY @39708 GOTO 40
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)
      !GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN REPLY @38448 GOTO 39
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",3)~ THEN REPLY @38448 GOTO 39
  IF ~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      !Global("SH_Told_Riki_Ritual","GLOBAL",1)~ THEN REPLY @38443 DO ~SetGlobal("SH_Told_Riki_Ritual","GLOBAL",1)~ GOTO 34
  IF ~Global("SH_Illmater_Ritual","GLOBAL",1)
      !GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN REPLY @39708 DO ~SetGlobal("SH_Riki_Talk_Later","GLOBAL",5)~ GOTO 38
  IF ~Global("SH_Illmater_Ritual","GLOBAL",2)~ THEN REPLY @39492 GOTO 49
  IF ~Global("SH_Kill_Slaves","GLOBAL",5)~ THEN REPLY @38445 GOTO 39
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",2)~ THEN REPLY @38445 GOTO 39
  IF ~~ THEN REPLY @40972 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26029 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @32250
  IF ~~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @38425
  IF ~~ THEN REPLY @38426 GOTO 18
  IF ~Global("SH_Kill_Slaves","GLOBAL",5)~ THEN REPLY @38449 GOTO 45
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)~ THEN REPLY @38449 GOTO 46
  IF ~Global("SPRITE_IS_DEADToralSorn","GLOBAL",2)~ THEN REPLY @38449 GOTO 45
END

IF ~~ THEN BEGIN 40
  SAY @38427
  IF ~~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @38428
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @26423 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @26423 GOTO 35
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @38432
  IF ~~ THEN REPLY @38433 GOTO 44
  IF ~~ THEN REPLY @38434 GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @38435
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @26423 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @26423 GOTO 35
  IF ~~ THEN REPLY @34896 EXIT
END

IF ~~ THEN BEGIN 44
  SAY @38439
  IF ~!Global("SH_Guards_Dead","GLOBAL",1)~ THEN REPLY @26423 GOTO 2
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalGT("SH_Purify_Pool","GLOBAL",2)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      GlobalLT("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @26423 GOTO 18
  IF ~Global("SH_Guards_Dead","GLOBAL",1)
      GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @26423 GOTO 35
  IF ~~ THEN REPLY @34896 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @38451
  IF ~~ THEN REPLY @38452 GOTO 47
END

IF ~~ THEN BEGIN 46
  SAY @38453
  IF ~~ THEN REPLY @38452 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @38454
  IF ~~ THEN REPLY @38426 GOTO 18
END

IF ~~ THEN BEGIN 48
  SAY @39493
  IF ~~ THEN REPLY @39494 EXIT
END

IF ~~ THEN BEGIN 49
  SAY @39495
  IF ~~ THEN REPLY @39494 EXIT
END

IF ~~ THEN BEGIN 50
  SAY @39839
  IF ~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN REPLY @35916 GOTO 18
  IF ~GlobalLT("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN REPLY @35916 GOTO 35
END

IF WEIGHT #0
~Global("SH_Riki_Stay_Store","GLOBAL",1)~ THEN BEGIN 51
  SAY @41341
  IF ~~ THEN REPLY @41342 DO ~StartStore("63Riki",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @41343 DO ~StartCutScene("63cRiki")~ EXIT
END
