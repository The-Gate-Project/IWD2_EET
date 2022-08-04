BEGIN ~53SORN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22739
  IF ~~ THEN REPLY @22741 GOTO 1
  IF ~~ THEN REPLY @22742 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22743 DO ~Enemy()~ GOTO 4
  IF ~//SubRace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @22744 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @22837 DO ~Enemy()
                              EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @22845
  IF ~~ THEN EXTERN ~53NADAL~ 1
END

IF ~~ THEN BEGIN 2
  SAY @22849
  IF ~~ THEN REPLY @22850 GOTO 8
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22855 GOTO 6
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22856 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @22858
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22855 GOTO 6
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22856 GOTO 7
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22859 GOTO 19
  IF ~Global("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22859 GOTO 19
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22860 GOTO 20
  IF ~Global("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22860 GOTO 20
  IF ~~ THEN REPLY @22863 DO ~Enemy()~ GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @22864
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22865
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22866
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22868 GOTO 10
  IF ~~ THEN REPLY @22867 DO ~Enemy()~ EXTERN ~53NADAL~ 2
  IF ~~ THEN REPLY @22869 DO ~Enemy()~ GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY @22870
  IF ~~ THEN REPLY @22871 DO ~Enemy()~ GOTO 12
  IF ~~ THEN REPLY @22872 DO ~Enemy()~ GOTO 13
  IF ~~ THEN REPLY @22873 GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @22874
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22875
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 10
  SAY @22876
  IF ~~ THEN REPLY @32742 GOTO 24
END

IF ~~ THEN BEGIN 11
  SAY @22877
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22878
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22879
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @22880
  IF ~~ THEN EXTERN ~53NADAL~ 3
END

IF ~~ THEN BEGIN 15
  SAY @22882
  IF ~~ THEN REPLY @22883 DO ~Enemy()~ EXTERN ~53NADAL~ 4
  IF ~~ THEN REPLY @22884 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22885
  IF ~~ THEN REPLY @32742 GOTO 24
END

IF ~~ THEN BEGIN 17
  SAY @22886
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 18
  SAY @22887
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @22888
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22855 GOTO 6
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22856 GOTO 7
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22860 GOTO 20
  IF ~Global("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22860 GOTO 20
  IF ~~ THEN REPLY @32742 EXTERN ~53NADAL~ 5
END

IF ~~ THEN BEGIN 20
  SAY @32743
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22855 GOTO 6
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22856 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @32744 GOTO 21
  IF ~~ THEN REPLY @32742 EXTERN ~53NADAL~ 5
END

IF ~~ THEN BEGIN 21
  SAY @32745
  IF ~~ THEN REPLY @32742 GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY @32746
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      !Global("Know_Viciscamera","GLOBAL",1)~ THEN REPLY @22855 GOTO 6
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22856 GOTO 7
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22859 GOTO 19
  IF ~Global("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22859 GOTO 19
  IF ~GlobalGT("Viciscamera_Quest","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22860 GOTO 20
  IF ~Global("Viciscamera_Quest","GLOBAL",0)~ THEN REPLY @22860 GOTO 20
  IF ~~ THEN REPLY @22863 DO ~Enemy()~ GOTO 11
END

IF ~~ THEN BEGIN 23
  SAY @32747
  IF ~CheckStatLT(LastTalkedToBy,15,STR)~ THEN DO ~Enemy()
                                                   EndCutSceneMode()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @420 GOTO 25
  IF ~CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @38545 DO ~Enemy()
                                                                EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @2495
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38544
  IF ~~ THEN DO ~EndCutSceneMode()~ EXIT
END
