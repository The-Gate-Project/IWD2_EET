BEGIN ~51DARGAB~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)
 //!SubRace(LastTalkedToBy,DWARF_GRAY)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 0
  SAY @8672
  IF ~~ THEN GOTO 2
END

IF WEIGHT #3
~True()~ THEN BEGIN 1
  SAY @8674
  IF ~~ THEN REPLY @8675 GOTO 7
  IF ~~ THEN REPLY @8676 GOTO 11
  IF ~~ THEN REPLY @8679 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8680
  IF ~~ THEN REPLY @8681 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8682
  IF ~~ THEN EXTERN ~51NARGO~ 0
END

IF ~~ THEN BEGIN 4
  SAY @8683
  IF ~~ THEN EXTERN ~51NARGO~ 1
END

IF ~~ THEN BEGIN 5
  SAY @8691
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8692 GOTO 12
  IF ~~ THEN REPLY @8693 GOTO 13
  IF ~~ THEN REPLY @8694 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @8695 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @8696 GOTO 14
END

IF ~~ THEN BEGIN 6
  SAY @8697
  IF ~~ THEN REPLY @8675 GOTO 7
  IF ~~ THEN REPLY @8676 GOTO 11
  IF ~Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
                                                               AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~!Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8698
  IF ~~ THEN REPLY @8699 GOTO 15
  IF ~~ THEN REPLY @8700 GOTO 8
  IF ~~ THEN REPLY @8676 GOTO 11
  IF ~Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
                                                               AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~!Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8714
  IF ~~ THEN REPLY @8716 GOTO 9
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8717 GOTO 16
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8718 GOTO 16
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)
  	  Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8719 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
  	                                                           AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)
  	  !Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8719 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8720
  IF ~~ THEN REPLY @34380 GOTO 20
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8676 GOTO 11
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)
  	  Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
  	                                                           AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)
  	  !Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8722
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8723
  IF ~~ THEN REPLY @8675 GOTO 7
  IF ~Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
  	                                                           AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~!Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8727
  IF ~~ THEN REPLY @8696 GOTO 14
  IF ~~ THEN REPLY @8729 GOTO 13
  IF ~~ THEN REPLY @8695 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @8694 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 13
  SAY @8730
  IF ~~ THEN REPLY @8738 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 14
  SAY @8739
  IF ~~ THEN REPLY @8729 GOTO 13
  IF ~~ THEN REPLY @8695 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @8694 DO ~AddJournalEntry(@8670,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @8740 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @8741
  IF ~~ THEN REPLY @9174 GOTO 8
  IF ~~ THEN REPLY @8676 GOTO 11
  IF ~Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
  	                                                           AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~!Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8679 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @25608
  IF ~~ THEN REPLY @8676 GOTO 11
  IF ~Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 DO ~SetGlobal("51Dargab_Warn","GLOBAL",1)
  	                                                           AddJournalEntry(@8669,QUEST)~ GOTO 10
  IF ~!Global("51Dargab_Warn","GLOBAL",0)~ THEN REPLY @8721 EXIT
END

IF WEIGHT #0
~NumberOfTimesTalkedTo(0)
 //SubRace(LastTalkedToBy,DWARF_GRAY)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 17
  SAY @8672
  IF ~Gender(LastTalkedToBy,MALE)~ THEN GOTO 18
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @25711
  IF ~~ THEN REPLY @8681 GOTO 3
END

IF ~~ THEN BEGIN 19
  SAY @25712
  IF ~~ THEN REPLY @8681 GOTO 3
END

IF ~~ THEN BEGIN 20
  SAY @34379
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #2
~See([ENEMY])~ THEN BEGIN 21
  SAY @36481
  IF ~~ THEN EXIT
END
