-- Grand Crusader
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pal_grand_crusader';
INSERT INTO `spell_script_names` VALUES
(85416,'spell_pal_grand_crusader');

-- Grand Crusader can only be activated by Crusader Strike or Hammer of the Righteous
DELETE FROM `spell_proc_event` WHERE `entry` IN (75806, 85043);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(75806, 0, 10, 0, 294912, 0, 16, 0, 0, 0, 0),
(85043, 0, 10, 0, 294912, 0, 16, 0, 0, 0, 0);

-- Delete old (wotlk) scaling
DELETE FROM `spell_bonus_data` WHERE `entry`=53600;
-- 53600 - Shield of the Righteous
DELETE FROM `spell_script_names` WHERE `spell_id`=53600;
INSERT INTO `spell_script_names` VALUES
(53600,'spell_pal_shield_of_the_righteous');

-- Remove Judgement of the Wise proc
DELETE FROM `spell_proc_event` WHERE `entry`=31878;

-- Judgement of the Bold proc
DELETE FROM `spell_proc_event` WHERE `entry`=89901;
INSERT INTO `spell_proc_event` VALUES
(89901,0,10,8388608,0,0,0,262144,0,0,0);

-- 89906 - Judgements of the Bold 
DELETE FROM `spell_script_names` WHERE `spell_id`=89906;
INSERT INTO `spell_script_names` VALUES
(89906,'spell_pal_judgements_of_the_bold');

-- Enlightened Judgement proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (53556,53557);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(53556, 0, 10, 8388608, 0, 0, 0, 0, 0, 0, 0),
(53557, 0, 10, 8388608, 0, 0, 0, 0, 0, 0, 0);

-- 84963 - Inquisiton 
DELETE FROM `spell_script_names` WHERE `spell_id`=84963;
INSERT INTO `spell_script_names` VALUES
(84963,'spell_pal_inquisiton');

-- 20271 - Judgement
DELETE FROM `spell_script_names` WHERE `spell_id`=20271;
INSERT INTO `spell_script_names` VALUES
(20271,'spell_pal_judgement');

-- 31803 - Censure Fix spell damage
DELETE FROM `spell_bonus_data` WHERE `entry` = 31803;
INSERT INTO `spell_bonus_data` VALUES
(31803,	0, 0.094, 0, 0, Null);