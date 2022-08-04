BEGIN ~63GRDCOM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @36187
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36188 GOTO 1
  IF ~CheckStatLT(LastTalkedToBy,15,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36189 GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36190 GOTO 3
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @36188 GOTO 6
  IF ~~ THEN REPLY @36191 GOTO 7
  IF ~~ THEN REPLY @36192 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @36193
  IF ~~ THEN REPLY @36194 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @36196
  IF ~~ THEN REPLY @36197 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36178)
                              SetGlobal("Happy_Commander","GLOBAL",1)
                              SetGlobal("SH_Need_Pass","GLOBAL",1)
                              AddJournalEntry(@6231,QUEST)~ EXIT
  IF ~~ THEN REPLY @36198 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36185)
                              SetGlobal("SH_Need_Pass","GLOBAL",1)
                              Enemy()
                              AddJournalEntry(@36175,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @36358
  IF ~~ THEN REPLY @36194 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @36196
  IF ~~ THEN REPLY @36197 DO ~AddXP2DA("IW2EX14H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36178)
                              SetGlobal("Happy_Commander","GLOBAL",1)
                              SetGlobal("SH_Need_Pass","GLOBAL",1)
                              AddJournalEntry(@6231,QUEST)~ EXIT
  IF ~~ THEN REPLY @36198 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@36185)
                              SetGlobal("SH_Need_Pass","GLOBAL",1)
                              Enemy()
                              AddJournalEntry(@36175,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @36359
  IF ~~ THEN DO ~AddXP2DA("IW2EX14E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@36186)
                 SetGlobal("SH_Need_Pass","GLOBAL",1)
                 Enemy()
                 AddJournalEntry(@36176,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @37825
  IF ~~ THEN DO ~AddXP2DA("IW2EX14E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@36186)
                 SetGlobal("SH_Need_Pass","GLOBAL",1)
                 Enemy()
                 AddJournalEntry(@36176,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @37826
  IF ~~ THEN DO ~AddXP2DA("IW2EX14E")
                 DisplayStringNoNameDlg(LastTalkedToBy,@36186)
                 SetGlobal("SH_Need_Pass","GLOBAL",1)
                 Enemy()
                 AddJournalEntry(@36177,QUEST)~ EXIT
END

IF ~Global("Happy_Commander","GLOBAL",1)~ THEN BEGIN 8
  SAY @37827
  IF ~~ THEN EXIT
END
