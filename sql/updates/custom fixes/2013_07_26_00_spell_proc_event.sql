/*Fix Infusion of light proc*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (53672,54149);

/*Fix Flash light should not proc infusion of light*/
DELETE FROM spell_proc_event WHERE entry IN (53569,53576);
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(53569, 0, 10, 1042284544, 65536, 0, 0, 2, 0, 0, 0),
(53576, 0, 10, 1042284544, 65536, 0, 0, 2, 0, 0, 0);

/*Improved Steady Shot*/
DELETE FROM `spell_script_names` WHERE `spell_id` IN (53221,53222,53224);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(53221,'spell_hun_improved_steady_shot'),
(53222,'spell_hun_improved_steady_shot'),
(53224,'spell_hun_improved_steady_shot');

DELETE FROM `spell_proc_event` WHERE `entry` IN (53221,53222,53224);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(53221, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(53222, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(53224, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0);