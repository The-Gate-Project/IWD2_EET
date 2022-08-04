BEGIN ~62WTRFAL~

IF WEIGHT #0
~Global("Purify_Fields","GLOBAL",1)
 PartyHasItem("z6genhw")~ THEN BEGIN 0
  SAY @27961
  IF ~~ THEN REPLY @35496 DO ~AddXP2DA("IW2EX13H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@27522)
                              SetGlobal("Purify_Fields","GLOBAL",2)
                              TakePartyItem("z6genhw")
                              DestroyItem("z6genhw")
                              EraseJournalEntry(@3003)
                              EraseJournalEntry(@24964)
                              AddJournalEntry(@24955,QUEST_DONE)
                              ActionOverride("Container_Waterfall",CreateItem("z6genhw",0,0,0))~ EXIT
  IF ~~ THEN REPLY @37779 EXIT
END

IF WEIGHT #2
~Global("Purify_Fields","GLOBAL",1)
 !PartyHasItem("z6genhw")~ THEN BEGIN 1
  SAY @27961
  IF ~~ THEN REPLY @37779 DO ~AddJournalEntry(@24964,QUEST)~ EXIT
END

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @27961
  IF ~~ THEN REPLY @37779 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @27961
  IF ~~ THEN REPLY @37779 EXIT
END

IF WEIGHT #1
~!Global("Purify_Fields","GLOBAL",1)
 PartyHasItem("z6genhw")~ THEN BEGIN 4
  SAY @27961
  IF ~~ THEN REPLY @37780 DO ~AddXP2DA("IW2EX13H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@27522)
                              SetGlobal("Purify_Fields","GLOBAL",2)
                              TakePartyItem("z6genhw")
                              DestroyItem("z6genhw")
                              EraseJournalEntry(@3003)
                              EraseJournalEntry(@24964)
                              AddJournalEntry(@25735,QUEST_DONE)
                              ActionOverride("Container_Waterfall",CreateItem("z6genhw",0,0,0))~ EXIT
  IF ~~ THEN REPLY @37779 EXIT
END
