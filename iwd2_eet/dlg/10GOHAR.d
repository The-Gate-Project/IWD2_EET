BEGIN ~10GOHAR~

IF WEIGHT #4
~NumTimesTalkedTo(0)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 0
  SAY @746
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
  IF ~Global("Gohar_Scolded","GLOBAL",0)
      GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1783 DO ~SetGlobal("Gohar_Scolded","GLOBAL",1)~ GOTO 1
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1785 GOTO 2
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1787
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1785 GOTO 2
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1788 EXIT
  IF ~~ THEN REPLY @1789 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1790
  IF ~Global("Gohar_Scolded","GLOBAL",0)~ THEN REPLY @1791 DO ~SetGlobal("Gohar_Scolded","GLOBAL",1)~ GOTO 1
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1792 GOTO 3
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1793 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1794
  IF ~~ THEN REPLY @1795 GOTO 11
  IF ~~ THEN REPLY @1796 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1797 EXIT
END

IF WEIGHT #5
~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @1798
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1785 GOTO 5
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1799
  IF ~~ THEN REPLY @1792 GOTO 3
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1800 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1793 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 6
  SAY @1801
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
  IF ~Global("Gohar_Scolded","GLOBAL",0)
      GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1783 DO ~SetGlobal("Gohar_Scolded","GLOBAL",1)~ GOTO 1
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1785 GOTO 2
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
END

IF WEIGHT #7
~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @1802
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1785 GOTO 5
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1782 EXIT
END

IF WEIGHT #3
~Global("Gohar_Scolded","GLOBAL",1)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8
  SAY @1803
  IF ~GlobalGT("Dock_Goblin_Quest","GLOBAL",0)
      Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1785 GOTO 2
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1782 EXIT
END

IF WEIGHT #2
~Global("Targos_Phase","GLOBAL",2)~ THEN BEGIN 9
  SAY @1804
  IF ~~ THEN REPLY @1789 EXIT
END

IF WEIGHT #1
~Global("Dock_Goblin_Quest","GLOBAL",1)
 !Global("Gohar","GLOBAL",3)~ THEN BEGIN 10 // from:
  SAY @1805
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1806 DO ~SetGlobal("Gohar","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @1807 DO ~SetGlobal("Gohar","GLOBAL",3)~ GOTO 5
  IF ~~ THEN REPLY @1808 DO ~SetGlobal("Gohar","GLOBAL",3)
                             StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1809 DO ~SetGlobal("Gohar","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1810
  IF ~~ THEN REPLY @1811 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1812 EXIT
  IF ~~ THEN REPLY @1813 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1814
  IF ~~ THEN REPLY @1815 GOTO 13
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~~ THEN REPLY @1816 EXIT
  IF ~~ THEN REPLY @1817 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1818
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)
      Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)~ THEN REPLY @1781 GOTO 14
  IF ~~ THEN REPLY @1816 EXIT
  IF ~~ THEN REPLY @1817 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1819
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1820 GOTO 12
  IF ~~ THEN REPLY @1821 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1819
  IF ~Global("Iron_Collar_Quest","GLOBAL",1)~ THEN REPLY @1820 GOTO 12
  IF ~~ THEN REPLY @1821 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @1822
  IF ~~ THEN REPLY @1823 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @1824
  IF ~~ THEN REPLY @1825 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @1826
  IF ~~ THEN REPLY @1827 DO ~GiveItemCreate("z1gendon",LastTalkedToBy,0,0,0)
                             SetGlobal("Got_Prow","GLOBAL",1)
                             AddJournalEntry(@745,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @1828 DO ~GiveItemCreate("z1gendon",LastTalkedToBy,0,0,0)
                             SetGlobal("Got_Prow","GLOBAL",1)
                             AddJournalEntry(@745,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @1829
  IF ~~ THEN REPLY @1830 EXIT
END

IF WEIGHT #0
~!Global("SPRITE_IS_DEADBlack_Geoffrey","GLOBAL",0)
 Global("Gohar_Paid","GLOBAL",0)~ THEN BEGIN 20
  SAY @1831
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1832 GOTO 12
  IF ~~ THEN REPLY @1833 GOTO 22
  IF ~~ THEN REPLY @1834 GOTO 25
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1835 GOTO 25
END

IF ~~ THEN BEGIN 21
  SAY @1836
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1779 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1780 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1832 GOTO 12
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1833 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1834 GOTO 25
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1835 GOTO 25
END

IF ~~ THEN BEGIN 22
  SAY @1837
  IF ~PartyGoldGT(29)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @1838 DO ~TakePartyGold(30)
                                                        SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 23
  IF ~PartyGoldGT(29)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @1838 DO ~TakePartyGold(30)
                                                          SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 24
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1834 GOTO 25
  IF ~~ THEN REPLY @1835 GOTO 25
  IF ~PartyGoldLT(30)~ THEN REPLY @1839 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @1840
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1785 GOTO 2
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1782 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @1841
  IF ~Global("Gohar_Scolded","GLOBAL",0)~ THEN REPLY @1783 DO ~SetGlobal("Gohar_Scolded","GLOBAL",1)~ GOTO 1
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1784 GOTO 16
  IF ~~ THEN REPLY @1785 GOTO 2
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1782 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @1842
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @1843 DO ~SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 26
  IF ~CheckStatGT(LastTalkedToBy,12,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1844 DO ~SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 26
  IF ~PartyGoldGT(29)
      Gender (LastTalkedToBy,MALE)~ THEN REPLY @1845 DO ~TakePartyGold(30)
                                                         SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 23
  IF ~PartyGoldGT(29)
      Gender (LastTalkedToBy,FEMALE)~ THEN REPLY @1845 DO ~TakePartyGold(30)
                                                           SetGlobal("Gohar_Paid","GLOBAL",1)~ GOTO 24
  IF ~PartyGoldGT(29)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1846 EXIT
  IF ~PartyGoldLT(30)~ THEN REPLY @1839 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @1847
  IF ~Global("Gohar_Direction","GLOBAL",1)
      Global("Got_Prow","GLOBAL",0)~ THEN REPLY @1849 GOTO 16
  IF ~~ THEN REPLY @1850 GOTO 2
  IF ~~ THEN REPLY @1786 DO ~StartStore("10Gohar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1851 EXIT
  IF ~~ THEN REPLY @1809 EXIT
END
