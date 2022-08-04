BEGIN ~51DRAGU~

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @31056
  IF ~~ THEN REPLY @31057 GOTO 1
  IF ~~ THEN REPLY @31058 GOTO 2
  IF ~~ THEN REPLY @31059 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @31060
  IF ~Global("51Bolter","GLOBAL",0)~ THEN REPLY @31061 GOTO 3
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,GNOME)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @31058 GOTO 2
  IF ~~ THEN REPLY @31059 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @31063
  IF ~~ THEN REPLY @31057 GOTO 1
  IF ~Global("51Bolter","GLOBAL",0)~ THEN REPLY @31061 GOTO 3
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,GNOME)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @31059 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31064
  IF ~~ THEN REPLY @31065 GOTO 4
  IF ~~ THEN REPLY @31066 GOTO 5
  IF ~~ THEN REPLY @31057 GOTO 1
  IF ~~ THEN REPLY @31058 GOTO 2
  IF ~~ THEN REPLY @31059 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @31067
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @31068 DO ~SetGlobal("51Bolter","GLOBAL",1)
                                                                AddJournalEntry(@31048,QUEST)~ GOTO 7
  IF ~CheckStatLT(LastTalkedToBy,15,INT)~ THEN REPLY @31068 DO ~AddJournalEntry(@31048,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @31069 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @31073
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @31068 DO ~SetGlobal("51Bolter","GLOBAL",1)~ GOTO 7
  IF ~CheckStatLT(LastTalkedToBy,15,INT)~ THEN REPLY @31068 GOTO 6
  IF ~~ THEN REPLY @31069 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31074
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31076
  IF ~Race(LastTalkedToBy,GNOME)
      CheckStatGT(LastTalkedToBy,9,INT)~ THEN REPLY @31077 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @31077 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~!Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @31077 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @31057 GOTO 1
  IF ~~ THEN REPLY @31058 GOTO 2
  IF ~~ THEN REPLY @31080 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @31081
  IF ~~ THEN REPLY @31082 DO ~AddXP2DA("IW2EX10E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31055)
                              SetGlobal("51Dragu","GLOBAL",1)
                              EraseJournalEntry(@31049)
                              EraseJournalEntry(@31048)
                              AddJournalEntry(@31050,QUEST_DONE)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~~ THEN REPLY @31083 GOTO 10
  IF ~~ THEN REPLY @31084 DO ~AddXP2DA("IW2EX10E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31055)
                              SetGlobal("51Dragu","GLOBAL",4)
                              EraseJournalEntry(@31049)
                              EraseJournalEntry(@31048)
                              AddJournalEntry(@31051,QUEST_DONE)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~~ THEN REPLY @31085 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @31088
  IF ~Global("51Dragu","GLOBAL",1)~ THEN REPLY @31095 GOTO 11
  IF ~GlobalGT("51Dragu","GLOBAL",1)
      GlobalLT("51Dragu","GLOBAL",4)~ THEN REPLY @31095 GOTO 13
  IF ~Global("51Dragu","GLOBAL",4)~ THEN REPLY @31095 GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY @31096
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @31097 DO ~AddXP2DA("IW2EX10E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@31055)
                                                                SetGlobal("51Dragu","GLOBAL",3)
                                                                EraseJournalEntry(@31049)
                                                                EraseJournalEntry(@31048)
                                                                AddJournalEntry(@31053,QUEST_DONE)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~~ THEN REPLY @31098 DO ~AddXP2DA("IW2EX10E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31055)
                              SetGlobal("51Dragu","GLOBAL",2)
                              EraseJournalEntry(@31049)
                              EraseJournalEntry(@31048)
                              AddJournalEntry(@31052,QUEST_DONE)~ FLAGS 0x200 GOTO 9 /*true*/
  IF ~~ THEN REPLY @31085 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @31099
  IF ~~ THEN REPLY @31100 DO ~SetGlobal("51Dragu","GLOBAL",5)
                              StartStore("51Dragu",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31101 DO ~SetGlobal("51Dragu","GLOBAL",5)~ GOTO 12
  IF ~~ THEN REPLY @31080 DO ~SetGlobal("51Dragu","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @31102
  IF ~~ THEN REPLY @31103 DO ~SetGlobal("51Dragu","GLOBAL",5)
                              StartStore("51Dragu",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @31059 DO ~SetGlobal("51Dragu","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @31104
  IF ~Global("51Dragu","GLOBAL",2)~ THEN REPLY @31103 DO ~SetGlobal("51Dragu","GLOBAL",5)
                                                          GiveGoldForce(5000)
                                                          StartStore("51Dragu",LastTalkedToBy)~ EXIT
  IF ~Global("51Dragu","GLOBAL",2)~ THEN REPLY @31080 DO ~SetGlobal("51Dragu","GLOBAL",5)
                                                          GiveGoldForce(5000)~ EXIT
  IF ~Global("51Dragu","GLOBAL",3)~ THEN REPLY @31103 DO ~SetGlobal("51Dragu","GLOBAL",5)
                                                          GiveGoldForce(7000)
                                                          StartStore("51Dragu",LastTalkedToBy)~ EXIT
  IF ~Global("51Dragu","GLOBAL",3)~ THEN REPLY @31080 DO ~SetGlobal("51Dragu","GLOBAL",5)
                                                          GiveGoldForce(7000)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @31105
  IF ~~ THEN REPLY @32564 DO ~SetGlobal("51Dragu","GLOBAL",6)
                              GiveItemCreate("z5bwhxdb",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 15
  SAY @32565
  IF ~Global("51Bolter","GLOBAL",0)~ THEN REPLY @31061 GOTO 3
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,GNOME)
      CheckStatGT(LastTalkedToBy,9,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~Global("51Bolter","GLOBAL",1)
      Global("51Dragu","GLOBAL",0)
      !Race(LastTalkedToBy,GNOME)
      !Race(LastTalkedToBy,DWARF)
      CheckStatGT(LastTalkedToBy,16,INT)~ THEN REPLY @31062 DO ~AddJournalEntry(@31049,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @31057 GOTO 1
  IF ~~ THEN REPLY @31058 GOTO 2
  IF ~~ THEN REPLY @31059 EXIT
END

IF WEIGHT #1
~GlobalGT("51Dragu","GLOBAL",4)~ THEN BEGIN 16
  SAY @32566
  IF ~!Global("51Dragu","GLOBAL",6)~ THEN REPLY @175 DO ~StartStore("51Dragu",LastTalkedToBy)~ EXIT
  IF ~Global("51Dragu","GLOBAL",6)~ THEN REPLY @175 DO ~StartStore("51Dragu",LastTalkedToBy)~ EXIT //51Dragu
  IF ~~ THEN REPLY @31059 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 17
  SAY @36481
  IF ~~ THEN EXIT
END
