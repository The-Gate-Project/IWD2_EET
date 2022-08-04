BEGIN ~61ALCHEM~

IF WEIGHT #3
~True()~ THEN BEGIN 0
  SAY @32013
  IF ~~ THEN REPLY @32159 DO ~SetGlobal("AlchemistCallForHelp","MYAREA",1)~ EXIT
  IF ~!Global("61Know_Alchemist","GLOBAL",1)~ THEN REPLY @32160 DO ~SetGlobal("61Know_Alchemist","GLOBAL",1)~ GOTO 2
  IF ~Global("61Know_Alchemist","GLOBAL",1)
      GlobalGT("61NheeroMissionQuest","GLOBAL",3)
      GlobalLT("61NheeroMissionQuest","GLOBAL",7)
      CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @32161 DO ~SetGlobal("61Alchemist_Intimidated","GLOBAL",1)~ GOTO 3
END

IF WEIGHT #2
~//Or(2)
   //Sequence(Myself,SLEEP)
   //Sequence(Myself,TWITCH)
 False()~ THEN BEGIN 1
  SAY @32162
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @32164
  IF ~//Or(2)
        PartyHasItem("z6genmm")
      //  PartyHasItem("61HFGnMM")
      GlobalGT("61NheeroMissionQuest","GLOBAL",3)
      GlobalLT("61NheeroMissionQuest","GLOBAL",7)
      CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @32183 DO ~SetGlobal("61Alchemist_Intimidated","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @32184 DO ~SetGlobal("AlchemistCallForHelp","MYAREA",1)~ EXIT
  IF ~~ THEN REPLY @32185 DO ~SetGlobal("AlchemistCallForHelp","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @39387
  IF ~~ THEN REPLY @40396 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @40397
  IF ~~ THEN REPLY @41075 EXIT
END

IF WEIGHT #0
~Global("61Alchemist_Intimidated","GLOBAL",1)
 GlobalLT("61NheeroMissionQuest","GLOBAL",7)~ THEN BEGIN 5
  SAY @41099
  IF ~~ THEN REPLY @41100 EXIT
END

IF WEIGHT #1
~Global("61Alchemist_Intimidated","GLOBAL",1)
 GlobalGT("61NheeroMissionQuest","GLOBAL",6)~ THEN BEGIN 6
  SAY @41101
  IF ~~ THEN REPLY @41102 EXIT
END
