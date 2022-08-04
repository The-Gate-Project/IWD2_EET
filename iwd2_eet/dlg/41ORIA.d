BEGIN ~41ORIA~

IF WEIGHT #3
~Global("SPRITE_IS_DEADLysara","GLOBAL",1)~ THEN BEGIN 0
  SAY @31897
  IF ~!Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN GOTO 9
  IF ~Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN GOTO 1
END

IF WEIGHT #4
~Global("SPRITE_IS_DEADCathin","GLOBAL",1)~ THEN BEGIN 1
  SAY @31899
  IF ~~ THEN GOTO 9
END

IF WEIGHT #5
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @31900
  IF ~~ THEN REPLY @31902 GOTO 9
  IF ~~ THEN REPLY @31903 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @31904
  IF ~~ THEN GOTO 9
END

IF WEIGHT #2
~Global("41RetributiveStrike","GLOBAL",2)~ THEN BEGIN 4
  SAY @31905
  IF ~CheckStatGT(LastTalkedToBy,15,WIS)~ THEN REPLY @31906 DO ~SetGlobal("41PlayerKnowsStaffOfPower","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @31908 GOTO 5
  IF ~~ THEN REPLY @31909 GOTO 6
  IF ~~ THEN REPLY @31910 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @31911 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @31912
  IF ~~ THEN REPLY @31913 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @31909 GOTO 6
  IF ~~ THEN REPLY @31910 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @31911 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @31915
  IF ~~ THEN REPLY @31908 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @31910 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @31911 DO ~SetGlobal("41RetributiveStrike","GLOBAL",1)
                              AddJournalEntry(@31895,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @31916
  IF ~~ THEN DO ~ClearAllActions()
                 ApplySpellRES("IWWI082",Player1)
                 ApplySpellRES("IWWI082",Player2)
                 ApplySpellRES("IWWI082",Player3)
                 ApplySpellRES("IWWI082",Player4)
                 ApplySpellRES("IWWI082",Player5)
                 ApplySpellRES("IWWI082",Player6)
                 ApplySpell(Myself,CLERIC_HEAL)
                 SetGlobal("PlayerSurrendered","LOCALS",1)
                 StartCutSceneMode()
                 StartCutScene("41cPriso")~ EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADOria","GLOBAL",1)~ THEN BEGIN 8
  SAY @31917
  IF ~~ THEN DO ~SetGlobal("41RetributiveStrike","GLOBAL",4)
                 SetGlobal("41OriaIsEthereal","GLOBAL",1)
                 AddJournalEntry(@31896,QUEST)
                 Enemy()~ EXIT
END

IF WEIGHT #0
~False()~ THEN BEGIN 9
  SAY @31918
  IF ~~ THEN DO ~SetGlobal("41SaidPainting4","GLOBAL",1)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @34853
  IF ~~ THEN EXIT
END
