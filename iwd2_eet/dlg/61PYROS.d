BEGIN ~61PYROS~

IF ~~ THEN BEGIN 0
  SAY @36078
  IF ~~ THEN REPLY @36079 DO ~AddJournalEntry(@21763,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @36080 DO ~AddJournalEntry(@36025,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @36081 DO ~AddJournalEntry(@36037,QUEST)~ GOTO 4
  IF ~Global("61CurrentDay","GLOBAL",1)~ THEN REPLY @36082 DO ~AddJournalEntry(@36077,QUEST)~ GOTO 16
  IF ~PartyHasItem("POTN20")
      !HasItem("POTN20",Myself)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @36083 GOTO 13
  IF ~~ THEN REPLY @36084 GOTO 9
END

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @36085
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @36088
  IF ~~ THEN REPLY @36089 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @36091
  IF ~!Global("61CurrentDay","GLOBAL",0)~ THEN REPLY @36092 DO ~SetGlobal("PyrosMentionedIzbelah","MYAREA",1)
                                                                AddJournalEntry(@36076,QUEST)~ GOTO 7
  IF ~Global("61CurrentDay","GLOBAL",0)~ THEN REPLY @36092 GOTO 11
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @36095
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @36096
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @36097
  IF ~!Global("61CurrentDay","GLOBAL",0)~ THEN REPLY @36092 DO ~SetGlobal("PyrosMentionedIzbelah","MYAREA",1)
                                                                AddJournalEntry(@36076,QUEST)~ GOTO 7
  IF ~Global("61CurrentDay","GLOBAL",0)~ THEN REPLY @36092 GOTO 11
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @36098
  IF ~~ THEN DO ~SetGlobal("PlayerKnowsLothar","MYAREA",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @36099
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @36100
  IF ~Global("Pyros_Play","GLOBAL",0)
      Global("PyrosCalmLothar","MYAREA",0)~ THEN REPLY @41367 DO ~SetGlobal("Pyros_Play","GLOBAL",1)
                                                                  AddJournalEntry(@41371,QUEST)~ GOTO 30
  IF ~OR(2)
        !Global("Pyros_Play","GLOBAL",0)
        !Global("PyrosCalmLothar","MYAREA",0)~ THEN REPLY @41368 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @36101
  IF ~~ THEN REPLY @36089 GOTO 0
  IF ~~ THEN REPLY @36564 GOTO 9
END

IF ~~ THEN BEGIN 11
  SAY @36743
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @36090 GOTO 9
END

IF WEIGHT #1
~Global("61CurrentDay","GLOBAL",3)~ THEN BEGIN 12
  SAY @38305
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @38306
  IF ~OR(3)
        CheckStatLT(LastTalkedToBy,9,CHR)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,MONK)~ THEN REPLY @38307 DO ~TakePartyItemNum("POTN20",1)
                                                          //GiveItemCreate("MISC07",LastTalkedToBy,100,0,0)
                                                          GiveGoldForce(100)~ GOTO 14
  IF ~!CheckStatLT(LastTalkedToBy,9,CHR)
      !CheckStatGT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38308 DO ~TakePartyItemNum("POTN20",1)
                                                         //GiveItemCreate("MISC07",LastTalkedToBy,500,0,0)
                                                         GiveGoldForce(500)~ GOTO 14
  IF ~CheckStatGT(LastTalkedToBy,16,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @38313 DO ~TakePartyItemNum("POTN20",1)
                                                         //GiveItemCreate("MISC07",LastTalkedToBy,1000,0,0)
                                                         GiveGoldForce(1000)~ GOTO 14
  IF ~RandomNum(10,1)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("AROW08",LastTalkedToBy,20,0,0)~ GOTO 15
  IF ~RandomNum(10,2)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("BDBOLT01",LastTalkedToBy,20,0,0)~ GOTO 15
  IF ~RandomNum(10,3)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("BULL07",LastTalkedToBy,20,0,0)~ GOTO 15
  IF ~RandomNum(10,4)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("DART09",LastTalkedToBy,20,0,0)~ GOTO 15
  IF ~RandomNum(10,5)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("z0bull86",LastTalkedToBy,0,0,0)~ GOTO 15
  IF ~RandomNum(10,6)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("z0dagg81",LastTalkedToBy,0,0,0)~ GOTO 15
  IF ~RandomNum(10,7)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("z0staf88",LastTalkedToBy,0,0,0)~ GOTO 15
  IF ~RandomNum(10,8)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("z0leat88",LastTalkedToBy,0,0,0)~ GOTO 15
  IF ~RandomNum(10,9)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                             GiveItemCreate("POTN05",LastTalkedToBy,5,0,0)~ GOTO 15
  IF ~RandomNum(10,10)~ THEN REPLY @38314 DO ~TakePartyItemNum("POTN20",1)
                                              GiveItemCreate("RING02",LastTalkedToBy,0,0,0)~ GOTO 15
  IF ~~ THEN REPLY @38315 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @38316
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @38326 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @40277
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @40278 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @40279
  IF ~Global("PlayerHeardBeholderStory","MYAREA",1)~ THEN REPLY @41189 GOTO 17
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @41190 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @41191
  IF ~~ THEN REPLY @36093 GOTO 0
  IF ~~ THEN REPLY @41192 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @41193
  IF ~~ THEN EXTERN ~61VENOMI~ 9
END

IF ~~ THEN BEGIN 19
  SAY @41194
  IF ~~ THEN EXTERN ~61VENOMI~ 12
END

IF ~~ THEN BEGIN 20
  SAY @41195
  IF ~~ THEN EXTERN ~61VENOMI~ 13
END

IF WEIGHT #0
~Global("PyrosCalmLothar","MYAREA",1)~ THEN BEGIN 21
  SAY @41196
  IF ~~ THEN DO ~SetGlobal("PyrosCalmLothar","MYAREA",2)
                 SetGlobal("LotharOnPatrol","MYAREA",1)~ EXTERN ~61LOTHAR~ 11
END

IF ~~ THEN BEGIN 22
  SAY @41197
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 23
  SAY @41198
  IF ~~ THEN EXTERN ~61VENOMI~ 18
END

IF ~~ THEN BEGIN 24
  SAY @41199
  IF ~~ THEN EXTERN ~61VENOMI~ 19
END

IF ~~ THEN BEGIN 25
  SAY @41200
  IF ~~ THEN EXTERN ~61VENOMI~ 20
END

IF ~~ THEN BEGIN 26
  SAY @41201
  IF ~~ THEN EXTERN ~61VENOMI~ 21
END

IF ~~ THEN BEGIN 27
  SAY @41202
  IF ~~ THEN EXTERN ~61VENOMI~ 22
END

IF ~~ THEN BEGIN 28
  SAY @41203
  IF ~~ THEN EXTERN ~61VENOMI~ 23
END

IF ~~ THEN BEGIN 29
  SAY @41369
  IF ~~ THEN EXTERN ~61LOTHAR~ 16
END

IF ~~ THEN BEGIN 30
  SAY @41370
  IF ~~ THEN REPLY @41372 EXIT
END
