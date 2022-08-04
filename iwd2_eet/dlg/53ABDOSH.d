BEGIN ~53ABDOSH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22169
  IF ~~ THEN DO ~Enemy()
                 ActionOverride("Elder_Brain",ApplySpellRES("BDCUTSPY",Myself))~ FLAGS 0x200 EXTERN ~53ELDER~ 6
END

IF ~~ THEN BEGIN 1
  SAY @22171
  IF ~~ THEN DO ~Enemy()~ EXTERN ~53ELDER~ 7
END

IF ~~ THEN BEGIN 2
  SAY @22172
  IF ~~ THEN DO ~Enemy()~ EXIT
END
