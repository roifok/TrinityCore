DELETE FROM `spell_script_names` WHERE `spell_id` IN (1978);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(1978,'spell_hun_improved_serpent_sting');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (73680);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(73680,'spell_sha_unleash_elements');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (77746);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(77746,'spell_sha_totemic_wrath');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (61882);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(61882,'spell_sha_earthquake');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (86961,86958);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(86958,'spell_sha_cleansing_waters'),
(86961,'spell_sha_cleansing_waters');
