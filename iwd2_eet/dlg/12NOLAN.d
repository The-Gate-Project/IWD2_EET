BEGIN ~12NOLAN~

IF WEIGHT #3
~Global("12Know_Nolan","GLOBAL",0)~ THEN BEGIN 0
  SAY @40141
  IF ~~ THEN REPLY @40142 DO ~SetGlobal("12Know_Nolan","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @40143 DO ~SetGlobal("12Know_Nolan","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @40144 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @40145
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @40146 GOTO 18
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @40147 GOTO 19
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @40148 GOTO 20
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40150 GOTO 5
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40151 GOTO 5
  IF ~~ THEN REPLY @40152 GOTO 10
  IF ~Global("12Heard_Nature","GLOBAL",1)~ THEN REPLY @40153 GOTO 11
  IF ~Global("12Heard_Order","GLOBAL",1)~ THEN REPLY @40154 GOTO 8
  IF ~~ THEN REPLY @40155 EXIT
END

IF WEIGHT #2
~Global("12Know_Nolan","GLOBAL",1)~ THEN BEGIN 2
  SAY @40156
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @40146 GOTO 18
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @40157 GOTO 19
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @40148 GOTO 20
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40150 GOTO 5
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40151 GOTO 5
  IF ~~ THEN REPLY @40152 GOTO 10
  IF ~Global("12Heard_Nature","GLOBAL",1)~ THEN REPLY @40153 GOTO 11
  IF ~Global("12Heard_Order","GLOBAL",1)~ THEN REPLY @40154 GOTO 8
  IF ~~ THEN REPLY @40158 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @40159
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @40160 GOTO 18
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @40161 GOTO 19
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @40162 GOTO 20
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40150 GOTO 5
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @40151 GOTO 5
  IF ~~ THEN REPLY @40152 GOTO 10
  IF ~Global("12Heard_Nature","GLOBAL",1)~ THEN REPLY @40153 GOTO 11
  IF ~Global("12Heard_Order","GLOBAL",1)~ THEN REPLY @40154 GOTO 8
  IF ~~ THEN REPLY @40163 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @40164
  IF ~~ THEN REPLY @40165 DO ~SetGlobal("12Heard_Heal","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40166 DO ~SetGlobal("12Heard_Heal","GLOBAL",1)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~~ THEN REPLY @40167 DO ~SetGlobal("12Heard_Heal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @40168
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @40171
  IF ~~ THEN DO ~SetGlobal("12Heard_Order","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @40172
  IF ~OR(2)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40173 GOTO 9
  IF ~!Class(LastTalkedToBy,RANGER_ALL)
      OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40173 GOTO 25
  IF ~~ THEN REPLY @40154 GOTO 8
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40175 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @40176
  IF ~OR(2)
        Class(LastTalkedToBy,RANGER_ALL)
        Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40173 GOTO 9
  IF ~!Class(LastTalkedToBy,RANGER_ALL)
      OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40173 GOTO 25
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40175 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @40177
  IF ~~ THEN REPLY @40178 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 11
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)
                                                               StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~~ THEN REPLY @40175 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @40179
  IF ~~ THEN REPLY @40178 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 11
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)
                                                               StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~~ THEN REPLY @40175 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @40180
  IF ~~ THEN REPLY @40181 GOTO 12
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40182 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @40183
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40184 GOTO 14
  IF ~OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @40185 GOTO 14
  IF ~~ THEN REPLY @40186 GOTO 13
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40182 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @40187
  IF ~~ THEN REPLY @40185 GOTO 14
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40182 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @40188
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @40189
  IF ~~ THEN REPLY @40190 GOTO 16
  IF ~~ THEN REPLY @40186 GOTO 13
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40182 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @40191
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @40192
  IF ~~ THEN REPLY @40186 GOTO 13
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~~ THEN REPLY @40182 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @40193
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40194 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @40195
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40196 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @40197
  IF ~~ THEN REPLY @40174 GOTO 3
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40196 EXIT
END

IF WEIGHT #1
~Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 21
  SAY @40198
  IF ~Global("12Heard_Heal_2","GLOBAL",0)~ THEN REPLY @40199 GOTO 22
  IF ~Global("12Heard_Heal_2","GLOBAL",1)~ THEN REPLY @40199 DO ~StartCutSceneMode()
                                                                 StartCutScene("12cNolan")~ EXIT
  IF ~Global("12Heard_Heal_2","GLOBAL",0)~ THEN REPLY @40200 GOTO 26
  IF ~Global("12Heard_Heal_2","GLOBAL",1)~ THEN REPLY @40200 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @40201
  IF ~~ THEN DO ~SetGlobal("12Heard_Heal_2","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("12cNolan")~ EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 23
  SAY @40202
  IF ~Global("12Heard_Heal_2","GLOBAL",0)~ THEN REPLY @40203 GOTO 24
  IF ~Global("12Heard_Heal_2","GLOBAL",1)~ THEN REPLY @40203 DO ~StartCutSceneMode()
                                                                 StartCutScene("12cNolan")~ EXIT
  IF ~Global("12Heard_Heal_2","GLOBAL",0)~ THEN REPLY @40204 GOTO 27
  IF ~Global("12Heard_Heal_2","GLOBAL",1)~ THEN REPLY @40205 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @40206
  IF ~~ THEN DO ~SetGlobal("12Heard_Heal_2","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("12cNolan")~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @40207
  IF ~~ THEN REPLY @40178 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 11
  IF ~Global("12Heard_Heal","GLOBAL",0)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ GOTO 4
  IF ~Global("12Heard_Heal","GLOBAL",1)~ THEN REPLY @40149 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)
                                                               StartCutSceneMode()
                                                               StartCutScene("12cNolan")~ EXIT
  IF ~~ THEN REPLY @40174 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ FLAGS 0x200 GOTO 3 /*true*/
  IF ~~ THEN REPLY @40175 DO ~SetGlobal("12Heard_Nature","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @40323
  IF ~~ THEN DO ~SetGlobal("12Heard_Heal_2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @40324
  IF ~~ THEN DO ~SetGlobal("12Heard_Heal_2","GLOBAL",1)~ EXIT
END
