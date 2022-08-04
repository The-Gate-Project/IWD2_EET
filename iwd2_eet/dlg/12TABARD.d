BEGIN ~12TABARD~

IF ~Global("Tabard_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @15177
  IF ~~ THEN REPLY @15178 GOTO 1
  IF ~~ THEN REPLY @15179 GOTO 2
  IF ~~ THEN REPLY @15182 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @15183
  IF ~~ THEN REPLY @15184 GOTO 2
  IF ~~ THEN REPLY @15185 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15186
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15187 GOTO 3
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)
      Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @15187 GOTO 3
  IF ~!Class(LastTalkedToBy,THIEF_ALL)
      !Alignment(LastTalkedToBy,MASK_GOOD)
      Alignment(LastTalkedToBy,MASK_CHAOTIC)
      CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @15187 GOTO 3
  IF ~~ THEN REPLY @15188 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15189
  IF ~~ THEN REPLY @15190 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @15191
  IF ~~ THEN REPLY @15192 DO ~AddXP2DA("IW2EX2E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@15176)
                              SetGlobal("Tabard_Quest","GLOBAL",1)
                              AddJournalEntry(@12736,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @15193
  IF ~~ THEN REPLY @15194 EXIT
END

IF ~Global("Tabard_Quest","GLOBAL",1)~ THEN BEGIN 6
  SAY @15195
  IF ~~ THEN REPLY @15196 EXIT
END
