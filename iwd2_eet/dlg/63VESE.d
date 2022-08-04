BEGIN ~63VESE~

IF WEIGHT #9
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @30330
  IF ~~ THEN REPLY @30331 GOTO 1
  IF ~~ THEN REPLY @30332 DO ~SetGlobal("SH_Know_Vese","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @30334
  IF ~~ THEN REPLY @30332 DO ~SetGlobal("SH_Know_Vese","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @30335
  IF ~~ THEN REPLY @30336 GOTO 3
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @30337 DO ~AddXP2DA("IW2EX14E")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@30329)
                                                                       AddJournalEntry(@30326,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @30338
  IF ~~ THEN REPLY @30339 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @30340
  IF ~~ THEN REPLY @30341 GOTO 5
  IF ~~ THEN REPLY @30342 GOTO 17
END

IF ~~ THEN BEGIN 5
  SAY @30343
  IF ~~ THEN REPLY @30344 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @30349
  IF ~~ THEN REPLY @30350 GOTO 7
  IF ~~ THEN REPLY @30351 GOTO 18
END

IF ~~ THEN BEGIN 7
  SAY @30352
  IF ~~ THEN REPLY @30353 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @30354
  IF ~~ THEN REPLY @30355 GOTO 9
  IF ~~ THEN REPLY @38127 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @30356
  IF ~~ THEN REPLY @30357 GOTO 10
  IF ~~ THEN REPLY @38128 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @30358
  IF ~~ THEN REPLY @30359 DO ~SetGlobal("SH_Slaves_Portal","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @30360 DO ~SetGlobal("SH_Slaves_Portal","GLOBAL",1)~ GOTO 21
END

IF ~~ THEN BEGIN 11
  SAY @30361
  IF ~~ THEN REPLY @30362 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",3)
                              AddJournalEntry(@30317,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @30364 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",2)
                              AddJournalEntry(@30318,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @30366 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",1)
                              AddJournalEntry(@30319,QUEST)~ GOTO 14
  IF ~Global("IW6401_Visited","GLOBAL",1)~ THEN REPLY @39515 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",4)~ GOTO 28
END

IF ~~ THEN BEGIN 12
  SAY @30367
  IF ~~ THEN REPLY @30368 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @30369
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",3)~ GOTO 12
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @30371
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",3)
                              AddJournalEntry(@30317,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @30372
  IF ~~ THEN REPLY @30373 DO ~SetGlobal("SH_Turned_In_Cedrin","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @30374
  IF ~Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)~ THEN REPLY @30375 DO ~AddJournalEntry(@30324,QUEST)~ GOTO 23
  IF ~!Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)~ THEN REPLY @30376 DO ~SetGlobal("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
                                                                            AddJournalEntry(@30325,QUEST)
                                                                            StartCutSceneMode()
                                                                            StartCutScene("63cVNkCZ")~ EXIT
  IF ~!Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)~ THEN REPLY @30377 DO ~SetGlobal("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
                                                                            AddJournalEntry(@30325,QUEST)
                                                                            StartCutSceneMode()
                                                                            StartCutScene("63cVNkCZ")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @30378
  IF ~~ THEN REPLY @30379 GOTO 5
END

IF ~~ THEN BEGIN 18
  SAY @30380
  IF ~~ THEN REPLY @30381 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @30382
  IF ~~ THEN REPLY @30383 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @30384
  IF ~~ THEN REPLY @30385 GOTO 7
END

IF ~~ THEN BEGIN 21
  SAY @30386
  IF ~~ THEN REPLY @30387 GOTO 22
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @30388 GOTO 11
END

IF ~~ THEN BEGIN 22
  SAY @30389
  IF ~~ THEN REPLY @30390 GOTO 11
  IF ~~ THEN REPLY @30333 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @30391
  IF ~!Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      !Global("SH_Vese_Screwed","GLOBAL",1)
      !Global("SH_Confess_Orrick","GLOBAL",1)~ THEN REPLY @30336 GOTO 3
  IF ~~ THEN REPLY @30333 EXIT
END

IF WEIGHT #10
~NumTimesTalkedToGT(0)~ THEN BEGIN 24
  SAY @30392
  IF ~~ THEN REPLY @30331 GOTO 1
  IF ~~ THEN REPLY @30332 GOTO 2
  IF ~~ THEN REPLY @30333 EXIT
END

IF WEIGHT #6
~Global("SH_Tower_Puzzle","GLOBAL",1)~ THEN BEGIN 25
  SAY @30393
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",3)~ GOTO 12
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @30333 EXIT
END

IF WEIGHT #7
~Global("SH_Tower_Puzzle","GLOBAL",2)~ THEN BEGIN 26
  SAY @30394
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",3)~ GOTO 12
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @30333 EXIT
END

IF WEIGHT #8
~Global("SH_Tower_Puzzle","GLOBAL",3)~ THEN BEGIN 27
  SAY @30395
  IF ~Global("IW6401_Visited","GLOBAL",1)~ THEN REPLY @30397 DO ~SetGlobal("SH_Tower_Puzzle","GLOBAL",4)~ GOTO 28
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @30396 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @30398
  IF ~~ THEN REPLY @30399 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@30327)
                              SetGlobal("SH_Betrayed_Orrick","GLOBAL",1)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @30400
  IF ~~ THEN REPLY @38130 GOTO 31
  IF ~~ THEN REPLY @30401 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @30402
  IF ~~ THEN REPLY @30403 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @30404
  IF ~~ THEN REPLY @30405 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @30406
  IF ~!PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @30370 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",3)~ GOTO 33
  IF ~!Class(LastTalkedToBy,MAGE_ALL)
      !PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @39294 GOTO 34
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @30411 GOTO 34
  IF ~PartyHasItem("z6bookog")
      PartyHasItem("z6bookom")
      PartyHasItem("z6genlb")~ THEN REPLY @39293 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",4)~ GOTO 37
  IF ~PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
  IF ~PartyHasItem("z6bookog")
      PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
  IF ~PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
  IF ~!PartyHasItem("z6bookog")
      PartyHasItem("z6bookom")
      !PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
  IF ~!PartyHasItem("z6bookog")
      PartyHasItem("z6bookom")
      PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
  IF ~!PartyHasItem("z6bookog")
      !PartyHasItem("z6bookom")
      PartyHasItem("z6genlb")~ THEN REPLY @39435 GOTO 57
END

IF ~~ THEN BEGIN 33
  SAY @30412
  IF ~~ THEN REPLY @38132 DO ~EraseJournalEntry(@30317)
                              AddJournalEntry(@30320,QUEST)~ EXIT
  IF ~~ THEN REPLY @30413 DO ~EraseJournalEntry(@30317)
                              AddJournalEntry(@30320,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @30414
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",3)~ GOTO 33
  IF ~~ THEN REPLY @30415 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @30416
  IF ~~ THEN REPLY @30370 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",3)~ GOTO 33
  IF ~~ THEN REPLY @30417 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",2)
                              EraseJournalEntry(@30317)
                              AddJournalEntry(@30321,QUEST)~ EXIT
END

IF WEIGHT #5
~Global("SH_Steal_Orrick_Stuff","GLOBAL",3)~ THEN BEGIN 36
  SAY @30418
  IF ~~ THEN REPLY @30396 EXIT
  IF ~PartyHasItem("z6bookog")
      PartyHasItem("z6bookom")
      PartyHasItem("z6genlb")~ THEN REPLY @30419 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",4)~ GOTO 37
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
END

IF ~~ THEN BEGIN 37
  SAY @30420
  IF ~~ THEN REPLY @30421 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@30328)
                              TakePartyItem("z6bookog")
                              TakePartyItem("z6bookom")
                              TakePartyItem("z6genlb")~ GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @30422
  IF ~~ THEN REPLY @30401 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @30423
  IF ~~ THEN REPLY @30424 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @30425
  IF ~~ THEN REPLY @30426 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @30427
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @38165 GOTO 47
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @38166 GOTO 47
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @38167 GOTO 47
  IF ~~ THEN REPLY @30429 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @30430
  IF ~~ THEN REPLY @30368 DO ~SetGlobal("SH_Vese_Screwed","GLOBAL",1)
                              EraseJournalEntry(@30317)
                              EraseJournalEntry(@30318)
                              EraseJournalEntry(@30319)
                              EraseJournalEntry(@30320)
                              EraseJournalEntry(@30321)
                              AddJournalEntry(@30322,QUEST_DONE)~ EXIT
  IF ~~ THEN REPLY @33401 DO ~Enemy()~ EXIT
END

IF WEIGHT #2
~Global("SH_Vese_Screwed","GLOBAL",1)~ THEN BEGIN 43
  SAY @30431
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @30368 EXIT
END

IF WEIGHT #4
~Global("SH_Steal_Orrick_Stuff","GLOBAL",2)~ THEN BEGIN 44
  SAY @33315
  IF ~~ THEN REPLY @2171 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",3)~ GOTO 33
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @33316 EXIT
END

IF WEIGHT #3
~Global("SH_Confess_Orrick","GLOBAL",1)~ THEN BEGIN 45
  SAY @33402
  IF ~~ THEN REPLY @33403 DO ~Enemy()~ EXIT
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @2188 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @34391
  IF ~~ THEN REPLY @30337 GOTO 15
  IF ~~ THEN REPLY @29847 EXIT
END

IF ~~ THEN BEGIN 47
  SAY @38169
  IF ~~ THEN REPLY @38170 DO ~SetGlobal("SH_Accept_Tattoo","GLOBAL",1)~ GOTO 49
  IF ~~ THEN REPLY @38171 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @38172
  IF ~~ THEN REPLY @38173 DO ~SetGlobal("SH_Vese_Screwed","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @38174 GOTO 42
END

IF ~~ THEN BEGIN 49
  SAY @38175
  IF ~~ THEN REPLY @38176 GOTO 50
  IF ~~ THEN REPLY @38177 GOTO 51
  IF ~~ THEN REPLY @38178 GOTO 52
  IF ~~ THEN REPLY @38179 GOTO 53
END

IF ~~ THEN BEGIN 50
  SAY @38180
  IF ~!StateCheck(Player1,STATE_REALLY_DEAD)~ THEN REPLY @38181 DO ~//AddFeat(PLAYER1, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player1)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(1)
      !StateCheck(Player2,STATE_REALLY_DEAD)~ THEN REPLY @38182 DO ~//AddFeat(PLAYER2, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player2)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(2)
      !StateCheck(Player3,STATE_REALLY_DEAD)~ THEN REPLY @38183 DO ~//AddFeat(PLAYER3, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player3)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(3)
      !StateCheck(Player4,STATE_REALLY_DEAD)~ THEN REPLY @38184 DO ~//AddFeat(PLAYER4, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player4)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(4)
      !StateCheck(Player5,STATE_REALLY_DEAD)~ THEN REPLY @38185 DO ~//AddFeat(PLAYER5, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player5)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(5)
      !StateCheck(Player6,STATE_REALLY_DEAD)~ THEN REPLY @38186 DO ~//AddFeat(PLAYER6, IRON_WILL)
                                                                    ApplySpellRES("IWFTIW1",Player6)~ FLAGS 0x200 GOTO 54
  IF ~~ THEN REPLY @38179 GOTO 53
END

IF ~~ THEN BEGIN 51
  SAY @38188
  IF ~!StateCheck(Player1,STATE_REALLY_DEAD)~ THEN REPLY @38181 DO ~//AddFeat(PLAYER1, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player1)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(1)
      !StateCheck(Player2,STATE_REALLY_DEAD)~ THEN REPLY @38182 DO ~//AddFeat(PLAYER2, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player2)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(2)
      !StateCheck(Player3,STATE_REALLY_DEAD)~ THEN REPLY @38183 DO ~//AddFeat(PLAYER3, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player3)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(3)
      !StateCheck(Player4,STATE_REALLY_DEAD)~ THEN REPLY @38184 DO ~//AddFeat(PLAYER4, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player4)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(4)
      !StateCheck(Player5,STATE_REALLY_DEAD)~ THEN REPLY @38185 DO ~//AddFeat(PLAYER5, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player5)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(5)
      !StateCheck(Player6,STATE_REALLY_DEAD)~ THEN REPLY @38186 DO ~//AddFeat(PLAYER6, GREAT_FORTITUDE)
                                                                    ApplySpellRES("IWFTGF1",Player6)~ FLAGS 0x200 GOTO 54
  IF ~~ THEN REPLY @38179 GOTO 53
END

IF ~~ THEN BEGIN 52
  SAY @38196
  IF ~!StateCheck(Player1,STATE_REALLY_DEAD)~ THEN REPLY @38181 DO ~//AddFeat(PLAYER1, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player1)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(1)
      !StateCheck(Player2,STATE_REALLY_DEAD)~ THEN REPLY @38182 DO ~//AddFeat(PLAYER2, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player2)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(2)
      !StateCheck(Player3,STATE_REALLY_DEAD)~ THEN REPLY @38183 DO ~//AddFeat(PLAYER3, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player3)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(3)
      !StateCheck(Player4,STATE_REALLY_DEAD)~ THEN REPLY @38184 DO ~//AddFeat(PLAYER4, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player4)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(4)
      !StateCheck(Player5,STATE_REALLY_DEAD)~ THEN REPLY @38185 DO ~//AddFeat(PLAYER5, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player5)~ FLAGS 0x200 GOTO 54
  IF ~NumInPartyGT(5)
      !StateCheck(Player6,STATE_REALLY_DEAD)~ THEN REPLY @38186 DO ~//AddFeat(PLAYER6, LIGHTNING_REFLEXES)
                                                                    ApplySpellRES("IWFTLR1",Player6)~ FLAGS 0x200 GOTO 54
  IF ~~ THEN REPLY @38179 GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @38204
  IF ~~ THEN REPLY @26029 EXIT
END

IF ~~ THEN BEGIN 54
  SAY @38206
  IF ~~ THEN REPLY @2188 DO ~SetGlobal("SH_Accept_Tattoo","GLOBAL",3)
                             SetGlobal("SH_Vese_Done","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~Global("SH_Accept_Tattoo","GLOBAL",1)~ THEN BEGIN 55
  SAY @38208
  IF ~~ THEN REPLY @38209 GOTO 49
  IF ~~ THEN REPLY @38210 EXIT
END

IF WEIGHT #0
~Global("SH_Vese_Done","GLOBAL",1)~ THEN BEGIN 56
  SAY @38211
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Turned_In_Cedrin","GLOBAL",1)~ THEN REPLY @34392 GOTO 46
  IF ~~ THEN REPLY @29847 EXIT
END

IF ~~ THEN BEGIN 57
  SAY @39441
  IF ~~ THEN REPLY @2188 DO ~SetGlobal("SH_Steal_Orrick_Stuff","GLOBAL",3)~ EXIT
END
