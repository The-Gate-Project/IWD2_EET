BEGIN ~12GABLE~

IF ~NumTimesTalkedTo(0)
    //!Dead("12KegArc")
    Global("Dead_12KegArc","GLOBAL",0)
    Global("Gable_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @15207
  IF ~~ THEN EXTERN ~12KADENC~ 0
END

IF ~~ THEN BEGIN 1
  SAY @15209
  IF ~~ THEN REPLY @15210 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @15213
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @15214
  IF ~~ THEN EXTERN ~12KADENC~ 1
END

IF ~~ THEN BEGIN 4
  SAY @15215
  IF ~~ THEN REPLY @15216 GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15217 GOTO 6
  IF ~~ THEN REPLY @36171 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15218
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15219 DO ~SetGlobal("Gable_Quest","GLOBAL",2)
                                                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15220 DO ~SetGlobal("Gable_Quest","GLOBAL",3)
                                                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15222 DO ~SetGlobal("Gable_Quest","GLOBAL",4)
                                                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15224 DO ~SetGlobal("Gable_Quest","GLOBAL",5)
                                                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @15225 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @15227
  IF ~~ THEN REPLY @15228 DO ~SetGlobal("Gable_Quest","GLOBAL",1)
                              AddJournalEntry(@12737,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @15230 DO ~SetGlobal("Gable_Quest","GLOBAL",2)
                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @15231 DO ~SetGlobal("Gable_Quest","GLOBAL",3)
                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @15233 DO ~SetGlobal("Gable_Quest","GLOBAL",4)
                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @15235 DO ~SetGlobal("Gable_Quest","GLOBAL",5)
                              AddJournalEntry(@12737,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @15225 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @15236
  IF ~~ THEN REPLY @15237 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @15238
  IF ~~ THEN REPLY @15237 EXIT
END

IF ~NumTimesTalkedTo(0)
    //Dead("12KegArc")
    !Global("Dead_12KegArc","GLOBAL",0)
    Global("Gable_Quest","GLOBAL",0)~ THEN BEGIN 9
  SAY @15239
  IF ~~ THEN EXTERN ~12KADENC~ 2
END

IF ~~ THEN BEGIN 10
  SAY @15241
  IF ~~ THEN REPLY @15242 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @15243
  IF ~~ THEN REPLY @15244 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @15247
  IF ~~ THEN REPLY @15248 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Gable_Quest","GLOBAL",0)~ THEN BEGIN 13
  SAY @15250
  IF ~//!Dead("12KegArc")
      Global("Dead_12KegArc","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15253 GOTO 6
  IF ~//Dead("12KegArc")
      !Global("Dead_12KegArc","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15253 GOTO 22
  IF ~~ THEN REPLY @15255 EXIT
END

IF ~GlobalGT("Gable_Quest","GLOBAL",0)
    GlobalLT("Gable_Quest","GLOBAL",6)
    //!Dead("12KegArc")
    Global("Dead_12KegArc","GLOBAL",0)~ THEN BEGIN 14
  SAY @15260
  IF ~~ THEN REPLY @15263 EXIT
END

IF ~GlobalGT("Gable_Quest","GLOBAL",0)
    GlobalLT("Gable_Quest","GLOBAL",6)
   // Dead("12KegArc")
    !Global("Dead_12KegArc","GLOBAL",0)~ THEN BEGIN 15
  SAY @15264
  IF ~Global("Gable_Quest","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15267 DO ~SetGlobal("Gable_Quest","GLOBAL",6)
                                                         GiveGoldForce(4)
                                                         EraseJournalEntry(@12737)
                                                         AddJournalEntry(@12738,QUEST_DONE)~ GOTO 16
  IF ~Global("Gable_Quest","GLOBAL",2)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15268 DO ~SetGlobal("Gable_Quest","GLOBAL",6)
                                                         GiveGoldForce(10)
                                                         EraseJournalEntry(@12737)
                                                         AddJournalEntry(@12738,QUEST_DONE)~ GOTO 16
  IF ~Global("Gable_Quest","GLOBAL",3)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15269 DO ~SetGlobal("Gable_Quest","GLOBAL",6)~ GOTO 17
  IF ~Global("Gable_Quest","GLOBAL",4)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15270 DO ~SetGlobal("Gable_Quest","GLOBAL",6)~ GOTO 17
  IF ~Global("Gable_Quest","GLOBAL",5)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @15271 DO ~SetGlobal("Gable_Quest","GLOBAL",6)~ GOTO 18
  IF ~~ THEN REPLY @24423 DO ~SetGlobal("Gable_Quest","GLOBAL",6)
                              SetQuestDone(@12737)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @15272
  IF ~~ THEN REPLY @15273 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @15274
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      !Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @15275 GOTO 18
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @15276 GOTO 19
  IF ~~ THEN REPLY @15277 DO ~SetQuestDone(@12737)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @15278
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @15279 DO ~GiveItem("BOW03",LastTalkedToBy)
                                                              EraseJournalEntry(@12737)
                                                              AddJournalEntry(@12738,QUEST_DONE)~ GOTO 20
  IF ~~ THEN REPLY @15277 DO ~SetQuestDone(@12737)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @15280
  IF ~~ THEN REPLY @15281 GOTO 18
END

IF ~~ THEN BEGIN 20
  SAY @15282
  IF ~~ THEN REPLY @15283 EXIT
  IF ~~ THEN REPLY @15273 EXIT
END

IF ~Global("Gable_Quest","GLOBAL",6)~ THEN BEGIN 21
  SAY @15284
  IF ~~ THEN REPLY @15285 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @15286
  IF ~~ THEN REPLY @15288 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @15289
  IF ~~ THEN EXTERN ~12KADENC~ 4
END
