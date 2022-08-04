BEGIN ~50NYM~

IF ~NumTimesTalkedTo(0)
    !Race(LastTalkedToBy,ELF)~ THEN BEGIN 0
  SAY @6101
  IF ~~ THEN DO ~SetGlobal("50Nym","GLOBAL",1)
                 AddJournalEntry(@6097,QUEST)~ GOTO 2
END

IF ~NumTimesTalkedTo(0)
    Race(LastTalkedToBy,ELF)~ THEN BEGIN 1
  SAY @6104
  IF ~~ THEN DO ~SetGlobal("50Nym","GLOBAL",1)
                 AddJournalEntry(@6097,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6105
  IF ~~ THEN REPLY @6106 GOTO 5
  IF ~~ THEN REPLY @6107 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6108
  IF ~~ THEN REPLY @6109 GOTO 5
  IF ~~ THEN REPLY @6110 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6111
  IF ~~ THEN REPLY @6112 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6113
  IF ~~ THEN REPLY @6114 GOTO 7
  IF ~~ THEN REPLY @6116 GOTO 6
  IF ~~ THEN REPLY @6118 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @6119
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @6120
  IF ~~ THEN REPLY @6121 GOTO 9
  IF ~~ THEN REPLY @6122 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @6123
  IF ~~ THEN REPLY @6124 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @6125
  IF ~OR(5)
        //Subrace(LastTalkedToBy, ELF_DROW)
        //Subrace(LastTalkedToBy, DWARF_GOLD)
        //Subrace(LastTalkedToBy, DWARF_GRAY)
        //Subrace(LastTalkedToBy, GNOME_DEEP)
        //ClassEx(LastTalkedToBy, Bard)
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",5))
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))
        TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",9))
        Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @38472 DO ~//SetCriticalPathObject(Myself, FALSE)
                                                              ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 16
  IF ~~ THEN REPLY @6126 DO ~//SetCriticalPathObject(Myself, FALSE)
                             ApplySpellRES("IWCPREM",Myself)~ FLAGS 0x200 GOTO 16
END

IF ~~ THEN BEGIN 10
  SAY @6127
  IF ~False()~ THEN REPLY @6128 DO ~StartStore("50Nym",LastTalkedToBy)~ EXIT /* Global("IWD2_BONUS_PACK","GLOBAL",0) */
  IF ~~ THEN REPLY @6128 DO ~StartStore("50Nym2",LastTalkedToBy)~ EXIT /*!Global("IWD2_BONUS_PACK","GLOBAL",0)*/
  IF ~~ THEN REPLY @6129 GOTO 11
  IF ~~ THEN REPLY @6130 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @6133
  IF ~False()~ THEN REPLY @6135 DO ~StartStore("50Nym",LastTalkedToBy)~ EXIT /* Global("IWD2_BONUS_PACK","GLOBAL",0) */
  IF ~~ THEN REPLY @6135 DO ~StartStore("50Nym2",LastTalkedToBy)~ EXIT /*!Global("IWD2_BONUS_PACK","GLOBAL",0)*/
  IF ~~ THEN REPLY @6147 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @6148
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
    !Race(LastTalkedToBy,ELF)
    !Global("50Suoma_Help","GLOBAL",3)~ THEN BEGIN 13
  SAY @6149
  IF ~False()~ THEN REPLY @6150 DO ~StartStore("50Nym",LastTalkedToBy)~ EXIT /* Global("IWD2_BONUS_PACK","GLOBAL",0) */
  IF ~~ THEN REPLY @6150 DO ~StartStore("50Nym2",LastTalkedToBy)~ EXIT /*!Global("IWD2_BONUS_PACK","GLOBAL",0)*/
  IF ~~ THEN REPLY @6151 GOTO 11
  IF ~~ THEN REPLY @6152 GOTO 12
END

IF ~NumTimesTalkedToGT(0)
    Race(LastTalkedToBy,ELF)
    !Global("50Suoma_Help","GLOBAL",3)~ THEN BEGIN 14
  SAY @6153
  IF ~False()~ THEN REPLY @6150 DO ~StartStore("50Nym",LastTalkedToBy)~ EXIT /* Global("IWD2_BONUS_PACK","GLOBAL",0) */
  IF ~~ THEN REPLY @6150 DO ~StartStore("50Nym2",LastTalkedToBy)~ EXIT /*!Global("IWD2_BONUS_PACK","GLOBAL",0)*/
  IF ~~ THEN REPLY @6151 GOTO 11
  IF ~~ THEN REPLY @6152 GOTO 12
END

IF ~True()~ THEN BEGIN 15
  SAY @6154
  IF ~~ THEN REPLY @6155 DO ~SetGlobal("50Nym_Leave","GLOBAL",1)
                             AddJournalEntry(@6100,QUEST)~ EXIT
  IF ~~ THEN REPLY @6156 DO ~SetGlobal("50Nym_Leave","GLOBAL",1)
                             AddJournalEntry(@6100,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @16479
  IF ~OR(2)
        Class(LastTalkedToBy,MONK)
        Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @38473 DO ~SetGlobal("50Nym","GLOBAL",2)
                                                              AddJournalEntry(@6099,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @16524 DO ~SetGlobal("50Nym","GLOBAL",2)
                              AddJournalEntry(@6099,QUEST)~ GOTO 10
END
