BEGIN ~11LUMBAR~

IF WEIGHT #1
~Global("Know_Lumbar","GLOBAL",0)~ THEN BEGIN 0
  SAY @1852
  IF ~~ THEN REPLY @1860 DO ~SetGlobal("Know_Lumbar","GLOBAL",1)
                             AddJournalEntry(@1438,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @1861 DO ~SetGlobal("Know_Lumbar","GLOBAL",1)
                             AddJournalEntry(@1438,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1874
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1875 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",2)~ THEN REPLY @1876 GOTO 6
  IF ~!Global("Lumber_Quest","GLOBAL",2)~ THEN REPLY @1877 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1878
  IF ~~ THEN REPLY @1879 EXIT
  IF ~~ THEN REPLY @1880 EXIT
  IF ~~ THEN REPLY @1877 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @1881
  IF ~~ THEN REPLY @1882 DO ~SetGlobal("Know_Crane_Broke","GLOBAL",1)~ GOTO 4
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1883 EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1884 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1885
  IF ~~ THEN REPLY @1886 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1883 EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1884 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1887
  IF ~PartyHasItem("z1gencrw")~ THEN REPLY @1888 DO ~AddJournalEntry(@1439,QUEST)~ GOTO 8
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1883 EXIT
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1884 EXIT
  IF ~~ THEN REPLY @1889 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1890
  IF ~~ THEN REPLY @1882 DO ~SetGlobal("Know_Crane_Broke","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @1886 DO ~SetGlobal("Know_Crane_Broke","GLOBAL",1)~ GOTO 5
END

IF WEIGHT #2
~Global("Know_Lumbar","GLOBAL",1)
 Global("Crane_Wheel","GLOBAL",0)~ THEN BEGIN 7
  SAY @1891
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1875 GOTO 2
  IF ~Global("Lumber_Quest","GLOBAL",2)~ THEN REPLY @1876 GOTO 6
  IF ~Global("Lumber_Quest","GLOBAL",3)
      Global("Lumber_Quest_Aborted","GLOBAL",0)~ THEN REPLY @1892 GOTO 10
  IF ~Global("Lumber_Quest","GLOBAL",3)
      GlobalGT("Lumber_Quest_Aborted","GLOBAL",0)~ THEN REPLY @1893 DO ~SetGlobal("Lumbar_Huff","GLOBAL",1)~ GOTO 11
  IF ~PartyHasItem("z1gencrw")~ THEN REPLY @1888 DO ~AddJournalEntry(@1439,QUEST)~ GOTO 8
  IF ~GlobalLT("Lumber_Quest","GLOBAL",3)~ THEN REPLY @1894 GOTO 3
  IF ~~ THEN REPLY @1895 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1896
  IF ~~ THEN REPLY @1897 EXIT
END

IF WEIGHT #3
~Global("Know_Lumbar","GLOBAL",1)
 GlobalGT("Crane_Wheel","GLOBAL",0)~ THEN BEGIN 9
  SAY @1898
  IF ~~ THEN REPLY @1899 EXIT
  IF ~~ THEN REPLY @28297 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1903
  IF ~~ THEN REPLY @1904 EXIT
  IF ~~ THEN REPLY @1906 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1907
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1908 EXIT
  IF ~~ THEN REPLY @1909 EXIT
END

IF WEIGHT #0
~Global("Lumbar_Huff","GLOBAL",1)~ THEN BEGIN 12
  SAY @1911
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1908 EXIT
  IF ~~ THEN REPLY @1909 EXIT
END
