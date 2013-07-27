DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sha_frozen_power';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(8056, 'spell_sha_frozen_power');

DELETE FROM `spell_proc_event` WHERE `entry`IN(63373);
INSERT INTO `spell_proc_event` (`entry`,`SpellFamilyName`,`SpellFamilyMask0`,`procFlags`) VALUES
(63373,11,0x80000000,0x00010000), -- Frozen Power (Rank 1)
(63374,11,0x80000000,0x00010000); -- Frozen Power (Rank 2)