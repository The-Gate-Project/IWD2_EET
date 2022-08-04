BEGIN ~53ZEPH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22944
  IF ~~ THEN REPLY @22945 DO ~ActionOverride("Galoombethshe",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53GALOOM~ 1
  IF ~~ THEN REPLY @22946 DO ~ActionOverride("Galoombethshe",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53GALOOM~ 1
END

IF ~~ THEN BEGIN 1
  SAY @22947
  IF ~~ THEN DO ~ActionOverride("Oolay",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53_OOLAY~ 2
END

IF ~~ THEN BEGIN 2
  SAY @22949
  IF ~~ THEN DO ~ActionOverride("Ecktarrilsenularr",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ECKTAR~ 2
END
