BEGIN ~12BLACK~

IF ~Global("Goblin_Palisade_Quest","GLOBAL",0)
    Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 0
  SAY @31622
  IF ~Global("Wall_No_Ask","GLOBAL",0)~ THEN REPLY @31623 DO ~SetGlobal("Wall_No_Ask","GLOBAL",1)~ GOTO 1
  IF ~Global("Kickshaw_No_Ask","GLOBAL",0)~ THEN REPLY @31624 DO ~SetGlobal("Kickshaw_No_Ask","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @31625 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31626
  IF ~Global("Kickshaw_No_Ask","GLOBAL",0)~ THEN REPLY @31624 GOTO 2
  IF ~~ THEN REPLY @31627 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31628
  IF ~Global("Wall_No_Ask","GLOBAL",0)~ THEN REPLY @31623 DO ~SetGlobal("Wall_No_Ask","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @31627 EXIT
END

IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
    Global("BG_No_Talk","GLOBAL",0)~ THEN BEGIN 3
  SAY @31629
  IF ~~ THEN REPLY @31630 DO ~SetGlobal("BG_No_Talk","GLOBAL",1)
                              AddJournalEntry(@29429,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @31631 DO ~SetGlobal("BG_No_Talk","GLOBAL",1)
                              AddJournalEntry(@29429,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @31632
  IF ~~ THEN REPLY @31633 EXIT
  IF ~~ THEN REPLY @31634 EXIT
END

IF ~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)
    Global("BG_No_Talk","GLOBAL",1)~ THEN BEGIN 5
  SAY @31635
  IF ~~ THEN REPLY @31636 EXIT
  IF ~~ THEN REPLY @31637 EXIT
END
