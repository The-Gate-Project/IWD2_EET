BEGIN ~52DLEAD~

IF ~True()~ THEN BEGIN 0
  SAY @10131
  IF ~Global("SPRITE_IS_DEADBarud","GLOBAL",0)~ THEN REPLY @10132 DO ~SetGlobal("52Barud_Backstab","GLOBAL",1)
                                                                      AddJournalEntry(@10130,QUEST)~ GOTO 1
  IF ~Global("SPRITE_IS_DEADBarud","GLOBAL",0)~ THEN REPLY @10139 DO ~SetGlobal("52Barud_Backstab","GLOBAL",1)
                                                                      AddJournalEntry(@10130,QUEST)~ GOTO 1
  IF ~!Global("SPRITE_IS_DEADBarud","GLOBAL",0)~ THEN REPLY @10132 DO ~AddJournalEntry(@10130,QUEST)~ GOTO 2
  IF ~!Global("SPRITE_IS_DEADBarud","GLOBAL",0)~ THEN REPLY @10139 DO ~AddJournalEntry(@10130,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @10140
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 Activate("Barud")
                 ActionOverride("Barud",SetGlobal("IwIHidden","LOCALS",0))
                 StartCutScene("52cBaru0")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10140
  IF ~~ THEN DO ~Enemy()~ EXIT
END
