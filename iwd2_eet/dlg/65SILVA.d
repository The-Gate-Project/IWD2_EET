BEGIN ~65SILVA~

IF WEIGHT #1
~!Global("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN BEGIN 0
  SAY @28526
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN BEGIN 1
  SAY @28528
  IF ~~ THEN EXIT
END
