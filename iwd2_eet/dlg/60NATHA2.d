BEGIN ~60NATHA2~

IF WEIGHT #2
~Global("60Spoke_Nate","GLOBAL",0)~ THEN BEGIN 0
  SAY @39080
  IF ~~ THEN REPLY @39081 DO ~SetGlobal("60Know_Nate","GLOBAL",1)
                              SetGlobal("60Spoke_Nate","GLOBAL",1)~ GOTO 3
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @39083 DO ~AddJournalEntry(@39077,QUEST)~ GOTO 14
  IF ~Global("60Key_Quest","GLOBAL",1)
      PartyHasItem("z6key")~ THEN REPLY @39084 DO ~AddJournalEntry(@39078,QUEST)~ GOTO 14
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 26
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~~ THEN REPLY @39087 GOTO 10
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39090 EXIT
END

IF WEIGHT #3
~Global("60Spoke_Nate","GLOBAL",1)~ THEN BEGIN 1
  SAY @39091
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @39083 DO ~AddJournalEntry(@39077,QUEST)~ GOTO 14
  IF ~Global("60Key_Quest","GLOBAL",1)
      PartyHasItem("z6key")~ THEN REPLY @39084 DO ~AddJournalEntry(@39078,QUEST)~ GOTO 14
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 26
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 5
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 5
  IF ~AreaCheck("IW6008")~ THEN REPLY @39094 GOTO 10
  IF ~~ THEN REPLY @39095 GOTO 12
  IF ~Global("Know_About_Yuan_Ti","GLOBAL",1)~ THEN REPLY @39096 GOTO 11
  IF ~Global("60Egenia_Quest","GLOBAL",0)~ THEN REPLY @39097 GOTO 15
  IF ~~ THEN REPLY @39098 GOTO 13
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39099 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @39100
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @39083 DO ~AddJournalEntry(@39077,QUEST)~ GOTO 14
  IF ~Global("60Key_Quest","GLOBAL",1)
      PartyHasItem("z6key")~ THEN REPLY @39084 DO ~AddJournalEntry(@39078,QUEST)~ GOTO 14
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 26
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 5
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 5
  IF ~AreaCheck("IW6008")~ THEN REPLY @39094 GOTO 10
  IF ~~ THEN REPLY @39095 GOTO 12
  IF ~Global("Know_About_Yuan_Ti","GLOBAL",1)~ THEN REPLY @39096 GOTO 11
  IF ~Global("60Egenia_Quest","GLOBAL",0)~ THEN REPLY @39097 GOTO 15
  IF ~AreaCheck("IW6008")~ THEN REPLY @39098 GOTO 13
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39090 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @39101
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("Kuldahar_Undead_Cleared","GLOBAL",1)
      !Global("60Hiepherus_Quest","GLOBAL",2)~ THEN REPLY @39083 DO ~AddJournalEntry(@39077,QUEST)~ GOTO 14
  IF ~Global("60Key_Quest","GLOBAL",1)
      PartyHasItem("z6key")~ THEN REPLY @39084 DO ~AddJournalEntry(@39078,QUEST)~ GOTO 14
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 26
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",0)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39092 GOTO 5
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      !Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 8
  IF ~Global("Jermsy_Hostile","GLOBAL",1)
      Kit(LastTalkedToBy,OHILMATER)~ THEN REPLY @39093 GOTO 5
  IF ~AreaCheck("IW6008")~ THEN REPLY @39094 GOTO 10
  IF ~~ THEN REPLY @39095 GOTO 12
  IF ~Global("Know_About_Yuan_Ti","GLOBAL",1)~ THEN REPLY @39096 GOTO 11
  IF ~Global("60Egenia_Quest","GLOBAL",0)~ THEN REPLY @39097 GOTO 15
  IF ~AreaCheck("IW6008")~ THEN REPLY @39098 GOTO 13
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39090 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @39102
  IF ~~ THEN REPLY @39103 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39104 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @39105
  IF ~Kit(LastTalkedToBy,OHILMATER)~ THEN GOTO 6
  IF ~!Kit(LastTalkedToBy,OHILMATER)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @39107
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @39108
  IF ~~ THEN REPLY @39109 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @39111
  IF ~~ THEN REPLY @39109 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @39112
  IF ~False()~ THEN REPLY @39113 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @39114 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @39115 GOTO 2
  IF ~~ THEN REPLY @39116 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39090 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @39117
  IF ~~ THEN REPLY @39118 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @39119 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~~ THEN REPLY @39088 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)
                              StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @39110 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @39120
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @39121
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @39122
  IF ~~ THEN REPLY @39096 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @39119 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ FLAGS 0x200 GOTO 2 /*true*/
  IF ~~ THEN REPLY @39088 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)
                              StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @39110 DO ~SetGlobal("Know_About_Yuan_Ti","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @39123
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @39124
  IF ~~ THEN DO ~SetGlobal("60Egenia_Quest","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @39125
  IF ~~ THEN REPLY @39126 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @39127
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @39128
  IF ~~ THEN REPLY @39129 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @39130
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @39131
  IF ~Kit(LastTalkedToBy,OHILMATER)
      Global("Kuldahar_6003_UndeadKilled","GLOBAL",1)~ THEN REPLY @39132 GOTO 21
  IF ~Kit(LastTalkedToBy,OHILMATER)
      !Global("Kuldahar_6003_UndeadKilled","GLOBAL",1)~ THEN REPLY @39132 GOTO 22
  IF ~Global("Kuldahar_6003_UndeadKilled","GLOBAL",1)~ THEN REPLY @39133 GOTO 21
  IF ~!Global("Kuldahar_6003_UndeadKilled","GLOBAL",1)~ THEN REPLY @39133 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY @39134
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @39135
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @39136
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @39137
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @39138 DO ~SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                        GiveItemCreate("RING41",LastTalkedToBy,1, 1, 1)
                                                        GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                        GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)~ GOTO 25
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39139 DO ~SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                             GiveItemCreate("RING41",LastTalkedToBy,1, 1, 1)
                                                             GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                             GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)~ GOTO 25
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39140 GOTO 2
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39089 GOTO 9
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @39141
  IF ~~ THEN REPLY @39140 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @39142
  IF ~~ THEN REPLY @39119 GOTO 2
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39089 GOTO 9
  IF ~~ THEN REPLY @39110 EXIT
END

IF WEIGHT #0
~!AreaCheck("IW6008")
 Global("60Met_Nathaniel_6001","GLOBAL",0)~ THEN BEGIN 27
  SAY @39143
  IF ~~ THEN REPLY @39144 DO ~SetGlobal("60Met_Nathaniel_6001","GLOBAL",1)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @39145
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 26
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",0)~ THEN REPLY @39146 GOTO 15
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39147 GOTO 9
  IF ~~ THEN REPLY @39148 EXIT
END

IF WEIGHT #1
~!AreaCheck("IW6008")~ THEN BEGIN 29
  SAY @39149
  IF ~Global("61PlayerMetRakshasa","GLOBAL",1)~ THEN REPLY @39082 DO ~SetGlobal("61PlayerMetRakshasa","GLOBAL",2)
                                                                      AddJournalEntry(@39071,QUEST)~ GOTO 4
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Problem_Found","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",0)~ THEN REPLY @39085 DO ~AddJournalEntry(@39075,QUEST)~ GOTO 21
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      !Class(LastTalkedToBy,MONK)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                              SetGlobal("60Egenia_Quest","GLOBAL",3)
                                                              GiveItemCreate("RING41",LastTalkedToBy,1,1,1)
                                                              GiveItemCreate("z0wand30",LastTalkedToBy,50,0,0)
                                                              GiveItemCreate("SPPR707Z",LastTalkedToBy,1,1,1)
                                                              EraseJournalEntry(@38957)
                                                              EraseJournalEntry(@39075)
                                                              AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                             EraseJournalEntry(@38957)
                                                             EraseJournalEntry(@39075)
                                                             AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",1)
      Global("60Egenia_Gone","GLOBAL",1)
      Class(LastTalkedToBy,MONK)~ THEN REPLY @39086 DO ~AddXP2DA("IW2EX12E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@39079)
                                                        EraseJournalEntry(@38957)
                                                        EraseJournalEntry(@39075)
                                                        AddJournalEntry(@39076,QUEST_DONE)~ GOTO 24
  IF ~Global("60Egenia_Quest","GLOBAL",0)~ THEN REPLY @39146 GOTO 15
  IF ~~ THEN REPLY @39088 DO ~StartStore("60Nathan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39147 GOTO 9
  IF ~~ THEN REPLY @39148 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @39150
  IF ~//Subrace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN DO ~SetGlobal("60Know_Nate","GLOBAL",1)~ EXTERN ~60JERMS2~ 4
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN DO ~SetGlobal("60Know_Nate","GLOBAL",1)~ EXTERN ~60JERMS2~ 3
  IF ~!Race(LastTalkedToBy,HALFORC)
      //!Subrace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN DO ~SetGlobal("60Know_Nate","GLOBAL",1)~ EXTERN ~60JERMS2~ 5
END

IF ~~ THEN BEGIN 31
  SAY @39151
  IF ~~ THEN EXTERN ~60JERMS2~ 11
END

IF ~~ THEN BEGIN 32
  SAY @39152
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @39153
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @39154
  IF ~~ THEN EXTERN ~60JERMS2~ 16
END

IF ~~ THEN BEGIN 35
  SAY @39155
  IF ~~ THEN EXTERN ~60JERMS2~ 20
END

IF ~~ THEN BEGIN 36
  SAY @39156
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39157 GOTO 37
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39158 GOTO 37
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @39159 EXTERN ~60JERMS2~ 22
END

IF ~~ THEN BEGIN 37
  SAY @39160
  IF ~~ THEN EXTERN ~60JERMS2~ 21
END

IF ~~ THEN BEGIN 38
  SAY @39161
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @39162
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY @39163
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 41
  SAY @39164
  IF ~~ THEN DO ~SetGlobal("Nathaniel_Opens_6002_Door","GLOBAL",1)~ EXTERN ~60JERMS2~ 23
END
