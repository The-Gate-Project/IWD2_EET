BEGIN ~67PUDDY~

IF WEIGHT #2
~Global("SPRITE_IS_DEADGreaterFeyr67","GLOBAL",1)~ THEN BEGIN 0
  SAY @23137
  IF ~~ THEN REPLY @23138 GOTO 1
  IF ~~ THEN REPLY @23139 GOTO 10
END

IF ~~ THEN BEGIN 1
  SAY @23140
  IF ~~ THEN REPLY @23143 GOTO 2
  IF ~~ THEN REPLY @23148 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23153
  IF ~~ THEN REPLY @23154 GOTO 3
  IF ~~ THEN REPLY @23155 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23156
  IF ~~ THEN REPLY @23157 GOTO 4
  IF ~Global("SH_Carl_Third","GLOBAL",1)~ THEN REPLY @23158 GOTO 18
END

IF ~~ THEN BEGIN 4
  SAY @23159
  IF ~~ THEN REPLY @23160 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @23161
  IF ~~ THEN REPLY @23162 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @23163
  IF ~OpenState("AR6700_Cell1",TRUE)
      !Global("SH_Freed_Puddy","GLOBAL",1)~ THEN REPLY @23164 DO ~AddXP2DA("IW2EX15A")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@23135)
                                                                  SetGlobal("SH_Freed_Puddy","GLOBAL",1)~ GOTO 7
  IF ~OpenState("AR6700_Cell1",FALSE)~ THEN REPLY @35497 EXIT
  IF ~OpenState("AR6700_Cell1",TRUE)
      Global("SH_Freed_Puddy","GLOBAL",1)~ THEN REPLY @39552 GOTO 7
  IF ~~ THEN REPLY @23177 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @23178
  IF ~~ THEN REPLY @23180 GOTO 8
  IF ~~ THEN REPLY @26684 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @27116
  IF ~~ THEN REPLY @27117 DO ~SetGlobal("SH_Puddy_Home","GLOBAL",1)
                              AddJournalEntry(@23111,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @27120
  IF ~~ THEN REPLY @27121 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @27192
  IF ~~ THEN REPLY @27193 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 11
  SAY @27200
  IF ~~ THEN REPLY @27201 GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY @27234
  IF ~~ THEN REPLY @27235 EXIT
END

IF WEIGHT #0
~Global("SH_Puddy_Home","GLOBAL",2)~ THEN BEGIN 13
  SAY @27234
  IF ~~ THEN REPLY @27243 DO ~AddXP2DA("IW2EX15H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@23136)
                              SetGlobal("SH_Puddy_Home","GLOBAL",3)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @27244
  IF ~~ THEN REPLY @28496 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @28699
  IF ~~ THEN REPLY @28700 DO ~EraseJournalEntry(@33761)
                              EraseJournalEntry(@23111)
                              AddJournalEntry(@23112,QUEST_DONE)
                              StartCutSceneMode()
                              StartCutScene("67cPuddy")~ EXIT
END

IF WEIGHT #1
~Global("SH_Puddy_Home","GLOBAL",1)
 !Global("SH_Puddy_Home","GLOBAL",2)~ THEN BEGIN 16
  SAY @27234
  IF ~Global("SH_Carl_Third","GLOBAL",1)~ THEN REPLY @35479 GOTO 18
  IF ~~ THEN REPLY @28726 EXIT
END

IF WEIGHT #3 ~!Global("SPRITE_IS_DEADGreaterFeyr67","GLOBAL",1)~ THEN BEGIN 17
  SAY @28727
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @29240
  IF ~~ THEN REPLY @29241 GOTO 19
  IF ~!Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @29242 GOTO 4
END

IF ~~ THEN BEGIN 19
  SAY @29250
  IF ~!Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @29251 GOTO 4
  IF ~Global("SH_Puddy_Home","GLOBAL",1)~ THEN REPLY @35480 EXIT
  IF ~~ THEN REPLY @29252 EXIT
END
