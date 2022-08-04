BEGIN ~53ECKTAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22271
  IF ~~ THEN REPLY @22272 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22273 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22274 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
END

IF ~~ THEN BEGIN 1
  SAY @22275
  IF ~~ THEN DO ~ActionOverride("Galoombethshe",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53GALOOM~ 2
END

IF ~~ THEN BEGIN 2
  SAY @22277
  IF ~~ THEN DO ~Enemy()
                 ActionOverride("Oolay",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53_OOLAY~ 3
END
