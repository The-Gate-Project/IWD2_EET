BEGIN ~50LIMHA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8136
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35545 DO ~AddJournalEntry(@34747,QUEST)
                                                             StartCutSceneMode()
                                                             StartCutScene("50cHann0")~ EXIT
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8140 DO ~SetGlobal("50LimhaQ","GLOBAL",1)~ GOTO 3
  IF ~Global("50Carynara","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8143 GOTO 4
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8144 GOTO 5
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8145 GOTO 1
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8146 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8147
  IF ~Global("50Limha","GLOBAL",0)~ THEN REPLY @8148 DO ~SetGlobal("50Limha","GLOBAL",1)~ GOTO 6
  IF ~Global("50Limha","GLOBAL",1)~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8151 GOTO 9
  IF ~~ THEN REPLY @8152 GOTO 2
  IF ~~ THEN REPLY @8146 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8153
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)~ THEN REPLY @8140 DO ~SetGlobal("50LimhaQ","GLOBAL",1)~ GOTO 3
  IF ~Global("50Carynara","GLOBAL",1)~ THEN REPLY @8143 GOTO 4
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)~ THEN REPLY @8144 GOTO 5
  IF ~~ THEN REPLY @8154 GOTO 1
  IF ~~ THEN REPLY @8146 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8155
  IF ~~ THEN REPLY @8156 GOTO 9
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)~ THEN REPLY @8144 GOTO 5
  IF ~Global("50Limha","GLOBAL",0)~ THEN REPLY @8158 DO ~SetGlobal("50Limha","GLOBAL",1)~ GOTO 6
  IF ~Global("50Limha","GLOBAL",1)~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8159 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8160
  IF ~~ THEN DO ~AddJournalEntry(@8128,QUEST)
                 StartCutSceneMode()
                 StartCutScene("50cHann0")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8162
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)~ THEN REPLY @8140 DO ~SetGlobal("50LimhaQ","GLOBAL",1)~ GOTO 3
  IF ~Global("50Carynara","GLOBAL",1)~ THEN REPLY @8143 GOTO 4
  IF ~Global("50Limha","GLOBAL",0)~ THEN REPLY @8158 DO ~SetGlobal("50Limha","GLOBAL",1)~ GOTO 6
  IF ~Global("50Limha","GLOBAL",1)~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8151 GOTO 9
  IF ~~ THEN REPLY @8159 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8163
  IF ~~ THEN REPLY @8164 GOTO 7
  IF ~~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8151 GOTO 9
  IF ~~ THEN REPLY @8165 GOTO 2
  IF ~~ THEN REPLY @8159 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8166
  IF ~~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8151 GOTO 9
  IF ~~ THEN REPLY @8165 GOTO 2
  IF ~~ THEN REPLY @8159 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8168
  IF ~False()~ THEN REPLY @8170 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @8171 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @8146 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8172
  IF ~~ THEN EXTERN ~50AGOG~ 4
END

IF ~~ THEN BEGIN 10
  SAY @8173
  IF ~Global("50Limha","GLOBAL",0)~ THEN REPLY @8148 DO ~SetGlobal("50Limha","GLOBAL",1)~ GOTO 6
  IF ~Global("50Limha","GLOBAL",1)~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8150 GOTO 8
  IF ~~ THEN REPLY @8165 GOTO 2
  IF ~~ THEN REPLY @8159 EXIT
END

IF ~True()~ THEN BEGIN 11
  SAY @8174
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35545 DO ~AddJournalEntry(@34747,QUEST)
                                                             StartCutSceneMode()
                                                             StartCutScene("50cHann0")~ EXIT
  IF ~Global("50Venla_Children","GLOBAL",1)
      !Global("50Carynara","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8140 DO ~SetGlobal("50LimhaQ","GLOBAL",1)~ GOTO 3
  IF ~Global("50Carynara","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8143 GOTO 4
  IF ~GlobalGT("IW5010_Visited","GLOBAL",0)
      !Global("50Suoma_Help","GLOBAL",5)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8144 GOTO 5
  IF ~Global("50Limha","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8148 DO ~SetGlobal("50Limha","GLOBAL",1)~ GOTO 6
  IF ~Global("50Limha","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8149 DO ~StartStore("50Limha",LastTalkedToBy)~ EXIT
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8150 GOTO 8
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8151 GOTO 9
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8175 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8176
  IF ~~ THEN EXTERN ~50AGOG~ 5
END

IF ~~ THEN BEGIN 13
  SAY @8177
  IF ~~ THEN REPLY @8178 DO ~AddJournalEntry(@8126,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @8180
  IF ~~ THEN REPLY @8185 GOTO 15
  IF ~~ THEN REPLY @8186 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @8187
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @8188
  IF ~~ THEN REPLY @8189 GOTO 17
  IF ~~ THEN REPLY @8190 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @8191
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @8193
  IF ~~ THEN REPLY @8194 DO ~AddJournalEntry(@8127,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @8195
  IF ~~ THEN REPLY @8197 GOTO 20
  IF ~~ THEN REPLY @8198 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @8199
  IF ~~ THEN REPLY @8200 GOTO 21
  IF ~~ THEN REPLY @8201 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @8202
  IF ~~ THEN REPLY @8203 DO ~Enemy()~ EXTERN ~50HANNU~ 4
END
