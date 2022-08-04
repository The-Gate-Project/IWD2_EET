BEGIN ~50TAHVO~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4408
  IF ~Global("50Suoma_Help","GLOBAL",2)~ THEN REPLY @4412 DO ~SetGlobal("50Tahvo_Wight","GLOBAL",1)
                                                              AddJournalEntry(@4403,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @4413 GOTO 4
  IF ~~ THEN REPLY @4414 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4415 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4416
  IF ~Global("50Wight_Horn","GLOBAL",2)~ THEN REPLY @4417 DO ~AddXP2DA("IW2EX9A")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@4407)
                                                              SetGlobal("50Tahvo_Wight","GLOBAL",2)
                                                              //SetCriticalPathObject(Myself,FALSE)
                                                              ApplySpellRES("IWCPREM",Myself)
                                                              AddJournalEntry(@4404,QUEST)~ FLAGS 0x200 GOTO 3
  IF ~~ THEN REPLY @4418 GOTO 2
  IF ~~ THEN REPLY @4419 GOTO 4
  IF ~~ THEN REPLY @4420 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4421 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4422
  IF ~Global("50Wight_Horn","GLOBAL",2)~ THEN REPLY @4417 DO ~AddXP2DA("IW2EX9A")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@4407)
                                                              SetGlobal("50Tahvo_Wight","GLOBAL",2)
                                                              //SetCriticalPathObject(Myself,FALSE)
                                                              ApplySpellRES("IWCPREM",Myself)
                                                              AddJournalEntry(@4404,QUEST)~ FLAGS 0x200 GOTO 3
  IF ~Class(LastTalkedToBy,BARD_ALL)
      //!Class(LastTalkedToBy,CLERIC_ALL)
                                       ~ THEN REPLY @4423 DO ~AddJournalEntry(@4406,QUEST)~ GOTO 12
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      //!Class(LastTalkedToBy,BARD_ALL)
                                     ~ THEN REPLY @4423 DO ~AddJournalEntry(@4406,QUEST)~ GOTO 12
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      CheckStatGT(LastTalkedToBy,14,WIS)
      !Class(LastTalkedToBy,BARD_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @4423 DO ~AddJournalEntry(@4406,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @4424 GOTO 4
  IF ~~ THEN REPLY @4420 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4421 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4425
  IF ~~ THEN REPLY @4413 GOTO 4
  IF ~~ THEN REPLY @4414 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @4426 EXIT
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @4427 EXIT
  IF ~~ THEN REPLY @4428 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4429
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("50Tahvo_Give","GLOBAL",0)~ THEN REPLY @38301 DO ~SetGlobal("50Tahvo_Give","GLOBAL",1)
                                                               GiveItemCreate("AROW15",LastTalkedToBy,40,0,0)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
     GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      Global("50Tahvo_Give","GLOBAL",0)~ THEN REPLY @38302 DO ~SetGlobal("50Tahvo_Give","GLOBAL",1)
                                                               GiveItemCreate("AROW15",LastTalkedToBy,40,0,0)~ GOTO 17
  IF ~CheckStatGT(LastTalkedToBy,15,STR)
      GlobalGT("50Suoma_Help","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)
      !Alignment(LastTalkedToBy,MASK_GOOD)
      Global("50Tahvo_Give","GLOBAL",0)~ THEN REPLY @38303 DO ~SetGlobal("50Tahvo_Give","GLOBAL",1)
                                                               GiveItemCreate("AROW15",LastTalkedToBy,40,0,0)~ GOTO 17
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34355 GOTO 13
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 15
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 DO ~AddJournalEntry(@40885,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @4430 GOTO 5
  IF ~~ THEN REPLY @4431 GOTO 6
  IF ~~ THEN REPLY @4432 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4433 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4434
  IF ~~ THEN REPLY @4431 GOTO 6
  IF ~~ THEN REPLY @4432 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4435 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4436
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34355 GOTO 13
  IF ~~ THEN REPLY @4437 GOTO 7
  IF ~~ THEN REPLY @4438 GOTO 8
  IF ~~ THEN REPLY @4590 GOTO 9
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4602 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4604
  IF ~~ THEN REPLY @4438 GOTO 8
  IF ~~ THEN REPLY @4590 GOTO 9
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4602 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4611
  IF ~~ THEN REPLY @4437 GOTO 7
  IF ~~ THEN REPLY @4590 GOTO 9
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4602 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @4626
  IF ~~ THEN REPLY @4627 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4437 GOTO 7
  IF ~~ THEN REPLY @4438 GOTO 8
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4602 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("50Tahvo_Wight","GLOBAL",1)~ THEN BEGIN 10
  SAY @4628
  IF ~Global("50Wight_Horn","GLOBAL",2)~ THEN REPLY @4629 DO ~AddXP2DA("IW2EX9A")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@4407)
                                                              SetGlobal("50Tahvo_Wight","GLOBAL",2)
                                                              //SetCriticalPathObject(Myself,FALSE)
                                                              ApplySpellRES("IWCPREM",Myself)
                                                              AddJournalEntry(@4404,QUEST)~ FLAGS 0x200 GOTO 3
  IF ~~ THEN REPLY @4630 GOTO 4
  IF ~~ THEN REPLY @4631 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4632 EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 11
  SAY @4633
  IF ~Global("50Suoma_Help","GLOBAL",2)
      Global("50Tahvo_Wight","GLOBAL",0)~ THEN REPLY @4412 DO ~SetGlobal("50Tahvo_Wight","GLOBAL",1)
                                                               AddJournalEntry(@4403,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @4413 GOTO 4
  IF ~~ THEN REPLY @4414 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4634 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @4635
  IF ~~ THEN REPLY @4424 GOTO 4
  IF ~~ THEN REPLY @4420 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4421 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @34350
  IF ~~ THEN REPLY @4437 GOTO 7
  IF ~~ THEN REPLY @4438 GOTO 8
  IF ~~ THEN REPLY @4590 GOTO 9
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4602 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 14
  SAY @37856
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @38284
  IF ~~ THEN REPLY @4424 GOTO 4
  IF ~~ THEN REPLY @4420 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4428 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @38285
  IF ~~ THEN REPLY @4424 GOTO 4
  IF ~~ THEN REPLY @4420 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4602 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @38293
  IF ~~ THEN REPLY @4592 GOTO 4
  IF ~~ THEN REPLY @4414 DO ~StartStore("50Tahvo",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4428 EXIT
END
