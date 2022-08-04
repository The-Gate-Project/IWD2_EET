BEGIN ~50KURTTU~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)
 !Race(LastTalkedToBy,ELF)
 !Race(LastTalkedToBy,DWARF)
 !Race(LastTalkedToBy,GNOME)~ THEN BEGIN 0
  SAY @4741
  IF ~Global("50Suoma_Help","GLOBAL",3)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                              AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4743 GOTO 6
  IF ~~ THEN REPLY @4746 EXIT
END

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)
 !Race(LastTalkedToBy,HUMAN)
 !Race(LastTalkedToBy,HALFLING)
 !Race(LastTalkedToBy,HALF_ELF)
 !Race(LastTalkedToBy,HALFORC)~ THEN BEGIN 1
  SAY @4747
  IF ~Global("50Suoma_Help","GLOBAL",3)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                              AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4743 GOTO 6
  IF ~~ THEN REPLY @4746 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4748
  IF ~~ THEN REPLY @4750 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @4833 DO ~AddJournalEntry(@4737,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4834 GOTO 6
  IF ~~ THEN REPLY @4836 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4838
  IF ~~ THEN REPLY @4833 DO ~AddJournalEntry(@4737,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4834 GOTO 6
  IF ~~ THEN REPLY @4836 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4840
  IF ~Global("50Leevi","GLOBAL",0)~ THEN REPLY @4841 DO ~SetGlobal("50Leevi","GLOBAL",1)
                                                         AddJournalEntry(@4738,QUEST)~ GOTO 5
  IF ~GlobalGT("50Leevi","GLOBAL",0)~ THEN REPLY @4841 GOTO 5
  IF ~~ THEN REPLY @4750 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4834 GOTO 6
  IF ~~ THEN REPLY @4836 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4850
  IF ~~ THEN REPLY @4750 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @4834 GOTO 6
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4836 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4997
  IF ~Global("50Suoma_Help","GLOBAL",3)
      Global("50Kurttu_Ghost","GLOBAL",0)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                                AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~GlobalLT("50Kyosti","GLOBAL",2)
      Global("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @4750 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~GlobalLT("50Kyosti","GLOBAL",2)
      Global("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @4833 DO ~AddJournalEntry(@4737,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @348 GOTO 12
  IF ~~ THEN REPLY @4999 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5000
  IF ~~ THEN REPLY @5001 EXIT
  IF ~~ THEN REPLY @5003 EXIT
  IF ~~ THEN REPLY @4999 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("50Kurttu_Ghost","GLOBAL",1)~ THEN BEGIN 8
  SAY @5005
  IF ~Global("50Kyosti","GLOBAL",2)~ THEN REPLY @5006 DO ~AddXP2DA("IW2EX9A")
                                                          DisplayStringNoNameDlg(LastTalkedToBy,@4740)
                                                          SetGlobal("50Kurttu_Ghost","GLOBAL",2)
                                                          //SetCriticalPathObject(Myself,FALSE)
                                                          ApplySpellRES("IWCPREM",Myself)
                                                          AddJournalEntry(@4734,QUEST)~ FLAGS 0x200 GOTO 7
  IF ~GlobalLT("50Kyosti","GLOBAL",2)~ THEN REPLY @5007 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~GlobalLT("50Kyosti","GLOBAL",2)~ THEN REPLY @5008 DO ~AddJournalEntry(@4737,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @37938 GOTO 12
  IF ~GlobalLT("50Kyosti","GLOBAL",2)~ THEN REPLY @5009 GOTO 6
  IF ~~ THEN REPLY @5010 EXIT
END

IF WEIGHT #4
~True()~ THEN BEGIN 9
  SAY @5011
  IF ~Global("50Suoma_Help","GLOBAL",3)
      Global("50Kurttu_Ghost","GLOBAL",0)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                                AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @37932 GOTO 12
  IF ~~ THEN REPLY @4743 GOTO 6
  IF ~~ THEN REPLY @6304 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @34342
  IF ~Global("50Kurttu_Ghost","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",3)
      Global("50Kurttu_Ghost","GLOBAL",0)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                                AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @348 GOTO 12
  IF ~~ THEN REPLY @4999 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 11
  SAY @37856
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @37930
  IF ~GlobalGT("IW5002_Visited","GLOBAL",0)
      Global("50Venla_Children","GLOBAL",1)~ THEN REPLY @34345 GOTO 10
  IF ~Global("50Tahvo_Wight","GLOBAL",1)
      Global("50Wight_Horn","GLOBAL",0)~ THEN REPLY @37897 GOTO 13
  IF ~Global("50Wight_Horn","GLOBAL",1)~ THEN REPLY @37898 GOTO 13
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      Global("50Carynara_Help","GLOBAL",0)~ THEN REPLY @37899 GOTO 13
  IF ~GlobalLT("50Kyosti","GLOBAL",2)
      Global("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @4750 DO ~AddJournalEntry(@4735,QUEST)~ GOTO 3
  IF ~GlobalLT("50Kyosti","GLOBAL",2)
      Global("50Kurttu_Ghost","GLOBAL",1)~ THEN REPLY @4833 DO ~AddJournalEntry(@4737,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @4743 GOTO 6
  IF ~Global("50Suoma_Help","GLOBAL",3)
      Global("50Kurttu_Ghost","GLOBAL",0)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                                AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @4999 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @37931
  IF ~~ THEN REPLY @348 GOTO 12
  IF ~Global("50Kurttu_Ghost","GLOBAL",0)
      Global("50Suoma_Help","GLOBAL",3)
      Global("50Kurttu_Ghost","GLOBAL",0)~ THEN REPLY @4742 DO ~SetGlobal("50Kurttu_Ghost","GLOBAL",1)
                                                                AddJournalEntry(@4733,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @4999 EXIT
END
