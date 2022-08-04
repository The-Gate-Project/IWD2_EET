BEGIN ~30OGRGAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15943
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15949 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",1)~ GOTO 1
  IF ~CheckStatGT(LastTalkedToBy,12,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15950 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @15951 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",1)~ EXIT
END

IF ~Global("30ogrGar_Nodes","GLOBAL",1)~ THEN BEGIN 1
  SAY @15952
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15949 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",2)~ GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,12,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15953 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",2)~ GOTO 5
  IF ~~ THEN REPLY @15954 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",2)
                              AddJournalEntry(@15928,QUEST)~ EXIT
END

IF ~Global("30ogrGar_Nodes","GLOBAL",2)~ THEN BEGIN 2
  SAY @15958
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15949 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",3)~ GOTO 3
  IF ~~ THEN REPLY @15954 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",3)
                              AddJournalEntry(@15928,QUEST)~ EXIT
END

IF ~Global("30ogrGar_Nodes","GLOBAL",3)~ THEN BEGIN 3
  SAY @15959
  IF ~~ THEN DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",4)
                 AddJournalEntry(@15928,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15962
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15963 GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15953 DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",2)~ GOTO 5
  IF ~~ THEN REPLY @15954 DO ~AddJournalEntry(@15928,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15965
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15983 GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15984 GOTO 3
  IF ~~ THEN REPLY @15954 DO ~AddJournalEntry(@15928,QUEST)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 6
  SAY @25607
  IF ~~ THEN DO ~SetGlobal("30ogrGar_Nodes","GLOBAL",5)
                 AddJournalEntry(@15928,QUEST)~ EXIT
END
