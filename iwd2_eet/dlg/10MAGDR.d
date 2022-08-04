BEGIN ~10MAGDR~

IF WEIGHT #2
~True()~ THEN BEGIN 0
  SAY @27592
  IF ~~ THEN REPLY @27864 GOTO 1
  IF ~~ THEN REPLY @27865 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @28029
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @28030 GOTO 16
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)
      Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @28033 GOTO 3
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @28034 GOTO 3
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)
      Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @28035 GOTO 3
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @28036 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @28037
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28038 GOTO 3
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28035 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @28039
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @28041
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @28042 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @28042 GOTO 18
END

IF ~~ THEN BEGIN 5
  SAY @28043
  IF ~~ THEN DO ~AddJournalEntry(@27591,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @28044
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~~ THEN REPLY @28046 DO ~SetGlobal("Magdar_Barrel_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @28422 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY @28423
  IF ~Global("Magdar_Barrel_Q","GLOBAL",0)~ THEN REPLY @28046 DO ~SetGlobal("Magdar_Barrel_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~Global("Magdar_Crate_Q","GLOBAL",0)~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~Global("Magdar_Shipment_Q","GLOBAL",0)~ THEN REPLY @28422 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28424 GOTO 13
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28424 GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @28425
  IF ~Global("Magdar_Barrel_Q","GLOBAL",0)~ THEN REPLY @28046 DO ~SetGlobal("Magdar_Barrel_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~Global("Magdar_Crate_Q","GLOBAL",0)~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~Global("Magdar_Shipment_Q","GLOBAL",0)~ THEN REPLY @28422 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28424 GOTO 13
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28424 GOTO 14
END

IF ~~ THEN BEGIN 9
  SAY @28720
  IF ~~ THEN REPLY @28721 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @28722
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)
      Global("Magdar_Warehouse_Q","GLOBAL",0)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",0)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~Global("Magdar_Crate_Q","GLOBAL",0)~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~Global("Magdar_Shipment_Q","GLOBAL",0)~ THEN REPLY @28422 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28424 GOTO 13
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28424 GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY @28723
  IF ~~ THEN REPLY @28724 GOTO 12
  IF ~~ THEN REPLY @28731 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @28732
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)
      Global("Magdar_Warehouse_Q","GLOBAL",0)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",0)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~Global("Magdar_Barrel_Q","GLOBAL",0)~ THEN REPLY @28046 DO ~SetGlobal("Magdar_Barrel_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~Global("Magdar_Crate_Q","GLOBAL",0)~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28424 GOTO 13
  IF ~Global("Magdar_Barrel_Q","GLOBAL",1)
      Global("Magdar_Shipment_Q","GLOBAL",1)
      Global("Magdar_Crate_Q","GLOBAL",1)
      Global("Magdar_Warehouse_Q","GLOBAL",1)
      GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28424 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @28733
  IF ~~ THEN REPLY @28734 DO ~SetGlobal("Know_Magdar","GLOBAL",1)
                              SetGlobal("Magdar_Leave","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @28735
  IF ~~ THEN REPLY @28734 DO ~SetGlobal("Know_Magdar","GLOBAL",1)
                              SetGlobal("Magdar_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~Global("Magdar_Leave","GLOBAL",1)
 Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN BEGIN 15
  SAY @28736
  IF ~~ THEN REPLY @28737 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @28738
  IF ~~ THEN REPLY @28739 DO ~SetGlobal("Know_Magdar","GLOBAL",1)
                              SetGlobal("Magdar_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #1
~Global("Magdar_Leave","GLOBAL",1)
 Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN BEGIN 17
  SAY @28740
  IF ~~ THEN REPLY @28737 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @28741
  IF ~~ THEN DO ~AddJournalEntry(@27591,QUEST)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @28742
  IF ~GlobalLT("Reig_Quest","GLOBAL",2)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 8 /*true*/
  IF ~GlobalGT("Reig_Quest","GLOBAL",1)~ THEN REPLY @28045 DO ~SetGlobal("Magdar_Warehouse_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 7 /*true*/
  IF ~~ THEN REPLY @28046 DO ~SetGlobal("Magdar_Barrel_Q","GLOBAL",1)~ FLAGS 0x200 GOTO 10 /*true*/
  IF ~~ THEN REPLY @28047 DO ~SetGlobal("Magdar_Crate_Q","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @28422 DO ~SetGlobal("Magdar_Shipment_Q","GLOBAL",1)~ GOTO 11
END
