BEGIN ~51BARUD~

IF ~~ THEN BEGIN 0
  SAY @9223
  IF ~~ THEN REPLY @9224 EXTERN ~51HARHOR~ 2
END

IF WEIGHT #3
~NumberOfTimesTalkedTo(0)
 //!SubRace(LastTalkedToBy,DWARF_GRAY)
 //!SubRace(LastTalkedToBy,DWARF_GOLD)
 //!SubRace(LastTalkedToBy,GNOME_DEEP)
 //!SubRace(LastTalkedToBy,ELF_DROW)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",5))
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN BEGIN 1
  SAY @9225
  IF ~~ THEN REPLY @9226 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @9227
  IF ~!PartyHasItem("z5misc39")~ THEN DO ~AddJournalEntry(@9176,QUEST)~ GOTO 3
  IF ~PartyHasItem("z5misc39")~ THEN DO ~AddJournalEntry(@9176,QUEST)~ GOTO 31
END

IF ~~ THEN BEGIN 3
  SAY @9229
  IF ~~ THEN REPLY @9230 DO ~SetGlobal("51Barud_Offer","GLOBAL",1)
                             AddJournalEntry(@9177,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @9231 DO ~SetGlobal("51Barud_Offer","GLOBAL",1)
                             AddJournalEntry(@9177,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9232
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9239 GOTO 5
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9241 DO ~SetGlobal("51Barud_Offer","GLOBAL",2)
      	                                                     SetGlobal("51Barud_Caves","GLOBAL",1)
      	                                                     AddJournalEntry(@9178,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @9242 GOTO 21
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9243 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34384 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9244
  IF ~~ THEN REPLY @9241 DO ~SetGlobal("51Barud_Offer","GLOBAL",2)
                             SetGlobal("51Barud_Caves","GLOBAL",1)
                             AddJournalEntry(@9178,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @9242 GOTO 21
  IF ~~ THEN REPLY @9243 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9245
  IF ~!Class(LastTalkedToBy,MONK)
      !Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9246 DO ~AddXP2DA("IW2EX10E")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@9221)
                                                                       SetGlobal("51Barud_Offer","GLOBAL",3)
                                                                       SetGlobal("51Barud_Caves","GLOBAL",2)
                                                                       GiveGoldForce(326)
                                                                       GiveItemCreate("MISC34",LastTalkedToBy,3,0,0)
                                                                       GiveItemCreate("z5shldfo",LastTalkedToBy,0,0,0)
                                                                       GiveItemCreate("z5ax1hdf",LastTalkedToBy,0,0,0)
                                                                       EraseJournalEntry(@29165)
                                                                       EraseJournalEntry(@8597)
                                                                       EraseJournalEntry(@9178)
                                                                       SetQuestDone(@9177)
                                                                       AddJournalEntry(@9214,QUEST)~ GOTO 7
  IF ~Class(LastTalkedToBy,MONK)
      !Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9246 DO ~AddXP2DA("IW2EX10E")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@9221)
                                                                       SetGlobal("51Barud_Offer","GLOBAL",3)
                                                                       SetGlobal("51Barud_Caves","GLOBAL",2)
                                                                       EraseJournalEntry(@29165)
                                                                       EraseJournalEntry(@8597)
                                                                       EraseJournalEntry(@9178)
                                                                       SetQuestDone(@9177)
                                                                       AddJournalEntry(@34400,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~~ THEN REPLY @9248 GOTO 19
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9250
  IF ~!Class(LastTalkedToBy,MONK)~ THEN GOTO 8
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @34403 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @9251
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9241 DO ~SetGlobal("51Barud_Offer","GLOBAL",4)
      	                                                     SetGlobal("51Barud_Monks","GLOBAL",1)
      	                                                     AddJournalEntry(@9215,QUEST)~ GOTO 9
  IF ~~ THEN REPLY @9242 GOTO 21
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @9243 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @34384 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9252
  IF ~!Class(LastTalkedToBy,MONK)
      !Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9253 DO ~AddXP2DA("IW2EX10A")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@9222)
                                                                        SetGlobal("51Barud_Monks","GLOBAL",2)
                                                                        GiveGoldForce(298)
                                                                        GiveItemCreate("MISC34",LastTalkedToBy,4,0,0)
                                                                        GiveItemCreate("z5plat10",LastTalkedToBy,0,0,0)
                                                                        GiveItemCreate("z5hammda",LastTalkedToBy,0,0,0)
                                                                        GiveItemCreate("XBOW17",LastTalkedToBy,0,0,0)
                                                                        EraseJournalEntry(@9214)
                                                                        EraseJournalEntry(@34400)
                                                                        EraseJournalEntry(@9215)
                                                                        EraseJournalEntry(@28813)
                                                                        AddJournalEntry(@9216,QUEST_DONE)~ GOTO 10
  IF ~Class(LastTalkedToBy,MONK)
      !Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9253 DO ~AddXP2DA("IW2EX10A")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@9222)
                                                                        SetGlobal("51Barud_Monks","GLOBAL",2)
                                                                        EraseJournalEntry(@9214)
                                                                        EraseJournalEntry(@34400)
                                                                        EraseJournalEntry(@9215)
                                                                        EraseJournalEntry(@28813)
                                                                        AddJournalEntry(@34402,QUEST_DONE)~ GOTO 10
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~~ THEN REPLY @9248 GOTO 19
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9254
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @34409 GOTO 30
  IF ~!Class(LastTalkedToBy,MONK)~ THEN REPLY @9255 GOTO 11
  IF ~!Class(LastTalkedToBy,MONK)~ THEN REPLY @9256 GOTO 19
  IF ~!Class(LastTalkedToBy,MONK)~ THEN REPLY @9257 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9258
  IF ~~ THEN REPLY @9259 GOTO 12
  IF ~~ THEN REPLY @9260 GOTO 21
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9264
  IF ~~ THEN REPLY @9259 GOTO 13
  IF ~~ THEN REPLY @9260 GOTO 21
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @9265
  IF ~~ THEN REPLY @9259 DO ~AddJournalEntry(@9217,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @9260 GOTO 21
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @9266
  IF ~!Global("51Barud_Caves","GLOBAL",2)
      !Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9259 DO ~AddJournalEntry(@9218,QUEST)~ GOTO 16
  IF ~Global("51Barud_Caves","GLOBAL",2)
      !Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9259 DO ~AddJournalEntry(@9218,QUEST)~ GOTO 17
  IF ~Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9259 DO ~AddJournalEntry(@9219,QUEST)~ GOTO 18
  IF ~~ THEN REPLY @9267 DO ~AddJournalEntry(@9220,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @9260 GOTO 21
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9268
  IF ~!Global("51Barud_Caves","GLOBAL",2)
      !Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9269 DO ~AddJournalEntry(@9218,QUEST)~ GOTO 16
  IF ~Global("51Barud_Caves","GLOBAL",2)
      !Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9269 DO ~AddJournalEntry(@9218,QUEST)~ GOTO 17
  IF ~Global("51Barud_Monks","GLOBAL",2)~ THEN REPLY @9269 DO ~AddJournalEntry(@9219,QUEST)~ GOTO 18
  IF ~~ THEN REPLY @9260 GOTO 21
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9270
  IF ~~ THEN REPLY @9230 GOTO 21
  IF ~GlobalGT("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9248 GOTO 19
  IF ~GlobalLT("51Barud_Offer","GLOBAL",2)~ THEN REPLY @9248 GOTO 20
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9271
  IF ~~ THEN REPLY @9230 GOTO 21
  IF ~~ THEN REPLY @9248 GOTO 19
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9272
  IF ~~ THEN REPLY @9230 GOTO 21
  IF ~~ THEN REPLY @9248 GOTO 19
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9273
  IF ~False()~ THEN REPLY @9274 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @9275 DO ~RestPartyEx(0,0,TRUE)~ EXIT
  IF ~~ THEN REPLY @9263 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @9276
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9277 GOTO 5
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~~ THEN REPLY @9278 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @9279
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9277 GOTO 5
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("51Barud_Offer","GLOBAL",3)~ THEN REPLY @9280 GOTO 8
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~GlobalGT("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9248 GOTO 19
  IF ~GlobalLT("51Barud_Offer","GLOBAL",2)~ THEN REPLY @9248 GOTO 20
  IF ~~ THEN REPLY @9263 EXIT
END

IF WEIGHT #0
~GlobalGT("52Barud_Backstab","GLOBAL",0)~ THEN BEGIN 22
  SAY @9281
  IF ~//!SubRace(LastTalkedToBy,DWARF_GRAY)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @9298 GOTO 23
  IF ~//SubRace(LastTalkedToBy,DWARF_GRAY)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN REPLY @9298 GOTO 29
  IF ~~ THEN REPLY @9299 DO ~Enemy()
                             StartCutSceneMode()
                             StartCutScene("52cBaru1")~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @9300
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 StartCutScene("52cBaru1")
~ EXIT
END

IF WEIGHT #5
~Global("51Barud_Caves","GLOBAL",1)~ THEN BEGIN 24
  SAY @9301
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      !Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9302 DO ~AddXP2DA("IW2EX10E")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@9221)
                                                                       SetGlobal("51Barud_Offer","GLOBAL",3)
                                                                       SetGlobal("51Barud_Caves","GLOBAL",2)
                                                                       GiveGoldForce(326)
                                                                       GiveItemCreate("MISC34",LastTalkedToBy,3,0,0)
                                                                       GiveItemCreate("z5shldfo",LastTalkedToBy,0,0,0)
                                                                       GiveItemCreate("z5ax1hdf",LastTalkedToBy,0,0,0)
                                                                       EraseJournalEntry(@29165)
                                                                       EraseJournalEntry(@8597)
                                                                       EraseJournalEntry(@9178)
                                                                       SetQuestDone(@9177)
                                                                       AddJournalEntry(@9214,QUEST)~ GOTO 7
  IF ~Class(LastTalkedToBy,MONK)
      !Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9302 DO ~AddXP2DA("IW2EX10E")
                                                                       DisplayStringNoNameDlg(LastTalkedToBy,@9221)
                                                                       SetGlobal("51Barud_Offer","GLOBAL",3)
                                                                       SetGlobal("51Barud_Caves","GLOBAL",2)
                                                                       EraseJournalEntry(@29165)
                                                                       EraseJournalEntry(@8597)
                                                                       EraseJournalEntry(@9178)
                                                                       SetQuestDone(@9177)
                                                                       AddJournalEntry(@34400,QUEST)~ GOTO 7
  IF ~Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9303 GOTO 11
  IF ~Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9304 GOTO 19
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @9305 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @34385 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      !Global("AR5101_MONSTERS_DEAD","GLOBAL",0)~ THEN REPLY @34386 EXIT
END

IF WEIGHT #6
~Global("51Barud_Monks","GLOBAL",1)~ THEN BEGIN 25
  SAY @9306
  IF ~!Class(LastTalkedToBy,MONK)
      OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      !Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9307 DO ~AddXP2DA("IW2EX10A")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@9222)
                                                                        SetGlobal("51Barud_Monks","GLOBAL",2)
                                                                        GiveGoldForce(298)
                                                                        GiveItemCreate("MISC34",LastTalkedToBy,4,0,0)
                                                                        GiveItemCreate("z5plat10",LastTalkedToBy,0,0,0)
                                                                        GiveItemCreate("z5hammda",LastTalkedToBy,0,0,0)
                                                                        GiveItemCreate("XBOW17",LastTalkedToBy,0,0,0)
                                                                        EraseJournalEntry(@9214)
                                                                        EraseJournalEntry(@34400)
                                                                        EraseJournalEntry(@9215)
                                                                        EraseJournalEntry(@28813)
                                                                        AddJournalEntry(@9216,QUEST_DONE)~ GOTO 10
  IF ~Class(LastTalkedToBy,MONK)
      !Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9307 DO ~AddXP2DA("IW2EX10A")
                                                                        DisplayStringNoNameDlg(LastTalkedToBy,@9222)
                                                                        SetGlobal("51Barud_Monks","GLOBAL",2)
                                                                        EraseJournalEntry(@9214)
                                                                        EraseJournalEntry(@34400)
                                                                        EraseJournalEntry(@9215)
                                                                        EraseJournalEntry(@28813)
                                                                        AddJournalEntry(@34402,QUEST_DONE)~ GOTO 10
  IF ~Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9303 GOTO 11
  IF ~Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9304 GOTO 19
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @9305 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @34385 EXIT
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      !Global("BLACKRAVEN_MONKS_DEAD","GLOBAL",0)~ THEN REPLY @34386 EXIT
END

IF WEIGHT #7
~True()~ THEN BEGIN 26
  SAY @9308
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9277 GOTO 5
  IF ~OR(2)
      	!Class(LastTalkedToBy,PALADIN_ALL)
      	Kit(LastTalkedToBy,BLACKGUARD)
      Global("51Barud_Offer","GLOBAL",3)~ THEN REPLY @9280 GOTO 8
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~GlobalGT("51Barud_Offer","GLOBAL",1)~ THEN REPLY @9248 GOTO 19
  IF ~GlobalLT("51Barud_Offer","GLOBAL",2)~ THEN REPLY @9248 GOTO 20
  IF ~~ THEN REPLY @9263 EXIT
END

IF WEIGHT #4
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 27
  SAY @25717
  IF ~~ THEN REPLY @9226 GOTO 2
END

IF WEIGHT #2
~NumberOfTimesTalkedTo(0)
 //SubRace(LastTalkedToBy,DWARF_GRAY)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 28
  SAY @25718
  IF ~~ THEN REPLY @9226 GOTO 2
END

IF ~~ THEN BEGIN 29
  SAY @25719
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 StartCutScene("52cBaru1")
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @34404
  IF ~~ THEN REPLY @9247 GOTO 11
  IF ~~ THEN REPLY @9248 GOTO 19
  IF ~~ THEN REPLY @9249 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @35531
  IF ~~ THEN REPLY @9230 DO ~SetGlobal("51Barud_Offer","GLOBAL",1)
                             AddJournalEntry(@9177,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @9231 DO ~SetGlobal("51Barud_Offer","GLOBAL",1)
                             AddJournalEntry(@9177,QUEST)~ GOTO 4
END

IF WEIGHT #1
~See([ENEMY])~ THEN BEGIN 32
  SAY @36481
  IF ~~ THEN EXIT
END
