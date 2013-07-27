DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sha_frozen_power';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(8056, 'spell_sha_frozen_power');

DELETE FROM `spell_proc_event` WHERE `entry`IN(63373);
INSERT INTO `spell_proc_event` (`entry`,`SpellFamilyName`,`SpellFamilyMask0`,`procFlags`) VALUES
(63373,11,0x80000000,0x00010000), -- Frozen Power (Rank 1)
(63374,11,0x80000000,0x00010000); -- Frozen Power (Rank 2)

DELETE FROM `spell_script_names` WHERE `spell_id`='1715';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(1715, 'spell_warr_improved_hamstring');

DELETE FROM `spell_script_names` WHERE `spell_id`='6343';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(6343, 'spell_warr_thunderclap');

DELETE FROM `spell_script_names` WHERE `spell_id`='6544';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(6544, 'spell_warr_heroic_leap');