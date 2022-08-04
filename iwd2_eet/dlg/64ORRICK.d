BEGIN ~64ORRICK~

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @33767
  IF ~~ THEN REPLY @33768 GOTO 1
  IF ~~ THEN REPLY @33769 GOTO 2
  IF ~~ THEN REPLY @33770 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @33771
  IF ~~ THEN REPLY @33769 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @33772
  IF ~~ THEN REPLY @33773 GOTO 3
  IF ~~ THEN REPLY @33774 GOTO 7
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33775 GOTO 8
  IF ~Global("SH_Slaves_Portal","GLOBAL",1)~ THEN REPLY @33776 DO ~SetGlobal("SH_Slaves_Portal","GLOBAL",4)~ GOTO 53
  IF ~Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @33777 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",2)~ GOTO 57
  IF ~~ THEN REPLY @33778 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @33779
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @33780 GOTO 4
  IF ~!Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @33781 GOTO 5
  IF ~~ THEN REPLY @33782 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @33783
  IF ~~ THEN REPLY @33782 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @33784
  IF ~~ THEN REPLY @33782 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @33785
  IF ~~ THEN REPLY @33774 GOTO 7
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33775 GOTO 8
  IF ~Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @9224 GOTO 52
END

IF ~~ THEN BEGIN 7
  SAY @33786
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33775 DO ~AddJournalEntry(@33756,QUEST)~ GOTO 8
  IF ~Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @9224 GOTO 52
END

IF ~~ THEN BEGIN 8
  SAY @33787
  IF ~~ THEN REPLY @33788 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @33789
  IF ~~ THEN REPLY @33790 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @33791
  IF ~~ THEN REPLY @33792 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @33793
  IF ~Global("SH_Tower_Puzzle","GLOBAL",0)~ THEN REPLY @33794 GOTO 12
  IF ~GlobalGT("SH_Tower_Puzzle","GLOBAL",0)
      GlobalLT("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33794 DO ~SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 29
  IF ~Global("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Steal_Orrick_Stuff","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33794 DO ~SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 31
  IF ~Global("SH_Steal_Orrick_Stuff","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33794 DO ~SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 36
  IF ~GlobalGT("SH_Tower_Puzzle","GLOBAL",0)
      GlobalLT("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33795 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@33763)
                                                                     SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 40
  IF ~Global("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Steal_Orrick_Stuff","GLOBAL",4)~ THEN REPLY @33796 DO ~AddXP2DA("IW2EX14E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@33764)
                                                                         SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 43
  IF ~Global("SH_Steal_Orrick_Stuff","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33796 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@33764)
                                                                     SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 47
END

IF ~~ THEN BEGIN 12
  SAY @33797
  IF ~~ THEN REPLY @33798 GOTO 13
  IF ~~ THEN REPLY @33799 GOTO 22
END

IF ~~ THEN BEGIN 13
  SAY @33800
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @33801 DO ~AddXP2DA("IW2EX14E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@33762)
                                                            AddJournalEntry(@33757,QUEST)~ GOTO 14
  IF ~!Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @33804 DO ~AddXP2DA("IW2EX14E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@33762)
                                                             AddJournalEntry(@33757,QUEST)~ GOTO 15
  IF ~Global("SH_Illmater_Ritual","GLOBAL",1)~ THEN REPLY @33805 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@33762)
                                                                     SetGlobal("SH_Know_Pool","GLOBAL",1)
                                                                     AddJournalEntry(@33758,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 14
  SAY @33806
  IF ~~ THEN REPLY @33808 GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY @33812
  IF ~~ THEN REPLY @33808 GOTO 23
END

IF ~~ THEN BEGIN 16
  SAY @33814
  IF ~~ THEN REPLY @33815 GOTO 17
  IF ~Global("SH_Illmater_Ritual","GLOBAL",1)~ THEN REPLY @33805 DO ~SetGlobal("SH_Know_Pool","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY @33816
  IF ~~ THEN REPLY @33817 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @33818
  IF ~~ THEN REPLY @33819 GOTO 19
  IF ~Global("SH_Illmater_Ritual","GLOBAL",1)~ THEN REPLY @33805 DO ~SetGlobal("SH_Know_Pool","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @33820
  IF ~~ THEN REPLY @33821 DO ~SetGlobal("SH_Orrick_Aid","GLOBAL",1)~ FLAGS 0x200 GOTO 52 /*true*/
END

IF ~~ THEN BEGIN 20
  SAY @33822
  IF ~~ THEN REPLY @33823 GOTO 21
  IF ~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      !Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38455 DO ~SetGlobal("SH_Know_Pool","GLOBAL",2)~ GOTO 21
  IF ~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38456 DO ~SetGlobal("SH_Know_Pool","GLOBAL",3)
                                                                 SetGlobal("SH_Orrick_Aid","GLOBAL",1)~ FLAGS 0x200 GOTO 52 /*true*/
END

IF ~~ THEN BEGIN 21
  SAY @33824
  IF ~~ THEN REPLY @33821 DO ~SetGlobal("SH_Orrick_Aid","GLOBAL",1)~ FLAGS 0x200 GOTO 52 /*true*/
END

IF ~~ THEN BEGIN 22
  SAY @33825
  IF ~~ THEN REPLY @33826 GOTO 13
END

IF ~~ THEN BEGIN 23
  SAY @33827
  IF ~~ THEN REPLY @33828 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @33829
  IF ~~ THEN REPLY @33830 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @33831
  IF ~~ THEN REPLY @33832 GOTO 26
  IF ~~ THEN REPLY @33833 GOTO 16
END

IF ~~ THEN BEGIN 26
  SAY @33834
  IF ~~ THEN REPLY @33835 DO ~AddJournalEntry(@33759,QUEST)~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @33836
  IF ~~ THEN REPLY @33837 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @33838
  IF ~~ THEN REPLY @33833 DO ~SetGlobal("SH_Chaos_Growth","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 29
  SAY @33839
  IF ~~ THEN REPLY @33840 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @33841
  IF ~~ THEN REPLY @33798 GOTO 13
  IF ~~ THEN REPLY @33799 GOTO 22
END

IF ~~ THEN BEGIN 31
  SAY @33842
  IF ~~ THEN REPLY @33843 GOTO 32
  IF ~~ THEN REPLY @33845 GOTO 35
END

IF ~~ THEN BEGIN 32
  SAY @33846
  IF ~~ THEN REPLY @33847 GOTO 33
  IF ~~ THEN REPLY @33845 GOTO 35
END

IF ~~ THEN BEGIN 33
  SAY @33848
  IF ~~ THEN REPLY @33849 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @33850
  IF ~~ THEN REPLY @33798 GOTO 13
END

IF ~~ THEN BEGIN 35
  SAY @33851
  IF ~~ THEN REPLY @33852 GOTO 12
END

IF ~~ THEN BEGIN 36
  SAY @33853
  IF ~~ THEN REPLY @33843 GOTO 37
  IF ~~ THEN REPLY @33845 GOTO 38
END

IF ~~ THEN BEGIN 37
  SAY @33846
  IF ~~ THEN REPLY @33847 GOTO 33
  IF ~~ THEN REPLY @33845 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @33854
  IF ~~ THEN REPLY @33855 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @33856
  IF ~~ THEN REPLY @33852 GOTO 12
END

IF ~~ THEN BEGIN 40
  SAY @33857
  IF ~~ THEN REPLY @33858 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @33859
  IF ~~ THEN REPLY @33860 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @33861
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33862 GOTO 12
  IF ~Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @33857
  IF ~~ THEN REPLY @33863 GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @33859
  IF ~~ THEN REPLY @33860 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @33864
  IF ~~ THEN REPLY @33865 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @33866
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33862 GOTO 12
  IF ~Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 47
  SAY @33857
  IF ~~ THEN REPLY @33867 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @33859
  IF ~~ THEN REPLY @33860 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @33864
  IF ~~ THEN REPLY @33865 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @33866
  IF ~~ THEN REPLY @33855 GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @33868
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33862 GOTO 12
  IF ~Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @33869
  IF ~~ THEN REPLY @33773 GOTO 3
  IF ~~ THEN REPLY @33774 GOTO 7
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33775 GOTO 8
  IF ~Global("SH_Slaves_Portal","GLOBAL",1)~ THEN REPLY @33776DO ~SetGlobal("SH_Slaves_Portal","GLOBAL",4)~ GOTO 53
  IF ~Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @33777 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",2)~ GOTO 57
  IF ~Global("SH_Puddy_Home","GLOBAL",3)~ THEN REPLY @38459 EXIT
  IF ~Global("SH_Know_Pool","GLOBAL",2)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38458 GOTO 66
  IF ~Global("SH_Know_Pool","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      !Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38457 GOTO 21
  IF ~GlobalGT("SH_Tower_Puzzle","GLOBAL",0)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @41106 GOTO 78
  IF ~~ THEN REPLY @33870 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @33871
  IF ~~ THEN REPLY @33872 GOTO 54
  IF ~~ THEN REPLY @33873 GOTO 55
END

IF ~~ THEN BEGIN 54
  SAY @33874
  IF ~~ THEN REPLY @33873 GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @33875
  IF ~~ THEN REPLY @33876 GOTO 52
  IF ~~ THEN REPLY @33877 GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @33878
  IF ~~ THEN REPLY @33876 GOTO 52
  IF ~Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @33777 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",2)~ GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @33879
  IF ~~ THEN REPLY @33880 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33765)
                              AddJournalEntry(@33761,QUEST)~ GOTO 52
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)~ THEN BEGIN 58
  SAY @33884
  IF ~~ THEN REPLY @33773 GOTO 3
  IF ~~ THEN REPLY @33774 GOTO 7
  IF ~!Global("SH_Orrick_Aid","GLOBAL",1)~ THEN REPLY @33775 GOTO 8
  IF ~Global("SH_Slaves_Portal","GLOBAL",1)~ THEN REPLY @33776 DO ~SetGlobal("SH_Slaves_Portal","GLOBAL",4)~ GOTO 53
  IF ~Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @33777 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",2)~ GOTO 57
  IF ~Global("SH_Puddy_Home","GLOBAL",3)~ THEN REPLY @38459 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",4)~ GOTO 77
  IF ~Global("SH_Know_Pool","GLOBAL",1)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      !Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38457 DO ~SetGlobal("SH_Know_Pool","GLOBAL",2)~ GOTO 21
  IF ~Global("SH_Know_Pool","GLOBAL",2)
      GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)
      Global("SH_Purify_Pool","GLOBAL",3)~ THEN REPLY @38458 DO ~SetGlobal("SH_Know_Pool","GLOBAL",3)~ GOTO 66
  IF ~Global("SH_Chaos_Growth","GLOBAL",1)~ THEN REPLY @33885 DO ~SetGlobal("SH_Chaos_Growth","GLOBAL",2)~ GOTO 59
  IF ~GlobalGT("SH_Tower_Puzzle","GLOBAL",0)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @41106 GOTO 78
  IF ~~ THEN REPLY @33778 EXIT
END

IF ~~ THEN BEGIN 59
  SAY @33886
  IF ~~ THEN REPLY @33889 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@33766)
                              AddJournalEntry(@33760,QUEST)~ GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @33890
  IF ~~ THEN REPLY @33790 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @33897
  IF ~~ THEN REPLY @33898 GOTO 62
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @37767 GOTO 76
END

IF ~~ THEN BEGIN 62
  SAY @33899
  IF ~~ THEN REPLY @33900 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @33917
  IF ~~ THEN REPLY @33918 GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @33919
  IF ~~ THEN REPLY @33920 GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @33921
  IF ~~ THEN REPLY @33922 GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @33923
  IF ~~ THEN REPLY @33924 EXIT
END

IF ~~ THEN BEGIN 67
  SAY @33925
  IF ~~ THEN EXTERN ~61ISAIR~ 26
END

IF ~~ THEN BEGIN 68
  SAY @33927
  IF ~~ THEN EXTERN ~60MADAE~ 22
END

IF ~~ THEN BEGIN 69
  SAY @33928
  IF ~~ THEN EXTERN ~61ISAIR~ 27
END

IF ~~ THEN BEGIN 70
  SAY @33929
  IF ~~ THEN REPLY @33930 GOTO 71
  IF ~~ THEN REPLY @33931 DO ~AddXP2DA("IW2EX15VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@32684)
                              StartCutSceneMode()
                              StartCutScene("63cFB06")~ EXIT
END

IF ~~ THEN BEGIN 71
  SAY @33932
  IF ~~ THEN REPLY @33933 DO ~AddXP2DA("IW2EX15VH")
                              DisplayStringNoNameDlg(LastTalkedToBy,@32684)
                              StartCutSceneMode()
                              StartCutScene("63cFB06")~ EXIT
END

IF WEIGHT #0 ~False()~ THEN BEGIN 72
  SAY @33934
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 73
  SAY @33935
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 74
  SAY @33936
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 75
  SAY @33937
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76
  SAY @37768
  IF ~~ THEN REPLY @33898 GOTO 62
END

IF ~~ THEN BEGIN 77
  SAY @38460
  IF ~~ THEN REPLY @38461 GOTO 52
END

IF ~~ THEN BEGIN 78
  SAY @41107
  IF ~GlobalGT("SH_Tower_Puzzle","GLOBAL",0)
      GlobalLT("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33795 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@33763)
                                                                     SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 40
  IF ~Global("SH_Tower_Puzzle","GLOBAL",4)
      !Global("SH_Steal_Orrick_Stuff","GLOBAL",4)~ THEN REPLY @33796 DO ~AddXP2DA("IW2EX14E")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@33764)
                                                                         SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 43
  IF ~Global("SH_Steal_Orrick_Stuff","GLOBAL",4)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @33796 DO ~AddXP2DA("IW2EX14E")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@33764)
                                                                     SetGlobal("SH_Confess_Orrick","GLOBAL",1)~ GOTO 47
END
