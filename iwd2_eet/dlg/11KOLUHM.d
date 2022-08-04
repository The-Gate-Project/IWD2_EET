BEGIN ~11KOLUHM~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9750
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @9751 DO ~SetGlobal("Know_Koluhm","GLOBAL",1)
                                                                   AddJournalEntry(@4686,QUEST)~ GOTO 1
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      !Global("Dead_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9753 DO ~SetGlobal("Know_Koluhm","GLOBAL",1)
                                                                    AddJournalEntry(@4686,QUEST)~ GOTO 2
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Dead_Goblin_Quest","GLOBAL",1)~ THEN REPLY @33619 DO ~SetGlobal("Know_Koluhm","GLOBAL",1)
                                                                    AddJournalEntry(@4686,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @9754
  IF ~~ THEN REPLY @9755 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @9756
  IF ~  !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @9757 GOTO 3
  IF ~  Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @9758 GOTO 3
  IF ~~ THEN REPLY @9765 GOTO 4
  IF ~~ THEN REPLY @9766 GOTO 4
  IF ~Global("KB_No_Question","GLOBAL",1)~ THEN REPLY @28414 GOTO 18
  IF ~Global("KB_No_Question","GLOBAL",1)~ THEN REPLY @28415 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9767
  IF ~~ THEN REPLY @9765 GOTO 4
  IF ~~ THEN REPLY @9766 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9768
  IF ~~ THEN EXTERN ~11DEADS~ 0
END

IF ~~ THEN BEGIN 5
  SAY @9770
  IF ~~ THEN REPLY @9772 EXTERN ~11DEADS~ 1
END

IF ~~ THEN BEGIN 6
  SAY @9773
  IF ~~ THEN REPLY @9774 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @9775
  IF ~~ THEN REPLY @9776 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @9777
  IF ~~ THEN REPLY @9778 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @9779
  IF ~~ THEN EXTERN ~11DEADG~ 0
END

IF ~~ THEN BEGIN 10
  SAY @9780
  IF ~~ THEN REPLY @9782 GOTO 7
END

IF ~~ THEN BEGIN 11
  SAY @9783
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @9784 GOTO 12
  IF ~~ THEN REPLY @9791 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @9792
  IF ~~ THEN REPLY @9794 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @9795
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @9796
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @9797
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @38735 GOTO 16
  IF ~Kit(LastTalkedToBy,GODLATHANDER)~ THEN REPLY @38736 GOTO 16
  IF ~Kit(LastTalkedToBy,OHSELUNE)~ THEN REPLY @38737 GOTO 16
  IF ~Kit(LastTalkedToBy,GODHELM)~ THEN REPLY @38738 GOTO 16
  IF ~Kit(LastTalkedToBy,OHOGHMA)~ THEN REPLY @38739 GOTO 16
  IF ~Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY @38741 GOTO 16
  IF ~Kit(LastTalkedToBy,OHBANE)~ THEN REPLY @38742 GOTO 16
  IF ~Kit(LastTalkedToBy,OHMASK)~ THEN REPLY @38743 GOTO 16
  IF ~Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @38744 GOTO 16
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,OHILMATER)
      !Kit(LastTalkedToBy,GODLATHANDER)
      !Kit(LastTalkedToBy,OHSELUNE)
      !Kit(LastTalkedToBy,GODHELM)
      !Kit(LastTalkedToBy,OHOGHMA)
      !Kit(LastTalkedToBy,OHTEMPUS)
      !Kit(LastTalkedToBy,OHBANE)
      !Kit(LastTalkedToBy,OHMASK)
      !Kit(LastTalkedToBy,GODTALOS)~ THEN REPLY @50004 GOTO 16
  IF ~~ THEN REPLY @9798 GOTO 16
  IF ~~ THEN REPLY @9799 GOTO 16
  IF ~~ THEN REPLY @9800 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9803
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @9805
  IF ~Global("Dead_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9807 GOTO 41
  IF ~~ THEN REPLY @9808 GOTO 19
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",0)~ THEN REPLY @9809 DO ~SetGlobal("Know_Koluhm_Inn","GLOBAL",1)~ GOTO 21
  IF ~Global("Koluhm_Story","GLOBAL",1)~ THEN REPLY @9810 GOTO 58
  IF ~Global("Koluhm_Story","GLOBAL",2)
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @9811 GOTO 64
  IF ~Global("Know_Veira","GLOBAL",1)
      GlobalLT("Veira_Quest","GLOBAL",3)~ THEN REPLY @9812 GOTO 22
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @9813 DO ~SetGlobal("Know_Koluhm_Inn","GLOBAL",1)~ GOTO 21
  IF ~Global("Know_Iron_Collar","GLOBAL",0)~ THEN REPLY @9814 GOTO 30
  IF ~Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @9815 GOTO 30
  IF ~Global("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 GOTO 37
  IF ~GlobalGT("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",0)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 DO ~SetGlobal("Know_Phaen_Cormyr","GLOBAL",1)~ GOTO 37
  IF ~GlobalGT("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 GOTO 37
  IF ~~ THEN REPLY @9800 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9817
  IF ~Global("Dead_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9807 GOTO 41
  IF ~~ THEN REPLY @9808 GOTO 19
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",0)~ THEN REPLY @9809 DO ~SetGlobal("Know_Koluhm_Inn","GLOBAL",1)~ GOTO 21
  IF ~Global("Koluhm_Story","GLOBAL",1)~ THEN REPLY @9810 GOTO 58
  IF ~Global("Koluhm_Story","GLOBAL",2)
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @9811 GOTO 64
  IF ~Global("Know_Veira","GLOBAL",1)
      GlobalLT("Veira_Quest","GLOBAL",3)~ THEN REPLY @9812 GOTO 22
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @9813 DO ~SetGlobal("Know_Koluhm_Inn","GLOBAL",1)~ GOTO 21
  IF ~Global("Know_Iron_Collar","GLOBAL",0)~ THEN REPLY @9814 GOTO 30
  IF ~Global("Know_Iron_Collar","GLOBAL",1)~ THEN REPLY @9815 GOTO 30
  IF ~Global("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 GOTO 37
  IF ~GlobalGT("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",0)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 DO ~SetGlobal("Know_Phaen_Cormyr","GLOBAL",1)~ GOTO 37
  IF ~GlobalGT("Know_Phaen","GLOBAL",0)
      Global("Know_Phaen_Cormyr","GLOBAL",1)
      Global("SPRITE_IS_DEADPhaen","GLOBAL",0)~ THEN REPLY @9816 GOTO 37
  IF ~~ THEN REPLY @9800 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9818
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @9819
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @9822
  IF ~~ THEN REPLY @9776 DO ~AddJournalEntry(@9714,QUEST)~ GOTO 22
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @9823
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @9824
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @9825
  IF ~Global("Know_Veira","GLOBAL",0)~ THEN REPLY @11187 GOTO 25
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Know_Veira","GLOBAL",0)~ THEN REPLY @11189 GOTO 26
  IF ~Gender(LastTalkedToBy,FEMALE)
      Global("Know_Veira","GLOBAL",0)~ THEN REPLY @11189 GOTO 28
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @11190
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Know_Veira","GLOBAL",0)~ THEN REPLY @11189 GOTO 26
  IF ~Gender(LastTalkedToBy,FEMALE)
      Global("Know_Veira","GLOBAL",0)~ THEN REPLY @11189 GOTO 28
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @11191
  IF ~!TimeOfDay(NIGHT)~ THEN REPLY @11192 GOTO 27
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @11195
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @11196
  IF ~~ THEN REPLY @11198 GOTO 29
  IF ~!TimeOfDay(NIGHT)~ THEN REPLY @11199 GOTO 27
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @11203
  IF ~!TimeOfDay(NIGHT)~ THEN REPLY @11199 GOTO 27
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @11204
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",0)~ THEN REPLY @11207 GOTO 31
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @11211 GOTO 32
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @11212
  IF ~~ THEN REPLY @11213 DO ~SetGlobal("Know_K_Robber","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @11214
  IF ~~ THEN REPLY @11215 EXTERN ~11DEADS~ 2
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @11216
  IF ~~ THEN REPLY @11215 EXTERN ~11DEADS~ 2
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @11217
  IF ~~ THEN REPLY @11218 GOTO 35
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @11219
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @11220
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @11249
  IF ~~ THEN REPLY @11250 DO ~AddJournalEntry(@9718,QUEST)~ GOTO 38
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @11251
  IF ~~ THEN REPLY @11252 GOTO 39
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @11253
  IF ~~ THEN REPLY @9820 GOTO 18
  IF ~~ THEN REPLY @9821 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 40
  SAY @11254
  IF ~Global("Dead_Goblin_Quest","GLOBAL",1)~ THEN REPLY @9807 GOTO 41
  IF ~~ THEN REPLY @11255 GOTO 18
  IF ~~ THEN REPLY @11256 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,13,INT)
      Global("Why_Townie","GLOBAL",0)~ THEN REPLY @11257 GOTO 52
  IF ~~ THEN REPLY @11258 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @11259
  IF ~~ THEN REPLY @11260 GOTO 42
  IF ~~ THEN REPLY @11263 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @11264
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFLING)~ THEN REPLY @11265 GOTO 44
  IF ~!Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALFORC)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HUMAN)~ THEN REPLY @11266 GOTO 44
  IF ~Race(LastTalkedToBy,HUMAN)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @11271 GOTO 44
  IF ~Race(LastTalkedToBy,HUMAN)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @11281 DO ~AddXP2DA("IW2EX2E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@9748)
                                                                SetGlobal("Dead_Goblin_Quest","GLOBAL",2)
                                                                AddJournalEntry(@9719,QUEST)~ GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @11282
  IF ~~ THEN REPLY @24053 GOTO 51
END

IF ~~ THEN BEGIN 44
  SAY @24054
  IF ~~ THEN REPLY @24055 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @24056
  IF ~~ THEN REPLY @24057 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @24058
  IF ~~ THEN REPLY @24059 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @24060
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFLING)~ THEN REPLY @24061 GOTO 48
  IF ~!Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALFORC)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HUMAN)~ THEN REPLY @24062 GOTO 48
  IF ~Race(LastTalkedToBy,HUMAN)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24063 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @24064
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFLING)~ THEN REPLY @24065 GOTO 49
  IF ~!Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALFORC)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HUMAN)~ THEN REPLY @24066 GOTO 49
  IF ~Race(LastTalkedToBy,HUMAN)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24067 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @24068
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFLING)~ THEN REPLY @24069 DO ~SetGlobal("Dead_Goblin_Quest","GLOBAL",3)~ GOTO 50
  IF ~!Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALFORC)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HUMAN)~ THEN REPLY @24070 DO ~AddXP2DA("IW2EX2A")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@9745)
                                                         SetGlobal("Dead_Goblin_Quest","GLOBAL",4)
                                                         AddJournalEntry(@9720,QUEST)~ GOTO 51
  IF ~Race(LastTalkedToBy,HUMAN)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24071 DO ~AddXP2DA("IW2EX2E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@9747)
                                                                SetGlobal("Dead_Goblin_Quest","GLOBAL",5)
                                                                AddJournalEntry(@9720,QUEST)~ GOTO 51
END

IF ~~ THEN BEGIN 50
  SAY @24072
  IF ~~ THEN REPLY @24073 DO ~AddXP2DA("IW2EX2H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@9737)
                              AddJournalEntry(@9721,QUEST)~ GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @24074
  IF ~~ THEN REPLY @24504 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @24505
  IF ~Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @24506 GOTO 53
  IF ~Global("Know_K_Robber","GLOBAL",1)
      !Global("Know_Phaen_Cormyr","GLOBAL",1)~ THEN REPLY @24506 GOTO 53
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @24509
  IF ~~ THEN REPLY @24510 GOTO 54
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END

IF ~~ THEN BEGIN 54
  SAY @24511
  IF ~~ THEN DO ~SetGlobal("Why_Townie","GLOBAL",1)
                 AddJournalEntry(@9722,QUEST)~ GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @24512
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @24513 GOTO 56
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @24514 DO ~AddJournalEntry(@9727,QUEST)~ GOTO 57
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @24515 EXIT
END

IF ~~ THEN BEGIN 56
  SAY @24516
  IF ~~ THEN REPLY @24517 EXIT
END

IF ~~ THEN BEGIN 57
  SAY @24518
  IF ~~ THEN REPLY @24515 EXIT
END

IF ~~ THEN BEGIN 58
  SAY @24519
  IF ~GlobalGT("Know_Veira","GLOBAL",0)
      Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @24520 GOTO 59
  IF ~~ THEN REPLY @24521 GOTO 22
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END

IF ~~ THEN BEGIN 59
  SAY @24522
  IF ~Global("Potion_Quest","GLOBAL",2)
      !PartyHasItem("z1gengbo")
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @24523 GOTO 60
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @24524 GOTO 60
  IF ~~ THEN REPLY @24521 GOTO 22
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END

IF ~~ THEN BEGIN 60
  SAY @24525
  IF ~~ THEN REPLY @24526 DO ~SetGlobal("Exposed_Bottle","GLOBAL",1)~ GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @24527
  IF ~~ THEN REPLY @24528 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@9749)
                              AddJournalEntry(@9728,QUEST)~ GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @25232
  IF ~~ THEN REPLY @25233 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @25234
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END

IF ~~ THEN BEGIN 64
  SAY @25235
  IF ~Global("Potion_Quest","GLOBAL",2)
      !PartyHasItem("z1gengbo")
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @25236 GOTO 60
  IF ~PartyHasItemIdentified("z1gengbo")
      Global("Exposed_Bottle","GLOBAL",0)~ THEN REPLY @25237 GOTO 60
  IF ~~ THEN REPLY @24507 GOTO 18
  IF ~~ THEN REPLY @24508 EXIT
END
