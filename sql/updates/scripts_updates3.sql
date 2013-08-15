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
DELETE FROM `spell_script_names` WHERE `spell_id`=15286;
REPLACE INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
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

DELETE FROM `spell_proc_event` WHERE `entry` IN (
11120,
12487,
12574,
12575,
12598,
12668,
12724,
12725,
12799,
12846,
12849,
12867,
12872,
12873,
12958,
12971,
12972,
13867,
14160,
14161,
14190,
15362,
16196,
16235,
16281,
16282,
16489,
16492,
16544,
17796,
17801,
18095,
18120,
19387,
19573,
20056,
20057,
20179,
25988,
29179,
29180,
29075,
29594,
29838,
30295,
31126,
31570,
31572,
32387,
32392,
33145,
33882,
34486,
34487,
34498,
34499,
34938,
34939,
34954,
35102,
35550,
35551,
44448,
45243,
46914,
46915,
46949,
47196,
47197,
47202,
47203,
47246,
47247,
47259,
47260,
47511,
47515,
47517,
47570,
47581,
48484,
48499,
48500,
48544,
49508,
49509,
49529,
49530,
49627,
49628,
50115,
51462,
51524,
51557,
51558,
51563,
51564,
51626,
51665,
51667,
51679,
51696,
52797,
53179,
53222,
53224,
53232,
53237,
53238,
53259,
53260,
53376,
53488,
53576,
53673,
53696,
53710,
54151,
55667,
56336,
56343,
56611,
56637,
56638,
56822,
57472,
57880,
59057,
61345,
61346,
62765,
63158,
63374,
63733,
64129,
66191,
66192,
77795,
77796,
82988,
84628,
84629,
85114,
86184,
86185
);

DELETE FROM `spell_proc_event` WHERE `entry` IN (
5952,
9799,
11095,
11119,
11185,
11213,
11255,
12289,
12298,
12311,
12319,
12797,
12834,
13754,
14156,
14186,
14892,
16086,
16176,
16180,
16256,
16487,
16880,
17793,
18094,
18119,
19184,
19572,
20049,
20177,
20911,
29074,
29593,
29834,
30160,
30293,
31124,
31569,
31571,
32385,
33142,
33881,
34485,
34497,
34935,
34950,
35100,
35541,
44446,
45234,
46867,
46913,
46945,
47195,
47201,
47245,
47258,
47509,
47516,
47569,
47580,
48483,
48496,
48539,
49004,
49018,
49149,
49188,
49219,
51459,
51523,
51556,
51562,
51625,
51664,
51692,
52795,
53178,
53221,
53228,
53234,
53256,
53375,
53486,
53569,
53671,
53695,
53709,
55666,
56333,
56342,
56636,
57470,
57878,
62764,
63156,
63373,
63730,
64127,
65661,
77794,
82984,
85113,
86183,
-5952,
-9799,
-11095,
-11119,
-11185,
-11213,
-11255,
-12289,
-12298,
-12311,
-12319,
-12797,
-12834,
-13754,
-14156,
-14186,
-14892,
-16086,
-16176,
-16180,
-16256,
-16487,
-16880,
-17793,
-18094,
-18119,
-19184,
-19572,
-20049,
-20177,
-20911,
-29074,
-29593,
-29834,
-30160,
-30293,
-31124,
-31569,
-31571,
-32385,
-33142,
-33881,
-34485,
-34497,
-34935,
-34950,
-35100,
-35541,
-44446,
-45234,
-46867,
-46913,
-46945,
-47195,
-47201,
-47245,
-47258,
-47509,
-47516,
-47569,
-47580,
-48483,
-48496,
-48539,
-49004,
-49018,
-49149,
-49188,
-49219,
-51459,
-51523,
-51556,
-51562,
-51625,
-51664,
-51692,
-52795,
-53178,
-53221,
-53228,
-53234,
-53256,
-53375,
-53486,
-53569,
-53671,
-53695,
-53709,
-55666,
-56333,
-56342,
-56636,
-57470,
-57878,
-62764,
-63156,
-63373,
-63730,
-64127,
-65661,
-77794,
-82984,
-85113,
-86183
);

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-5952,0,8,0,1,0,0,0,0,0,0),
(-9799,0,0,0,0,0,65536,0,0,0,0),
(-11095,0,3,16,0,0,0,0,0,0,0),
(-11119,4,3,0,0,0,0,2,0,0,0),
(-11185,0,3,128,0,0,327680,0,0,0,0),
(-11213,0,3,0,0,0,0,0,0,0,0),
(-11255,0,3,16384,0,0,0,0,0,0,0),
(-12289,0,4,2,0,0,0,0,0,0,0),
(-12298,0,0,0,0,0,0,112,0,0,0),
(-12311,0,4,2048,1,0,0,0,0,0,0),
(-12319,0,0,0,0,0,0,2,0,0,0),
(-12797,0,4,1024,0,0,0,0,0,0,0),
(-12834,0,0,0,0,0,0,2,0,0,0),
(-13754,0,8,16,0,0,0,0,0,0,0),
(-14156,0,8,4063232,8,0,0,0,0,0,0),
(-14186,0,8,1082131720,6,0,0,2,0,0,1),
(-14892,0,6,268443136,65540,0,0,2,0,0,0),
(-16086,4,11,0,262144,0,196608,0,0,0,0),
(-16176,0,11,448,0,16,0,2,0,0,0),
(-16180,0,11,448,0,16,0,2,0,100,0),
(-16256,0,0,0,0,0,0,2,0,0,0),
(-16487,0,0,0,0,0,0,2,0,0,0),
(-16880,72,7,103,58720258,0,0,2,0,0,0),
(-17793,0,5,1,64,0,0,0,0,0,0),
(-18094,0,5,10,0,0,0,0,0,0,0),
(-18119,0,5,0,128,0,65536,0,0,100,0),
(-19184,0,9,16,8192,0,0,0,0,0,0),
(-19572,0,9,8388608,0,0,16384,0,0,100,0),
(-20049,0,0,0,0,0,0,2,0,0,0),
(-20177,0,0,0,0,0,0,67,0,0,0),
(-20911,0,0,0,0,0,0,80,0,0,0),
(-29074,20,3,0,0,0,0,2,0,0,0),
(-29593,0,0,0,0,0,0,112,0,0,0),
(-29834,0,0,0,0,0,0,65536,0,0,0),
(-30160,0,0,0,0,0,0,2,0,0,0),
(-30293,0,5,897,8519872,0,0,0,0,0,0),
(-31124,0,8,16777222,0,0,0,0,0,0,0),
(-31569,0,3,65536,0,0,0,0,0,0,0),
(-31571,0,3,0,34,0,16384,0,0,0,0),
(-32385,0,5,1,262144,0,0,0,0,0,0),
(-33142,0,0,0,0,0,0,2,0,0,0),
(-33881,0,0,0,0,0,0,2,0,0,0),
(-34485,0,9,0,1,0,0,0,0,0,0),
(-34497,0,9,2176,2281701376,0,0,0,0,0,0),
(-34935,0,0,0,0,0,0,0,0,0,8),
(-34950,0,0,0,0,0,0,2,0,0,0),
(-35100,0,9,4096,0,1,0,0,0,0,0),
(-35541,0,0,0,0,0,8388608,0,0,0,0),
(-44446,0,3,19,69632,0,0,0,0,0,0),
(-45234,0,0,0,0,0,0,2,0,0,0),
(-46867,0,0,0,0,0,0,2,0,0,0),
(-46913,0,4,64,1028,0,0,262144,0,0,0),
(-46945,0,4,0,65536,0,0,0,0,0,0),
(-47195,0,5,2,0,0,0,0,0,0,0),
(-47201,0,5,16393,262144,0,0,0,0,0,0),
(-47245,0,5,4,0,0,0,1,0,0,0),
(-47258,0,5,0,8388608,0,0,65536,0,0,0),
(-47509,0,0,0,0,0,0,2,0,0,0),
(-47516,0,6,6144,65536,0,0,0,0,0,0),
(-47569,0,6,16384,0,0,16384,0,0,100,0),
(-47580,0,6,0,0,64,0,65536,0,0,0),
(-48483,0,7,34816,1088,0,0,0,0,0,0),
(-48496,0,7,96,33554434,0,0,2,0,0,0),
(-48539,0,7,16,67108864,0,262144,0,0,0,0),
(-49004,0,0,0,0,0,0,51,0,0,0),
(-49018,0,15,20971520,0,0,0,0,0,0,0),
(-49149,0,15,6,131074,0,0,0,0,0,0),
(-49188,0,15,0,131072,0,0,0,0,0,0),
(-49219,0,0,0,0,0,4,0,0,0,0),
(-51459,0,0,0,0,0,4,0,0,0,0),
(-51523,0,11,0,1,0,65536,0,0,50,0),
(-51556,0,11,192,0,16,0,2,0,0,0),
(-51562,0,11,256,0,16,0,0,0,0,0),
(-51625,0,8,268476416,0,0,0,0,0,0,0),
(-51664,0,8,131072,8,0,0,0,0,0,0),
(-51692,0,8,516,0,0,0,0,0,0,0),
(-52795,0,6,1,0,0,0,0,0,0,0),
(-53178,0,9,0,268435456,0,65536,0,0,100,0),
(-53221,0,9,0,1,0,0,0,0,0,0),
(-53228,0,9,32,16777216,0,0,0,0,0,0),
(-53234,0,9,131072,1,1,0,2,0,0,0),
(-53256,0,9,2048,8388609,0,0,2,0,0,0),
(-53375,0,10,0,8192,0,1024,0,0,0,6),
(-53486,0,10,8388608,163840,0,0,262146,0,0,0),
(-53569,0,10,1075838976,65536,0,0,0,0,0,0),
(-53671,0,10,8388608,0,0,0,0,0,0,0),
(-53695,0,10,8388608,0,8,16,0,0,0,0),
(-53709,2,10,16384,0,0,0,0,0,0,0),
(-55666,0,15,1,134217728,0,0,0,0,0,0),
(-56333,0,9,132,134217728,147456,2359296,0,0,100,0),
(-56342,0,9,24,0,0,2097152,0,0,0,0),
(-56636,0,4,32,0,0,0,262144,0,0,6),
(-57470,0,6,1,0,0,0,0,0,0,0),
(-57878,0,0,0,0,0,0,16,0,0,0),
(-62764,0,9,0,268435456,0,65536,0,0,100,0),
(-63156,0,5,1,192,0,0,0,0,0,0),
(-63373,0,11,2147483648,0,0,65536,0,0,0,0),
(-63730,0,6,2048,4,0,0,0,0,0,0),
(-64127,0,6,1,1,524288,16384,0,0,100,0),
(-65661,0,15,4194321,537001988,0,16,0,0,100,0),
(-77794,0,11,2416967680,0,0,0,0,0,0,0),
(-82984,0,11,1,0,0,0,0,0,0,0),
(-85113,0,5,32,8388608,0,0,0,0,0,0),
(-86183,0,11,3,0,0,0,0,0,0,0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=24 AND `SourceEntry` IN (81913,81914);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(24, 0, 81913, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Die by the Sword (Rank 1) - 20% health or less'),
(24, 0, 81914, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Die by the Sword (Rank 2) - 20% health or less');

DELETE FROM `spell_proc_event` WHERE `entry`=-81913;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-81913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120);
DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (88756);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(88756, 88756, 1),
(88756, 88764, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (86183);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(86183, 86183, 1),
(86183, 86184, 2),
(86183, 86185, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (86181);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(86181, 86181, 1),
(86181, 86209, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (85113);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(85113, 85113, 1),
(85113, 85114, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (63373);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(63373, 63373, 1),
(63373, 63374, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (86948);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(86948, 86948, 1),
(86948, 86949, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (86959);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(86959, 86959, 1),
(86959, 86962, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (84583);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(84583, 84583, 1),
(84583, 84587, 2),
(84583, 84588, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (46951);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(46951, 46951, 1),
(46951, 46952, 2),
(46951, 46953, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (30881);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(30881, 30881, 1),
(30881, 30883, 2),
(30881, 30884, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (12162);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(12162, 12162, 1),
(12162, 12850, 2),
(12162, 12868, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (84583);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(84583, 84583, 1),
(84583, 84587, 2),
(84583, 84588, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (11175);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(11175, 11175, 1),
(11175, 12569, 2),
(11175, 12571, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (53221);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(53221, 53221, 1),
(53221, 53222, 2),
(53221, 53224, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (82984);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(82984, 82984, 1),
(82984, 82988, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (26573);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(26573, 26573, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (42955);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(42955, 42955, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (11426);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(11426, 11426, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (5405);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(5405, 5405, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (78);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(78, 78, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (710);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(710, 710, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (1463);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(1463, 1463, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (1535);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(1535, 1535, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (6201);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(6201, 6201, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (14748);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(14748, 14748, 1),
(14748, 14768, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (18094);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(18094, 18094, 1),
(18094, 18095, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (18119);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(18119, 18119, 1),
(18119, 18120, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (19572);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(19572, 19572, 1),
(19572, 19573, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (30293);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(30293, 30293, 1),
(30293, 30295, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (31641);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(31641, 31641, 1),
(31641, 31642, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (31571);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(31571, 31571, 1),
(31571, 31572, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (78892);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(78892, 78892, 1),
(78892, 78893, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (47569);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(47569, 47569, 1),
(47569, 47570, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (48979);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(48979, 48979, 1),
(48979, 49483, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (77794);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(77794, 77794, 1),
(77794, 77795, 2),
(77794, 77796, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (51664);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(51664, 51664, 1),
(51664, 51665, 2),
(51664, 51667, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (51556);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(51556, 51556, 1),
(51556, 51557, 2),
(51556, 51558, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (52284);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(52284, 52284, 1),
(52284, 81163, 2),
(52284, 81164, 3);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (77755);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(77755, 77755, 1),
(77755, 77756, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (73981);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(73981, 73981, 1);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (64127);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(64127, 64127, 1),
(64127, 64129, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (56333);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(56333, 56333, 1),
(56333, 56336, 2);

DELETE FROM `spell_ranks` WHERE  `first_spell_id` IN (53228);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(53228, 53228, 1),
(53228, 53232, 2);DELETE FROM `spell_script_names` WHERE `spell_id`IN (-17,17);
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
(6544, 'spell_warr_heroic_leap');DELETE FROM `spell_proc_event` WHERE `entry`IN (-78892,-81021);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-78892, 0, 7, 0, 0, 0x30, 0x1000, 0, 0, 100, 0),
(-81021, 0, 0, 0, 0, 0, 0x10, 0, 0, 100, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=-78892;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-78892,'spell_dru_stampede');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (81016,81021);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
-- Bear
(81016, 81016, 1),
(81016, 81017, 2),
-- Cat
(81021, 81021, 1),
(81021, 81022, 2);
DELETE FROM spell_script_names WHERE ScriptName="spell_pal_guardian_ancient_kings";
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES(-86150, "spell_pal_guardian_ancient_kings");-- Grand Crusader
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
(31803,	0, 0.094, 0, 0, Null);DELETE FROM `spell_proc_event` WHERE `entry`=-84583;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-84583, 0, 4, 0x2000000, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=-84583;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-84583,'spell_warr_lambs_to_the_slaughter');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (31821,64364,-20254,-20138,31869,-53379,63510,63514,63531);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(31821, 'spell_pal_aura_mastery'),
(64364, 'spell_pal_aura_mastery_immune'),
(-20254,'spell_pal_improved_concentraction_aura'),
(-20138,'spell_pal_improved_devotion_aura'),
(31869, 'spell_pal_sanctified_retribution'),
(-53379,'spell_pal_swift_retribution'),
(63510, 'spell_pal_improved_concentraction_aura_effect'),
(63514, 'spell_pal_improved_devotion_aura_effect'),
(63531, 'spell_pal_sanctified_retribution_effect');
DELETE FROM spell_proc_event WHERE entry=-53569;
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(-53569, 0, 10, 0x200000, 0x10000, 0, 0, 0x2, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=118;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(118,'spell_mage_polymorph');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=83046;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(83046, 83046, 1),
(83046, 83047, 2);
DELETE FROM `spell_proc_event` WHERE `entry`=-55666;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-55666, 0, 15, 0x01, 0x8000000, 0x2000, 0, 0, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=82368;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(82368,'spell_warr_victorious');

DELETE FROM `spell_proc_event` WHERE `entry`IN (82368,-80128);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(82368, 0, 4, 0, 0x100, 0, 16, 0, 0, 100, 0),
(-80128, 0, 4, 0, 0x40, 0, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=24 AND `SourceEntry` IN (80128,80129);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(24, 0, 80128, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Impending Victory (Rank 1) - 20% health or less'),
(24, 0, 80129, 0, 0, 38, 1, 20, 4, 0, 0, 0, 0, '', 'Impending Victory (Rank 2) - 20% health or less');
DELETE FROM `spell_proc_event` WHERE `entry`=-29598;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-29598, 0, 4, 0x1000, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=-51625;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-51625,'spell_rog_crippling_poison');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (
32748,44835
);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(32748,'spell_gen_interrupt'),
(44835,'spell_gen_interrupt');
DELETE FROM `spell_proc_event` WHERE `entry`=-88820;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-88820, 0, 10, 0xC0000000, 0, 0x400, 0, 0, 0, 0, 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=24 AND `SourceEntry` IN (20138,20139,20140); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(24, 0, 20138, 0, 0, 33, 1, 0, 0, 0, 1, 0, 0, '', 'Protector of the Innocent (Rank 1) - cannot proc on hit self'), 
(24, 0, 20139, 0, 0, 33, 1, 0, 0, 0, 1, 0, 0, '', 'Protector of the Innocent (Rank 2) - cannot proc on hit self'), 
(24, 0, 20140, 0, 0, 33, 1, 0, 0, 0, 1, 0, 0, '', 'Protector of the Innocent (Rank 3) - cannot proc on hit self');  
SET @OGUID := 76732; -- Discarded Soul Crystal & Aura Trap Blue Short (cosmetic)

DELETE FROM `gameobject` WHERE `id` IN (195344, 195346, 193984);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID, 195344, 571, 1, 1, 7830.25, 2497.806, 402.5372, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: 0)
(@OGUID+1, 195346, 571, 1, 1, 7830.25, 2497.806, 402.5372, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: 0)
(@OGUID+2, 195344, 571, 1, 1, 7796.588, 2463.793, 393.2891, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: 0)
(@OGUID+3, 195346, 571, 1, 1, 7796.588, 2463.793, 393.2891, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: 0)
(@OGUID+4, 195344, 571, 1, 1, 7845.074, 2444.608, 400.5993, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: 0)
(@OGUID+5, 195346, 571, 1, 1, 7845.074, 2444.608, 400.5993, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: 0)
(@OGUID+6, 195344, 571, 1, 1, 7888.031, 2486.691, 412.1846, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: 0)
(@OGUID+7, 195346, 571, 1, 1, 7888.031, 2486.691, 412.1846, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: 0)
(@OGUID+8, 195344, 571, 1, 1, 7890.981, 2435.66, 407.6983, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: 0)
(@OGUID+9, 195346, 571, 1, 1, 7890.981, 2435.66, 407.6983, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: 0)
(@OGUID+10, 195344, 571, 1, 1, 7879.325, 2381.498, 395.9927, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+11, 195346, 571, 1, 1, 7879.325, 2381.498, 395.9927, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+12, 195344, 571, 1, 1, 7772.191, 2523.408, 397.5526, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+13, 195346, 571, 1, 1, 7772.191, 2523.408, 397.5526, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+14, 195344, 571, 1, 1, 7792.491, 2552.295, 404.7368, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+15, 195346, 571, 1, 1, 7792.491, 2552.295, 404.7368, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+16, 195344, 571, 1, 1, 7813.522, 2376.698, 383.7577, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+17, 195346, 571, 1, 1, 7813.522, 2376.698, 383.7577, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+18, 195344, 571, 1, 1, 7912.719, 2361.585, 403.3483, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+19, 195346, 571, 1, 1, 7912.719, 2361.585, 403.3483, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+20, 195344, 571, 1, 1, 7887.583, 2323.535, 389.2969, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+21, 195346, 571, 1, 1, 7887.583, 2323.535, 389.2969, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+22, 195344, 571, 1, 1, 7779.922, 2417.377, 384.4348, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+23, 195346, 571, 1, 1, 7779.922, 2417.377, 384.4348, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+24, 195344, 571, 1, 1, 7912.483, 2277.05, 387.8716, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+25, 195346, 571, 1, 1, 7912.483, 2277.05, 387.8716, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+26, 195344, 571, 1, 1, 7843.852, 2334.658, 382.3897, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+27, 195346, 571, 1, 1, 7843.852, 2334.658, 382.3897, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+28, 195344, 571, 1, 1, 7863.498, 2231.648, 375.1721, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+29, 195346, 571, 1, 1, 7863.498, 2231.648, 375.1721, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+30, 195344, 571, 1, 1, 7829.741, 2296.035, 378.0592, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+31, 195346, 571, 1, 1, 7829.741, 2296.035, 378.0592, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+32, 195344, 571, 1, 1, 7746.049, 2372.997, 376.3941, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+33, 195346, 571, 1, 1, 7746.049, 2372.997, 376.3941, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+34, 195344, 571, 1, 1, 7760.765, 2331.149, 374.8048, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+35, 195346, 571, 1, 1, 7760.765, 2331.149, 374.8048, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+36, 195344, 571, 1, 1, 7788.99, 2255.302, 371.7061, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+37, 195346, 571, 1, 1, 7788.99, 2255.302, 371.7061, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+38, 195344, 571, 1, 1, 7820.729, 2238.01, 372.7758, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+39, 195346, 571, 1, 1, 7820.729, 2238.01, 372.7758, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+40, 193984, 571, 1, 1, 7647.473, 2055.554, 599.3989, 6.003934, 0, 0, 0, 1, 120, 255, 1), -- Alliance Banner (Area: The Valley of Fallen Heroes)
(@OGUID+41, 195344, 571, 1, 1, 7745.684, 2289.906, 371.991, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+42, 195346, 571, 1, 1, 7745.684, 2289.906, 371.991, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+43, 195344, 571, 1, 1, 7696.855, 2372.087, 374.5795, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+44, 195346, 571, 1, 1, 7696.855, 2372.087, 374.5795, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+45, 195344, 571, 1, 1, 7710.979, 2338.505, 373.0223, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+46, 195346, 571, 1, 1, 7710.979, 2338.505, 373.0223, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+47, 195344, 571, 1, 1, 7750.775, 2420.458, 380.734, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+48, 195346, 571, 1, 1, 7750.775, 2420.458, 380.734, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+49, 195344, 571, 1, 1, 7651.209, 2394.108, 374.7194, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+50, 195346, 571, 1, 1, 7651.209, 2394.108, 374.7194, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+51, 195344, 571, 1, 1, 7694.101, 2306.049, 370.4156, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+52, 195346, 571, 1, 1, 7694.101, 2306.049, 370.4156, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+53, 195344, 571, 1, 1, 7603.735, 2402.665, 377.1989, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+54, 195346, 571, 1, 1, 7603.735, 2402.665, 377.1989, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+55, 195344, 571, 1, 1, 7632.563, 2369.054, 376.1918, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+56, 195346, 571, 1, 1, 7632.563, 2369.054, 376.1918, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+57, 195346, 571, 1, 1, 7568.995, 2373.521, 377.0721, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+58, 195344, 571, 1, 1, 7568.995, 2373.521, 377.0721, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+59, 195344, 571, 1, 1, 7628.762, 2434.55, 377.8682, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+60, 195346, 571, 1, 1, 7628.762, 2434.55, 377.8682, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+61, 195346, 571, 1, 1, 7569.211, 2434.028, 382.9506, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+62, 195344, 571, 1, 1, 7569.211, 2434.028, 382.9506, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+63, 195344, 571, 1, 1, 7590.309, 2308.01, 376.7488, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+64, 195346, 571, 1, 1, 7590.309, 2308.01, 376.7488, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+65, 195344, 571, 1, 1, 7542.194, 2323.882, 378.2228, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+66, 195346, 571, 1, 1, 7542.194, 2323.882, 378.2228, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+67, 195344, 571, 1, 1, 7505.332, 2363.399, 378.0511, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+68, 195346, 571, 1, 1, 7505.332, 2363.399, 378.0511, 0, 0, 0, 0, 1, 120, 255, 1), -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
(@OGUID+69, 195344, 571, 1, 1, 7453.913, 2355.877, 380.0355, 0, 0, 0, 0, 1, 120, 255, 1), -- Discarded Soul Crystal (Area: The Valley of Fallen Heroes)
(@OGUID+70, 195346, 571, 1, 1, 7453.913, 2355.877, 380.0355, 0, 0, 0, 0, 1, 120, 255, 1); -- Aura Trap Blue Short (Area: The Valley of Fallen Heroes)
-- Fix quest 14107: The Fate Of The Fallen
-- Add SmartAI for Fallen Hero's Spirit

SET @ENTRY := 32149;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 8, 0, 100, 1, 66719, 0, 0, 0, 80, @ENTRY*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - On Spellhit Blessing of Peace - Run script'),
(@ENTRY*100, 9, 0, 0, 0, 0, 100, 0, 100, 100, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - Script - Turn to Invoker'),
(@ENTRY*100, 9, 1, 0, 0, 0, 100, 0, 100, 100, 0, 0, 33, 35055, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - Script - Give Quest Credit'),
(@ENTRY*100, 9, 2, 0, 0, 0, 100, 0, 100, 100, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - Script - Set Faction'),
(@ENTRY*100, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - Script - Say 0'),
(@ENTRY*100, 9, 4, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fallen Hero''s Spirit - Script - Despawn');

-- Creature text for Fallen Hero's Spirit
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY, 0, 0, 'It was awful... I dreamt I was fighting against my friends.', 12, 0, 100, 1, 0, 0, 'Fallen Hero''s Spirit'),
(@ENTRY, 0, 1, 'I''m so tired. Just let me rest for a moment.',               12, 0, 100, 1, 0, 0, 'Fallen Hero''s Spirit'),
(@ENTRY, 0, 2, 'I can''t hear the screams anymore. Is this the end?',         12, 0, 100, 1, 0, 0, 'Fallen Hero''s Spirit'),
(@ENTRY, 0, 3, 'At last... now I can rest.',                                  12, 0, 100, 1, 0, 0, 'Fallen Hero''s Spirit'),
(@ENTRY, 0, 4, 'My nightmare, is it finally over?',                           12, 0, 100, 1, 0, 0, 'Fallen Hero''s Spirit');
DELETE FROM `spell_script_names` WHERE `spell_id`=73975;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(73975,'spell_dk_necrotic_strike');
DELETE FROM `spell_script_names` WHERE `spell_id`=53651;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(53651,'spell_pal_beacon_of_light');
DELETE FROM `spell_proc_event` WHERE `entry`=-50685;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-50685, 0, 0, 0, 0, 0, 0, 0x2, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=24 AND `SourceEntry` IN (50685,50686,50687); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(24, 0, 50685, 0, 0, 1, 0, 86627, 0, 0, 1, 0, 0, '', 'Incite (Rank 1) - cannot proc with already Incite aura'), 
(24, 0, 50686, 0, 0, 1, 0, 86627, 0, 0, 1, 0, 0, '', 'Incite (Rank 2) - cannot proc with already Incite aura'), 
(24, 0, 50687, 0, 0, 1, 0, 86627, 0, 0, 1, 0, 0, '', 'Incite (Rank 3) - cannot proc with already Incite aura');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_warr_deep_wounds';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-12162, 'spell_warr_deep_wounds');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=12162;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(12162, 12162, 1),
(12162, 12850, 2),
(12162, 12868, 3);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (31821,64364,63510,63514,63531);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(31821, 'spell_pal_aura_mastery'),
(64364, 'spell_pal_aura_mastery_immune'),
(63510, 'spell_pal_improved_concentraction_aura_effect'),
(63514, 'spell_pal_improved_devotion_aura_effect'),
(63531, 'spell_pal_sanctified_retribution_effect');
UPDATE `instance_template` SET `script`="instance_drak_tharon_keep" WHERE `map`=600;
UPDATE `creature_template` SET `ScriptName`="boss_king_dred" WHERE `entry`=27483;
DELETE FROM `spell_script_names` WHERE `spell_id`=-19464;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-19464,'spell_hun_improved_serpent_sting');
DELETE FROM `spelldifficulty_dbc` WHERE `id` = 48849;
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES
(48849, 48849, 59422);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-20254,-20138,31869,-53379);


DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_warl_banish'
);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(710,  'spell_warl_banish');
DELETE FROM `spell_script_names` WHERE `spell_id`=77767;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(77767,'spell_hun_cobra_shot');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (50341,50344);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50341, 'spell_oculus_touch_the_nightmare'),
(50344, 'spell_oculus_dream_funnel');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (1784,58428);
REPLACE INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(1784,'spell_rog_stealth'),
(58428,'spell_rog_overkill'),
(31666,'spell_rog_master_of_subtlety');
DELETE FROM `spell_proc_event` WHERE `entry`=105764;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(105764, 0, 11, 0x20000000, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_proc_event` WHERE `entry`=-16880;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(-16880, 0, 7, 0x200042, 0, 0, 0, 0, 0, 0, 60);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (48517,48518);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(48517,'spell_dru_eclipse_solar'),
(48518,'spell_dru_eclipse_lunar');
-- Sergeant Kregga, Captain Kendall, Opportunity and Exploiting an Opening fix by nelegalno
-- http://www.wowhead.com/zone=210#comments:id=838363
-- http://www.wowhead.com/zone=210#comments:id=838364
SET @GUID=18; -- Set by TDB team
SET @ASPELL=59073;
SET @HSPELL=59087;
SET @AREA=4522;

-- Sergeant Kregga (31440)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2 WHERE `entry`=31440;
DELETE FROM `creature` WHERE `guid`=@GUID AND `id`=31440;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,31440,571,1,8,0,0,5874.2,1948.5,516.1,2.8,300,0,0,32000,0,0,0,0,0);

-- Captain Kendall (31444)
UPDATE `creature` SET `phaseMask`=2 WHERE `id`=31444;

DELETE FROM `spell_area` WHERE `spell`=@HSPELL AND `area`=@AREA;
DELETE FROM `spell_area` WHERE `spell`=@ASPELL AND `area`=@AREA;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) VALUES
(@HSPELL,@AREA,12899,0,0, 690,2,1,64,43), -- Horde version
(@ASPELL,@AREA,12898,0,0,1101,2,1,64,43); -- Alliance version
UPDATE `npc_vendor` SET `maxcount`=25000 WHERE `item`=392 AND `ExtendedCost`=3408 AND `type`=2;
UPDATE `npc_vendor` SET `maxcount`=25000 WHERE `item`=390 AND `ExtendedCost`=3411 AND `type`=2;
UPDATE `npc_vendor` SET `maxcount`=25000 WHERE `item`=395 AND `ExtendedCost`=3410 AND `type`=2;
-- The Nightmare Manifests/Hope Within the Emerald Nightmare/The Boon of Remulos/Walking Legend
SET @TYRANDE        := 15633;
SET @ERANIKUS       := 15491;
SET @REMULOS        := 11832;
SET @MALFURION      := 17949;
SET @PHANTASM       := 15629;
SET @E_REDEEM       := 15628;


-- Tyrande
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `flags_extra`=0, `type_flags`=0, `unit_flags`=32768, `faction_H`=1254, `faction_A`=1254 WHERE `entry`=@TYRANDE;
-- Eranikus, Tyrant of the Dream
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `InhabitType`=7, `faction_A`=35, `faction_H`=35, `unit_flags`=0, `flags_extra`=2097152, `type_flags`=8, `dynamicflags`=128, `speed_walk`=2 WHERE `entry`=@ERANIKUS;
-- Keeper Remulos
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `speed_walk`=2.5, `speed_run`=3.75, `type_flags`=0, `unit_flags`=32768, `faction_H`=1254, `faction_A`=1254 WHERE `entry`=@REMULOS;
-- Malfurion
UPDATE `creature_template` SET `InhabitType`=4,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@MALFURION;
-- Not sure if these are set on stock DB, but I'll still add them just in case.
UPDATE `creature_template` SET `IconName`='Interact', `npcflag`=16777216 WHERE `entry` IN (32788,32790);
-- Wrong gameobject, no idea who spawned it there.
DELETE FROM `gameobject` WHERE  `guid`=99849;

-- NPC texts
DELETE FROM `creature_text` WHERE entry IN (@REMULOS,@ERANIKUS,@PHANTASM,@TYRANDE,@E_REDEEM,@MALFURION);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@REMULOS,0,0,'We will locate the origin of the Nightmare through the fragments you collected, $n. From there, we will pull Eranikus through a rift in the Dream. Steel yourself, $c. We are inviting the embodiment of the Nightmare into our world.',12,0,100,0,0,0,'Keeper Remulos Say 0'),
(@REMULOS,1,1,'The rift will be opened there, above the Lake Elun''ara. Prepare yourself, $n. Eranikus''s entry into our world will be wrought with chaos and strife.',12,0,100,0,0,0,'Keeper Remulos Say 1'),
(@REMULOS,2,2,'He will stop at nothing to get to Malfurion''s physical manifistation. That must not happen... We must keep the beast occupied long enough for Tyrande to arrive.',12,0,100,0,0,0,'Keeper Remulos Say 2'),
(@REMULOS,3,3,'Defend Nighthaven, hero...',12,0,100,0,0,0,'Keeper Remulos Say 3'),
(@REMULOS,4,4,'Fiend! Face the might of Cenarius!',14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,5,5,'Who is the predictable one, beast? Surely you did not think that we would summon you on top of Malfurion? Your redemption comes, Eranikus. You will be cleansed of this madness - this corruption.',14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,6,6,'Hurry, $N! We must find protective cover!',12,0,100,0,0,0,'Keeper Remulos Say 6'),
(@REMULOS,7,7,'Please, champion, protect our people.',12,0,100,0,0,0,'Keeper Remulos Say 7'),
(@REMULOS,8,8,'It will be done, Eranikus. Be well, ancient one.',12,0,100,0,0,0,'Keeper Remulos Say 8'),
(@REMULOS,9,9,'Let us leave Nighthaven, hero Seek me out at the grove.',12,0,100,0,0,0,'Keeper Remulos Say 9'),
--
(@REMULOS,10,10,'Come, $N. The lake is around the bend.',12,0,100,1,0,0,'Keeper Remulos - say Text 0'),
(@REMULOS,11,11,'Stand near me, $N. I will protect you should anything go wrong.',12,0,100,1,0,0,'Keeper Remulos - say Text 1'),
(@REMULOS,12,12,'Malfurion!',12,0,100,5,0,0,'Keeper Remulos - say Text 2'),
(@REMULOS,13,13,'It was shrouded in nightmares, Malfurion. What is happening in the Dream? What could cause such atrocities?',12,0,100,6,0,0,'Keeper Remulos - say Text 3'),
(@REMULOS,14,14,'I sensed as much, Malfurion. Dark days loom ahead.',12,0,100,1,0,0,'Keeper Remulos - say Text 4'),
(@REMULOS,15,15,'You have been gone too long, Malfurion. Peace between the Children of Azeroth has become tenuous at best. What of my father? Of your brother? Have you any news?',12,0,100,6,0,0,'Keeper Remulos - say Text 5'),
(@REMULOS,16,16,'Farewell, old friend... Farewell...',12,0,100,1,0,0,'Keeper Remulos - say Text 6'),
(@REMULOS,17,17,'Let us return to the grove, mortal.',12,0,100,1,0,0,'Keeper Remulos - say Text 7'),
--
(@ERANIKUS,0,0,'Pitful predictable mortals... You know not what you have done! The master''s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!',14,0,100,0,0,0,'Eranikus Say 0'),
(@ERANIKUS,1,1,'Eranikus, Tyrant of the Dream lets loose a sinister laugh.',16,0,100,0,0,0,'Eranikus Say 1'),
(@ERANIKUS,2,2,'You are certanly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan''do Stormrage over to me and your pitiful life will be spared along with the lives of your people.',14,0,100,0,0,0,'Eranikus Say 2'),
(@ERANIKUS,3,3,'My redemption? You are bold, little one. My redemption comes by the will of my god.',14,0,100,0,0,0,'Eranikus Say 3'),
(@ERANIKUS,4,4,'Eranikus, Tyrant of the Dream roars furiously',16,0,100,0,0,0,'Eranikus Say 4'),
(@ERANIKUS,5,5,'Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...',14,0,100,0,0,0,'Eranikus Say 5'),
(@ERANIKUS,6,6,'Where is your savior? How long can you hold out against my attacks?',14,0,100,0,0,0,'Eranikus Say 6'),
(@ERANIKUS,7,7,'Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...',14,0,100,0,0,0,'Eranikus Say 7'),
(@ERANIKUS,8,8,'Defeated my minions? Then face me, mortals!',14,0,100,0,0,0,'Eranikus Say 8'),
(@ERANIKUS,9,9,'IT BURNS! THE PAIN.. SEARING...',14,0,100,0,0,0,'Eranikus Say 9'),
(@ERANIKUS,10,10,'WHY? Why did this happen to... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?',14,0,100,0,0,0,'Eranikus Say 10'),
(@ERANIKUS,11,11,'I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...',14,0,100,0,0,0,'Eranikus Say 11'),
(@ERANIKUS,12,12,'Tyrande falls to one knee.',16,0,100,0,0,0,'Eranikus Say 12'),
--
(@TYRANDE,0,0,'Seek absolution, Eranikus. All will be forgiven..',14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,1,1,'You will be forgiven, Eranikus. Elune will always love you. Break free of the bonds that command you!',14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,2,2,'The grasp of the Old Gods is unmoving. He is consumed by their dark thoughts... I... I... I cannot... cannot channel much longer... Elune aide me.',12,0,100,0,0,0,'Tyrande Say 0'),
--
(@E_REDEEM,0,0,'For so long, I was lost... The Nightmare''s corruption had consumed me... And now, you... all of you.. you have saved me. Released me from its grasp.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,1,1,'But... Malfurion, Cenarius, Ysera... They still fight. They need me. I must return to the Dream at once.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,2,2,'My lady, I am unworthy of your prayer. Truly, you are an angel of light. Please, assist me in returning to the barrow den so that I may return to the Dream. I like Malfurion, also have a love awaiting me... I must return to her... to protect her...',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,3,3,'And heroes... I hold that which you seek. May it once more see the evil dissolved. Remulos, see to it that our champion receives the shard of the Green Flight.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
--
(@PHANTASM,0,0,'Nightmare Phantasm drinks in the suffering of the fallen.',16,0,100,0,0,0,'Nightmare Phantasm Say 0'),
--
(@MALFURION,0,0,'Remulos, old friend. It is good to see you once more. I knew the message would find its way to you; one way or another.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 0'),
(@MALFURION,1,0,'I fear for the worst, old friend. Within the Dream we fight a new foe, born of an ancient evil. Ysera''s noble brood has fallen victim to the old whisperings. It seems as if the Nightmare has broken through the realm to find a new host on Azeroth.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 1'),
(@MALFURION,2,0,'Aye Remulos, prepare the mortal races.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 2'),
(@MALFURION,3,0,'Cenarius fights at my side. Illidan sits atop his throne in Outland; brooding. I''m afraid that the loss to Arthas proved to be his breaking point. Madness has embraced him, Remulos. He replays the events in his mind a thousand times per day, but in his mind, he is the victor and Arthas is utterly defeated. He is too far gone, old friend. I fear that the time may soon come that our bond is tested and it will not be as it was at the Well in Zin-Azshari.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 3'),
(@MALFURION,4,0,'Remulos, I am being drawn back... Tyrande... send her my love... Tell her I am safe... Tell her... Tell her I will return... Farewell...',12,0,100,1,0,0,'Malfurion Stormrage - say Text 4');


-- Remulos SAI
DELETE FROM `smart_scripts` WHERE `source_type`IN (0,9) AND `entryorguid` IN (@REMULOS,@REMULOS*100,@REMULOS*100+1,@REMULOS*100+2);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` = @MALFURION;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Quests: Hope Within the Emerald Nightmare & The Boon of Remulos
(@REMULOS,0,0,0,62,0,100,0,10215,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,1,2,62,0,100,0,10215,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - Close gossip'),
(@REMULOS,0,3,0,19,0,100,0,13074,0,0,0,11,57413,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On Quest Accept - Cast Fitful Dream'),
-- The Nightmare Manifests
(@REMULOS,0,4,0,19,0,100,1,8736,0,0,0,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Say 0'),
(@REMULOS,0,5,0,52,0,100,0,0,@REMULOS,0,0,53,0,@REMULOS,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 0 - Start WayPoint'),
(@REMULOS,0,6,0,52,0,100,0,0,@REMULOS,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Remove Npcflag'),
(@REMULOS,0,7,0,40,0,100,0,13,@REMULOS,0,0,54,95000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Pause WP'),
(@REMULOS,0,8,0,40,0,100,0,13,@REMULOS,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Say 1'),
(@REMULOS,0,9,0,52,0,100,0,1,@REMULOS,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 1 - Say 2'),
(@REMULOS,0,10,0,52,0,100,0,2,@REMULOS,0,0,11,25813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Cast Conjure Dream Rift'),
(@REMULOS,0,11,0,52,0,100,0,2,@REMULOS,0,0,12,@ERANIKUS,3,3600000,0,0,0,8,0,0,0,7872.5888, -2664.55888, 497.139282,0.63583,'Keeper Remulos - On Say 3 - Summon Eranikus'),
(@REMULOS,0,12,0,52,0,100,0,2,@REMULOS,0,0,1,3,23000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 2 - Say 3'),
(@REMULOS,0,13,0,52,0,100,0,3,@REMULOS,0,0,1,4,31000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Say 4'),
(@REMULOS,0,14,0,52,0,100,0,4,@REMULOS,0,0,1,5,22000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 4 - Say 5'),
(@REMULOS,0,15,0,52,0,100,0,5,@REMULOS,0,0,1,6,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 5 - Say 6'),
(@REMULOS,0,16,0,40,0,100,0,20,@REMULOS,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Pause WP'),
(@REMULOS,0,17,0,40,0,100,0,20,@REMULOS,0,0,1,7,20000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Say 7'),
(@REMULOS,0,18,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7829.066,-2562.347,489.299,5.234,'Keeper Remulos - On Say 7 - Summon Nightmare Phantasm'),
(@REMULOS,0,19,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7828.889,-2580.694,489.299,0.753,'Keeper Remulos - On Say 7 -Summon Nightmare Phantasm'),
(@REMULOS,0,20,0,52,0,100,0,7,@REMULOS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Set react state aggresive'),
(@REMULOS,0,21,0,52,0,100,0,7,@REMULOS,0,0,49,0,0,0,0,0,0,19,@PHANTASM,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Attack'),
(@REMULOS,0,22,0,0,0,100,0,7000,14000,6000,12000,11,20665,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,23,0,0,0,100,0,26000,52000,34000,46000,11,20664,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,24,0,0,0,100,0,25000,25000,25000,50000,11,23381,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Healing Touch'),
(@REMULOS,0,25,0,0,0,100,0,10000,40000,40000,40000,11,25817,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Tranquility'),
(@REMULOS,0,26,0,0,0,100,0,16000,21000,19000,25000,11,21668,0,0,0,0,0,2,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Starfall'),
(@REMULOS,0,27,0,38,0,100,0,1,1,0,0,1,8,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Data Set - Say 8'),
(@REMULOS,0,28,0,52,0,100,0,8,@REMULOS,0,0,1,9,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Said 8 8 - Say 9'),
(@REMULOS,0,29,0,40,0,100,1,21,@REMULOS,0,0,49,0,0,0,0,0,0,11,@ERANIKUS,30,0,0,0,0,0,'Keeper Remulos - On Waypoint Reached - Attack Eranikus'),
(@REMULOS,0,30,0,6,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Keeper Remulos - On Death - Fail Quest'),
(@REMULOS,0,31,0,40,0,100,1,23,@REMULOS,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Pause WP'),
(@REMULOS,0,32,0,40,0,100,1,23,@REMULOS,0,0,66,2.835,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Set Orientation'),
(@REMULOS,0,33,0,52,0,100,0,9,@REMULOS,0,0,53,1,@REMULOS*100+1,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Said 9 - Go Home'),
(@REMULOS,0,34,0,40,0,100,0,12,@REMULOS*100+1,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Npcflags'),
(@REMULOS,0,35,0,40,0,100,0,12,@REMULOS*100+1,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Orientation'),
(@REMULOS,0,36,0,40,0,100,0,24,@REMULOS,0,0,80,@REMULOS*100+1,0,1,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 24 - Run Script only when OOC'),
-- Quest: Waking Legends
(@REMULOS,0,37,38,19,0,100,0,8447,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - Turn off Quest Giver & Gossip Flag'),
(@REMULOS,0,38,39,61,0,100,0,0,0,0,0,53,0,@REMULOS*100,0,8447,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - start WP'),
(@REMULOS,0,39,0,61,0,100,0,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - say Text 10'),
(@REMULOS,0,40,41,40,0,100,0,5,@REMULOS*100,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 5 - pause WP'),
(@REMULOS,0,41,42,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.12180,'Keeper Remulos - reached WP5 - set orientation'),
(@REMULOS,0,42,0,61,0,100,0,0,0,0,0,80,@REMULOS*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 5 - run Script'),
(@REMULOS,0,43,0,40,0,100,0,10,@REMULOS*100,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 10 - Turn on Quest Giver & Gossip Flag'),
(@REMULOS,0,44,0,40,0,100,0,10,@REMULOS*100,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 10 - set orientation'),
-- Script
(@REMULOS*100+2,9,0,0,0,0,100,0,2000,2000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 1'),
(@REMULOS*100+2,9,1,0,0,0,100,0,3000,3000,0,0,11,25004,1,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Cast Spell: Throw Nightmare Object to Position'),
(@REMULOS*100+2,9,2,0,0,0,100,0,5000,5000,0,0,12,@MALFURION,8,0,0,0,0,8,0,0,0,7730.5288,-2318.8596,453.8706,6.14985,'Keeper Remulos - Summon Malfurion Stormrage'),
(@REMULOS*100+2,9,3,0,0,0,100,0,2000,2000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 12'),
(@REMULOS*100+2,9,4,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 0'),
(@REMULOS*100+2,9,5,0,0,0,100,0,6000,6000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 13'),
(@REMULOS*100+2,9,6,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 1'),
(@REMULOS*100+2,9,7,0,0,0,100,0,11000,11000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 14'),
(@REMULOS*100+2,9,8,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 2'),
(@REMULOS*100+2,9,9,0,0,0,100,0,4000,4000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 15'),
(@REMULOS*100+2,9,10,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 3'),
(@REMULOS*100+2,9,11,0,0,0,100,0,19000,19000,0,0,1,4,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 4'),
(@REMULOS*100+2,9,12,0,0,0,100,0,6000,6000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 16'),
(@REMULOS*100+2,9,13,0,0,0,100,0,2000,2000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 17'),
(@REMULOS*100+2,9,14,0,0,0,100,0,0,0,0,0,15,8447,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - Give Quest Credit'),
(@REMULOS*100+2,9,15,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Keeper Remulos - Set data 0 1 to Malfurion Stormrage'),
 --
(@MALFURION,0,0,0,54,0,100,0,0,0,0,0,11,52096,2,0,0,0,0,1,0,0,0,0,0,0,0,'Malfurion Stormrage - On summon - Cast Cosmetic Teleport Effect on self'),
(@MALFURION,0,1,0,38,0,100,0,0,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malfurion Stormrage - On data set 0 1 - Despawn'),
 --
(@REMULOS*100+1,9,0,0,1,0,100,1,60000,60000,0,0,53,0,@REMULOS*100+1,0,8736,0,0,1,0,0,0,0,0,0,0,'On Script - OOC 1 Mintues - Go Home');

-- Eranikus, Tyrant of the Dream SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@ERANIKUS,@ERANIKUS*100,@ERANIKUS*100+1);
INSERT INTO `smart_scripts` VALUES
(@ERANIKUS,0,0,0,1,0,100,1,13000,13000,13000,13000,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - OOC 13 Sec - Say 0'),
(@ERANIKUS,0,1,0,52,0,100,0,0,@ERANIKUS,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 0 - Say 1'),
(@ERANIKUS,0,2,0,52,0,100,0,1,@ERANIKUS,0,0,1,2,34000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 1 - Say 2'),
(@ERANIKUS,0,3,0,52,0,100,0,2,@ERANIKUS,0,0,1,3,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Say 3'),
(@ERANIKUS,0,4,0,52,0,100,0,3,@ERANIKUS,0,0,1,4,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 3 - Say 4'),
(@ERANIKUS,0,5,0,52,0,100,0,4,@ERANIKUS,0,0,53,0,@ERANIKUS,0,8736,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 4 - Start WayPoint'),
(@ERANIKUS,0,6,0,40,0,100,0,3,@ERANIKUS,0,0,54,130000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Pause'),
(@ERANIKUS,0,7,0,40,0,100,0,3,@ERANIKUS,0,0,1,5,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Say 5'),
(@ERANIKUS,0,8,0,52,0,100,0,5,@ERANIKUS,0,0,80,@ERANIKUS*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus -  On Say 5 - Start Script'),
(@ERANIKUS*100,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,16,0,0,0,100,0,1000,1000,0,0,1,6,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 6'),
(@ERANIKUS,0,9,0,52,0,100,0,6,@ERANIKUS,0,0,80,@ERANIKUS*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 6 - Start Script'),
(@ERANIKUS*100+1,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,16,0,0,0,100,0,1000,1000,0,0,1,7,33000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 7'),
(@ERANIKUS,0,10,0,40,0,100,0,4,@ERANIKUS,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 reached - Set faction enemy'),
(@ERANIKUS,0,38,0,40,0,100,0,4,@ERANIKUS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 - Set react state aggresive'),
(@ERANIKUS,0,11,0,2,0,100,0,30,65,12000,35000,12,@PHANTASM,3,600000,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - In Combat - Summon Nightmare Phantasm'),
(@ERANIKUS,0,12,0,4,1,100,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Say 8'),
(@ERANIKUS,0,13,0,4,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Set react state aggresive'),  
(@ERANIKUS,0,14,0,4,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Eranikus - On aggro - Start Attack'),
(@ERANIKUS,0,15,0,0,0,100,0,2000,4000,55000,60000,11,24818,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Noxious Breath'),
(@ERANIKUS,0,16,0,0,0,100,0,9000,14000,50000,55000,11,24839,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Acid Spit'),
(@ERANIKUS,0,17,0,0,0,100,0,10000,20000,15000,25000,11,22878,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Shadow Bolt Volley'),
(@ERANIKUS,0,18,0,2,0,100,1,0,70,0,0,12,@TYRANDE,3,3600000,0,0,0,8,0,0,0,7900.216,-2572.621,488.176,2.330,'Eranikus - At 70% - Summon Tyrande'),
(@ERANIKUS,0,34,0,2,0,100,1,0,69,0,0,1,0,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 69% - Tyrande Say 0'),
(@ERANIKUS,0,35,0,2,0,100,1,0,30,0,0,1,1,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 30% - Tyrande Say 1'),
(@ERANIKUS,0,19,0,2,0,100,1,0,25,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 25% - Say 9'),
(@ERANIKUS,0,20,0,2,0,100,1,0,22,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 22% - Say 10'),
(@ERANIKUS,0,21,0,2,0,100,1,0,20,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 20% - Say 11'),
(@ERANIKUS,0,22,0,52,0,100,0,11,@ERANIKUS,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set faction friendly'),
(@ERANIKUS,0,23,0,52,0,100,0,11,@ERANIKUS,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set react state passive'),
(@ERANIKUS,0,24,0,52,0,100,0,11,@ERANIKUS,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set unit flags'),
(@ERANIKUS,0,25,0,52,0,100,0,11,@ERANIKUS,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Stop AutoAttack'),
(@ERANIKUS,0,26,0,52,0,100,0,11,@ERANIKUS,0,0,1,12,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 11 - Say 12'),
(@ERANIKUS,0,27,0,52,0,100,0,12,@ERANIKUS,0,0,12,@E_REDEEM,3,60000,0,0,0,8,0,0,0,7904.248,-2564.867,488.156,5.116,'Eranikus - On Say 12 - Summon Eranikus the Redeemed'),  
(@ERANIKUS,0,28,0,52,0,100,0,12,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 12 - Kill'),
(@ERANIKUS,0,31,0,7,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On Evade - Quest Fail'),
(@ERANIKUS,0,32,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Death - Set invisibility'),
(@ERANIKUS,0,33,0,40,0,100,0,5,@ERANIKUS,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Set invisibility'),
(@ERANIKUS,0,36,0,40,0,100,0,5,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Die'),
(@ERANIKUS,0,37,0,40,0,100,0,5,@ERANIKUS,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On WayPoint 5 - Quest Fail');

-- Tyrande SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN (@TYRANDE);
INSERT INTO `smart_scripts` VALUES
(@TYRANDE,0,0,0,54,0,100,1,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - On Summon - Set react state aggresive'),
(@TYRANDE,0,1,0,1,0,100,1,95000,95000,95000,95000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 60 Sec - Set invisibility'),
(@TYRANDE,0,2,0,1,0,100,1,96000,96000,96000,96000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 61 Sec - Kill'),
(@TYRANDE,0,3,0,0,0,100,0,1000,2000,2300,2500,11,21668,0,0,0,0,0,11,@ERANIKUS,20,0,0,0,0,0,'Tyrande - In Combat - Cast Starfall');

-- Eranikus the Redeemed SAI
UPDATE `creature_template` SET AIName='SmartAI', modelid1=6984 WHERE entry=@E_REDEEM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@E_REDEEM);
INSERT INTO `smart_scripts` VALUES
(@E_REDEEM,0,0,0,1,0,100,1,7000,7000,7000,7000,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - OOC 7 Secs - Say 0'),
(@E_REDEEM,0,1,0,52,0,100,0,0,@E_REDEEM,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 0 - Say 1'),
(@E_REDEEM,0,2,0,52,0,100,0,1,@E_REDEEM,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 1 - Say 2'),
(@E_REDEEM,0,3,0,52,0,100,0,2,@E_REDEEM,0,0,1,3,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 2 - Say 3'),
(@E_REDEEM,0,5,0,52,0,100,0,3,@E_REDEEM,0,0,15,8736,0,0,0,0,0,18,30,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Credit'),
(@E_REDEEM,0,6,0,52,0,100,0,3,@E_REDEEM,0,0,45,1,1,0,0,0,0,11,@REMULOS,40,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Set Data');

UPDATE `creature_template` SET AIName='SmartAI', Faction_A=14, Faction_H=14 WHERE entry=@PHANTASM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@PHANTASM);
INSERT INTO `smart_scripts` VALUES
(@PHANTASM,0,0,0,54,0,100,0,0,0,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Start WayPoint'),
(@PHANTASM,0,1,0,54,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Aggresive'),
(@PHANTASM,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,50,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Attack Player'),
(@PHANTASM,0,3,0,6,0,75,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Death - Say 0'),
(@PHANTASM,0,4,0,40,0,100,0,4,@PHANTASM,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - WayPoint 20 - Start Again'),
(@PHANTASM,0,5,0,1,0,100,1,60000,60000,60000,60000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 60 Secs - Unseen'),
(@PHANTASM,0,6,0,1,0,100,1,63000,63000,63000,63000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 63 Secs - Despawn'),
(@PHANTASM,0,7,0,1,0,100,1,5000,5000,5000,5000,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 5 Secs - Start WayPoint');

DELETE FROM `creature_template_addon` WHERE `entry`=@MALFURION;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@MALFURION,0,0,33554432,0,0,'24999'); -- Malfurion's Shade Aura & Hover Mode

DELETE FROM `creature_template_addon` WHERE `entry`=@ERANIKUS;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ERANIKUS,0,0,33554432,0,0,'');

DELETE FROM `spell_target_position` WHERE `id`=25004;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(25004,1,7730.5288,-2318.8596,451.34,0);

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS,1,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS,2,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS,3,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS,4,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS,5,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS,7,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS,8,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS,9,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS,10,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS,11,7950.945801,-2597.000000,489.765564,'Keeper Remulos'),
(@REMULOS,12,7948.758301,-2610.823486,492.368988,'Keeper Remulos'),
(@REMULOS,13,7928.785156,-2629.920654,492.524933,'Keeper Remulos'), ## stop
(@REMULOS,14,7948.697754,-2610.551758,492.363983,'Keeper Remulos'),
(@REMULOS,15,7952.019531,-2591.974609,490.081238,'Keeper Remulos'),
(@REMULOS,16,7940.567871,-2577.845703,488.946808,'Keeper Remulos'),
(@REMULOS,17,7908.662109,-2566.450439,488.634644,'Keeper Remulos'),
(@REMULOS,18,7873.132324,-2567.422363,486.946442,'Keeper Remulos'),
(@REMULOS,19,7839.844238,-2570.598877,489.286224,'Keeper Remulos'),
(@REMULOS,20,7830.678597,-2572.878974,489.286224,'Keeper Remulos'),
(@REMULOS,21,7890.504,-2567.259,487.306,'Keeper Remulos'),
(@REMULOS,22,7906.447,-2566.105,488.435,'Keeper Remulos'),
(@REMULOS,23,7925.861,-2573.601,489.642,'Keeper Remulos'),
(@REMULOS,24,7912.283,-2568.500,488.891,'Keeper Remulos');

DELETE FROM `waypoints` WHERE `entry`=@REMULOS*100;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100,1,7828.5752,-2246.8354,463.5159,'Keeper Remulos - WP1'),
(@REMULOS*100,2,7824.6440,-2279.0273,459.3173,'Keeper Remulos - WP2'),
(@REMULOS*100,3,7814.1699,-2302.2565,456.2227,'Keeper Remulos - WP3'),
(@REMULOS*100,4,7787.4604,-2320.9807,454.5470,'Keeper Remulos - WP4'),
(@REMULOS*100,5,7753.7495,-2319.0832,454.7066,'Keeper Remulos - WP5'),
(@REMULOS*100,6,7787.4604,-2320.9807,454.5470,'Keeper Remulos - WP6'),
(@REMULOS*100,7,7814.1699,-2302.2565,456.2227,'Keeper Remulos - WP7'),
(@REMULOS*100,8,7824.6440,-2279.0273,459.3173,'Keeper Remulos - WP8'),
(@REMULOS*100,9,7828.5752,-2246.8354,463.5159,'Keeper Remulos - WP9'),
(@REMULOS*100,10,7848.3,-2216.35,470.888,'Keeper Remulos - WP10 (Home)');


-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@ERANIKUS);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ERANIKUS,1,7949.812,-2605.4748,513.591,'Eranikus'),
(@ERANIKUS,2,7931.3330,-2575.2097,489.6286,'Eranikus'),
(@ERANIKUS,3,7925.129,-2573.747,493.901,'Eranikus'),
(@ERANIKUS,4,7910.554,-2565.5534,488.616,'Eranikus'),
(@ERANIKUS,5,7867.442,-2567.334,486.946,'Eranikus');


-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@PHANTASM);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PHANTASM,1,7891.990,-2566.737,487.385,'Phantasm'),
(@PHANTASM,2,7865.966,-2554.104,486.967,'Phantasm'),
(@PHANTASM,3,7901.544,-2581.989,487.178,'Phantasm'),
(@PHANTASM,4,7918.844,-2553.987,486.911,'Phantasm'),
(@PHANTASM,5,7873.412,-2587.454,486.946,'Phantasm');

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS*100+1;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100+1,12,7847.066,-2217.571,470.403,'Keeper Remulos'),
(@REMULOS*100+1,11,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS*100+1,10,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS*100+1,9,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS*100+1,8,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS*100+1,7,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS*100+1,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS*100+1,5,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS*100+1,4,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS*100+1,3,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS*100+1,2,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS*100+1,1,7940.567871,-2577.845703,488.946808,'Keeper Remulos');

-- Arch Druid Lilliandra
DELETE FROM `smart_scripts` WHERE entryorguid = 30630 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30630, 0, 0, 1, 62, 0, 100, 0, 9991, 0, 0, 0, 85, 57536, 0, 0, 0, 0, 0, 19, 30630, 0, 0, 0, 0, 0, 0, 'Arch Druid Lilliandra - On gossip option select - Player Cast Forcecast Portal: Moonglade on Arch Druid Lilliandra');

-- Icecrown's Moonglade portal
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=32790;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(32790,57654,1,0);

DELETE FROM `smart_scripts` WHERE entryorguid IN (32790) AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(32790, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 3, 0, 11686, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Portal - On Respawn - Morph Into 0'),
(32790, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 61722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Portal - On Respawn - Cast Nature Portal State');

-- Moonglade's return portal
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=32788;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(32788,57539,1,0);

DELETE FROM `smart_scripts` WHERE entryorguid IN (32788) AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(32788, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 3, 0, 11686, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Return Portal - On Respawn - Morph Into 0'),
(32788, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 61722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Return Portal - On Respawn - Cast Nature Portal State');

-- Conditions for portals
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry` IN (57654,57539);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 32790, 57654, 0, 0, 28, 0, 13073, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick'),
(18, 32788, 57539, 0, 0, 28, 0, 13075, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9991,10215);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(9991, 0, 0, 'It''s a pleasure to meet you as well, Arch Druid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?', 1, 1, 9992, 0, 0, 0, ''),
(10215, 0, 0, 'Please send me into the Emerald Dream to recover the acorns. I know of the danger and I do not fear it.', 1, 1, 0, 0, 0, 0, ''),
(10215, 1, 0, 'I wish to return to Arch Druid Lilliandra. Can you send me back to her?', 1, 1, 0, 0, 0, 0, '');

-- Conditions for gossip
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (9991,10215);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 9991, 0, 0, 0, 28, 0, 13073, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13073 complete'),
(15, 10215, 1, 0, 0, 28, 0, 13075, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13075 complete'),
(15, 10215, 0, 0, 0, 9, 0, 13074, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13074 taken');
SET @NPC := 7271;

UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`=32768 WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@NPC AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC, 0, 0, 1, 10, 0, 100, 1, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On OOC Los - Say Line 0'),
(@NPC, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On Link - Remove PC immunity'),
(@NPC, 0, 3, 0, 0, 0, 100, 0, 1000, 3000, 6000, 10000, 11, 12739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - IC - Cast Shadowbolt '),
(@NPC, 0, 4, 0, 2, 0, 100, 0, 30, 100, 30, 100, 23, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On mana pct above 30% - Decrement Phase'),
(@NPC, 0, 5, 0, 0, 0, 100, 0, 15, 0, 15, 0, 23, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On mana pct 15 - Decrement Phase'),
(@NPC, 0, 6, 0, 0, 0, 100, 0, 7000, 13000, 22000, 36000, 11, 15245, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - IC - Cast Shadowbolt Volley'),
(@NPC, 0, 7, 0, 0, 0, 100, 0, 8000, 15000, 26000, 39000, 11, 11086, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - IC - Cast Ward of Zum''rah '),
(@NPC, 0, 8, 0, 0, 0, 100, 0, 4000, 19000, 23000, 30000, 11, 12491, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - IC - Cast Healing Wave'),
(@NPC, 0, 9, 10, 6, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On Death - Yell'),
(@NPC, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On Death - Set Phase 0'),
(@NPC, 0, 11, 0, 7, 0, 100, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Zum''rah - On Evade - Set Friendly');

DELETE FROM `creature_text` WHERE `entry` =@NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(@NPC, 0, 0, 'How dare you enter my sanctum!', 12, 0, 100, 0, 0, 0, 'Witch Doctor Zum''rah'),
(@NPC, 1, 0, 'T''eif godehsi wha!', 14, 14, 100, 0, 0, 0, 'Witch Doctor Zum''rah');
-- Added missing gossip and text for Meridith the Mermaiden.Her gossip should now cast spell=25678 Siren's Song if player has Quest:Love_Song_for_Narain done, which will make players with quest Draconic for Dummies swim faster and not suffer from fatigue loss in waters.

-- Meridith the Mermaiden NPC id (15526)
-- http://www.youtube.com/watch?v=8lz_LbsEsBQ    Video of her giving spell on gossip select

SET @MERIDITH      := 15526;
SET @SPELL         := 25678; -- http://www.wowhead.com/spell=25678
SET @GOSSIP        := 6658;
SET @NPCTEXT       := 7916; 
SET @NPCTEXT1      := 7917;
SET @QUEST         := 8599;

UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP WHERE `entry`=@MERIDITH;

DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id` IN (@NPCTEXT,@NPCTEXT1);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@GOSSIP,@NPCTEXT),
(@GOSSIP,@NPCTEXT1);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP,0,0,"That would be wonderful! Thank you, Meridith.",1,1,0,0,0,0,'');

-- SAI for Meridith the Mermaiden
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MERIDITH;

DELETE FROM `smart_scripts` WHERE (`entryorguid`=15526 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@MERIDITH,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,@SPELL,0,0,0,0,0,7,0,0,0,0,0,0,0,'Meridith the Mermaiden - On gossip select - Spellcast'),
(@MERIDITH,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Meridith the Mermaiden - On gossip select - Close Gossip'),
(@MERIDITH,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Meridith the Mermaiden - On Gossip select - Say');

-- Conditions for Spellcast
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,@GOSSIP,@NPCTEXT,0,0,8,0,@QUEST,0,0,1,0,'','Show text if player doesn''t have quest rewarded' ),
(14,@GOSSIP,@NPCTEXT1,0,0,8,0,@QUEST,0,0,0,0,'','Show text if player has quest rewarded'),
(15,@GOSSIP,0,0,0,8,0,@QUEST,0,0,0,0,'','Show gossip only if player has quest done');


-- Creature text
DELETE FROM `npc_text` WHERE `ID` IN (@NPCTEXT,@NPCTEXT1);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES 
(@NPCTEXT, '', 'It''s so lovely to see you again, $N! I really can''t thank you enough for delivering that message to my dear little gnome.$B$BWould you like to hear a song? It will make traveling in the rough seas much easier!', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 11723),
(@NPCTEXT1, '', 'I find the ocean floor to be very peaceful.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 11723);
-- Random comment

UPDATE `creature_template` SET AIName='SmartAI' WHERE entry IN (26417*100,26417);
DELETE FROM `smart_scripts` WHERE source_type=0 AND entryorguid = 26417;
DELETE FROM `smart_scripts` WHERE (`entryorguid`= 26417*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(26417, 0, 0, 0, 8, 0, 25, 0, 47604, 0, 10000, 10000, 80, 2641700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Start Script for Free At Last'),
(2641700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Change Faction'),
(2641700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Stop Attack'),
(2641700, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 33, 26783, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Quest Credit'),
(2641700, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Say Lines'),
(2641700, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Despawn'),
(2641700, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runed Giant - Reset Faction');

DELETE FROM `creature_text` WHERE `entry` =26417;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(26417, 0, 0, 'I thought I was doomed. Thank you for freeing me.', 12, 0, 100, 0, 0, 0, ''),
(26417, 0, 1, 'You have my gratitude.', 12, 0, 100, 0, 0, 0, ''),
(26417, 0, 2, 'I never thought I''d be free from that terrible spell!', 12, 0, 100, 0, 0, 0, ''),
(26417, 0, 3, 'Thank you, small one.', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `trinity_string` WHERE `entry`=5037;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(5037, 'MechanicImmuneMask: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- Fix Redridge Mystic
DELETE FROM `smart_scripts` WHERE `entryorguid`=430 AND `id`=12;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=430 AND `id`=11;
UPDATE `smart_scripts` SET `event_type`=2 WHERE  `entryorguid`=7271 AND `source_type`=0 AND `id`=5 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `InhabitType`=7, `faction_A`=35, `faction_H`=35, `unit_flags`=0, `type_flags`=8, `dynamicflags`=128, `flags_extra`=0, `speed_walk`=2 WHERE `entry`= 15491;
DELETE FROM `trinity_string` WHERE `entry`=5038;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(5038, 'Unit Flags: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

UPDATE `trinity_string` SET `content_default`=
'Unit Flags 2: %u.
Dynamic Flags: %u.
Faction Template: %u.' WHERE `entry`=542;
ALTER TABLE `creature_questrelation`       RENAME `creature_queststarter`;
ALTER TABLE `creature_involvedrelation`    RENAME `creature_questender`;
ALTER TABLE `gameobject_questrelation`     RENAME `gameobject_queststarter`;
ALTER TABLE `gameobject_involvedrelation`  RENAME `gameobject_questender`;

UPDATE `command` SET
    `name` = 'reload gameobject_queststarter',
    `help` = 'Syntax: .reload gameobject_queststarter\nReload gameobject_queststarter table.'
WHERE
    `name` = 'reload gameobject_questrelation';

UPDATE `command` SET
    `name` = 'reload gameobject_questender',
    `help` = 'Syntax: .reload gameobject_questender\nReload gameobject_questender table.'
WHERE
    `name` = 'reload gameobject_questrelation';

UPDATE `command` SET
    `name` = 'reload creature_queststarter',
    `help` = 'Syntax: .reload creature_queststarter\nReload creature_queststarter table.'
WHERE
    `name` = 'reload creature_questrelation';

UPDATE `command` SET
    `name` = 'reload creature_questender',
    `help` = 'Syntax: .reload creature_questender\nReload creature_questender table.'
WHERE
    `name` = 'reload creature_involvedrelation';
UPDATE `item_template` SET `spellcharges_1`=-1 WHERE `entry`=45008; -- confirmed in 4.x itemsparse
-- http://www.wowhead.com/quest=14069
UPDATE `creature_template` SET `ScriptName` = 'npc_defiant_troll' WHERE `entry` = 34830;

DELETE FROM `creature_text` WHERE `entry` = 34830;
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(34830, 0, 0, 'Oops, break''s over.', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 1, 'Don''t tase me, mon!', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 2, 'I report you to HR!', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 3, 'Work was bettah in da Undermine!', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 4, 'I''m going. I''m going!', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 5, 'Sorry, mon. It won''t happen again.', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 6, 'What I doin'' wrong? Don''t I get a lunch and two breaks a day, mon?', 14, 0, 100, 0, 0, 0, 'defiant troll says'),
(34830, 0, 7, 'Ouch! Dat hurt!', 14, 0, 100, 0, 0, 0, 'defiant troll says');
-- areatrigger for the shadow throne
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5605;
INSERT INTO `areatrigger_scripts` (`entry`,`scriptname`) VALUES
(5605, 'at_shadow_throne');

-- jaina's equipment
DELETE FROM `creature_equip_template` WHERE `entry` = 36955 AND `id` = 1;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itementry1`, `itementry2`,`itementry3`) VALUES
(36955, 1, 2177, 12869, 0);

-- jaina's gossip menu (the same one FROM sylvanas)
UPDATE `creature_template` SET `gossip_menu_id` = 10909 WHERE `entry` = 36955;

-- jaina's scriptai part 2
UPDATE `creature_template` SET `ScriptName` = 'npc_jaina_or_sylvanas_escape_hor' WHERE `entry` in (36955, 37554);

-- Raging Ghoul scriptai
UPDATE `creature_template` SET `ScriptName` = 'npc_raging_ghoul' WHERE `entry` = 36940;

-- Risen Witch Doctor scriptai
UPDATE `creature_template` SET `ScriptName` = 'npc_risen_witch_doctor' WHERE `entry` = 36941;

-- LumberINg Abomination scriptai
UPDATE `creature_template` SET `ScriptName` = 'npc_lumbering_abomination' WHERE `entry` = 37069;
DELETE FROM `command` WHERE `name`='reload gameobject_questender';
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('reload gameobject_questender', 3, 'Syntax: .reload gameobject_questender\\nReload gameobject_questender table.');
SET @CGUID              := 120649;
SET @HULKING_HORROR     := 31411;
SET @HULKING_HORROR1    := 31413;
SET @KRENDELL           := 31444;
SET @V_COMMANDO         := 31414;
SET @UPPER_CUT          := 10966;
SET @INF_BITE           := 49861;
SET @COSMETIC_EXP       := 46225;
SET @FLAME_PATCH        := 42344;
SET @FC_PITFALL         := 59398;
SET @AURA_FALL          := 59396;
SET @ASPELL             := 59073;
SET @HSPELL             := 59087;
SET @AREA               := 4522;

-- Setting new spawns to appropriate phase, and older spawns to their own appropriate phase also.
UPDATE `creature_template` SET `minlevel`=79, `maxlevel`=80, `exp`=2, `faction_A`=2043, `faction_H`=2043, `speed_run`=1.28968, `mindmg`=422, `maxdmg`=586, `attackpower`=642, `minrangedmg`=345, `maxrangedmg`=509, `rangedattackpower`=103 WHERE  `entry`=31413;
UPDATE `creature_template` SET AIName = 'SmartAI' WHERE entry IN (@HULKING_HORROR,@HULKING_HORROR1);
UPDATE `creature` SET `phaseMask` = 2 WHERE id IN (@KRENDELL,@V_COMMANDO,@HULKING_HORROR);
UPDATE `creature` SET `phaseMask` = 8 WHERE id = @HULKING_HORROR1;
UPDATE `gameobject` SET `phaseMask` = 10 WHERE id IN (193401,193400);
UPDATE `creature` SET `phaseMask` = 10 WHERE id IN (31641, 31644);

-- Phasing zone to both Alliance and Horde sides so they don't collide with the npc's there.
DELETE FROM `spell_area` WHERE `spell` IN (@HSPELL,@ASPELL) AND `area`=@AREA;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) VALUES
(@HSPELL,@AREA,13258,13282,0, 690,2,1,66,43), -- Horde version
(@ASPELL,@AREA,13386,13392,0,1101,2,1,66,43); -- Alliance version

-- Missing Hulking Horrors
DELETE FROM `creature` WHERE guid BETWEEN @CGUID AND @CGUID+22; 
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@CGUID, 31413, 571, 1, 8, 23681, 0, 5814.02, 1985.69, 503.881, 2.51188, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+1, 31413, 571, 1, 8, 23681, 0, 5816.86, 1943.29, 507.56, 3.40633, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+2, 31413, 571, 1, 8, 23681, 0, 5863.57, 1984, 507.648, 5.88321, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+3, 31413, 571, 1, 8, 23681, 0, 5778.56, 1957.5, 503.857, 3.27375, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+4, 31413, 571, 1, 8, 23681, 0, 5732.14, 1937.82, 506.014, 5.41257, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+5, 31413, 571, 1, 8, 23681, 0, 5706.3, 1977.47, 503.911, 4.05224, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+6, 31413, 571, 1, 8, 23681, 0, 5685.71, 1974.25, 503.863, 2.57831, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+7, 31413, 571, 1, 8, 23681, 0, 5673.84, 2094.37, 503.889, 5.52857, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+8, 31413, 571, 1, 8, 23681, 0, 5831.47, 2106.11, 503.89, 6.24962, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+9, 31413, 571, 1, 8, 23681, 0, 5826.33, 2149.32, 505.746, 2.48705, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+10, 31413, 571, 1, 8, 23681, 0, 5754.92, 2151.17, 503.91, 1.93734, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+11, 31413, 571, 1, 8, 23681, 0, 5775.43, 2193.86, 512.998, 0.776427, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+12, 31413, 571, 1, 8, 23681, 0, 5729.88, 2136.62, 503.894, 1.79434, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+13, 31413, 571, 1, 8, 23681, 0, 5782.62, 2140.68, 503.9, 0.783972, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+14, 31413, 571, 1, 8, 23681, 0, 5754.13, 2174.58, 506.181, 1.25723, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+15, 31413, 571, 1, 8, 23681, 0, 5650.03, 2055.57, 503.868, 0.939173, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+16, 31413, 571, 1, 8, 23681, 0, 5660.07, 2125.83, 505.943, 0.534949, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+17, 31413, 571, 1, 8, 23681, 0, 5700.89, 2148.91, 503.999, 5.77704, 300, 0, 0, 12175, 0, 0, 0, 0, 0),
(@CGUID+18, 31413, 571, 1, 8, 23681, 0, 5651.27, 2007.15, 504.97, 1.98891, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+19, 31413, 571, 1, 8, 23681, 0, 5858.93, 2108.63, 505.124, 2.30257, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+20, 31413, 571, 1, 8, 23681, 0, 5688.14, 2001.98, 503.924, 0.151243, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+21, 31413, 571, 1, 8, 23681, 0, 5845.64, 2080.43, 503.97, 2.90496, 300, 5, 0, 12175, 0, 1, 0, 0, 0),
(@CGUID+22, 31413, 571, 1, 8, 23681, 0, 5876.8, 2037.78, 506.147, 0.498635, 300, 0, 0, 12175, 0, 0, 0, 0, 0);

-- Conditions for Aura fall
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 and `SourceEntry` = @AURA_FALL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, @AURA_FALL, 0, 0, 31, 0, 3, 31641, 0, 0, 0, 0, '', 'Aura fall hits only pitfall npc');

-- Saronite bomb should blow-up the player into the pit
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=193400;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=193400;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(193400, 1, 0, 0, 19, 0, 100, 0, 13389, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 123287, 31644, 0, 0, 0, 0, 0, 'Saronite Bomb Stack - On quest accept - Set Data'),
(193400, 1, 1, 0, 19, 0, 100, 0, 13263, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 123287, 31644, 0, 0, 0, 0, 0, 'Saronite Bomb Stack - On quest accept - Set Data');

-- Cosmetic Explosion bunny
UPDATE `creature_template` SET AIName = 'SmartAI' WHERE entry = 31644;
DELETE FROM `smart_scripts` WHERE `entryorguid`=31644 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31644, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 11, @COSMETIC_EXP, 2, 0, 0, 0, 0, 9, 31644, 20, 40, 0, 0, 0, 0, 'Cosmetic Trigger - On Data set - Cosmetic Explosion'),
(31644, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, @FLAME_PATCH, 2, 0, 0, 0, 0, 9, 31644, 20, 40, 0, 0, 0, 0, 'Cosmetic Trigger - On Link - Cast flame patch on npc''s'),
(31644, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 31641, 1, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Saronite Bomb Stack - On Link - Summon Pitfall bunny');

-- "Fall" vehicle bunny
UPDATE `creature_template` SET AIName = 'SmartAI', `speed_walk`=20.1429, `speed_run`=20.1429 WHERE entry = 31641; 
DELETE FROM `smart_scripts` WHERE `entryorguid`=31641 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31641, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, @FC_PITFALL, 2, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'Pitfall bunny - On respawn - Cast FC pitfall'),
(31641, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 5756.644, 2050.579, 480.6346, 0, 'Pitfall bunny - On Link - Go to PoS');

-- Hulking Horror phase 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=@HULKING_HORROR AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HULKING_HORROR,0,0,0,0,0,100,0,8000,16000,24000,32000,11,@INF_BITE,0,0,0,0,0,5,0,0,0,0,0,0,0,'Hulking Horror - In Combat - Cast Infected Bite'),
(@HULKING_HORROR,0,1,0,0,0,100,0,4000,9000,14000,19000,11,@UPPER_CUT,0,0,0,0,0,5,0,0,0,0,0,0,0,'Hulking Horror - In Combat - Cast Uppercut'),
(@HULKING_HORROR,0,2,0,6,0,100,0,0,0,0,0,33,31413,0,0,0,0,0,5,0,0,0,0,0,0,0,'Hulking Horror - On Death - Killcredit');

-- Hulking Horrors phase 8
DELETE FROM `smart_scripts` WHERE `entryorguid`=@HULKING_HORROR1 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HULKING_HORROR1,0,0,0,0,0,100,0,8000,16000,24000,32000,11,@INF_BITE,0,0,0,0,0,5,0,0,0,0,0,0,0,'Hulking Horror - In Combat - Cast Infected Bite'),
(@HULKING_HORROR1,0,1,0,0,0,100,0,4000,9000,14000,19000,11,@UPPER_CUT,0,0,0,0,0,5,0,0,0,0,0,0,0,'Hulking Horror - In Combat - Cast Uppercut');
-- Into The Wild Green Yonder (13045)
SET @NPC_CAPTURED           := 30407; -- Captured Crusader
SET @NPC_SKYTALON           := 30500; -- Argent Skytalon (not the mount)
SET @NPC_SKYTALON_MOUNT     := 30228; -- Argent Skytalon (mount)

UPDATE `creature_template` SET `faction_A`=2070,`faction_H`=2070 WHERE `entry`=@NPC_SKYTALON;
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=@NPC_SKYTALON_MOUNT;

-- Re-vamped SAI script
UPDATE `creature_template` SET `npcflag`=0,`AIName`='SmartAI' WHERE `entry`=@NPC_CAPTURED;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_CAPTURED;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_CAPTURED,0,0,1,25,0,100,0,0,0,0,0,75,56726,0,0,0,0,0,1,0,0,0,0,0,0,0,'Apply aura on reset, linking to id 1'),
(@NPC_CAPTURED,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'set phasemask to 1'),
(@NPC_CAPTURED,0,2,0,1,1,100,0,4000,4000,4000,4000,10,70,22,0,0,0,0,1,0,0,0,0,0,0,0,'play emote OOC in phase 1'),
(@NPC_CAPTURED,0,3,4,8,1,100,0,56683,0,0,0,11,56687,0,0,0,0,0,7,0,0,0,0,0,0,0,'Mount proto drake on spell hit, linking to id 4'),
(@NPC_CAPTURED,0,4,5,61,1,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text , linking to id 5'),
(@NPC_CAPTURED,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'set phasemask to 2'),
(@NPC_CAPTURED,0,6,0,1,2,100,0,8000,8000,8000,8000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say text OOC in phase 2, starting with 8sec delay, then repeat every 8 secs'),
(@NPC_CAPTURED,0,7,8,23,2,100,0,56687,0,1000,1000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'say text if does not have ride aura(check every 1 sec), linking to id 8'),
(@NPC_CAPTURED,0,8,9,61,2,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'set despawn timer for 5 secs, linking to id 9'),
(@NPC_CAPTURED,0,9,0,61,2,100,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'set phase to 4');
-- Re-vamped spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@NPC_SKYTALON;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
-- Proper value
(@NPC_SKYTALON,56922,2,0);
-- rRe-vamped condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=18 AND `SourceEntry`=56922) OR (`SourceTypeOrReferenceId`=17 AND `SourceEntry`=56684) OR (`SourceTypeOrReferenceId`=13 AND `SourceEntry`=56683);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,@NPC_SKYTALON,56922,0,0,8,0,13045,0,0,1,0,'','Forbidden rewarded quest for spellclick'),
(18,@NPC_SKYTALON,56922,0,0,9,0,13045,0,0,0,0,'','Required quest active for spellclick'),
(13,1,56683,0,0,31,0,3,@NPC_CAPTURED,0,0,0,'','Grab Captured Crusader targets Captured Crusader'),
(17,0,56684,0,0,30,0,192523,15,0,0,0,'','Spell focus for Drop Off Captured Crusader'),
(17,0,56684,0,0,29,0,@NPC_CAPTURED,10,0,0,0,'','Drop Off Captured Crusader requires a Captured Crusader');
-- The Last Line Of Defense (13086)
SET @NEXT := 142412;
SET @PATH := @NEXT * 10;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (57412,57385);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(57412,'spell_q13086_cannons_target'),
(57385,'spell_q13086_cannons_target');

-- Forgotten Depths Slayer SAI ID: 30593
UPDATE `creature_template` SET `speed_walk`=5,`movementtype`=1,`faction_A`=2068, `faction_H`=2068,`AIName`= 'SmartAI' WHERE `entry`= 30593;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30593;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30593,0,1,0,0,0,100,0,1000,5000,2500,6500,11,54185,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Claw Slash');


-- Frostbrood Destroyers 5
UPDATE `creature_template` SET `maxlevel`=80,`minlevel`=80,`exp`=2,`InhabitType`=7,`speed_walk`=3,`mindmg` = 1170,`dmg_multiplier` = 2,`attackpower` = 342,`maxdmg` = 3470,`movementtype`=1,`faction_A`=2068, `faction_H`=2068,`AIName`= 'SmartAI' WHERE `entry`= 30575;
DELETE FROM `creature` WHERE `id`=30575;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@NEXT+71, 30575,571,1,64,6097.870117, 58.331299, 380.506012, 0.138359, 75,20,1),
(@NEXT+72, 30575,571,1,64,6243.700195, 183.362000, 392.515015, 4.594332, 75,20,1),
(@NEXT+73, 30575,571,1,64,6313.589844, 154.557999, 397.022003, 4.739780, 75,20,1),
(@NEXT+74, 30575,571,1,64,6331.450195, 53.939301, 399.138000, 2.973792, 75,20,1),
(@NEXT+75, 30575,571,1,64,6187.290039, 131.792999, 386.451996, 3.173792, 75,20,1);

-- Hover mode for Frostbroods
DELETE FROM `creature_template_addon` WHERE `entry`=30575;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30575,0,0,33554432,0,0,'');

-- Pathing
-- Slayers reinforcements left on main path
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+1;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+1,@PATH+1,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+1;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+1,1,6442.551758, 222.894867, 397.353943,0,2,0,100,0),
(@PATH+1,2,6337.383789,113.591568,391.210876,6000,2,0,100,0),
(@PATH+1,3,6299.144531,126.174286,391.081909,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+2;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+2;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+2,@PATH+2,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+2;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+2,1,6437.940430,215.351151,397.798889,0,2,0,100,0),
(@PATH+2,2,6327.383789,143.591568,391.210876,6000,2,0,100,0),
(@PATH+2,3,6296.544531,76.174286,391.081909,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+3;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+3;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+3,@PATH+3,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+3;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+3,1,6419.338379,239.908859,396.095978,0,2,0,100,0),
(@PATH+3,2,6317.383789,115.591568,391.210876,6000,2,0,100,0),
(@PATH+3,3,6294.144531,126.174286,391.081909,6000,2,0,100,0);

-- Slayers reinforcements right on main path
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+4;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+4;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+4,@PATH+4,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+4;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+4,1, 6428.831055, 239.908859, 396.763702,0,2,0,100,0),
(@PATH+4,2,6346.144531,126.174286,391.081909,6000,2,0,100,0),
(@PATH+4,3,6297.353789,80.591568,391.210876,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+5;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+5;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+5,@PATH+5,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+5;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+5,1, 6400.702148, 236.755035, 395.685333,0,2,0,100,0),
(@PATH+5,2,6356.144531,106.174286,391.081909,6000,2,0,100,0),
(@PATH+5,3,6398.383789,70.591568,391.210876,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+6;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+6;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+6,@PATH+6,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+6;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+6,1, 6410.955078, 249.759094, 396.454742,0,2,0,100,0),
(@PATH+6,2,6376.144531,116.174286,391.081909,6000,2,0,100,0),
(@PATH+6,3,6295.383789,65.591568,391.210876,6000,2,0,100,0);

-- Slayers reinforcements on the rear
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+31;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+31;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+31,@PATH+7,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+7;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+7,1, 6113.089844, 156.401672, 369.398804,0,2,0,100,0),
(@PATH+7,2,6175.009766,125.577263,369.434753,6000,2,0,100,0),
(@PATH+7,3,6109.930176,49.710854,369.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+32;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+32;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+32,@PATH+8,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+8;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+8,1, 6103.571289, 140.684174, 368.524414,0,2,0,100,0),
(@PATH+8,2,6165.009766,119.577263,369.434753,6000,2,0,100,0),
(@PATH+8,3,6118.930176,64.710854,369.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+33;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+33;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+33,@PATH+9,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+9;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+9,1, 6093.838867, 143.838867, 368.781097,0,2,0,100,0),
(@PATH+9,2,6171.009766,114.577263,369.434753,6000,2,0,100,0),
(@PATH+9,3,6114.930176,61.710854,369.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+34;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+34;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+34,@PATH+10,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+10;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+10,1, 6090.764160, 141.764160, 369.786255,0,2,0,100,0),
(@PATH+10,2,6183.009766,109.577263,369.434753,6000,2,0,100,0),
(@PATH+10,3,6109.930176,57.710854,369.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+35;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+35;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+35,@PATH+11,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+11;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+11,1, 6079.681641, 141.840958, 369.456573,0,2,0,100,0),
(@PATH+11,2,6180.009766,121.577263,369.434753,6000,2,0,100,0),
(@PATH+11,3,6124.930176,70.710854,369.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+36;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+36;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+36,@PATH+12,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+12;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+12,1, 6062.076660, 155.683197, 369.868896,0,2,0,100,0),
(@PATH+12,2,6114.930176,74.710854,368.404419,6000,2,0,100,0),
(@PATH+12,3,6187.009766,111.577263,369.434753,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+37;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+37;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+37,@PATH+13,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+13;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+13,1, 6076.666016, 163.742477, 369.454651,0,2,0,100,0),
(@PATH+13,2,6117.930176,55.710854,369.404419,6000,2,0,100,0),
(@PATH+13,3,6178.009766,112.577263,369.434753,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+38;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+38;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+38,@PATH+14,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+14;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+14,1, 6088.131348, 179.086304, 372.483307,0,2,0,100,0),
(@PATH+14,2,6115.930176,73.710854,369.404419,6000,2,0,100,0),
(@PATH+14,3,6185.009766,119.577263,369.434753,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+39;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+39;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+39,@PATH+15,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+15;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+15,1, 6098.503418, 176.307312, 369.942688,0,2,0,100,0),
(@PATH+15,2,6115.930176,51.710854,369.404419,6000,2,0,100,0),
(@PATH+15,3,6185.009766,110.577263,369.434753,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+40;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+40;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+40,@PATH+16,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+16;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+16,1, 6090.764160, 155.876968, 368.786255,0,2,0,100,0),
(@PATH+16,2,6112.930176,61.710854,369.404419,6000,2,0,100,0),
(@PATH+16,3,6176.009766,114.577263,370.434753,6000,2,0,100,0);

-- Slayers from West to both parts
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+26;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+26;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+26,@PATH+17,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+17;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+17,1, 6200.917969,  220.434753, 372.776184,0,2,0,100,0),
(@PATH+17,2,6346.144531,126.174286,372.081909,6000,2,0,100,0),
(@PATH+17,3,6287.383789,80.591568,372.210876,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+27;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+27;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+27,@PATH+19,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+19;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+19,1, 6200.917969,  220.434753, 372.776184,0,2,0,100,0),
(@PATH+19,2,6356.144531,106.174286,372.081909,6000,2,0,100,0),
(@PATH+19,3,6395.383789,70.591568,372.210876,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+28;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+28;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NEXT+28,@PATH+20,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+20;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+20,1, 6190.595703, 225.242371, 372.554016,0,2,0,100,0),
(@PATH+20,2,6175.009766,125.577263,372.434753,6000,2,0,100,0),
(@PATH+20,3,6104.930176,59.710854,372.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+29;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+29;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+29,@PATH+21,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+21;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+21,1, 6189.209961, 210.502823, 372.877960,0,2,0,100,0),
(@PATH+21,2,6171.009766,119.577263,372.434753,6000,2,0,100,0),
(@PATH+21,3,6118.930176,64.710854,372.404419,6000,2,0,100,0);

UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NEXT+29;
DELETE FROM `creature_addon` WHERE `guid`=@NEXT+29;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(@NEXT+29,@PATH+22,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH+22;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH+22,1, 6176.683594, 213.375336, 372.395172,0,2,0,100,0),
(@PATH+22,2,6173.009766,117.577263,372.434753,6000,2,0,100,0),
(@PATH+22,3,6118.930176,63.710854,372.404419,6000,2,0,100,0);

-- Turrets
UPDATE `creature_template` SET `faction_A`=2231,`faction_H`=2231,`unit_flags`=16777220,`npcflag`=16777216,`vehicleid`=292 WHERE `entry`=30236;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30236;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30236,57573,1,0);
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry`=30236;
-- Move boss_lord_valthalak from EAI to CPP
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'boss_lord_valthalak' WHERE `entry`=16042;
--DELETE FROM creature_ai_scripts WHERE `creature_id`=16042;
DELETE FROM `creature_text` WHERE `entry`=16042 AND `groupid`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(16042, 0, 0, '%s goes into a frenzy!', 16, 0, 100, 0, 0, 0, 'Lord Valthalak - Cast Frenzy');
-- Move Yor from EAI to CPP
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'npc_yor' WHERE `entry`=22930;
--DELETE FROM creature_ai_scripts WHERE `creature_id`=22930;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 and `SourceEntry` IN (49555,59807,49618,59809,49405,49380,59803);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,49555,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Corpse Explode'),
(13,1,49555,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Corpse Explode'),
(13,1,49555,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Corpse Explode'),

(13,1,59807,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Corpse Explode'),
(13,1,59807,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Corpse Explode'),
(13,1,59807,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Corpse Explode'),

(13,1,49618,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,49618,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,49618,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,49618,0,3,31,0,4,0,0,0,0,0,'','Trollgore - Corpse Explode Damage'),

(13,1,59809,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,59809,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,59809,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Corpse Explode Damage'),
(13,1,59809,0,3,31,0,4,0,0,0,0,0,'','Trollgore - Corpse Explode Damage'),

(13,1,49405,0,0,31,0,3,26630,0,0,0,0,'','Trollgore - Invader Taunt Trigger'),

(13,3,49380,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Consume'),
(13,3,49380,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Consume'),
(13,3,49380,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Consume'),
(13,3,49380,0,3,31,0,4,0,0,0,0,0,'','Trollgore - Consume'),

(13,3,59803,0,0,31,0,3,27709,0,0,0,0,'','Trollgore - Consume'),
(13,3,59803,0,1,31,0,3,27753,0,0,0,0,'','Trollgore - Consume'),
(13,3,59803,0,2,31,0,3,27754,0,0,0,0,'','Trollgore - Consume'),
(13,3,59803,0,3,31,0,4,0,0,0,0,0,'','Trollgore - Consume');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (49555,59807,49405,49380,59803,59910);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(49555,'spell_trollgore_corpse_explode'),
(59807,'spell_trollgore_corpse_explode'),
(49405,'spell_trollgore_invader_taunt'),
(49380,'spell_trollgore_consume'),
(59803,'spell_trollgore_consume'),
(59910,'spell_novos_summon_minions');

DELETE FROM `creature_text` WHERE `entry`=26631 AND `groupid`=5;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26631, 5, 0, '%s calls for assistance!', 41, 0, 100, 0, 0, 0, 'Novos the Summoner - EMOTE_SUMMONING_ADDS');

DELETE FROM `spelldifficulty_dbc` WHERE `id`=49618;
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES
(49618, 49618, 59809);
