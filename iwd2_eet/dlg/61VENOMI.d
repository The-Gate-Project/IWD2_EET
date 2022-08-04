BEGIN ~61VENOMI~

IF WEIGHT #3
~GlobalGT("61CurrentDay","GLOBAL",2)~ THEN BEGIN 0
  SAY @35831
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @35832 GOTO 1
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @35833 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @36133
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN REPLY @36135 GOTO 2
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36136 GOTO 2
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36137 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @36138
  IF ~Global("61CurrentDay","GLOBAL",4)~ THEN DO ~AddJournalEntry(@35828,QUEST)
                                                  StartCutSceneMode()
                                                  ClearAllActions()
                                                  MultiPlayerSync()
                                                  StartCutScene("61cVeSui")~ EXIT
  IF ~Global("61CurrentDay","GLOBAL",3)~ THEN REPLY @36140 DO ~AddJournalEntry(@35830,QUEST)
                                                               StartCutSceneMode()
                                                               ClearAllActions()
                                                               MultiPlayerSync()
                                                               StartCutScene("61cVSui2")~ EXIT
END

IF WEIGHT #4
~True()~ THEN BEGIN 3
  SAY @36141
  IF ~~ THEN REPLY @36142 GOTO 4
  IF ~~ THEN REPLY @36143 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @36144
  IF ~Global("61CurrentDay","GLOBAL",2)~ THEN REPLY @36145 GOTO 5
  IF ~Global("61CurrentDay","GLOBAL",1)~ THEN REPLY @36790 GOTO 5
  IF ~~ THEN REPLY @36791 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @36792
  IF ~~ THEN REPLY @36793 DO ~AddJournalEntry(@35829,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @36794 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @38245
  IF ~~ THEN REPLY @41172 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @41173
  IF ~~ THEN EXTERN ~61JASPER~ 26
END

IF WEIGHT #0
~Global("VenominSeePyros","MYAREA",-1)~ THEN BEGIN 8
  SAY @41174
  IF ~~ THEN DO ~SetGlobal("VenominSeePyros","MYAREA",2)~ EXTERN ~61PYROS~ 18
END

IF ~~ THEN BEGIN 9
  SAY @41175
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @41176
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @41177
  IF ~~ THEN EXTERN ~61PYROS~ 19
END

IF ~~ THEN BEGIN 12
  SAY @41178
  IF ~~ THEN EXTERN ~61PYROS~ 20
END

IF ~~ THEN BEGIN 13
  SAY @41179
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("VenominSeeLothar","MYAREA",3)~ THEN BEGIN 14
  SAY @41180
  IF ~~ THEN DO ~SetGlobal("VenominSeeLothar","MYAREA",4)~ EXTERN ~61LOTHAR~ 12
END

IF ~~ THEN BEGIN 15
  SAY @41181
  IF ~~ THEN EXTERN ~61LOTHAR~ 13
END

IF ~~ THEN BEGIN 16
  SAY @41182
  IF ~~ THEN EXTERN ~61LOTHAR~ 14
END

IF WEIGHT #2
~Global("BeginTrial","MYAREA",2)~ THEN BEGIN 17
  SAY @41183
  IF ~~ THEN DO ~SetGlobal("BeginTrial","MYAREA",3)~ EXTERN ~61PYROS~ 23
END

IF ~~ THEN BEGIN 18
  SAY @41184
  IF ~~ THEN EXTERN ~61LOTHAR~ 15
END

IF ~~ THEN BEGIN 19
  SAY @41185
  IF ~~ THEN EXTERN ~61PYROS~ 25
END

IF ~~ THEN BEGIN 20
  SAY @41186
  IF ~~ THEN EXTERN ~61PYROS~ 26
END

IF ~~ THEN BEGIN 21
  SAY @41187
  IF ~~ THEN EXTERN ~61PYROS~ 27
END

IF ~~ THEN BEGIN 22
  SAY @41188
  IF ~~ THEN EXTERN ~61PYROS~ 28
END

IF ~~ THEN BEGIN 23
  SAY @41179
  IF ~~ THEN EXIT
END
