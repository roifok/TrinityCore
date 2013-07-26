UPDATE `version` SET `db_version`='TDB 335.52', `cache_id`=52 LIMIT 1;
-- Gossip Menu Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=21;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,21,518,0,0,27,0,10,3,0,0,'','Gossip text requires level 10 or higher'),
(14,21,519,0,0,27,0,10,2,0,0,'','Gossip text requires lower than level 10');
-- Gossip Options Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,21,0,0,0,27,0,10,3,0,0,'','Gossip Option requires level 10 or higher'),
(15,21,1,0,0,9,0,6981,0,0,0,'','Gossip Option requires quest not complete');
-- Add SAI for Royal Historian Archesonus Quest 3702
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`= '' WHERE `entry`=8879;
DELETE FROM `smart_scripts` WHERE `entryorguid`=8879 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(8879, 0, 0, 1, 62, 0, 100, 0, 1563, 0, 0, 0, 15, 3702, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Royal Historian Archesonus - Gossip Option 0 - Complete quest 3702'),
(8879, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Royal Historian Archesonus - Gossip Option 0 - Close Gossip');
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (1562,1563,1564,1565);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1562,2238), (1563,2239), (1564,2237), (1565,2236);
-- Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1561,1562,1563,1564,1565);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(1561,0,0, 'I am ready, Historian Archesonus.',1,1,1565),
(1562,0,0, 'Unbelievable! How dare they??',1,1,1563),
(1563,0,0, 'Of course I will help!',1,1,0),
(1564,0,0, 'Interesting, continue please.',1,1,1562),
(1565,0,0, 'That is tragic. How did this happen?',1,1,1564);
-- Gossip Options Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1561;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1561,0,0,0,9,0,3702,0,0,0,'','Gossip Option requires quest taken');
-- Captain Vanessa Beltis
UPDATE `creature_template` SET `gossip_menu_id`=1641 WHERE `entry`=8380;
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (1641);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (1641,2293);

-- Franclorn Forgewright 8888
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (1664,1665,1666);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1664,2316), (1665,2317), (1666,2318);
-- Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1663,1664,1665);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(1663,0,0, 'Amazing! I''ve never spoken to a ghost. I wish to learn!',1,1,1664),
(1664,0,0, 'Continue please.',1,1,1665),
(1665,0,0, 'Fascinating. Please, tell me more.',1,1,1666);

-- Ribbly Screwspigot
UPDATE `creature_template` SET `gossip_menu_id`=1970 WHERE `entry`=9543;
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (1970);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (1970,2643);

-- Arei "npc has two text, possible scripting required"
UPDATE `creature_template` SET `gossip_menu_id`=2063 WHERE `entry`=9598;
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (2063);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (2063,2726), (2063,2809);

-- Add SAI for Un'Goro Crystal Pylon Quests 4285, 4287, 4288
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI',`ScriptName`= '' WHERE `entry` IN (164955,164957,164956);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (164955,164957,164956) AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(164955, 1, 0, 0, 62, 0, 100, 0, 2177, 0, 0, 0, 15, 4285, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Northern Crystal Pylon - Gossip Option 0 - Complete quest 4285'),
(164957, 1, 0, 0, 62, 0, 100, 0, 2178, 0, 0, 0, 15, 4287, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Eastern Crystal Pylon - Gossip Option 0 - Complete quest 4287'),
(164956, 1, 0, 0, 62, 0, 100, 0, 2179, 0, 0, 0, 15, 4288, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Western Crystal Pylon - Gossip Option 0 - Complete quest 4288');
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (2177,2178,2179,2180,2181,2182);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(2177,2810),(2177,2933),(2178,2810),(2178,2933),(2179,2810),(2179,2933),(2180,2811),(2181,2812),(2182,2813);
-- Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (2177,2178,2179);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(2177,0,0, 'I want to examine this pylon.',1,1,2181),
(2178,0,0, 'I want to examine this pylon.',1,1,2180),
(2179,0,0, 'I want to examine this pylon.',1,1,2182);
-- Gossip Options Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (2177,2178,2179);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,2177,0,0,0,9,0,4285,0,0,0,'','Gossip Option requires quest not complete'),
(15,2178,0,0,0,9,0,4287,0,0,0,'','Gossip Option requires quest not complete'),
(15,2179,0,0,0,9,0,4288,0,0,0,'','Gossip Option requires quest not complete');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (63310,-18094,56218,6358,-30293);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(63310,'spell_warl_glyph_of_shadowflame'),
(-18094,'spell_warl_shadow_trance_proc'),
(56218,'spell_warl_shadow_trance_proc'),
(6358,'spell_warl_seduction'),
(-30293,'spell_warl_soul_leech');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (18094,30293);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(18094, 18094, 1),
(18094, 18095, 2),
(30293, 30293, 1),
(30293, 30295, 2);
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_clone' WHERE `ScriptName`='spell_generic_clone';
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_clone_weapon' WHERE `ScriptName`='spell_generic_clone_weapon';
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_30pct_count_pct_from_max_hp' WHERE `ScriptName`='spell_gen_touch_the_nightmare';
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_creature_permanent_feign_death' WHERE `ScriptName`='spell_creature_permanent_feign_death';
-- Fix There's Something About the Squire
UPDATE `conditions` SET `ConditionTarget`=1 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=63126  AND `ConditionTypeOrReference`=9;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-31641,50421,-30881);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-31641,'spell_mage_blazing_speed'),
(50421,'spell_dk_scent_of_blood'),
(-30881,'spell_sha_nature_guardian');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (31641,30881);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(31641, 31641, 1),
(31641, 31642, 2),
(30881, 30881, 1),
(30881, 30883, 2),
(30881, 30884, 3);

DELETE FROM `spell_proc_event` WHERE `entry` IN (30881,30883,30884);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (66725,68161,66808,68160,66765,67333,66809,67331);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(66725, 'spell_koralon_meteor_fists'),
(68161, 'spell_koralon_meteor_fists'),
(66808, 'spell_flame_warder_meteor_fists'),
(68160, 'spell_flame_warder_meteor_fists'),
(66765, 'spell_koralon_meteor_fists_damage'),
(67333, 'spell_koralon_meteor_fists_damage'),
(66809, 'spell_koralon_meteor_fists_damage'),
(67331, 'spell_koralon_meteor_fists_damage');

DELETE FROM `spell_proc_event` WHERE `entry` IN (66808,68160);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(66808,0,0,0,0,0,0x4,0,0,0,0),
(68160,0,0,0,0,0,0x4,0,0,0,0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-46951,23780,33896,37594,37705,23551,23552,23572);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-46951,'spell_warr_sword_and_board'),
(23780,'spell_item_aegis_of_preservation'),
(33896,'spell_item_desperate_defense'),
(37594,'spell_pri_item_greater_heal_refund'),
(37705,'spell_pal_item_healing_discount'),
(23551,'spell_sha_item_lightning_shield'),
(23552,'spell_sha_item_lightning_shield_trigger'),
(23572,'spell_sha_item_mana_surge');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (46951);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(46951, 46951, 1),
(46951, 46952, 2),
(46951, 46953, 3);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-31571,-51664);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-31571,'spell_mage_arcane_potency'),
(-51664,'spell_rog_cut_to_the_chase');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (31571,51664);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(31571, 31571, 1),
(31571, 31572, 2),
(51664, 51664, 1),
(51664, 51665, 2),
(51664, 51667, 3);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69051,69023,69048);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(69051, 'spell_devourer_of_souls_mirrored_soul'),
(69023, 'spell_devourer_of_souls_mirrored_soul_proc'),
(69048, 'spell_devourer_of_souls_mirrored_soul_target_selector');
-- TEXT INSERTS
DELETE FROM `creature_text` WHERE `entry` IN (31301, 31428, 31306);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(31301, 0, 0, "You dare to think you have thwarted my will? That you have broken my plans?", 12, 0, 100, 25, 0, 0, "LK SAY 1"),
(31301, 1, 0, "You have accomplished nothing!", 12, 0, 100, 22, 0, 0, "LK SAY 2"),
(31301, 2, 0, "Your feeble resistance has only hastened your doom.", 12, 0, 100, 25, 0, 0, "LK SAY 3"),
(31301, 3, 0, "So spout your platitudes and flail until you are spent. In the end, you will be mine, and Morbidus will be the harbinger of your death!", 12, 0, 100, 22, 0, 0, "LK SAY 4"),
(31301, 4, 0, "Morbidus, show them what happens to those who defy the will of their king!", 12, 0, 100, 25, 0, 0, "LK SAY 5"),
(31428, 0, 0, "You will pay for what you've done! For the Argent Crusade!", 12, 0, 100, 0, 0, 0, "OLAKIN SAY 1"),
(31306, 0, 0, "Knights of the Ebon Blade, prepare for battle!", 12, 0, 100, 1, 0, 0, 'DHAKAR SAY 1');

-- ScriptName Updates
UPDATE `creature_template` SET `ScriptName`='npc_margrave_dhakar' WHERE `entry`=31306;
UPDATE `creature_template` SET `ScriptName`='npc_morbidus' WHERE `entry`=30698;

-- Template updates
UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102, `exp`=2, `minlevel`=80, `maxlevel`=80, `unit_flags`=`unit_flags`|832, `speed_run`=0.99206, `VehicleId`=271 WHERE `entry`=30698; -- Morbidus
UPDATE `creature_template` SET `faction_A`=1770, `faction_H`=1770, `npcflag`=`npcflag`|1, `gossip_menu_id`=10060 WHERE `entry`=31306; -- Margrave Dhakar

UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=7.5,`gender`=0 WHERE `modelid`=31176; -- Morbidus
UPDATE `creature_model_info` SET `bounding_radius`=0.3825,`combat_reach`=1.875,`gender`=0 WHERE `modelid`=27558; -- Margrave Dhakar

DELETE FROM `creature_template_addon` WHERE `entry` IN (30698, 31306);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30698,0,0,1,0, NULL), -- Morbidus
(31306,0,0,1,0, NULL); -- Margrave Dhakar
-- equipment for Margrave Dhakar
DELETE FROM `creature_equip_template` WHERE `entry` = 31306;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(31306, 1, 41371, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (88747,88751,774);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(88747,'spell_druid_wild_mushroom'),
(88751,'spell_druid_wild_mushroom_detonate'),
(774,'spell_druid_rejuvenation');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (19615,82692);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(19615,'spell_hun_frenzy_effect'),
(82692,'spell_hun_focus_fire');
DELETE FROM `spell_proc_event` WHERE `entry` IN (20784);
INSERT INTO `spell_proc_event` VALUES (20784, 0, 0, 0, 0, 0, 16, 1, 0, 0, 0);
ALTER TABLE `gameobject` CHANGE `phaseMask` `phaseMask` int(10) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `creature` CHANGE `phaseMask` `phaseMask` int(10) unsigned NOT NULL DEFAULT '1';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-51556,55440);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-51556,'spell_sha_ancestral_awakening'),
(55440,'spell_sha_glyph_of_healing_wave');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=51556;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(51556, 51556, 1),
(51556, 51557, 2),
(51556, 51558, 3);
/*Mirror Image*/
DELETE FROM `spell_script_names` WHERE `spell_id` = 55342;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (55342, 'spell_mage_mirror_image');

UPDATE `creature_template` SET `spell1` = 88084, `unit_class` = 8, `ScriptName` = 'npc_mirror_image' WHERE `entry` = 47243;
UPDATE `creature_template` SET `spell1` = 88082, `unit_class` = 8, `ScriptName` = 'npc_mirror_image' WHERE `entry` = 47244;

/*Combustion*/
DELETE FROM `spell_script_names` WHERE `spell_id` = 11129;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES (11129, 'spell_mage_combustion');

/*Cauterize*/
DELETE FROM `spell_script_names` WHERE `spell_id` IN (86948,86949);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES 
(86948, 'spell_mage_cauterize'),
(86949, 'spell_mage_cauterize');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-53228);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-53228,'spell_hun_rapid_recuperation');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=53228;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(53228, 53228, 1),
(53228, 53232, 2);
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

DELETE FROM `spell_script_names` WHERE `spell_id` IN (86962,86959);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(86959,'spell_sha_cleansing_waters'),
(86962,'spell_sha_cleansing_waters');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (63373,63374);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(63373,'spell_sha_frozen_power'),
(63374,'spell_sha_frozen_power');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (3606);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(3606,'spell_sha_searing_bolt');
-- DTK instance entrance portals
DELETE FROM `gameobject` WHERE `guid`=151225;
SET @OGUID  := 6120; -- (need 3)
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+2;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,192585,571,1,1,4774.532,-2020.723,232.3105,-1.579522,0,0,0.9999905,0.004363241,120,255,1),
(@OGUID+1,192776,571,1,1,4774.532,-2020.723,232.3105,-1.579522,0,0,0.9999905,0.004363241,120,255,1),
(@OGUID+2,192775,571,1,1,4774.532,-2020.723,232.3105,-1.579522,0,0,0.9999905,0.004363241,120,255,1);

-- Gundrak south instance entrance portals
SET @OGUID  := 5287; -- (need 2)
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+1;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,192635,571,1,1,6700.195,-4662.38,446.7864,3.909541,0,0,0.3746067,0.9271838,120,255,1),
(@OGUID+1,192170,571,1,1,6700.195,-4662.38,446.7864,3.909541,0,0,0.3746067,0.9271838,120,255,1);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-48979);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-48979,'spell_dk_butchery');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=48979;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(48979, 48979, 1),
(48979, 49483, 2);
/*
 # Collection of Feedback-PatchFixes / 20.07.2013
 #
 # Including sql codestyle updates and check for accuracy. (one by one)
 # by FireEmerald / Thx @DDuarte for the base pull request.
 #
 # Including:
 # DB/Spell: Update: Correct Spell Power Coefficient (107.43%) for Tranquility | by lendan (@6232)
 # DB/LOS: Add: Ignore LOS for Ignite Horde Siege Engine | by dr-j (@6718)
 # DB/SmartAI: Update: Correct casted spell by Defias Rogue Wizard | by Rochet2 (@9976)
 # DB/Quest: Fix: Bloody Imp-ossible! (10924) | by Kirkhammett (@10276)
 # DB/Quest: Fix: Mistcaller Yngvar (14102) / Add missing event script and conditions. | (@3563)
 # DB/SmartAI: Update: Give quest credit for The Ring of Blood: The Final Challenge (9977) | by JunkyBulgaria (@7724)
 # DB/Waypoints: Add: Missing waypoints for Mmmrrrggglll | by Hobbilis (@9602)
 # DB/Conditions: Add: Missing conditions for Displacing Temporal Rift | by FireEmerald
*/

-- DB/Spell: Update: Correct Spell Power Coefficient (107.43%) for Tranquility | by lendan (@6232)
SET @SPELL          := 44203; -- Tranquility

UPDATE `spell_bonus_data` SET `direct_bonus` = 1.0743 WHERE `entry` = @SPELL;

-- DB/Quest: Fix: A Dire Situation (10506) | by Rohlik & Exodius (@6283)
SET @WOLF           := 20058; -- Bloodmaul Dire Wolf
SET @SPELL_INVIS    := 18950; -- Invisibility and Stealth Detection
SET @WOLF_TRIGGER   := 21176; -- Bloodmaul Dire Wolf Trigger
SET @SPELL_POWDER   := 36310; -- Rina's Diminution Powder

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @WOLF;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @WOLF AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@WOLF, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, @SPELL_INVIS, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodmaul Dire Wolf - On spawn - Add Invisibility and Stealth Detection Aura on self');

DELETE FROM `event_scripts` WHERE `id` = 13584;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`) VALUES
(13584, 2, 8, @WOLF_TRIGGER);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL_POWDER;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL_POWDER,0,31,1,3,@WOLF,0,0,0,'', 'Rina''s Diminution Powder can be used only on Bloodmaul Dire Wolf');

-- DB/LOS: Add: Ignore LOS for Ignite Horde Siege Engine | by dr-j (@6718)
SET @IGNITE         := 32979; -- Ignite Horde Siege Engine

DELETE FROM `disables` WHERE `sourceType` = 0 AND `entry` = @IGNITE;
INSERT INTO `disables`(`sourceType`,`entry`,`flags`,`comment`) VALUES
(0,@IGNITE,64,'Ignore LOS on Ignite Horde Siege Engine');

-- DB/SmartAI: Update: Correct casted spell by Defias Rogue Wizard | by Rochet2 (@9976)
SET @WIZARD         :=   474; -- Rogue Wizard
SET @SPELL          := 13322; -- Frostbolt

UPDATE `smart_scripts` SET `action_param2`= @SPELL WHERE `entryorguid` = @WIZARD AND `source_type` = 0 AND `id` = 0 AND `link` = 0;

-- DB/Quest: Fix: Bloody Imp-ossible! (10924) | by Kirkhammett (@10276)
SET @CHASER         := 18884; -- Warp Chaser
SET @ZEPPIT         := 22484; -- Zeppit
SET @SPELL_INVIS    := 32942; -- Phasing Invisibility
SET @SPELL_CHARGE   := 37417; -- Warp Charge
SET @SPELL_BITE     := 32739; -- Venomous Bite
SET @SPELL_BLOOD    := 39244; -- Gather Warp Chaser Blood

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @CHASER;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @CHASER;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CHASER,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_INVIS,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Warp Chaser - On Spawn - Cast Phasing Invisibility'),
(@CHASER,0,1,0,0,0,100,0,500,2000,7000,15000,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Warp Chaser - In Combat - Cast Charge'),
(@CHASER,0,2,0,0,0,100,0,3000,5000,10000,15000,11,@SPELL_BITE,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Warp Chaser - In Combat - Cast Venomous Bite'),
(@CHASER,0,3,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@ZEPPIT,10,0,0,0,0,0, 'Warp Chaser - On Death - Set Data on Zeppit');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ZEPPIT;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @ZEPPIT;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ZEPPIT,0,0,0,38,0,100,0,1,1,0,0,11,@SPELL_BLOOD,0,0,0,0,0,21,10,0,0,0,0,0,0, 'Zeppit - On Data Set - Cast on Master');

-- DB/Quest: Fix: Mistcaller Yngvar (14102) / Add missing event script and conditions. | (@3563)
SET @ENTRY          := 34965; -- Mistcaller Yngvar
SET @SPELL          := 66621; -- Summon the Mistcaller
SET @QUEST          := 14102; -- Mistcaller Yngvar (Quest)

DELETE FROM `event_scripts` WHERE `id` = 21997 AND `command` = 10;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(21997, 2, 10, @ENTRY, 120000, 0, 10181.96, 1183.417, 76.12115, 5.934119);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, comment ) VALUES
(17, 0, @SPELL, 0, 0, 29, @ENTRY, 40, 0, 1, 0, "Cant use Mistcallers Charm within 40 yards of Yngvar"),
(17, 0, @SPELL, 0, 0, 28, @QUEST, 0, 0, 1, 0, "Cant use Mistcallers Charm, if player has quest objective completed, but not yet rewarded.");

-- DB/SmartAI: Update: Give quest credit for The Ring of Blood: The Final Challenge (9977) | by JunkyBulgaria (@7724)
SET @MOGOR  := 18069; -- Mogor <Hero of the Warmaul>
SET @QUEST  :=  9977; -- The Ring of Blood: The Final Challenge

DELETE FROM `smart_scripts` WHERE `entryorguid` = @MOGOR AND `source_type` = 0 AND `id` = 14;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@MOGOR, 0, 14, 0, 6, 0, 100, 1, 0, 0, 0, 0, 15, @QUEST, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Mogor - On Death - Give Quest Credit');

-- DB/Waypoints: Add: Missing waypoints for Mmmrrrggglll | by Hobbilis (@9602)
SET @MURLOC         :=  15937; -- Mmmrrrggglll
SET @GUID           :=  41792;
SET @PATH           := 417920;

-- Set creature location
UPDATE `creature` SET `MovementType`=2,`position_x`=8869.872,`position_y`=-5775.960,`position_z`=0.405, `spawnDist`=0, `currentwaypoint`=1 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES (@GUID, @PATH, 1);

-- Waypoint Data
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 8880.688, -5754.608, 0.25531, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 8873.341, -5735.012, 0.43308, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 8862.790, -5722.625, 0.42263, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 8846.429, -5720.661, 0.49396, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 8836.920, -5726.737, 0.83736, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 8828.789, -5743.622, 0.82590, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 8818.041, -5755.890, 0.64673, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 8804.548, -5762.792, 0.51199, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 8791.789, -5762.271, 0.45083, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 8777.225, -5753.970, 0.55571, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 8776.860, -5738.229, 0.61609, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 8785.234, -5722.790, 0.75764, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 8786.402, -5701.790, 0.67103, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 8771.277, -5696.080, 0.67596, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 8758.604, -5694.220, 0.55669, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 8746.010, -5704.514, 0.50786, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 8735.815, -5722.942, 0.94607, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 8720.269, -5730.856, 0.89406, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 8706.965, -5730.076, 0.77437, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 8693.575, -5720.971, 0.86999, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 8679.183, -5710.540, 1.10842, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 8656.022, -5704.337, 1.80973, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 8640.976, -5691.507, 0.47690, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 8635.418, -5689.706, 0.53144, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 8620.438, -5687.679, 0.86486, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 8601.687, -5688.443, 0.49338, 1.930, 36000, 0, 0, 100, 0),
(@PATH, 27, 8619.985, -5679.970, 0.75128, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 8635.668, -5671.577, 0.53144, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 8648.297, -5670.150, 0.49488, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 8664.989, -5679.421, 0.55752, 0, 0, 0, 0, 100, 0),
(@PATH, 31, 8679.183, -5710.540, 1.10842, 0, 0, 0, 0, 100, 0),
(@PATH, 32, 8693.575, -5720.971, 0.86999, 0, 0, 0, 0, 100, 0),
(@PATH, 33, 8706.965, -5730.076, 0.77437, 0, 0, 0, 0, 100, 0),
(@PATH, 34, 8721.716, -5745.012, 0.62278, 0, 0, 0, 0, 100, 0),
(@PATH, 35, 8735.529, -5753.923, 1.24721, 0, 0, 0, 0, 100, 0),
(@PATH, 36, 8767.193, -5758.179, 0.50536, 0, 0, 0, 0, 100, 0),
(@PATH, 37, 8791.789, -5762.271, 0.45083, 0, 0, 0, 0, 100, 0),
(@PATH, 38, 8804.548, -5762.792, 0.51199, 0, 0, 0, 0, 100, 0),
(@PATH, 39, 8818.041, -5755.890, 0.64673, 0, 0, 0, 0, 100, 0),
(@PATH, 40, 8828.789, -5743.622, 0.82590, 0, 0, 0, 0, 100, 0),
(@PATH, 41, 8836.920, -5726.737, 0.83736, 0, 0, 0, 0, 100, 0),
(@PATH, 42, 8846.429, -5720.661, 0.49396, 0, 0, 0, 0, 100, 0),
(@PATH, 43, 8873.341, -5735.012, 0.43308, 0, 0, 0, 0, 100, 0),
(@PATH, 44, 8880.688, -5754.608, 0.25531, 6.105, 60000, 0, 0, 100, 0);

-- DB/Conditions: Add: Missing conditions for Displacing Temporal Rift | by FireEmerald
SET @PARASITE       := 10717; -- Temporal Parasite
SET @SPELL          := 16613; -- Displacing Temporal Rift
SET @QUEST          :=  4971; -- A Matter of Time

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SPELL;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, comment ) VALUES
(17, 0, @SPELL, 0, 0, 29, @PARASITE, 100, 0, 1, 0, "Cant use Temporal Displacer within 100 yards of Temporal Parasite"),
(17, 0, @SPELL, 0, 0, 28, @QUEST, 0, 0, 1, 0, "Cant use Temporal Displacer, if player has quest objective completed, but not yet rewarded");
DELETE FROM `spell_bonus_data` WHERE `entry`=52174;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(52174, 0, 0, 0.5, 0, 'Warrior - Heroic Leap');
DELETE FROM `spell_proc_event` WHERE `entry` IN (56342, 56343, 56333, 56336);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
-- Lock and Load
(56342, 0, 9, 0x18, 0, 0, 0x200000, 0, 0, 0, 0),
(56343, 0, 9, 0x18, 0, 0, 0x200000, 0, 0, 0, 0),
-- T.N.T.
(56333, 0, 9, 0x84, 0x8000000, 0x24000, 0x240000, 0, 0, 100, 0),
(56336, 0, 9, 0x84, 0x8000000, 0x24000, 0x240000, 0, 0, 100, 0);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (-56333);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-56333,'spell_hun_tnt');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=56333;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(56333, 56333, 1),
(56333, 56336, 2);
DELETE FROM `spell_script_names` WHERE `spell_id`=56372;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(56372,'spell_mage_glyph_of_ice_block');

DELETE FROM `spell_proc_event` WHERE `entry`=56372;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(56372, 0, 3, 0, 0x80, 0x8, 0x4000, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=32216;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(32216,'spell_warr_victorious');

DELETE FROM `spell_proc_event` WHERE `entry`=32216;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(32216, 0, 4, 0, 256, 0, 16, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=56375;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(56375,'spell_mage_glyph_of_polymorph');

DELETE FROM `spell_proc_event` WHERE `entry`=56375;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(56375, 0, 3, 16777216, 0, 0, 65536, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=56374;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(56374,'spell_mage_glyph_of_icy_veins');

DELETE FROM `spell_proc_event` WHERE `entry`=56374;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(56374, 0, 3, 0, 16384, 0, 16384, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-11175);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-11175,'spell_mage_permafrost');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=11175;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(11175, 11175, 1),
(11175, 12569, 2),
(11175, 12571, 3);

DELETE FROM `spell_bonus_data` WHERE `entry`=91394;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(91394, 0, 0, 0, 0, 'Mage - Permafrost');
DELETE FROM `spell_proc_event` WHERE `entry`=17619;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(17619, 0, 13, 0, 0, 0, 0x4800, 0, 0, 100, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=17619;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(17619,'spell_gen_alchemist_stone');
DELETE FROM `spell_script_names` WHERE `spell_id`=-19572;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-19572,'spell_hun_improved_mend_pet');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=19572;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(19572, 19572, 1),
(19572, 19573, 2);

DELETE FROM `spell_proc_event` WHERE `entry` IN (19572,19573);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(19572, 0, 9, 8388608, 0, 0, 0x4000, 0, 0, 100, 0),
(19573, 0, 9, 8388608, 0, 0, 0x4000, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=-85113;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-85113,'spell_warl_aftermath');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=85113;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(85113, 85113, 1),
(85113, 85114, 2);

DELETE FROM `spell_proc_event` WHERE `entry` IN (85113,85114);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(85113, 0, 5, 0x20, 0x800000, 0, 0, 0, 0, 0, 0),
(85114, 0, 5, 0x20, 0x800000, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (15286, 15290);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(15286,'spell_pri_vampiric_embrace'),
(15290,'spell_pri_vampiric_embrace_target');
DELETE FROM `spell_script_names` WHERE `spell_id`=-47569;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-47569,'spell_pri_phantasm');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=47569;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(47569, 47569, 1),
(47569, 47570, 2);

DELETE FROM `spell_proc_event` WHERE `entry` IN (47569,47570);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(47569, 0, 6, 16384, 0, 0, 16384, 0, 0, 100, 0),
(47570, 0, 6, 16384, 0, 0, 16384, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=54832;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(54832,'spell_dru_glyph_of_innervate');


DELETE FROM `spell_proc_event` WHERE `entry`=54832;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(54832, 0, 7, 0, 4096, 0, 16384, 0, 0, 100, 0);
UPDATE `spell_script_names` SET `spell_id`=34914 WHERE `ScriptName`='spell_pri_vampiric_touch';
DELETE FROM `spell_script_names` WHERE `spell_id`=-64127;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-64127,'spell_pri_body_and_soul');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=64127;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(64127, 64127, 1),
(64127, 64129, 2);

DELETE FROM `spell_proc_event` WHERE `entry` IN (64127,64129);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(64127, 0, 6, 0x1, 0x1, 0x80000, 0x4000, 0, 0, 100, 0),
(64129, 0, 6, 0x1, 0x1, 0x80000, 0x4000, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=20230;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(20230,'spell_warr_retaliation');
DELETE FROM `spell_script_names` WHERE `spell_id`=58387;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(58387,'spell_warr_glyph_of_sunder_armor');

DELETE FROM `spell_proc_event` WHERE `entry`=58387;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(58387, 0, 4, 16384, 64, 0, 16, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=56641;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(56641,'spell_hun_steady_shot');
DELETE FROM `spell_script_names` WHERE `spell_id`=6262;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(6262,'spell_warl_healthstone_heal');
DELETE FROM `spell_script_names` WHERE `spell_id`=73159;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mage_burnout';
DELETE FROM `spell_script_names` WHERE `spell_id`=-24604;
DELETE FROM `spell_script_names` WHERE `spell_id`=31687;
DELETE FROM `spell_script_names` WHERE `spell_id`=63108;
DELETE FROM `spell_script_names` WHERE `spell_id`=54845;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(54845,'spell_dru_glyph_of_starfire_proc');

DELETE FROM `spell_proc_event` WHERE `entry`=54845;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(54845, 0, 7, 4, 0, 0, 65536, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_refocus';
DELETE FROM `spell_script_names` WHERE `spell_id`='8056';
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(8056,'spell_sha_frozen_power');
UPDATE `gameobject_template` SET `flags`=48, `ScriptName`='go_activation_crystal' WHERE `entry`=193611;

UPDATE `creature_template` SET `flags_extra`=130, `ScriptName`='npc_violet_hold_arcane_sphere' WHERE `entry`=30837;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=57930;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 57930, 0, 0, 32, 0, 16, 0, 0, 1, 0, 0, '', 'Spell Arcane Lightning hit players');
DELETE FROM `spell_script_names` WHERE `spell_id`=-18119;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-18119,'spell_warl_improved_soul_fire');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=18119;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(18119, 18119, 1),
(18119, 18120, 2);

DELETE FROM `spell_proc_event` WHERE `entry` IN (18119,18120);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(18119, 0, 5, 0, 0x80, 0, 0x10000, 0, 0, 100, 0),
(18120, 0, 5, 0, 0x80, 0, 0x10000, 0, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (34485,34486,34487,82926);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(34485, 0, 9, 0, 0x1, 0, 0, 0, 0, 0, 0),
(34486, 0, 9, 0, 0x1, 0, 0, 0, 0, 0, 0),
(34487, 0, 9, 0, 0x1, 0, 0, 0, 0, 0, 0),
(82926, 0, 9, 0x20000, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`IN (82925,82926);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(82925,'spell_hun_ready_set_aim'),
(82926,'spell_hun_fire');
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 10184;
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dk_death_strike_enabler';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(89832, 'spell_dk_death_strike_enabler');

-- Improved Death Strike (talent) ranks
DELETE FROM `spell_ranks` WHERE `first_spell_id` = 62905;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(62905, 62905, 1),
(62905, 62908, 2),
(62905, 81138, 3);

DELETE FROM `spell_pet_auras` WHERE `spell` IN (56314,56315);
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_pal_blessing_of_sanctuary';

DELETE FROM `spell_proc_event` WHERE `entry` IN (20911,84628,84629);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20911, 0, 0, 0, 0, 0, 0, 0x50, 0, 0, 0),
(84628, 0, 0, 0, 0, 0, 0, 0x50, 0, 0, 0),
(84629, 0, 0, 0, 0, 0, 0, 0x50, 0, 0, 0);
DELETE FROM `spell_bonus_data` WHERE `entry`=78;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(78, 0, 0, 0.6, 0, 'Warrior - Heroic Strike');
DELETE FROM `spell_script_names` WHERE `spell_id`IN (687,28176);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(687,'spell_warl_nether_ward_overrride'),
(28176,'spell_warl_nether_ward_overrride');
UPDATE `spell_target_position` SET `effIndex`=1 WHERE `id`IN (84073,109984,100268,100335,100508,100509,100523,67838,67835,67836,67837,67834,68081);
DELETE FROM `spell_script_names` WHERE `spell_id`=-52752;
DELETE FROM `spell_script_names` WHERE `spell_id`=-14748;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-14748,'spell_pri_improved_power_word_shield');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=14748;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(14748, 14748, 1),
(14748, 14768, 2);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (63310,50421,23780,33896,37594,37705,23551,23552,23572);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(63310,'spell_warl_glyph_of_shadowflame'),
(50421,'spell_dk_scent_of_blood'),
(23780,'spell_item_aegis_of_preservation'),
(33896,'spell_item_desperate_defense'),
(37594,'spell_pri_item_greater_heal_refund'),
(37705,'spell_pal_item_healing_discount'),
(23551,'spell_sha_item_lightning_shield'),
(23552,'spell_sha_item_lightning_shield_trigger'),
(23572,'spell_sha_item_mana_surge');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dk_will_of_the_necropolis';
DELETE FROM `spell_script_names` WHERE `spell_id`=-52284;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-52284,'spell_dk_will_of_the_necropolis');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=52284;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(52284, 52284, 1),
(52284, 81163, 2),
(52284, 81164, 3);
UPDATE `spell_script_names` SET `spell_id`=633 WHERE `ScriptName`='spell_pal_lay_on_hands';
DELETE FROM `trinity_string` WHERE entry = 850;
INSERT INTO `trinity_string` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(850, '├─ Rank: %s (ID: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature_template` SET `mechanic_immune_mask` = 32,`flags_extra` = 0x40000,`ScriptName` = 'npc_training_dummy' WHERE `name` LIKE '%Training Dummy%' AND `ScriptName` != 'npc_training_dummy';
DELETE FROM spell_script_names WHERE ScriptName LIKE "spell_warl_soul_swap%";
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(86121, "spell_warl_soul_swap"),
(86211, "spell_warl_soul_swap_override"),
(92795, "spell_warl_soul_swap_dot_marker"),
(86213, "spell_warl_soul_swap_exhale");
DELETE FROM `spell_script_names` WHERE `spell_id`=52437;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(52437,'spell_warr_sudden_death');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=746;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(746, 746, 1),
(746, 1159, 2),
(746, 3267, 3),
(746, 3268, 4),
(746, 7926, 5),
(746, 7927, 6),
(746, 10838, 7),
(746, 10839, 8),
(746, 18608, 9),
(746, 18610, 10),
(746, 27030, 11),
(746, 27031, 12),
(746, 45543, 13),
(746, 51827, 14),
(746, 45544, 15),
(746, 51803, 16),
(746, 74553, 17),
(746, 74554, 18),
(746, 74555, 19);
DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (
11175,
14748,
18094,
18119,
19572,
30293,
30881,
31571,
31641,
46951,
47569,
48979,
51556,
51664,
52284,
53228,
56333,
62905,
64127,
85113);
DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_warl_banish',
'spell_dru_enrage',
'spell_pri_mana_burn',
'spell_pri_guardian_spirit',
'spell_dk_improved_blood_presence',
'spell_dk_improved_frost_presence',
'spell_dk_improved_unholy_presence',
'spell_dk_presence'
);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-710,  'spell_warl_banish'),
(5229,  'spell_dru_enrage'),
(8129,  'spell_pri_mana_burn'),
(47788, 'spell_pri_guardian_spirit'),
(-50365,'spell_dk_improved_blood_presence'),
(-50384,'spell_dk_improved_frost_presence'),
(-50391,'spell_dk_improved_unholy_presence'),
(48266, 'spell_dk_presence'),
(48263, 'spell_dk_presence'),
(48265, 'spell_dk_presence');
-- Fix gossip condition for Bat Handler Camille <Bat Handler>
UPDATE `conditions` SET `ConditionTypeOrReference`=28 WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8894 AND `SourceEntry`=0 AND `ConditionValue1`=11229;
ALTER TABLE `spell_proc_event`   
  CHANGE `entry` `entry` MEDIUMINT(8) DEFAULT 0  NOT NULL; 


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=24 AND `SourceEntry` IN (81913,81914);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(24, 0, 81913, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Die by the Sword (Rank 1) - 20% health or less'),
(24, 0, 81914, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Die by the Sword (Rank 2) - 20% health or less');

DELETE FROM `spell_proc_event` WHERE `entry`=-81913;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-81913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120);
DELETE FROM `spell_script_names` WHERE `spell_id`IN (-17,17);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(17,'spell_pri_power_word_shield');
DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_dk_icebound_fortitude',
'spell_dk_rune_tap_party',
'spell_dk_vampiric_blood',
'spell_dru_dash',
'spell_dru_idol_lifebloom',
'spell_dru_innervate',
'spell_dru_owlkin_frenzy',
'spell_dru_rip',
'spell_dru_typhoon',
'spell_gen_create_lance',
'spell_gen_gift_of_naaru',
'spell_gen_netherbloom',
'spell_mage_fire_frost_ward',
'spell_mage_ring_of_frost',
'spell_mage_ring_of_frost_freeze',
'spell_pal_hand_of_salvation',
'spell_pri_lightwell_renew',
'spell_pri_reflective_shield_trigger',
'spell_rog_rupture',
'spell_sha_mana_tide_totem',
'spell_sha_thunderstorm',
'spell_sha_tidal_waves',
'spell_warl_ritual_of_doom_effect',
'spell_warl_shadow_ward',
'spell_warr_improved_spell_reflection',
'spell_warr_intimidating_shout',
'spell_warr_overpower',
'spell_warr_rend',
'spell_warr_shattering_throw',
'spell_warr_vigilance',
'spell_warr_vigilance_trigger',
'spell_item_arcane_shroud',
'spell_item_goblin_jumper_cables',
'spell_item_goblin_jumper_cables_xl',
'spell_item_gnomish_army_knife',
'spell_item_piccolo_of_the_flaming_fire',
'spell_item_scroll_of_recall',
'spell_item_the_eye_of_diminution',
'spell_winter_veil_px_238_winter_wondervolt');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(61391, 'spell_dru_typhoon'),
(51490, 'spell_sha_thunderstorm'),
(-7235, 'spell_warl_shadow_ward'),
(7001, 'spell_pri_lightwell_renew'),
(1943, 'spell_rog_rupture'),
(1850, 'spell_dru_dash'),
(1079, 'spell_dru_rip'),
(772, 'spell_warr_rend'),
(543, 'spell_mage_fire_frost_ward'),
(1038, 'spell_pal_hand_of_salvation'),
(5246, 'spell_warr_intimidating_shout'),
(7384, 'spell_warr_overpower'),
(8342, 'spell_item_goblin_jumper_cables'),
(17512, 'spell_item_piccolo_of_the_flaming_fire'),
(18541, 'spell_warl_ritual_of_doom_effect'),
(22999, 'spell_item_goblin_jumper_cables_xl'),
(26275, 'spell_winter_veil_px_238_winter_wondervolt'),
(26400, 'spell_item_arcane_shroud'),
(28702, 'spell_gen_netherbloom'),
(28862, 'spell_item_the_eye_of_diminution'),
(28880, 'spell_gen_gift_of_naaru'),
(29166, 'spell_dru_innervate'),
(34246, 'spell_dru_idol_lifebloom'),
(16191, 'spell_sha_mana_tide_totem'),
(48129, 'spell_item_scroll_of_recall'),
(48391, 'spell_dru_owlkin_frenzy'),
(48792, 'spell_dk_icebound_fortitude'),
(50720, 'spell_warr_vigilance'),
(50725, 'spell_warr_vigilance_trigger'),
(54732, 'spell_item_gnomish_army_knife'),
(55233, 'spell_dk_vampiric_blood'),
(59542, 'spell_gen_gift_of_naaru'),
(59543, 'spell_gen_gift_of_naaru'),
(59544, 'spell_gen_gift_of_naaru'),
(59545, 'spell_gen_gift_of_naaru'),
(59547, 'spell_gen_gift_of_naaru'),
(59548, 'spell_gen_gift_of_naaru'),
(59725, 'spell_warr_improved_spell_reflection'),
(59754, 'spell_dk_rune_tap_party'),
(60320, 'spell_item_scroll_of_recall'),
(60321, 'spell_item_scroll_of_recall'),
(60779, 'spell_dru_idol_lifebloom'),
(63845, 'spell_gen_create_lance'),
(64380, 'spell_warr_shattering_throw'),
(65941, 'spell_warr_shattering_throw'),
(82676, 'spell_mage_ring_of_frost'),
(82691, 'spell_mage_ring_of_frost_freeze'),
(51562,'spell_sha_tidal_waves');
DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_pal_eye_for_an_eye',
'spell_warr_second_wind_proc',
'spell_hun_thrill_of_the_hunt',
'spell_dk_improved_blood_presence',
'spell_dk_improved_unholy_presence',
'spell_sha_tidal_waves',
'spell_sha_focused_insight',
'spell_sha_telluric_currents',
'spell_mage_nether_vortex',
'spell_sha_feedback',
'spell_mage_nether_vortex',
'spell_sha_rolling_thunder',
'spell_sha_lava_surge'
);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-9799, 'spell_pal_eye_for_an_eye'),
(-29834, 'spell_warr_second_wind_proc'),
(-34497, 'spell_hun_thrill_of_the_hunt'),
(-50365, 'spell_dk_improved_blood_presence'),
(-50391, 'spell_dk_improved_unholy_presence'),
(-51562, 'spell_sha_tidal_waves'),
(-77794, 'spell_sha_focused_insight'),
(-82984, 'spell_sha_telluric_currents'),
(-86181, 'spell_mage_nether_vortex'),
(-86183, 'spell_sha_feedback'),
(-88756, 'spell_sha_rolling_thunder'),
(-77755, 'spell_sha_lava_surge');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (
-62900,
-58872,
-50294,
-49158,
-49145,
-33851,
-6143,
13161,
18541,
20425,
20625,
21084,
34074,
63521,
69366);
DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_gen_lifeblood',
'spell_dk_scourge_strike',
'spell_dru_starfall_dummy',
'spell_dk_death_strike',
'spell_pri_mind_sear',
'spell_dk_blood_boil',
'spell_pri_guardian_spirit',
'spell_dk_death_coil',
'spell_pri_penance',
'spell_mage_living_bomb',
'spell_dru_lifebloom',
'spell_pri_shadow_word_death',
'spell_pal_ardent_defender',
'spell_pal_holy_shock',
'spell_warr_deep_wounds',
'spell_pri_mana_burn',
'spell_dru_insect_swarm',
'spell_dru_enrage',
'spell_dru_tiger_s_fury',
'spell_rog_deadly_poison',
'spell_sha_earth_shield',
'spell_mage_frost_warding_trigger'
);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-81708, 'spell_gen_lifeblood'),
(55090, 'spell_dk_scourge_strike'),
(50286, 'spell_dru_starfall_dummy'),
(49998, 'spell_dk_death_strike'),
(49821, 'spell_pri_mind_sear'),
(48721, 'spell_dk_blood_boil'),
(47788, 'spell_pri_guardian_spirit'),
(47541, 'spell_dk_death_coil'),
(47540, 'spell_pri_penance'),
(44457, 'spell_mage_living_bomb'),
(33763, 'spell_dru_lifebloom'),
(32379, 'spell_pri_shadow_word_death'),
(31850, 'spell_pal_ardent_defender'),
(20473, 'spell_pal_holy_shock'),
(12162, 'spell_warr_deep_wounds'),
(8129, 'spell_pri_mana_burn'),
(5570, 'spell_dru_insect_swarm'),
(5229, 'spell_dru_enrage'),
(5217, 'spell_dru_tiger_s_fury'),
(2818, 'spell_rog_deadly_poison'),
(974, 'spell_sha_earth_shield'),
(543, 'spell_mage_frost_warding_trigger'),
(52375, 'spell_dk_death_coil'),
(59134, 'spell_dk_death_coil');

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (51685,31130,7235);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(51685, 51685, 1),
(51685, 51686, 2),
(51685, 51687, 3),
(51685, 51688, 4),
(51685, 51689, 5),

(31130, 31130, 1),
(31130, 31131, 2),

(7235, 7235, 1),
(7235, 7241, 2),
(7235, 7242, 3),
(7235, 7243, 4),
(7235, 7244, 5);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dru_owlkin_frenzy';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_lifeblood';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_vigilance';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50720, 'spell_warr_vigilance');
DELETE FROM `spell_dbc` WHERE `Id`=123456;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `SchoolMask`, `SpellAuraOptionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellEquippedItemsId`, `SpellLevelsId`, `SpellTargetRestrictionsId`, `SpellInterruptsId`, `Comment`) VALUES
(123456, 0, 0, 0, 262144, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Halion - Summon Twilight Portals');

DELETE FROM `spelleffect_dbc` WHERE `Id` IN (153096,153097);
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectRadiusIndex`, `EffectRadiusIndexMax`, `EffectRealPointsPerLevel`, `EffectSpellClassMaskA`, `EffectSpellClassMaskB`, `EffectSpellClassMaskC`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES
(153096, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202796, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 123456, 0),
(153097, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202796, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 123456, 1);

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_halion_summon_exit_portals';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(123456, 'spell_halion_summon_exit_portals');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_rend';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(94009, 'spell_warr_rend');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pal_hand_of_salvation';
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10568,10570);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10568,11,0,0,'achievement_he_feeds_on_your_tears'), -- He Feeds On Your Tears (10 player)
(10570,11,0,0,'achievement_he_feeds_on_your_tears'); -- He Feeds On Your Tears (25 player)

UPDATE `gameobject_template` SET `ScriptName`='go_blackhoof_cage' WHERE `entry`=186287;
UPDATE `creature_template` SET `ScriptName`='boss_daakara' WHERE `entry`=23863;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_magic_rooster';
UPDATE `playercreateinfo_spell` SET `classmask`=0 WHERE `Spell`=89964;
