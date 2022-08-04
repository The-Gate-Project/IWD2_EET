BEGIN ~61THORAS~

IF WEIGHT #4
~True()~ THEN BEGIN 0
  SAY @35230
  IF ~~ THEN REPLY @35231 DO ~AddJournalEntry(@35227,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @35232 DO ~AddJournalEntry(@35227,QUEST)~ GOTO 9
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 DO ~AddJournalEntry(@35227,QUEST)~ GOTO 9
  IF ~Global("61PlayerReadWarningSign","GLOBAL",1)~ THEN REPLY @35234 DO ~AddJournalEntry(@35227,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @35235 DO ~AddJournalEntry(@35227,QUEST)~ GOTO 9
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 GlobalLT("61NumEfreetiKilled","GLOBAL",10)~ THEN BEGIN 1
  SAY @35236
  IF ~~ THEN REPLY @35231 EXIT
  IF ~~ THEN REPLY @35232 GOTO 9
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 GOTO 9
  IF ~Global("61PlayerReadWarningSign","GLOBAL",1)~ THEN REPLY @35234 GOTO 9
  IF ~~ THEN REPLY @35235 GOTO 9
END

IF WEIGHT #1
~Global("AfterDeadAssassins","LOCALS",0)
 GlobalGT("61NumEfreetiKilled","GLOBAL",9)~ THEN BEGIN 2
  SAY @35237
  IF ~~ THEN REPLY @35232 DO ~SetGlobal("AfterDeadAssassins","LOCALS",1)~ GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 DO ~SetGlobal("AfterDeadAssassins","LOCALS",1)~ GOTO 7
  IF ~Global("61PlayerReadWarningSign","GLOBAL",1)~ THEN REPLY @35234 DO ~SetGlobal("CurrentForm","LOCALS",1)
                                                                          SetGlobal("ChangeForm","LOCALS",1)
                                                                          DialogInterrupt(FALSE)~ EXIT
  IF ~~ THEN REPLY @35238 DO ~SetGlobal("AfterDeadAssassins","LOCALS",1)~ GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @35239
  IF ~~ THEN REPLY @35240 GOTO 4
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 GOTO 7
  IF ~~ THEN REPLY @35241 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @35242
  IF ~~ THEN REPLY @35243 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 GOTO 7
  IF ~~ THEN REPLY @35241 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @35244
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35233 GOTO 7
  IF ~~ THEN REPLY @35245 GOTO 8
  IF ~~ THEN REPLY @35246 GOTO 8
END

IF WEIGHT #3
~Global("AfterDeadAssassins","LOCALS",1)~ THEN BEGIN 6
  SAY @35247
  IF ~~ THEN REPLY @35248 DO ~SetGlobal("61ThorasskusSaidIzbelah","GLOBAL",1)
                              AddJournalEntry(@35228,QUEST)~ GOTO 3
  IF ~CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY @35249 DO ~SetGlobal("61ThorasskusSaidIzbelah","GLOBAL",1)
                                                               AddJournalEntry(@35228,QUEST)~ GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,16,INT)
      CheckStatGT(LastTalkedToBy,8,INT)~ THEN REPLY @35250 DO ~SetGlobal("61ThorasskusSaidIzbelah","GLOBAL",1)
                                                               AddJournalEntry(@35228,QUEST)~ GOTO 8
  IF ~OR(3)
        CheckStatGT(LastTalkedToBy,15,INT) //16
        Class(LastTalkedToBy,PALADIN_ALL)
        Global("61PlayerReadWarningSign","GLOBAL",1)~ THEN REPLY @35251 DO ~SetGlobal("61ThorasskusSaidIzbelah","GLOBAL",1)
                                                                            SetGlobal("CurrentForm","LOCALS",1)
                                                                            SetGlobal("ChangeForm","LOCALS",1)
                                                                            DialogInterrupt(FALSE)~ EXIT
  IF ~~ THEN REPLY @35252 DO ~SetGlobal("61ThorasskusSaidIzbelah","GLOBAL",1)
                              AddJournalEntry(@35228,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @35253
  IF ~Global("61PlayerReadWarningSign","GLOBAL",1)~ THEN REPLY @35254 DO ~SetGlobal("CurrentForm","LOCALS",1)
                                                                          SetGlobal("ChangeForm","LOCALS",1)
                                                                          DialogInterrupt(FALSE)~ EXIT
  IF ~~ THEN REPLY @35255 DO ~SetGlobal("CurrentForm","LOCALS",1)
                              SetGlobal("ChangeForm","LOCALS",1)
                              DialogInterrupt(FALSE)~ EXIT
  IF ~~ THEN REPLY @35256 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @35257
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @35259
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("CurrentForm","LOCALS",1)~ THEN BEGIN 10
  SAY @35260
  IF ~~ THEN REPLY @35261 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @35262
  IF ~~ THEN REPLY @35263 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35264
  IF ~~ THEN REPLY @35265 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @35266
  IF ~~ THEN REPLY @35267 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @35268
  IF ~~ THEN REPLY @35269 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @35270
  IF ~~ THEN REPLY @35271 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @35272
  IF ~~ THEN REPLY @35273 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @35274
  IF ~~ THEN REPLY @35275 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @35276
  IF ~Alignment(LastTalkedToBy,LAWFUL_GOOD)~ THEN REPLY @35277 GOTO 19
  IF ~Alignment(LastTalkedToBy,LAWFUL_NEUTRAL)~ THEN REPLY @35278 GOTO 19
  IF ~Alignment(LastTalkedToBy,LAWFUL_EVIL)~ THEN REPLY @35279 GOTO 19
  IF ~Alignment(LastTalkedToBy,NEUTRAL_GOOD)~ THEN REPLY @35280 GOTO 19
  IF ~Alignment(LastTalkedToBy,NEUTRAL)~ THEN REPLY @35281 GOTO 19
  IF ~Alignment(LastTalkedToBy,NEUTRAL_EVIL)~ THEN REPLY @35282 GOTO 19
  IF ~Alignment(LastTalkedToBy,CHAOTIC_GOOD)~ THEN REPLY @35283 GOTO 19
  IF ~Alignment(LastTalkedToBy,CHAOTIC_NEUTRAL)~ THEN REPLY @35284 GOTO 19
  IF ~Alignment(LastTalkedToBy,CHAOTIC_EVIL)~ THEN REPLY @35285 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @35286
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@35229,QUEST)~ EXIT
END
