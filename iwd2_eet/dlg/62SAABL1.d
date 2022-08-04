BEGIN ~62SAABL1~

IF WEIGHT #1
~NumTimesTalkedTo(0)
 Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN BEGIN 0
  SAY @9101
  IF ~~ THEN REPLY @9108 GOTO 1
  IF ~~ THEN REPLY @9109 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @9110
  IF ~~ THEN REPLY @9111 GOTO 2
  IF ~~ THEN REPLY @9112 DO ~AddJournalEntry(@9099,QUEST)
                             StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9113
  IF ~~ THEN REPLY @9114 GOTO 3
  IF ~~ THEN REPLY @9115 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9116
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @9117 GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,15,INT)~ THEN REPLY @37969 GOTO 6
  IF ~~ THEN REPLY @9118 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @9119
  IF ~~ THEN REPLY @9120 GOTO 5
  IF ~~ THEN REPLY @9121 GOTO 5
  IF ~~ THEN REPLY @9122 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @9123
  IF ~~ THEN DO ~AddJournalEntry(@9099,QUEST)
                 StartCutSceneMode()
                 StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9129
  IF ~~ THEN DO ~AddJournalEntry(@9099,QUEST)
                 StartCutSceneMode()
                 StartCutScene("62cSabtl")~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("Know_Imphraili","GLOBAL",1)
 Global("Know_Saablic","GLOBAL",1)
 Global("SPRITE_IS_DEADImphraili","GLOBAL",1)~ THEN BEGIN 7
  SAY @9130
  IF ~~ THEN REPLY @9131 GOTO 8
  IF ~~ THEN REPLY @9132 GOTO 18
END

IF ~~ THEN BEGIN 8
  SAY @9133
  IF ~~ THEN REPLY @9135 GOTO 9
  IF ~~ THEN REPLY @9136 GOTO 19
END

IF ~~ THEN BEGIN 9
  SAY @9137
  IF ~~ THEN REPLY @9140 GOTO 10
  IF ~~ THEN REPLY @9142 GOTO 19
END

IF ~~ THEN BEGIN 10
  SAY @9143
  IF ~~ THEN REPLY @9146 GOTO 4
  IF ~~ THEN REPLY @9147 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9148
  IF ~~ THEN REPLY @9149 GOTO 12
  IF ~~ THEN REPLY @9150 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9151
  IF ~~ THEN REPLY @9152 GOTO 13
  IF ~~ THEN REPLY @9150 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @9154
  IF ~~ THEN REPLY @9156 GOTO 14
  IF ~~ THEN REPLY @9150 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @9157
  IF ~~ THEN REPLY @9160 GOTO 15
  IF ~~ THEN REPLY @9150 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9161
  IF ~~ THEN REPLY @17800 GOTO 16
  IF ~~ THEN REPLY @9150 DO ~StartCutSceneMode()
                             StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @17803
  IF ~~ THEN REPLY @23013 GOTO 5
  IF ~~ THEN REPLY @29053 GOTO 6
END

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 17
  SAY @9101
  IF ~~ THEN REPLY @9108 GOTO 1
  IF ~~ THEN REPLY @30316 DO ~StartCutSceneMode()
                              StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9123
  IF ~~ THEN DO ~AddJournalEntry(@9099,QUEST)
                 StartCutSceneMode()
                 StartCutScene("62cSabtl")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9129
  IF ~~ THEN DO ~AddJournalEntry(@9099,QUEST)
                 StartCutSceneMode()
                 StartCutScene("62cSabtl")~ EXIT
END
