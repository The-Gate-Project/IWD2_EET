BEGIN ~65ILLMAT~

IF WEIGHT #7
~Global("SH_Illmater_Ritual","GLOBAL",1)
 PartyHasItem("z6bookti")
 PartyHasItem("z6gents")
 PartyHasItem("z6genbf")
 PartyHasItem("z6amulis")~ THEN BEGIN 0
  SAY @24397
  IF ~~ THEN REPLY @24398 DO ~AddXP2DA("IW2EX15H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24368)
                              TakePartyItem("z6gents")
                              TakePartyItem("z6genbf")
                              TakePartyItem("z6amulis")
                              SetGlobal("SH_Perform_Illmater_Ritual","GLOBAL",2)~ GOTO 1
  IF ~~ THEN REPLY @24400 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @24401
  IF ~~ THEN REPLY @24403 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @24404
  IF ~~ THEN DO ~SetGlobal("SH_Perform_Illmater_Ritual","GLOBAL",3)
                 DestroyItem("z6gents")
                 DestroyItem("z6genbf")
                 DestroyItem("z6amulis")
                 AddJournalEntry(@32699,QUEST)~ EXTERN ~65IYTXM~ 0
END

IF WEIGHT #8
~Global("SH_Illmater_Ritual","GLOBAL",1)
 !PartyHasItem("z6bookti")
 PartyHasItem("z6gents")
 PartyHasItem("z6genbf")
 PartyHasItem("z6amulis")~ THEN BEGIN 3
  SAY @24406
  IF ~~ THEN REPLY @30452 EXIT
END

IF WEIGHT #13
~NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @30453
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~Global("SH_Perform_Illmater_Ritual","GLOBAL",3)
 Global("SPRITE_IS_DEADIyachtu_Xvim","GLOBAL",1)~ THEN BEGIN 5
  SAY @30454
  IF ~~ THEN REPLY @30455 GOTO 6
  IF ~~ THEN REPLY @32194 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @32195
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @32196
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @36888
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @36889
  IF ~~ THEN DO ~AddXP2DA("IW2EX15VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@24370)
                 SetGlobal("SH_Perform_Illmater_Ritual","GLOBAL",4)
                 GiveItemCreate("z6gencl",LastTalkedToBy,1,1,0)
                 EraseJournalEntry(@24408)
                 EraseJournalEntry(@32699)
                 EraseJournalEntry(@24973)
                 EraseJournalEntry(@26394)
                 AddJournalEntry(@24355,QUEST)~ EXIT
END

IF WEIGHT #9
~Global("SH_Illmater_Ritual","GLOBAL",1)
 PartyHasItem("z6bookti")
 !PartyHasItem("z6gents")
 PartyHasItem("z6genbf")
 PartyHasItem("z6amulis")~ THEN BEGIN 10
  SAY @24406
  IF ~~ THEN REPLY @30452 EXIT
END

IF WEIGHT #10
~Global("SH_Illmater_Ritual","GLOBAL",1)
 PartyHasItem("z6bookti")
 PartyHasItem("z6gents")
 !PartyHasItem("z6genbf")
 PartyHasItem("z6amulis")~ THEN BEGIN 11
  SAY @24406
  IF ~~ THEN REPLY @30452 EXIT
END

IF WEIGHT #11
~Global("SH_Illmater_Ritual","GLOBAL",1)
 PartyHasItem("z6bookti")
 PartyHasItem("z6gents")
 PartyHasItem("z6genbf")
 !PartyHasItem("z6amulis")~ THEN BEGIN 12
  SAY @24406
  IF ~~ THEN REPLY @30452 EXIT
END

IF WEIGHT #12
~NumTimesTalkedToGT(0)
 !Global("SH_Perform_Illmater_Ritual","GLOBAL",4)~ THEN BEGIN 13
  SAY @30453
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~GlobalGT("SH_Perform_Illmater_Ritual","GLOBAL",3)~ THEN BEGIN 14
  SAY @36890
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~Global("SH_Nix_Illmater_Ritual","GLOBAL",1)~ THEN BEGIN 15
  SAY @38283
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",3)~ THEN BEGIN 16
  SAY @30453
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",2)~ THEN BEGIN 17
  SAY @30453
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~Global("SPRITE_IS_DEADToralSorn","GLOBAL",1)~ THEN BEGIN 18
  SAY @30453
  IF ~~ THEN EXIT
END

IF WEIGHT #5
~Global("SH_Perform_Illmater_Ritual","GLOBAL",3)
 !Global("SPRITE_IS_DEADIyachtu_Xvim","GLOBAL",1)~ THEN BEGIN 19
  SAY @39720
  IF ~~ THEN EXIT
END
