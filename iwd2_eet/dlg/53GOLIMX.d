BEGIN ~53GOLIMX~

IF WEIGHT #3
~True()~ THEN BEGIN 0
  SAY @37636
  IF ~~ THEN DO ~SetGlobal("53GolIm","GLOBAL",1)
                 AddJournalEntry(@27325,QUEST)~ GOTO 1
END

IF WEIGHT #2
~Global("53GolIm","GLOBAL",1)~ THEN BEGIN 1
  SAY @37637
  IF ~PartyHasItem("z5miscig")~ THEN REPLY @458 DO ~TakePartyItem("z5miscig")
                                                    DestroyItem("z5miscig")
                                                    SetGlobal("53GolIm","GLOBAL",10)
                                                    AddJournalEntry(@27327,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @27326 EXIT
END

IF WEIGHT #1
~Global("53GolIm","GLOBAL",10)~ THEN BEGIN 2
  SAY @27323
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~!Global("53PCGolem_Protect","GLOBAL",0)~ THEN BEGIN 3
  SAY @27324
  IF ~~ THEN EXIT
END
