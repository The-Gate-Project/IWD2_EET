BEGIN ~60OJAIHA~

IF WEIGHT #0
~!Global("6051_Wearing_Robes","GLOBAL",6)
 Global("Ritual_RitualState","GLOBAL",1)~ THEN BEGIN 0
  SAY @32293
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32294 GOTO 1
  IF ~~ THEN REPLY @32296 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32297 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @32298
  IF ~~ THEN REPLY @32300 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32301 DO ~Enemy()~ EXIT
END

IF WEIGHT #1
~Global("6051_Wearing_Robes","GLOBAL",6)
 Global("Ritual_RitualState","GLOBAL",1)
 Global("60Ritual_Hello","GLOBAL",0)~ THEN BEGIN 2
  SAY @32302
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @32303 DO ~SetGlobal("60Ritual_Hello","GLOBAL",1)
                                                                 Enemy()~ EXIT
  IF ~Global("60Know_Guardian","GLOBAL",1)~ THEN REPLY @32304 DO ~SetGlobal("60Ritual_Hello","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @32296 DO ~SetGlobal("60Ritual_Hello","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32306 DO ~SetGlobal("60Ritual_Hello","GLOBAL",1)~ GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32308 DO ~SetGlobal("60Ritual_Hello","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~Global("6051_Wearing_Robes","GLOBAL",6)
 Global("Ritual_RitualState","GLOBAL",1)
 Global("60Ritual_Hello","GLOBAL",1)~ THEN BEGIN 3
  SAY @32309
  IF ~Global("60Know_Guardian","GLOBAL",1)~ THEN REPLY @32304 GOTO 6
  IF ~~ THEN REPLY @32296 DO ~Enemy()~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32306 GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32308 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @32310
  IF ~~ THEN REPLY @32311 DO ~SetGlobal("60Treasury_Trick","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @32312
  IF ~Global("60Know_Guardian","GLOBAL",1)~ THEN REPLY @32313 GOTO 6
  IF ~~ THEN REPLY @32314 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32315 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @32316
  IF ~~ THEN REPLY @32300 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32301 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @32317
  IF ~~ THEN REPLY @32300 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32301 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @32318
  IF ~Global("60Know_Guardian","GLOBAL",1)~ THEN REPLY @32313 GOTO 6
  IF ~~ THEN REPLY @32314 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32315 EXIT
END

IF WEIGHT #4
~!Global("6051_Wearing_Robes","GLOBAL",6)
 !Global("Ritual_RitualState","GLOBAL",1)~ THEN BEGIN 9
  SAY @32319
  IF ~CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY @32320 GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,12,INT)
      CheckStatGT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32321 GOTO 18
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32322 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32323 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32324 GOTO 11
  IF ~~ THEN REPLY @32325 GOTO 19
END

IF ~~ THEN BEGIN 10
  SAY @32326
  IF ~CheckStatGT(LastTalkedToBy,12,INT)
      CheckStatGT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32321 GOTO 18
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32327 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32324 GOTO 11
  IF ~~ THEN REPLY @32328 GOTO 19
END

IF ~~ THEN BEGIN 11
  SAY @32329
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @32331
  IF ~~ THEN REPLY @32332 GOTO 13
  IF ~~ THEN REPLY @32333 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @32334
  IF ~~ THEN REPLY @32335 DO ~SetGlobal("60Know_Jez","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @32336 DO ~SetGlobal("60Know_Jez","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @32337
  IF ~~ THEN REPLY @32338 GOTO 15
  IF ~~ THEN REPLY @32339 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @32340
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @32341
  IF ~~ THEN DO ~AddXP2DA("IW2EX12H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@32292)
                 AddJournalEntry(@32290,QUEST)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @32342
  IF ~~ THEN REPLY @32343 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32344 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @32345
  IF ~~ THEN REPLY @32346 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32347 GOTO 11
  IF ~~ THEN REPLY @32344 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @32348
  IF ~~ THEN REPLY @32349 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32353 GOTO 11
  IF ~~ THEN REPLY @32354 DO ~Enemy()~ EXIT
END

IF WEIGHT #5
~Global("6051_Wearing_Robes","GLOBAL",6)
 !Global("Ritual_RitualState","GLOBAL",1)
 Global("60High_Priest_Hello","GLOBAL",0)~ THEN BEGIN 20
  SAY @32355
  IF ~~ THEN REPLY @32356 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)~ GOTO 25
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32357 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)~ GOTO 26
  IF ~~ THEN REPLY @32358 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)~ GOTO 27
  IF ~~ THEN REPLY @32359 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32315 DO ~SetGlobal("60High_Priest_Hello","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @32361
  IF ~~ THEN REPLY @32362 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32365 GOTO 11
  IF ~~ THEN REPLY @32344 DO ~Enemy()~ EXIT
END

IF WEIGHT #3
~Global("60Ojaiha_Suspicious","GLOBAL",1)~ THEN BEGIN 22
  SAY @32366
  IF ~~ THEN REPLY @32367 DO ~SetGlobal("60Ojaiha_Suspicious","GLOBAL",1)
                              AddJournalEntry(@32287,QUEST)~ GOTO 23
  IF ~~ THEN REPLY @32368 DO ~SetGlobal("60Ojaiha_Suspicious","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32369 DO ~SetGlobal("60Ojaiha_Suspicious","GLOBAL",1)
                              AddJournalEntry(@32287,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @32370
  IF ~~ THEN REPLY @32371 DO ~SetGlobal("60Ojaiha_Suspicious","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32369 DO ~SetGlobal("60Ojaiha_Suspicious","GLOBAL",1)~ EXIT
END

IF WEIGHT #6
~Global("6051_Wearing_Robes","GLOBAL",6)
 !Global("Ritual_RitualState","GLOBAL",1)
 GlobalGT("60High_Priest_Hello","GLOBAL",0)~ THEN BEGIN 24
  SAY @32372
  IF ~GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32373 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ GOTO 25
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32374 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ GOTO 26
  IF ~Global("60Suspect","GLOBAL",2)~ THEN REPLY @32373 GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32376 GOTO 22
  IF ~~ THEN REPLY @32377 GOTO 27
  IF ~~ THEN REPLY @32378 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32380 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @32381
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32382 GOTO 26
  IF ~~ THEN REPLY @32383 GOTO 27
  IF ~~ THEN REPLY @32384 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32385 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @32386
  IF ~GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32373 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ GOTO 25
  IF ~Global("60Suspect","GLOBAL",2)~ THEN REPLY @32373 GOTO 22
  IF ~~ THEN REPLY @32358 GOTO 27
  IF ~~ THEN REPLY @32387 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @32389
  IF ~~ THEN REPLY @32390 GOTO 28
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32391 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 GOTO 22
  IF ~~ THEN REPLY @32399 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @32400
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32391 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~~ THEN REPLY @32395 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ FLAGS 0x200 GOTO 33 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                             IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @32401 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32388 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @32402
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~~ THEN REPLY @32395 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ FLAGS 0x200 GOTO 33 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                                                             IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @32399 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32388 DO ~SetGlobal("60Know_Cabal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @32404
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 GOTO 22
  IF ~~ THEN REPLY @32405 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @32406
  IF ~~ THEN REPLY @32407 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 32
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32408 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                              SetGlobal("60Know_Heartless","GLOBAL",1)~ FLAGS 0x200 GOTO 32 /*true*/
  IF ~Global("60Suspect","GLOBAL",2)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32408 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 22
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32411 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~GlobalGT("60Know_Guardian","GLOBAL",0)~ THEN REPLY @32395 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ FLAGS 0x200 GOTO 33 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                              SetGlobal("60Know_Heartless","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                             SetGlobal("60Know_Heartless","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @32412 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32388 DO ~SetGlobal("60Know_Heartless","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @32413
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32411 GOTO 29
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 GOTO 22
  IF ~~ THEN REPLY @32412 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @32414
  IF ~~ THEN REPLY @32415 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 34
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32416 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 22
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                             SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @32412 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32388 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @32417
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Portal_Weakness","GLOBAL",1)~ THEN REPLY @32418 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                                         SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 35 /*true*/
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Portal_Weakness","GLOBAL",1)~ THEN REPLY @32418 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 22
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32416 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 29 /*true*/
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 31 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)
                                                              IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 22
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)
                                                             SetGlobal("60Know_Guardian","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @32412 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ GOTO 21
  IF ~~ THEN REPLY @32388 DO ~SetGlobal("60Know_Guardian","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @32419
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32420 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~GlobalLT("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 36 /*true*/
  IF ~Global("60Suspect","GLOBAL",2)
      Global("60Know_Jez","GLOBAL",1)~ THEN REPLY @32398 GOTO 22
  IF ~~ THEN REPLY @32401 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32421 GOTO 21
  IF ~~ THEN REPLY @32315 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @32422
  IF ~~ THEN REPLY @32423 GOTO 37
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32420 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~~ THEN REPLY @32401 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32424 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @32425
  IF ~~ THEN REPLY @41287 GOTO 38
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32420 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~~ THEN REPLY @32401 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @41288
  IF ~~ THEN REPLY @41289 GOTO 39
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32420 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32396 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 40 /*true*/
  IF ~Global("60Seen_Treasury_Door","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32396 GOTO 22
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~~ THEN REPLY @41290 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @41291
  IF ~~ THEN REPLY @41292 GOTO 13
END

IF ~~ THEN BEGIN 40
  SAY @41293
  IF ~Global("60Know_Cabal","GLOBAL",1)~ THEN REPLY @32420 GOTO 29
  IF ~Global("60Know_Heartless","GLOBAL",1)~ THEN REPLY @32392 GOTO 31
  IF ~~ THEN REPLY @32395 GOTO 33
  IF ~Global("60Know_Guardian","GLOBAL",1)
      GlobalLT("60Suspect","GLOBAL",2)~ THEN REPLY @32397 DO ~IncrementGlobal("60Suspect","GLOBAL",1)~ FLAGS 0x200 GOTO 34 /*true*/
  IF ~Global("60Know_Guardian","GLOBAL",1)
      Global("60Suspect","GLOBAL",2)~ THEN REPLY @32397 GOTO 22
  IF ~~ THEN REPLY @41290 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @32360 GOTO 21
  IF ~~ THEN REPLY @32388 EXIT
END
