BEGIN ~63NEWZAM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @37148
  IF ~~ THEN REPLY @37149 DO ~SetGlobal("SH_Talked_Zaem","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @37150 GOTO 31
  IF ~~ THEN REPLY @37151 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @37152 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @37153
  IF ~~ THEN REPLY @37154 GOTO 2
  IF ~Global("SH_Know_Of_Creature","GLOBAL",1)~ THEN REPLY @38394 GOTO 17
  IF ~Global("SH_Know_Of_Creature","GLOBAL",1)~ THEN REPLY @37155 GOTO 19
END

IF ~~ THEN BEGIN 2
  SAY @37156
  IF ~~ THEN REPLY @37157 GOTO 3
  IF ~~ THEN REPLY @37158 GOTO 4
  IF ~~ THEN REPLY @37159 GOTO 35
END

IF ~~ THEN BEGIN 3
  SAY @37160
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @37161 GOTO 36
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @37161 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @37162
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @37161 GOTO 36
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @37161 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @37163
  IF ~~ THEN REPLY @37164 GOTO 6
  IF ~~ THEN REPLY @37165 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @37166
  IF ~~ THEN REPLY @37167 GOTO 7
  IF ~~ THEN REPLY @37168 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @37169
  IF ~~ THEN REPLY @37170 GOTO 9
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @37171 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @37172
  IF ~~ THEN REPLY @37170 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @37173
  IF ~~ THEN REPLY @37174 GOTO 10
  IF ~~ THEN REPLY @37175 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @37176
  IF ~~ THEN REPLY @37177 DO ~SetGlobal("SH_No_Food_Steal","GLOBAL",4)~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @37178
  IF ~~ THEN REPLY @37179 DO ~AddXP2DA("IW2EX14A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@37145)
                              SetGlobal("SH_No_Food_Steal","GLOBAL",4)
                              AddJournalEntry(@37141,QUEST)~ GOTO 12
  IF ~~ THEN REPLY @37165 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @37180
  IF ~~ THEN REPLY @37181 GOTO 13
  IF ~~ THEN REPLY @37182 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @37183
  IF ~~ THEN REPLY @37184 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @37185
  IF ~~ THEN REPLY @2171 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @37197 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @37188 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",2)~ EXIT
  IF ~PartyHasItem("z6ringrs")~ THEN REPLY @38397 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @37189
  IF ~~ THEN REPLY @2282 DO ~AddXP2DA("IW2EX14A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@37147)
                             SetGlobal("SH_Find_Food_Scrolls","GLOBAL",4)
                             TakePartyItem("z6ringrs")
                             DestroyItem("z6ringrs")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @29672
  IF ~~ THEN REPLY @1487 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",3)
                             AddJournalEntry(@37143,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @37198
  IF ~~ THEN REPLY @37199 GOTO 20
  IF ~~ THEN REPLY @38406 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @37200
  IF ~~ THEN REPLY @38409 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @37202
  IF ~~ THEN REPLY @37203 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @37204
  IF ~~ THEN REPLY @37205 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @37206
  IF ~!Global("SH_Know_Cedrin_Murderer","GLOBAL",1)~ THEN REPLY @37207 GOTO 22
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)~ THEN REPLY @39876 GOTO 39
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      !Global("SH_Zaem_XP","GLOBAL",1)~ THEN REPLY @39877 DO ~AddXP2DA("IW2EX14E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@37299)
                                                              SetGlobal("SH_Zaem_XP","GLOBAL",1)
                                                              EraseJournalEntry(@37142)
                                                              EraseJournalEntry(@36979)
                                                              EraseJournalEntry(@36980)
                                                              EraseJournalEntry(@36981)
                                                              EraseJournalEntry(@36982)
                                                              EraseJournalEntry(@36983)
                                                              EraseJournalEntry(@36984)
                                                              EraseJournalEntry(@36985)
                                                              EraseJournalEntry(@36986)
                                                              EraseJournalEntry(@36991)
                                                              EraseJournalEntry(@36990)
                                                              EraseJournalEntry(@37300)
                                                              EraseJournalEntry(@37301)
                                                              EraseJournalEntry(@37302)
                                                              EraseJournalEntry(@30326)
                                                              EraseJournalEntry(@30324)
                                                              EraseJournalEntry(@30325)
                                                              EraseJournalEntry(@37383)
                                                              EraseJournalEntry(@37384)
                                                              AddJournalEntry(@37298,QUEST_DONE)~ GOTO 39
END

IF ~~ THEN BEGIN 22
  SAY @37208
  IF ~~ THEN REPLY @37209 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @37210
  IF ~~ THEN REPLY @37211 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @37212
  IF ~!Global("SH_No_Food_Steal","GLOBAL",4)~ THEN REPLY @37213 GOTO 25
  IF ~Global("SH_No_Food_Steal","GLOBAL",4)~ THEN REPLY @37214 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37215
  IF ~~ THEN REPLY @37216 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @37217
  IF ~!Global("SH_Know_Cedrin_Murderer","GLOBAL",1)~ THEN REPLY @37218 DO ~AddXP2DA("IW2EX14A")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@37146)
                                                                           SetGlobal("SH_Creature_Cleared","GLOBAL",1)
                                                                           AddJournalEntry(@37142,QUEST)~ GOTO 27
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_No_Food_Steal","GLOBAL",4)
      !GlobalGT("SH_Find_Food_Scrolls","GLOBAL",3)~ THEN REPLY @37226 DO ~SetGlobal("SH_Creature_Cleared","GLOBAL",1)~ GOTO 10
  IF ~Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      Global("SH_No_Food_Steal","GLOBAL",4)~ THEN REPLY @2155 DO ~SetGlobal("SH_Creature_Cleared","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @37220
  IF ~~ THEN REPLY @37221 GOTO 28
  IF ~~ THEN REPLY @37222 GOTO 30
END

IF ~~ THEN BEGIN 28
  SAY @37223
  IF ~~ THEN REPLY @37224 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @37225
  IF ~!GlobalGT("SH_Find_Food_Scrolls","GLOBAL",3)~ THEN REPLY @37226 GOTO 10
  IF ~GlobalGT("SH_Find_Food_Scrolls","GLOBAL",3)~ THEN REPLY @26029 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @37227
  IF ~!GlobalGT("SH_Find_Food_Scrolls","GLOBAL",3)~ THEN REPLY @37228 GOTO 10
  IF ~GlobalGT("SH_Find_Food_Scrolls","GLOBAL",3)~ THEN REPLY @26029 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @37229
  IF ~~ THEN REPLY @37230 GOTO 32
  IF ~~ THEN REPLY @37231 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @37232
  IF ~~ THEN REPLY @37233 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @37234
  IF ~~ THEN REPLY @37235 DO ~SetGlobal("SH_Talked_Zaem","GLOBAL",1)~ GOTO 1
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 34
  SAY @37236
  IF ~!Global("SH_Talked_Zaem","GLOBAL",1)~ THEN REPLY @37149 GOTO 1
  IF ~Global("SH_Find_Food_Scrolls","GLOBAL",0)~ THEN REPLY @37237 GOTO 31
  IF ~Global("SH_Know_Of_Creature","GLOBAL",1)
      !Global("SH_Creature_Cleared","GLOBAL",1)~ THEN REPLY @37238 GOTO 20
  IF ~Global("SH_Find_Food_Scrolls","GLOBAL",3)
      !PartyHasItem("z6ringrs")~ THEN REPLY @37239 GOTO 16
  IF ~Global("SH_Find_Food_Scrolls","GLOBAL",3)
      PartyHasItem("z6ringrs")~ THEN REPLY @38397 DO ~AddJournalEntry(@37144,QUEST_DONE)~ GOTO 15
  IF ~Global("SH_Find_Food_Scrolls","GLOBAL",2)~ THEN REPLY @37241 GOTO 37
  IF ~Global("SPRITE_IS_DEADCedrin_Zil","GLOBAL",1)
      Global("SH_Know_Cedrin_Murderer","GLOBAL",1)
      !Global("SH_Zaem_XP","GLOBAL",1)~ THEN REPLY @37297 DO ~AddXP2DA("IW2EX14E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@37299)
                                                              SetGlobal("SH_Zaem_XP","GLOBAL",1)
                                                              EraseJournalEntry(@37142)
                                                              EraseJournalEntry(@36979)
                                                              EraseJournalEntry(@36980)
                                                              EraseJournalEntry(@36981)
                                                              EraseJournalEntry(@36982)
                                                              EraseJournalEntry(@36983)
                                                              EraseJournalEntry(@36984)
                                                              EraseJournalEntry(@36985)
                                                              EraseJournalEntry(@36986)
                                                              EraseJournalEntry(@36991)
                                                              EraseJournalEntry(@36990)
                                                              EraseJournalEntry(@37300)
                                                              EraseJournalEntry(@37301)
                                                              EraseJournalEntry(@37302)
                                                              EraseJournalEntry(@30326)
                                                              EraseJournalEntry(@30324)
                                                              EraseJournalEntry(@30325)
                                                              EraseJournalEntry(@37383)
                                                              EraseJournalEntry(@37384)
                                                              AddJournalEntry(@37298,QUEST_DONE)~ GOTO 38
  IF ~~ THEN REPLY @37242 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @37183
  IF ~~ THEN REPLY @37243 GOTO 3
END

IF ~~ THEN BEGIN 36
  SAY @37244
  IF ~~ THEN REPLY @37164 GOTO 6
END

IF ~~ THEN BEGIN 37
  SAY @37245
  IF ~~ THEN REPLY @37196 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",3)~ GOTO 18
  IF ~~ THEN REPLY @37197 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",3)~ GOTO 18
  IF ~~ THEN REPLY @37188 DO ~SetGlobal("SH_Find_Food_Scrolls","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @37295
  IF ~~ THEN REPLY @37296 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @39878
  IF ~~ THEN REPLY @39879 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @39880
  IF ~~ THEN REPLY @37213 GOTO 25
END
