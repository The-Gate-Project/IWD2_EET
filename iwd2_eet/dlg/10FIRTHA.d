BEGIN ~10FIRTHA~

IF ~Global("AR1004_GOBLINS_CLEAR","GLOBAL",0)~ THEN BEGIN 0
  SAY @1353
  IF ~Global("Hedron_Quest","GLOBAL",1)~ THEN REPLY @1354 DO ~SetGlobal("Know_Firtha","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @1355 DO ~SetGlobal("Know_Firtha","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @1356 DO ~SetGlobal("Know_Firtha","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1357
  IF ~~ THEN REPLY @1358 EXIT
  IF ~~ THEN REPLY @1359 EXIT
END

IF ~Global("Know_Firtha","GLOBAL",0)~ THEN BEGIN 2
  SAY @1360
  IF ~Global("Hedron_Quest","GLOBAL",1)~ THEN REPLY @1354 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                              SetGlobal("Hedron_Quest","GLOBAL",2)
                                                              AddJournalEntry(@467,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @1361 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                             AddJournalEntry(@466,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @1362 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                             AddJournalEntry(@466,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1364
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1365 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)
                                                                AddJournalEntry(@754,QUEST)~ FLAGS 0x200 GOTO 59 /*true*/
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1366 GOTO 6
  IF ~~ THEN REPLY @1367 GOTO 6
  IF ~~ THEN REPLY @1361 GOTO 4
  IF ~~ THEN REPLY @1362 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1368
  IF ~Global("Hedron_Quest","GLOBAL",1)~ THEN REPLY @1354 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                              SetGlobal("Hedron_Quest","GLOBAL",2)
                                                              AddJournalEntry(@467,QUEST)~ GOTO 3
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1365 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)
                                                                AddJournalEntry(@754,QUEST)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1366 GOTO 6
  IF ~~ THEN REPLY @1367 GOTO 6
  IF ~~ THEN REPLY @1362 EXIT
END

IF ~GlobalGT("Know_Firtha","GLOBAL",0)
    GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN BEGIN 5
  SAY @1369
  IF ~Global("Hedron_Quest","GLOBAL",1)~ THEN REPLY @1354 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                              SetGlobal("Hedron_Quest","GLOBAL",2)
                                                              AddJournalEntry(@467,QUEST)~ GOTO 3
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1365 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)
                                                                AddJournalEntry(@754,QUEST)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @1361 GOTO 4
  IF ~~ THEN REPLY @1362 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1370
  IF ~~ THEN REPLY @1371 GOTO 7
  IF ~~ THEN REPLY @1372 GOTO 7
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1373 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @1374 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1375
  IF ~~ THEN REPLY @1376 GOTO 8
  IF ~~ THEN REPLY @1377 GOTO 8
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1373 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @1374 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1378
  IF ~~ THEN REPLY @1398 EXIT
  IF ~GlobalLT("Hedron_Quest","GLOBAL",3)~ THEN REPLY @1373 DO ~SetGlobal("Know_Firtha","GLOBAL",1)
                                                                SetGlobal("Hedron_Quest","GLOBAL",3)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @1374 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1399
  IF ~~ THEN REPLY @1400 GOTO 11
  IF ~GlobalGT("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1401 GOTO 12
  IF ~Global("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1402 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @1403
  IF ~~ THEN REPLY @1400 GOTO 11
  IF ~GlobalGT("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1401 GOTO 12
  IF ~Global("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1402 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @1404
  IF ~~ THEN REPLY @1405 GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @1413 EXIT
  IF ~~ THEN REPLY @1414 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1415
  IF ~~ THEN REPLY @1405 GOTO 15
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @1413 EXIT
  IF ~~ THEN REPLY @1414 EXIT
END

IF ~GlobalGT("Know_Firtha","GLOBAL",0)
    GlobalGT("Hedron_Quest","GLOBAL",2)~ THEN BEGIN 13
  SAY @1419
  IF ~GlobalGT("Hedron_Quest","GLOBAL",3)
      Global("Told_Firtha_HK","GLOBAL",0)~ THEN REPLY @1420 DO ~SetGlobal("Told_Firtha_HK","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @1421 GOTO 15
  IF ~PartyHasItem("MISC62")
      Global("Firtha_Cat","GLOBAL",0)
      Global("Anson_Cat","GLOBAL",0)~ THEN REPLY @1422 GOTO 48
  IF ~Global("Firtha_Cat","GLOBAL",0)
      Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @1423 GOTO 56
  IF ~Global("Firtha_Cat","GLOBAL",1)
      Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @1424 DO ~AddXP2DA("IW2EX1E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                                                           AddJournalEntry(@1346,QUEST_DONE)~ GOTO 49
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)
      Global("Firtha_Primed","GLOBAL",0)~ THEN REPLY @1425 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)
      Global("Firtha_Primed","GLOBAL",0)~ THEN REPLY @1425 GOTO 23
  IF ~Global("Firtha_Primed","GLOBAL",1)~ THEN REPLY @1430 GOTO 24
  IF ~Global("Firtha_Primed","GLOBAL",1)~ THEN REPLY @1432 GOTO 33
  IF ~~ THEN REPLY @1362 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1433
  IF ~Contains("MISC07","Nightstand")~ THEN REPLY @1434 GOTO 20
  IF ~!Contains("MISC07","Nightstand")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1434 GOTO 16
  IF ~!Contains("MISC07","Nightstand")
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1434 GOTO 17
  IF ~Contains("MISC07","Nightstand")~ THEN REPLY @1435 GOTO 20
  IF ~!Contains("MISC07","Nightstand")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1435 GOTO 16
  IF ~!Contains("MISC07","Nightstand")
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1435 GOTO 17
  IF ~~ THEN REPLY @1436 EXIT
  IF ~~ THEN REPLY @1437 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1742
  IF ~Contains("MISC07","Nightstand")~ THEN REPLY @1434 GOTO 20
  IF ~!Contains("MISC07","Nightstand")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1434 GOTO 16
  IF ~!Contains("MISC07","Nightstand")
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1434 GOTO 17
  IF ~Contains("MISC07","Nightstand")~ THEN REPLY @1435 GOTO 20
  IF ~!Contains("MISC07","Nightstand")
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1435 GOTO 16
  IF ~!Contains("MISC07","Nightstand")
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @1435 GOTO 17
  IF ~~ THEN REPLY @1745 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @1746
  IF ~~ THEN REPLY @1749 GOTO 20
  IF ~~ THEN REPLY @1752 GOTO 19
  IF ~~ THEN REPLY @1753 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @1754
  IF ~~ THEN REPLY @1755 GOTO 18
  IF ~~ THEN REPLY @1756 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @1757
  IF ~~ THEN REPLY @1758 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @1759
  IF ~~ THEN REPLY @1758 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @1760
  IF ~CheckStatGT(LastTalkedToBy,17,INT)
      CheckStatGT(LastTalkedToBy,17,WIS)
      !Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @1761 GOTO 21
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @1761 GOTO 21
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1762 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1763 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1763 GOTO 23
END

IF ~~ THEN BEGIN 21
  SAY @1764
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1762 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @1763 GOTO 22
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @1763 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @1765
  IF ~~ THEN REPLY @1768 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @1769
  IF ~PartyHasItem("MISC62")
      Global("Firtha_Cat","GLOBAL",0)
      Global("Anson_Cat","GLOBAL",0)~ THEN REPLY @1422 GOTO 48
  IF ~Global("Firtha_Cat","GLOBAL",0)
      Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @1423 GOTO 56
  IF ~Global("Firtha_Cat","GLOBAL",1)
      Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @1424 DO ~AddXP2DA("IW2EX1E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                                                           AddJournalEntry(@1346,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @1430 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @1432 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @1912 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @1915
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 25
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 26
  IF ~~ THEN REPLY @1917 GOTO 27
  IF ~~ THEN REPLY @1918 GOTO 29
  IF ~~ THEN REPLY @6282 GOTO 31
  IF ~~ THEN REPLY @6285 GOTO 33
  IF ~~ THEN REPLY @6288 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @6292
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @6294 GOTO 39
  IF ~~ THEN REPLY @1917 GOTO 27
  IF ~~ THEN REPLY @1918 GOTO 29
  IF ~~ THEN REPLY @6282 GOTO 31
  IF ~~ THEN REPLY @6295 GOTO 33
  IF ~~ THEN REPLY @6297 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @6332
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @6354 GOTO 39
  IF ~~ THEN REPLY @1917 GOTO 27
  IF ~~ THEN REPLY @1918 GOTO 29
  IF ~~ THEN REPLY @6282 GOTO 31
  IF ~~ THEN REPLY @6295 GOTO 33
  IF ~~ THEN REPLY @6297 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @6356
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @6381
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @6388 GOTO 39
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 25
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 26
  IF ~~ THEN REPLY @1918 GOTO 29
  IF ~~ THEN REPLY @6282 GOTO 31
  IF ~~ THEN REPLY @6295 GOTO 33
  IF ~~ THEN REPLY @6297 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @6403
  IF ~~ THEN REPLY @6404 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @6405
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @6406 GOTO 39
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 25
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 26
  IF ~~ THEN REPLY @1917 GOTO 27
  IF ~~ THEN REPLY @6282 GOTO 31
  IF ~~ THEN REPLY @6295 GOTO 33
  IF ~~ THEN REPLY @6297 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @6407
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @6412
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @6413 GOTO 39
  IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 25
  IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN REPLY @1916 GOTO 26
  IF ~~ THEN REPLY @1917 GOTO 27
  IF ~~ THEN REPLY @6295 GOTO 33
  IF ~~ THEN REPLY @6297 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @6414
  IF ~~ THEN REPLY @6415 GOTO 34
  IF ~~ THEN REPLY @6416 GOTO 35
END

IF ~~ THEN BEGIN 34
  SAY @6417
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @6418
  IF ~~ THEN REPLY @6420 GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @6423
  IF ~~ THEN REPLY @6451 DO ~SetGlobal("Firtha_Story","GLOBAL",1)
                             AddJournalEntry(@792,QUEST)~ GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @6452
  IF ~~ THEN REPLY @6457 DO ~AddJournalEntry(@1350,QUEST)~ GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @6460
  IF ~~ THEN REPLY @6461 GOTO 24
  IF ~~ THEN REPLY @6462 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @6463
  IF ~~ THEN REPLY @6467 GOTO 40
  IF ~~ THEN REPLY @6469 GOTO 41
  IF ~~ THEN REPLY @6472 GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY @6473
  IF ~~ THEN REPLY @6474 GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @6475
  IF ~~ THEN REPLY @6476 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @6477
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @6478 GOTO 43
  //IF ~Class(LastTalkedToBy,SORCERER)!Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @6478 GOTO 43
  IF ~Kit(LastTalkedToBy,BARBARIAN)~ THEN REPLY @6479 GOTO 43
  IF ~~ THEN REPLY @6480 GOTO 44
  IF ~~ THEN REPLY @6482 GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @6483
  IF ~~ THEN REPLY @6494 DO ~SetGlobal("Firtha_Bones","GLOBAL",1)~ GOTO 45
END

IF ~~ THEN BEGIN 44
  SAY @6495
  IF ~~ THEN REPLY @6496 DO ~SetGlobal("Firtha_Bones","GLOBAL",1)~ GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @6497
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @6498
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @6501
  IF ~~ THEN REPLY @6503 GOTO 54
  IF ~~ THEN REPLY @7146 GOTO 24
  IF ~~ THEN REPLY @7148 GOTO 33
END

IF ~~ THEN BEGIN 48
  SAY @7163
  IF ~Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @7164 DO ~AddXP2DA("IW2EX1E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                                                           AddJournalEntry(@1346,QUEST_DONE)
                                                           SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @7165 DO ~SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 50
  IF ~~ THEN REPLY @7166 DO ~SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 51
END

IF ~~ THEN BEGIN 49
  SAY @7167
  IF ~~ THEN REPLY @7168 DO ~SetGlobal("Anson_Cat","GLOBAL",2)~ GOTO 52
  IF ~~ THEN REPLY @7169 DO ~SetGlobal("Anson_Cat","GLOBAL",2)~ GOTO 52
END

IF ~~ THEN BEGIN 50
  SAY @7170
  IF ~Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @7164 DO ~AddXP2DA("IW2EX1E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                                                           AddJournalEntry(@1346,QUEST_DONE)
                                                           SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @7231 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @7232 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @7233 EXIT
END

IF ~~ THEN BEGIN 51
  SAY @29190
  IF ~Global("Anson_Cat","GLOBAL",1)~ THEN REPLY @7164 DO ~AddXP2DA("IW2EX1E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                                                           AddJournalEntry(@1346,QUEST_DONE)
                                                           SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @7231 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @7232 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @7233 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @29191
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @29260
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @29261 GOTO 39
  IF ~GlobalGT("Firtha_Bones","GLOBAL",0)~ THEN REPLY @29524 GOTO 55
  IF ~GlobalGT("Firtha_Bones","GLOBAL",0)~ THEN REPLY @29525 GOTO 55
END

IF ~~ THEN BEGIN 54
  SAY @29561
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 55
  SAY @29562
  IF ~Global("Firtha_Bones","GLOBAL",0)~ THEN REPLY @29261 GOTO 39
  IF ~~ THEN REPLY @29563 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @29564 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @7233 EXIT
END

IF ~~ THEN BEGIN 56
  SAY @29565
  IF ~~ THEN REPLY @7164 DO ~AddXP2DA("IW2EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@1352)
                             AddJournalEntry(@1346,QUEST_DONE)
                             SetGlobal("Firtha_Cat","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @7231 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @7232 DO ~SetGlobal("Firtha_Primed","GLOBAL",1)~ GOTO 33
  IF ~~ THEN REPLY @7233 EXIT
END

IF ~~ THEN BEGIN 57
  SAY @30078
  IF ~~ THEN REPLY @30079 GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @30080
  IF ~~ THEN REPLY @30724 GOTO 24
  IF ~~ THEN REPLY @7148 GOTO 33
  IF ~~ THEN REPLY @30725 EXIT
END

IF ~~ THEN BEGIN 59
  SAY @30726
  IF ~~ THEN REPLY @1400 GOTO 11
  IF ~GlobalGT("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1401 GOTO 12
  IF ~Global("Hedron_Quest","GLOBAL",0)~ THEN REPLY @1402 GOTO 12
END
