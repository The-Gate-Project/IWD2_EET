BEGIN ~53GALOOM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22300
  IF ~~ THEN REPLY @22301 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22302 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
  IF ~~ THEN REPLY @22304 DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 0
END

IF ~~ THEN BEGIN 1
  SAY @22305
  IF ~~ THEN REPLY @22306 DO ~ActionOverride("Oolay",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53_OOLAY~ 1
  IF ~~ THEN REPLY @22307 DO ~ActionOverride("Oolay",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53_OOLAY~ 1
  IF ~~ THEN REPLY @22308 DO ~ActionOverride("Oolay",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53_OOLAY~ 1
END

IF ~~ THEN BEGIN 2
  SAY @22309
  IF ~~ THEN DO ~ActionOverride("ZephulpMaress",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ZEPH~ 1
END

IF ~~ THEN BEGIN 3
  SAY @22312
  IF ~~ THEN DO ~ActionOverride("Elder_Brain",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ELDER~ 8
END
