BEGIN ~60INHATR~

IF WEIGHT #5
~Global("60INHATR","GLOBAL",0)~ THEN BEGIN 0
  SAY @31272
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @31273 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 2
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @31273 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @31274 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @31275 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @31277 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @31278 DO ~SetGlobal("60Inhatr","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @31279
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31281
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31285
  IF ~~ THEN REPLY @31286 GOTO 4
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @31288
  IF ~~ THEN EXTERN ~60ASHRA~ 19
END

IF ~~ THEN BEGIN 5
  SAY @31289
  IF ~~ THEN EXTERN ~60ASHRA~ 20
END

IF ~~ THEN BEGIN 6
  SAY @31290
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31291
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @31292
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @31293
  IF ~~ THEN REPLY @31296 DO ~SetGlobal("60Inhatr","GLOBAL",2)~ GOTO 13
  IF ~~ THEN REPLY @31297 DO ~SetGlobal("60Inhatr","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @31298
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @31299
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @31300
  IF ~~ THEN DO ~SetGlobal("60Duel_CCS","GLOBAL",1)
                 AddJournalEntry(@31269,QUEST)
                 StartCutSceneMode()
                 StartCutScene("60cDuelC")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31301
  IF ~~ THEN REPLY @31302 GOTO 4
  IF ~~ THEN REPLY @31283 GOTO 3
  IF ~~ THEN REPLY @31284 EXIT
END

IF WEIGHT #6
~True()~ THEN BEGIN 14
  SAY @31303
  IF ~~ THEN REPLY @31277 GOTO 3
  IF ~~ THEN REPLY @31305 EXIT
END

IF WEIGHT #3
~Global("60DUEL_VFA","GLOBAL",1)~ THEN BEGIN 15
  SAY @31306
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~Global("60DUEL_CCS","GLOBAL",1)~ THEN BEGIN 16
  SAY @31306
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~Global("60DUEL_CCS","GLOBAL",4)~ THEN BEGIN 17
  SAY @31307
  IF ~~ THEN REPLY @31308 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31271)
                              SetGlobal("60Duel_CCS","GLOBAL",5)
                              EraseJournalEntry(@31269)
                              AddJournalEntry(@31270,QUEST)~ GOTO 18
  IF ~~ THEN REPLY @31277 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31271)
                              SetGlobal("60Duel_CCS","GLOBAL",5)
                              EraseJournalEntry(@31269)
                              AddJournalEntry(@31270,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @31284 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31271)
                              SetGlobal("60Duel_CCS","GLOBAL",5)
                              EraseJournalEntry(@31269)
                              AddJournalEntry(@31270,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @31309
  IF ~~ THEN REPLY @31302 GOTO 4
  IF ~~ THEN REPLY @31284 EXIT
END

IF WEIGHT #1
~Global("60DUEL_CCS","GLOBAL",2)~ THEN BEGIN 19
  SAY @31310
  IF ~~ THEN REPLY @31283 DO ~SetGlobal("60Duel_CCS","GLOBAL",3)~ GOTO 3
  IF ~~ THEN REPLY @31284 DO ~SetGlobal("60Duel_CCS","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @31311
  IF ~~ THEN EXTERN ~60ASHRA~ 21
END

IF WEIGHT #0
~!Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 21
  SAY @34322
  IF ~~ THEN DO ~Enemy()~ EXIT
END
