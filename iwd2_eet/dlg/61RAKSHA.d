BEGIN ~61RAKSHA~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35317
  IF ~~ THEN REPLY @35318 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",1)
                              AddJournalEntry(@35314,QUEST)~ GOTO 2
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @35319
  IF ~~ THEN REPLY @35320 GOTO 2
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~Global("61RakshasaSaidGlacier","GLOBAL",2)~ THEN REPLY @35322 GOTO 10
  IF ~Global("61PlayerMetRakshasa","GLOBAL",2)~ THEN REPLY @35323 GOTO 8
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61RakshasaEvilDetected","GLOBAL",1)~ THEN REPLY @35324 DO ~SetGlobal("61RakshasaEvilDetected","GLOBAL",1)~ GOTO 5
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~Kit(LastTalkedToBy,MAGESCHOOL_ILLUSIONIST)~ THEN REPLY @35326 GOTO 11
  IF ~~ THEN REPLY @35327 DO ~StartStore("61Raksha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35328 GOTO 9
END

IF ~~ THEN BEGIN 2
  SAY @35329
  IF ~~ THEN REPLY @35330 GOTO 3
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61RakshasaEvilDetected","GLOBAL",1)~ THEN REPLY @35324 DO ~SetGlobal("61RakshasaEvilDetected","GLOBAL", 1)~ GOTO 5
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35327 DO ~StartStore("61Raksha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @35331 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @35332
  IF ~~ THEN REPLY @35333 DO ~SetGlobal("61RakshasaSaidGlacier","GLOBAL",1)~ GOTO 4
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61RakshasaEvilDetected","GLOBAL",1)~ THEN REPLY @35324 DO ~SetGlobal("61RakshasaEvilDetected","GLOBAL", 1)~ GOTO 5
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35331 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @35334
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61RakshasaEvilDetected","GLOBAL",1)~ THEN REPLY @35324 DO ~SetGlobal("61RakshasaEvilDetected","GLOBAL",1)~ GOTO 5
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35331 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @35335
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,8,INT)~ THEN REPLY @35336 GOTO 6
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @35337 GOTO 12
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35338 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @35339
  IF ~CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @35340 GOTO 8
  IF ~GlobalGT("61NumPrisonersSentToRakshasa","GLOBAL",0)~ THEN REPLY @35321 GOTO 7
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35341 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @35342
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61RakshasaEvilDetected","GLOBAL",1)~ THEN REPLY @35324 DO ~SetGlobal("61RakshasaEvilDetected","GLOBAL",1)~ GOTO 5
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35341 GOTO 9
END

IF WEIGHT #0
~Allegiance(Myself,ENEMY)~ THEN BEGIN 8
  SAY @35343
  IF ~~ THEN DO ~SetGlobal("GaveSpeech","LOCALS",1)
                 SetGlobal("61RakshasaOfferValid", "GLOBAL", 0)
                 Enemy()
                 EraseJournalEntry(@39071)
                 EraseJournalEntry(@35314)
                 EraseJournalEntry(@35315)
                 AddJournalEntry(@35316,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @35347
  IF ~~ THEN DO ~SetGlobal("61RakshasaOfferValid", "GLOBAL", 1)
                 AddJournalEntry(@35315,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @35348
  IF ~CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @35349 GOTO 8
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35331 GOTO 9
END

IF ~~ THEN BEGIN 11
  SAY @35350
  IF ~CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @35351 GOTO 8
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @35352 GOTO 9
END

IF ~~ THEN BEGIN 12
  SAY @35353
  IF ~CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @38214 GOTO 8
  IF ~HPPercentLT(LastTalkedToBy,100)~ THEN REPLY @35325 GOTO 13
  IF ~~ THEN REPLY @38542 GOTO 9
END

IF ~~ THEN BEGIN 13
  SAY @38543
  IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN DO ~Spell(LastTalkedToBy,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
  IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
      !HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN DO ~Spell(LastTalkedToBy,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
  IF ~!HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
      !HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN DO ~ReallyForceSpell(LastTalkedToBy,WIZARD_POWER_WORD_STUN)
                                                     Enemy()~ EXIT
END
