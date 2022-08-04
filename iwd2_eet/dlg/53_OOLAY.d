BEGIN ~53_OOLAY~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22816
  IF ~~ THEN REPLY @22817 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22818 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22819 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
END

IF ~~ THEN BEGIN 1
  SAY @22820
  IF ~~ THEN DO ~ActionOverride("Ecktarrilsenularr",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ECKTAR~ 1
END

IF ~~ THEN BEGIN 2
  SAY @22822
  IF ~~ THEN DO ~ActionOverride("Galoombethshe",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53GALOOM~ 3
END

IF ~~ THEN BEGIN 3
  SAY @22823
  IF ~~ THEN EXIT
END
