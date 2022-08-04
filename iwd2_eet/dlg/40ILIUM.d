BEGIN ~40ILIUM~

IF WEIGHT #2
~Global("40OdeaMadeOffer","GLOBAL",2)
 NumTimesTalkedToGT(0)~ THEN BEGIN 0
  SAY @31591
  IF ~~ THEN REPLY @31592 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @31936 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)
                              SetGlobal("40IlliumMentionedGiants","GLOBAL",1)~ GOTO 3
  IF ~Global("40YurstTraps","GLOBAL",2)~ THEN REPLY @31937 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @31938 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @31945 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @31946 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)~ GOTO 25
  IF ~PartyHasItem("z4bookos")
      !PartyHasItem("z4genbe")~ THEN REPLY @31947 DO ~IncrementGlobal("40IlliumFlag","GLOBAL",1)
                                                      AddJournalEntry(@29233,QUEST)~ GOTO 27
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)
      GlobalGT("40IlliumFlag","GLOBAL",0)~ THEN REPLY @31948 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)
      GlobalGT("40IlliumFlag","GLOBAL",0)~ THEN REPLY @32009 GOTO 17
  IF ~Global("40IlliumFlag","GLOBAL",0)
      Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @31948 DO ~SetGlobal("40IlliumFlag","GLOBAL",10)~ GOTO 18
  IF ~Global("40IlliumFlag","GLOBAL",0)
      !Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @32009 DO ~SetGlobal("40IlliumFlag","GLOBAL",10)~ GOTO 17
END

IF WEIGHT #1
~Global("40OdeaMadeOffer","GLOBAL",2)
 NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @33191
  IF ~~ THEN REPLY @33192 GOTO 0
  IF ~NumInPartyGT(1)~ THEN REPLY @33193 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                                             Enemy()~ EXIT
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33194 DO ~SetGlobal("40IlliumFlag","GLOBAL",10)~ GOTO 18
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33194 DO ~SetGlobal("40IlliumFlag","GLOBAL",10)~ GOTO 17
END

IF ~~ THEN BEGIN 2
  SAY @33195
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @33245 GOTO 32  //6 Intimidate 
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33249 GOTO 33  //1 Diplomacy
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33250 GOTO 32  //1 Intimidate
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33251 GOTO 32  //1 Intimidate
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33254 GOTO 33  //1 Diplomacy
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33255 GOTO 7
  IF ~!Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33280 GOTO 7
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 3
  SAY @33282
  IF ~~ THEN REPLY @33283 GOTO 6
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 4
  SAY @33284
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @33245 GOTO 32
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33249 GOTO 33
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33250 GOTO 32
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33251 GOTO 32
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33254 GOTO 33
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33255 GOTO 7
  IF ~!Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33280 GOTO 7
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 5
  SAY @33285
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @33245 GOTO 32
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33249 GOTO 33
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33250 GOTO 32
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33251 GOTO 32
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33254 GOTO 33
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33255 GOTO 7
  IF ~!Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @33280 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 6
  SAY @34221
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @34223
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @34224
  IF ~CheckStatGT(LastTalkedToBy,14,CON)~ THEN REPLY @33245 GOTO 32
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33249 GOTO 33
  IF ~Kit(LastTalkedToBy,GODTALOS)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33250 GOTO 32
  IF ~Kit(LastTalkedToBy,OHBANE)
      CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @33251 GOTO 32
  IF ~Kit(LastTalkedToBy,GODLATHANDER)
      CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @33254 GOTO 33
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 9
  SAY @34225
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 10
  SAY @34226
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 11
  SAY @34227
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 12
  SAY @34705
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 13
  SAY @34706
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 14
  SAY @34707
  IF ~Global("SPRITE_IS_DEADGoublika","GLOBAL",0)~ THEN REPLY @34708 DO ~SetGlobal("40AttackGoublika","GLOBAL",1)
                                                                         AddJournalEntry(@28785,QUEST)~ EXIT
  IF ~!Global("SPRITE_IS_DEADGoublika","GLOBAL",0)~ THEN REPLY @34709 DO ~AddXP2DA("IW2EX7A")
                                                                          DisplayStringNoNameDlg(LastTalkedToBy,@29237)
                                                                          SetGlobal("40AttackGoublika","GLOBAL",4)
                                                                          AddJournalEntry(@28780,QUEST_DONE)~ GOTO 22
  IF ~GlobalGT("40GoublikaAfraid","GLOBAL",0)
      Global("SPRITE_IS_DEADGoublika","GLOBAL",0)~ THEN REPLY @34741 DO ~AddXP2DA("IW2EX7H")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@29238)
                                                                         SetGlobal("40AttackGoublika","GLOBAL",4)
                                                                         AddJournalEntry(@28781,QUEST_DONE)~ GOTO 22
  IF ~GlobalLT("40GoublikaAfraid","GLOBAL",1)
      Global("SPRITE_IS_DEADGoublika","GLOBAL",0)~ THEN REPLY @34746 DO ~AddXP2DA("IW2EX7VH")
                                                                         DisplayStringNoNameDlg(LastTalkedToBy,@31588)
                                                                         SetGlobal("40AttackGoublika","GLOBAL",4)
                                                                         AddJournalEntry(@28782,QUEST_DONE)~ GOTO 15
  IF ~~ THEN REPLY @40071 GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY @40072
  IF ~~ THEN GOTO 21
END

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 16
  SAY @40073
  IF ~!Allegiance(Myself,ENEMY)~ THEN REPLY @40074 GOTO 0
  IF ~~ THEN REPLY @40075 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              Enemy()~ EXIT
  IF ~!Allegiance(Myself,ENEMY)~ THEN REPLY @40076 GOTO 17
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 17
  SAY @40077
  IF ~~ THEN DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @40078
  IF ~~ THEN REPLY @40079 GOTO 0
  IF ~NumInPartyGT(1)~ THEN REPLY @33193 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                                             Enemy()~ EXIT
  IF ~~ THEN REPLY @40080 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              SetGlobal("40OdeaMadeOffer","GLOBAL",1)
                              SetGlobal("OfferAbused","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @40081
  IF ~InPartySlot(LastTalkedToBy,0)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSheri")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,1)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSher2")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,2)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSher3")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,3)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSher4")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,4)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSher5")~ EXIT
  IF ~InPartySlot(LastTalkedToBy,5)~ THEN DO ~ClearAllActions()
                                              TriggerActivation("SherincalAttack",TRUE)
                                              SetGlobal("40IlliumMet","GLOBAL",1)
                                              SetGlobal("40SherincalAttack","GLOBAL",1)
                                              SetGlobal("40OdeaMadeOffer","GLOBAL",6)
                                              Activate("Sherincal")
                                              ActionOverride("Sherincal",SetGlobal("IwIHidden","LOCALS",0))
                                              ActionOverride("Sherincal",SetSequence(SEQ_SHOOT))
                                              StartCutSceneMode()
                                              StartCutScene("40cSher6")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @40082
  IF ~~ THEN REPLY @40083 GOTO 0
  IF ~~ THEN REPLY @40084 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              Enemy()~ EXIT
END

IF WEIGHT #0
~Global("40AttackGoublika","GLOBAL",1)~ THEN BEGIN 21
  SAY @40085
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @40087
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 23
  SAY @40088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @40089
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 25
  SAY @40090
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 26
  SAY @40091
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 27
  SAY @40092
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 28
  SAY @40093
  IF ~~ THEN REPLY @33196 GOTO 0
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @33281 GOTO 17
END

IF ~~ THEN BEGIN 29
  SAY @40094
  IF ~~ THEN REPLY @40095 GOTO 31
  IF ~~ THEN REPLY @40096 GOTO 0
  IF ~~ THEN REPLY @40209 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @40210
  IF ~~ THEN REPLY @40211 GOTO 0
  IF ~~ THEN REPLY @40212 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @40213
  IF ~~ THEN REPLY @40211 GOTO 0
  IF ~~ THEN REPLY @40212 DO ~SetGlobal("40IlliumMet","GLOBAL",1)
                              Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @40214
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @40215 DO ~SendTrigger("Trap4",0)
                                                                  SetGlobal("40Illium_Perm","GLOBAL",1)
                                                                  SetGlobal("40AttackGoublika","GLOBAL",1)
                                                                  AddJournalEntry(@28783,QUEST)~ GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @40215 DO ~SendTrigger("Trap4",0)
                                                                   SetGlobal("40Illium_Perm","GLOBAL",1)
                                                                   SetGlobal("40AttackGoublika","GLOBAL",1)
                                                                   AddJournalEntry(@28783,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @40216
  IF ~Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @40086 DO ~SendTrigger("Trap4",0)
                                                                  SetGlobal("40Illium_Perm","GLOBAL",1)
                                                                  SetGlobal("40AttackGoublika","GLOBAL",1)
                                                                  AddJournalEntry(@28783,QUEST)~ GOTO 19
  IF ~!Global("40OdeaMadeOffer","GLOBAL",2)~ THEN REPLY @40086 DO ~SendTrigger("Trap4",0)
                                                                   SetGlobal("40Illium_Perm","GLOBAL",1)
                                                                   SetGlobal("40AttackGoublika","GLOBAL",1)~ EXIT
END
