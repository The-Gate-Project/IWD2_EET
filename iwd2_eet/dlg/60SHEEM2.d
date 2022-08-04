BEGIN ~60SHEEM2~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @39168
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @39169 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                         AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @39170 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                         AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @39171 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                         AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @39169 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @39170 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                 AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @39171 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                AddJournalEntry(@39165,QUEST)~ GOTO 1
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @39169 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                               AddJournalEntry(@39165,QUEST)~ GOTO 2
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @39170 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                               AddJournalEntry(@39165,QUEST)~ GOTO 2
  IF ~//Subrace(LastTalkedToBy,Elf_Drow)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      Gender(LastTalkedToBy,FEMALE)
      CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @39171 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                               AddJournalEntry(@39165,QUEST)~ GOTO 2
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @39169 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                                           AddJournalEntry(@39165,QUEST)~ GOTO 4
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @39170 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                                           AddJournalEntry(@39165,QUEST)~ GOTO 4
  IF ~//!Subrace(LastTalkedToBy,Elf_Drow)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @39171 DO ~SetGlobal("60Met_Sheemish","GLOBAL",1)
                                                                                           AddJournalEntry(@39165,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @39172
  IF ~Global("60Met_Conlan","GLOBAL",1)~ THEN REPLY @39173 GOTO 5
  IF ~Global("60Met_Conlan","GLOBAL",0)~ THEN REPLY @39174 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @39175
  IF ~~ THEN REPLY @39176 GOTO 3
  IF ~~ THEN REPLY @39177 GOTO 3
  IF ~~ THEN REPLY @39178 GOTO 3
  IF ~~ THEN REPLY @39179 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @39180
  IF ~Global("60Met_Conlan","GLOBAL",1)~ THEN REPLY @39181 DO ~SetGlobal("Met_Conlan","GLOBAL",1)~ GOTO 5
  IF ~Global("60Met_Conlan","GLOBAL",0)~ THEN REPLY @39174 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @39182
  IF ~Global("60Met_Conlan","GLOBAL",1)~ THEN REPLY @39173 DO ~SetGlobal("Met_Conlan","GLOBAL",1)~ GOTO 5
  IF ~Global("60Met_Conlan","GLOBAL",0)~ THEN REPLY @39174 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @39183
  IF ~Global("60Met_Conlan","GLOBAL",0)~ THEN REPLY @39184 GOTO 7
  IF ~Global("60Met_Conlan","GLOBAL",1)~ THEN REPLY @39185 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @39186
  IF ~~ THEN REPLY @39184 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @39187
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @39189
  IF ~Global("60Met_Conlan","GLOBAL",1)~ THEN GOTO 9
  IF ~Global("60Met_Conlan","GLOBAL",0)~ THEN DO ~AddJournalEntry(@39166,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @39190
  IF ~~ THEN REPLY @39191 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39192 GOTO 16
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39194 GOTO 14
  IF ~~ THEN REPLY @39195 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @39196
  IF ~~ THEN REPLY @39197 GOTO 11
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39192 GOTO 16
  IF ~~ THEN REPLY @39198 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39199 GOTO 14
  IF ~~ THEN REPLY @39195 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @39200
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39192 GOTO 16
  IF ~~ THEN REPLY @39201 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39199 GOTO 14
  IF ~~ THEN REPLY @39202 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @39203
  IF ~~ THEN REPLY @39204 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @39205
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39206 GOTO 16
  IF ~~ THEN REPLY @39207 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39199 GOTO 14
  IF ~~ THEN REPLY @39208 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @39209
  IF ~~ THEN REPLY @39210 DO ~AddJournalEntry(@39167,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @39211 DO ~AddJournalEntry(@39167,QUEST)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @39212
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39213 GOTO 16
  IF ~~ THEN REPLY @39214 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~~ THEN REPLY @39215 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @39216
  IF ~~ THEN REPLY @39217 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @39218
  IF ~~ THEN REPLY @39219 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Shit_On_Sheemish","GLOBAL",1)~ THEN REPLY @39220 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",2)~ GOTO 18
  IF ~Global("60Shit_On_Sheemish","GLOBAL",2)~ THEN REPLY @39221 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39199 GOTO 14
  IF ~~ THEN REPLY @39222 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @39223
  IF ~~ THEN REPLY @39224 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @39225 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39226 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39227 GOTO 14
  IF ~~ THEN REPLY @39228 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @39229
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39206 GOTO 16
  IF ~GlobalGT("60Shortcut","GLOBAL",0)
      GlobalLT("60Shortcut","GLOBAL",5)~ THEN REPLY @39230 DO ~IncrementGlobal("60Shortcut","GLOBAL",1)~ GOTO 21 /*true*/
  IF ~Global("60Shortcut","GLOBAL",5)~ THEN REPLY @39231 DO ~SetGlobal("60Shortcut","GLOBAL",6)~ GOTO 21 /*true*/
  IF ~~ THEN REPLY @39232 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Shit_On_Sheemish","GLOBAL",1)~ THEN REPLY @39220 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",2)~ GOTO 18
  IF ~Global("60Shit_On_Sheemish","GLOBAL",2)~ THEN REPLY @39221 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39194 GOTO 14
  IF ~~ THEN REPLY @39233 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 20
  SAY @39229
  IF ~//Global("60Shortcut","GLOBAL",6)
      Global("60Cheap_Unhide","GLOBAL",1)
      !Global("60Ghost_Gone","GLOBAL",1)~ THEN REPLY @39206 GOTO 16
  IF ~GlobalGT("60Shortcut","GLOBAL",0)
      GlobalLT("60Shortcut","GLOBAL",5)~ THEN REPLY @39230 DO ~IncrementGlobal("60Shortcut","GLOBAL",1)~ GOTO 21 /*true*/
  IF ~Global("60Shortcut","GLOBAL",5)~ THEN REPLY @39231 DO ~SetGlobal("60Shortcut","GLOBAL",6)~ GOTO 21 /*true*/
  IF ~~ THEN REPLY @39232 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Shit_On_Sheemish","GLOBAL",1)~ THEN REPLY @39220 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",2)~ GOTO 18
  IF ~Global("60Shit_On_Sheemish","GLOBAL",2)~ THEN REPLY @39221 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39194 GOTO 14
  IF ~~ THEN REPLY @39233 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @39234
  IF ~GlobalGT("60Shortcut","GLOBAL",0)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39235 DO ~IncrementGlobal("60Shortcut","GLOBAL",1)~ GOTO 21 /*true*/
  IF ~GlobalGT("60Shortcut","GLOBAL",5)
      !AreaCheck("IW6001")~ THEN REPLY @39236 EXIT
  IF ~GlobalGT("60Shortcut","GLOBAL",5)
      AreaCheck("IW6001")~ THEN REPLY @39237 EXIT
  IF ~GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39238 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Shit_On_Sheemish","GLOBAL",1)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39239 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",2)~ GOTO 18
  IF ~Global("60Shit_On_Sheemish","GLOBAL",2)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39221 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39240 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39241 GOTO 14
  IF ~~ THEN REPLY @39242 EXIT
END

IF WEIGHT #0
~AreaCheck("IW6001")~ THEN BEGIN 22
  SAY @39243
  IF ~GlobalGT("60Shortcut","GLOBAL",0)
      GlobalLT("60Shortcut","GLOBAL",6)~ THEN REPLY @39230 DO ~IncrementGlobal("60Shortcut","GLOBAL",1)~ GOTO 21 /*true*/
  IF ~Global("60Shortcut","GLOBAL",5)~ THEN REPLY @39231 DO ~SetGlobal("60Shortcut","GLOBAL",6)~ GOTO 21 /*true*/
  IF ~~ THEN REPLY @39232 DO ~StartStore("60Spells",LastTalkedToBy)~ EXIT
  IF ~Global("60Shit_On_Sheemish","GLOBAL",1)~ THEN REPLY @39220 DO ~SetGlobal("60Shit_On_Sheemish","GLOBAL",2)~ GOTO 18
  IF ~Global("60Shit_On_Sheemish","GLOBAL",2)~ THEN REPLY @39221 DO ~StartStore("60Cheap",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Iselore","GLOBAL",0)~ THEN REPLY @39193 GOTO 12
  IF ~Global("60Key_Quest","GLOBAL",1)~ THEN REPLY @39194 GOTO 14
  IF ~~ THEN REPLY @39233 EXIT
END
