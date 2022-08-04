BEGIN ~11CAHLHY~

IF WEIGHT #0
~GlobalGT("Goblins_Attack_Palisade","GLOBAL",0)
 Global("Cahl_Targos_Phase_Intro","GLOBAL",0)~ THEN BEGIN 0
  SAY @7898
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7899 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @38693 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                  SetGlobal("Veira_Quest","GLOBAL",1)
                                                                  AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7900 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7901 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Know_Veira","GLOBAL",1)
      GlobalLT("Veira_Quest","GLOBAL",3)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @7902 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 24
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @7904 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 5
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7905 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7906 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 15
  IF ~Global("11Know_Potion","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",1)~ THEN REPLY @7907 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 31
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @7908 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)
                                                                 SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7908 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)
                                                                 StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7909 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 1
  SAY @7919
  IF ~~ THEN REPLY @7920 GOTO 2
  IF ~~ THEN REPLY @7921 GOTO 3
  IF ~~ THEN REPLY @7922 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7925
  IF ~~ THEN REPLY @7921 GOTO 3
  IF ~~ THEN REPLY @7922 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7927
  IF ~~ THEN REPLY @7929 EXIT
END

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @7932
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @7934 GOTO 5
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7905 GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7906 GOTO 15
  IF ~~ THEN REPLY @7942 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7958
  IF ~~ THEN REPLY @7961 GOTO 6
  IF ~GlobalGT("Know_Veira","GLOBAL",0)
      GlobalLT("Veira_Quest","GLOBAL",3)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @8008 GOTO 24
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7905 GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7906 GOTO 15
  IF ~Global("11Know_Potion","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",1)~ THEN REPLY @7907 GOTO 31
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @8012 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @8012 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8013 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8014
  IF ~GlobalGT("Know_Veira","GLOBAL",0)
      GlobalLT("Veira_Quest","GLOBAL",3)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @8008 GOTO 24
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7905 GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7906 GOTO 15
  IF ~Global("11Know_Potion","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",1)~ THEN REPLY @7907 GOTO 31
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @8015 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @8015 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8013 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8016
  IF ~~ THEN REPLY @8027 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @8037
  IF ~!Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @8038 GOTO 9
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @8047 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8048
  IF ~~ THEN DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8052
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8053 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @38694 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                              SetGlobal("Veira_Quest","GLOBAL",1)
                                                              AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8054 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8057 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Koluhm_Story","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @8269 GOTO 14
  IF ~~ THEN REPLY @8270 GOTO 11
  IF ~~ THEN REPLY @8271 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @8272 GOTO 5
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8274
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8053 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @38695 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                              SetGlobal("Veira_Quest","GLOBAL",1)
                                                              AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8054 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @8057 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Koluhm_Story","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @8269 GOTO 14
  IF ~~ THEN REPLY @8271 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @8272 GOTO 5
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8277
  IF ~~ THEN REPLY @8279 GOTO 13
  IF ~!TimeOfDay(NIGHT)~ THEN REPLY @8280 GOTO 41
  IF ~~ THEN REPLY @8281 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~TimeOfDay(NIGHT)~ THEN REPLY @8282 EXIT
  IF ~!TimeOfDay(NIGHT)~ THEN REPLY @8283 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8284
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @8286 GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @8288 GOTO 15
  IF ~!TimeOfDay(NIGHT)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @8289 GOTO 41
  IF ~~ THEN REPLY @8271 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8290
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @8292 DO ~SetGlobal("Koluhm_Story","GLOBAL",1)
                                                                 SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 8
  IF ~GlobalGT("Know_Veira_Room","GLOBAL",0)
      Global("Know_No_Pay","GLOBAL",0)~ THEN REPLY @8294 DO ~SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 16
  IF ~GlobalGT("Know_Veira_Room","GLOBAL",0)
      Global("Know_No_Pay","GLOBAL",1)~ THEN REPLY @8296 DO ~SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @8297
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @8292 DO ~SetGlobal("Koluhm_Story","GLOBAL",1)
                                                                 SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 8
  IF ~GlobalGT("Know_Veira_Room","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)
      Global("Know_No_Pay","GLOBAL",0)~ THEN REPLY @8294 DO ~SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 16
  IF ~GlobalGT("Know_Veira_Room","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)
      Global("Know_No_Pay","GLOBAL",1)~ THEN REPLY @8296 DO ~SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 16
  IF ~GlobalGT("Know_Veira_Room","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",1)~ THEN REPLY @8294 DO ~SetGlobal("Know_No_Pay","GLOBAL",1)~ GOTO 42
END

IF ~~ THEN BEGIN 16
  SAY @8298
  IF ~~ THEN REPLY @8299 DO ~SetGlobal("Koluhm_Story","GLOBAL",2)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @8300
  IF ~~ THEN REPLY @8301 DO ~AddJournalEntry(@7238,QUEST)~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @8302
  IF ~~ THEN REPLY @8303 GOTO 19
  IF ~~ THEN REPLY @9532 DO ~GiveItemCreate("z1gengbo",LastTalkedToBy,0,0,0)
                             SetGlobal("Potion_Quest","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @9533
  IF ~~ THEN REPLY @9540 DO ~GiveItemCreate("z1gengbo",LastTalkedToBy,0,0,0)
                             SetGlobal("Potion_Quest","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @9541
  IF ~~ THEN REPLY @9542 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @10823
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7899 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @38696 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                              SetGlobal("Veira_Quest","GLOBAL",1)
                                                              AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7900 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7901 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @10824 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @10824 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)
                                                                  StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @10825 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~~ THEN REPLY @10826 GOTO 22
  IF ~~ THEN REPLY @10827 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @10833
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7899 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @38697 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                              SetGlobal("Veira_Quest","GLOBAL",1)
                                                              AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7900 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)~ THEN REPLY @7901 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                             SetGlobal("Veira_Quest","GLOBAL",1)
                                                             AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @10835 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @10835 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)
                                                                  StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @10825 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ FLAGS 0x200 GOTO 5 /*true*/
  IF ~~ THEN REPLY @10827 EXIT
END

IF WEIGHT #4
~True()~ THEN BEGIN 23
  SAY @10836
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7899 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Class(LastTalkedToBy,PALADIN_ALL)
      LevelGT(LastTalkedToBy,2)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @38698 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                  SetGlobal("Veira_Quest","GLOBAL",1)
                                                                  AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7900 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      Global("Veira_Quest","GLOBAL",0)
      Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @7901 DO ~GiveItemCreate("z1keyww2",LastTalkedToBy,0,0,0)
                                                                 SetGlobal("Veira_Quest","GLOBAL",1)
                                                                 AddJournalEntry(@7236,QUEST)~ GOTO 12
  IF ~Global("Know_Veira","GLOBAL",1)
      GlobalLT("Veira_Quest","GLOBAL",3)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @7902 GOTO 24
  IF ~Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN REPLY @7904 DO ~SetGlobal("Cahl_Targos_Phase_Intro","GLOBAL",1)~ GOTO 5
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("Know_Koluhm_Inn","GLOBAL",0)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7905 GOTO 15
  IF ~Global("Know_Koluhm_Inn","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",0)~ THEN REPLY @7906 GOTO 15
  IF ~Global("11Know_Potion","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",1)~ THEN REPLY @7907 GOTO 31
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @10837 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @10837 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7909 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @10838
  IF ~Global("Veira_Happy","GLOBAL",1)
      Global("Veira_Turned","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10839 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~Global("Veira_Turned","GLOBAL",1)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10840 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~Global("Veira_Turned","GLOBAL",2)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @39902 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10842 DO ~SetGlobal("Gohar_Direction","GLOBAL",1)~ GOTO 37
  IF ~GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10843 GOTO 37
  IF ~~ THEN REPLY @10844 GOTO 13
  IF ~!TimeOfDay(NIGHT)
      GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10845 GOTO 41
  IF ~GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10846 GOTO 9
  IF ~Global("Know_Veira_Room","GLOBAL",0)~ THEN REPLY @10848 DO ~SetGlobal("Know_Veira_Room","GLOBAL",1)~ GOTO 7
  IF ~Global("Know_Veira_Room","GLOBAL",1)~ THEN REPLY @10848 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @10852
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @10853 DO ~SetGlobal("Veira_Quest_End","GLOBAL",1)~ GOTO 26
  IF ~~ THEN REPLY @10854 DO ~SetGlobal("Veira_Quest_End","GLOBAL",1)~ GOTO 29
END

IF ~~ THEN BEGIN 26
  SAY @10855
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10857 DO ~GiveGoldForce(50)
                                                              GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)
                                                              GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 28
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @10858 GOTO 27
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @10859 GOTO 29
END

IF ~~ THEN BEGIN 27
  SAY @10860
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10863 DO ~GiveGoldForce(50)
                                                              GiveItemCreate("MISC33",LastTalkedToBy,0,0,0)
                                                              GiveItemCreate("MISC34",LastTalkedToBy,0,0,0)~ GOTO 28
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @10859 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @10865
  IF ~~ THEN REPLY @10866 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @10867
  IF ~~ THEN REPLY @10868 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 GlobalGT("Veira_Quest","GLOBAL",0)
 Global("Veira_Quest_End","GLOBAL",0)~ THEN BEGIN 30
  SAY @10869
  IF ~Global("Veira_Happy","GLOBAL",1)
      Global("Veira_Turned","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10839 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~Global("Veira_Turned","GLOBAL",1)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10840 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~Global("Veira_Turned","GLOBAL",2)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @39903 DO ~AddXP2DA("IW2EX1H")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7895)
                                                                  EraseJournalEntry(@745)
                                                                  EraseJournalEntry(@7236)
                                                                  EraseJournalEntry(@7237)
                                                                  EraseJournalEntry(@9714)
                                                                  EraseJournalEntry(@28048)
                                                                  EraseJournalEntry(@28049)
                                                                  EraseJournalEntry(@80084)
                                                                  EraseJournalEntry(@80085)
                                                                  EraseJournalEntry(@28054)
                                                                  AddJournalEntry(@7235,QUEST_DONE)~ GOTO 25
  IF ~Global("Know_Veira","GLOBAL",1)
      GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10842 DO ~SetGlobal("Gohar_Direction","GLOBAL",1)~ GOTO 37
  IF ~GlobalLT("Veira_Quest","GLOBAL",2)
      Global("Veira_Turned","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)
      Global("Veira_Quest_End","GLOBAL",0)~ THEN REPLY @10843 GOTO 37
  IF ~~ THEN REPLY @10846 GOTO 9
  IF ~Global("11Know_Potion","GLOBAL",1)
      Global("Potion_Quest","GLOBAL",1)~ THEN REPLY @10870 GOTO 31
  IF ~~ THEN REPLY @10873 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~GlobalLT("Targos_Phase","GLOBAL",2)~ THEN REPLY @10883 GOTO 5
  IF ~~ THEN REPLY @10885 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @10886
  IF ~Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10887 DO ~AddXP2DA("IW2EX1A")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@7897)
                                                                    AddJournalEntry(@7890,QUEST)~ GOTO 32
  IF ~GlobalGT("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10890 DO ~AddXP2DA("IW2EX1A")
                                                                      DisplayStringNoNameDlg(LastTalkedToBy,@7897)
                                                                      AddJournalEntry(@7890,QUEST)~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @10891
  IF ~Global("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10892 DO ~SetGlobal("Potion_Quest","GLOBAL",2)~ GOTO 33
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      GlobalGT("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10893 DO ~SetGlobal("Potion_Quest","GLOBAL",2)~ GOTO 35
  IF ~Class(LastTalkedToBy,MONK)
      Alignment(LastTalkedToBy,MASK_EVIL)
      GlobalGT("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10894 DO ~SetGlobal("Potion_Quest","GLOBAL",2)~ EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      GlobalGT("Know_Bottle_Tears","GLOBAL",0)~ THEN REPLY @10895 DO ~SetGlobal("Potion_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @10899
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @10900
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @10893 GOTO 35
  IF ~Class(LastTalkedToBy,MONK)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @10902 EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @10902 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @10903
  IF ~CheckStatLT(LastTalkedToBy,14,INT)~ THEN REPLY @10906 DO ~GiveGoldForce(50)~ GOTO 36
  IF ~CheckStatGT(LastTalkedToBy,13,INT)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @10906 DO ~GiveGoldForce(100)
                                                                GiveItemCreate("MISC19",LastTalkedToBy,0,0,0)~ GOTO 36
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @10906 DO ~GiveGoldForce(150)
                                                                GiveItemCreate("MISC18",LastTalkedToBy,0,0,0)~ GOTO 36
  IF ~CheckStatLT(LastTalkedToBy,12,STR)~ THEN REPLY @12742 DO ~GiveGoldForce(50)~ GOTO 36
  IF ~CheckStatGT(LastTalkedToBy,11,STR)
      CheckStatLT(LastTalkedToBy,14,STR)~ THEN REPLY @12742 DO ~GiveGoldForce(100)
                                                                GiveItemCreate("MISC19",LastTalkedToBy,0,0,0)~ GOTO 36
  IF ~CheckStatGT(LastTalkedToBy,13,STR)~ THEN REPLY @12742 DO ~GiveGoldForce(150)
                                                                GiveItemCreate("MISC18",LastTalkedToBy,0,0,0)~ GOTO 36
  IF ~~ THEN REPLY @12783 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @15699
  IF ~~ THEN REPLY @15700 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @15701
  IF ~~ THEN REPLY @15703 GOTO 38
  IF ~~ THEN REPLY @15704 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @15705
  IF ~~ THEN REPLY @15708 GOTO 39
  IF ~~ THEN REPLY @15704 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @7944 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @15709
  IF ~~ THEN REPLY @15710 DO ~AddJournalEntry(@7237,QUEST)~ GOTO 40
  IF ~~ THEN REPLY @15711 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23962 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @29119
  IF ~~ THEN REPLY @29122 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @23962 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @29269
  IF ~~ THEN REPLY @29270 GOTO 13
  IF ~~ THEN REPLY @31360 DO ~StartStore("11CahlHy",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31361 EXIT
END

IF ~~ THEN BEGIN 42
  SAY @31362
  IF ~~ THEN REPLY @8299 DO ~SetGlobal("Koluhm_Story","GLOBAL",2)~ GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @31363
  IF ~~ THEN REPLY @8301 DO ~AddJournalEntry(@7238,QUEST)~ GOTO 18
END
