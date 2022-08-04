BEGIN ~52VEN~

IF ~Global("52Ven_Know","GLOBAL",0)~ THEN BEGIN 0
  SAY @10029
  IF ~Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @10040 DO ~SetGlobal("52Ven_Know","GLOBAL",1)~ GOTO 2
  IF ~!Global("52Nonin_Permission","GLOBAL",1)~ THEN REPLY @10041 DO ~SetGlobal("52Ven_Know","GLOBAL",1)
                                                                      SetGlobal("52Ven_Loot","GLOBAL",1)
                                                                      AddJournalEntry(@10025,QUEST)~ GOTO 3
END

IF ~True()~ THEN BEGIN 1
  SAY @10047
  IF ~~ THEN REPLY @10054 DO ~SetGlobal("52Ven_Loot","GLOBAL",3)
                              EraseJournalEntry(@10025)
                              EraseJournalEntry(@10026)
                              AddJournalEntry(@10028,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10055
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY @10056 DO ~SetGlobal("52Ven_Loot","GLOBAL",1)
                                                                AddJournalEntry(@10025,QUEST)~ GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,15,WIS)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10056 DO ~SetGlobal("52Ven_Loot","GLOBAL",1)
                                                             AddJournalEntry(@10025,QUEST)~ GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10059 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10060
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10062 GOTO 4
  IF ~~ THEN REPLY @10065 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @10066
  IF ~~ THEN REPLY @10073 DO ~SetGlobal("52Ven_Loot","GLOBAL",2)
                              AddJournalEntry(@10026,QUEST)
                              EscapeArea()~ EXIT
  IF ~~ THEN REPLY @10059 DO ~SetGlobal("52Ven_Loot","GLOBAL",2)
                              AddJournalEntry(@10026,QUEST)
                              EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10074
  IF ~~ THEN REPLY @10079 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @10085
  IF ~~ THEN REPLY @10087 DO ~GiveItemCreate("z5ringno",LastTalkedToBy,0,0,0)
                              //EscapeArea()
                              ~ GOTO 7
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10088 DO ~GiveItemCreate("z5ringno",LastTalkedToBy,0,0,0)
                                                              AddJournalEntry(@10027,QUEST)
                                                              EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10089
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10094
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10062 GOTO 4
  IF ~~ THEN REPLY @10065 GOTO 5
END
