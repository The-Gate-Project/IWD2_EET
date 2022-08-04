BEGIN ~62SARALO~

IF ~~ THEN BEGIN 0
  SAY @23028
  IF ~~ THEN DO ~AddXP2DA("IW2EX13E")
                 DisplayStringNoNameDlg(Myself,@23026)
                 SetGlobal("Find_Elven_Cleric","GLOBAL",2)
                 SetGlobal("Purify_Fields","GLOBAL",1)
                 AddJournalEntry(@3003,QUEST)~ EXTERN ~62MDARF~ 1
END
