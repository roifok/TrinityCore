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
<<<<<<< HEAD
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
=======
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-53228);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-53228,'spell_hun_rapid_recuperation');

DELETE FROM `spell_ranks` WHERE `first_spell_id`=53228;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(53228, 53228, 1),
(53228, 53232, 2);
>>>>>>> trinitycore/4.3.4
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

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @WOLF;
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
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @CHASER;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @CHASER;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CHASER,0,0,0,11,0,100,0,0,0,0,0,11,@SPELL_INVIS,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Warp Chaser - On Spawn - Cast Phasing Invisibility'),
(@CHASER,0,1,0,0,0,100,0,500,2000,7000,15000,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Warp Chaser - In Combat - Cast Charge'),
(@CHASER,0,2,0,0,0,100,0,3000,5000,10000,15000,11,@SPELL_BITE,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Warp Chaser - In Combat - Cast Venomous Bite'),
(@CHASER,0,3,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@ZEPPIT,10,0,0,0,0,0, 'Warp Chaser - On Death - Set Data on Zeppit');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ZEPPIT;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @ZEPPIT;

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
DELETE FROM `spell_script_names` WHERE `Entry`='8056';
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
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
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
DELETE FROM `creature_ai_scripts` WHERE creature_id = @ENTRY;
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
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
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
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
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

DELETE FROM `creature_ai_scripts` WHERE creature_id=@ERANIKUS;
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
DELETE FROM `creature_ai_scripts` WHERE creature_id=@NPC; 
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

-- Adds 70 Forgotten Depths Slayers for phase 64 ID: 30593
DELETE FROM `creature` WHERE `id`=30593;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `MovementType`) VALUES
(@NEXT+1, 30593, 571, 1, 64, 6442.551758, 222.894867, 397.353943, 2.7317, 5, 60, 0, 1), 
(@NEXT+2, 30593, 571, 1, 64, 6437.940430, 215.351151, 397.798889, 0.929563, 5, 60, 0, 1), 
(@NEXT+3, 30593, 571, 1, 64, 6419.338379, 239.908859, 396.095978, 2.1122, 5, 60, 0, 1), 
(@NEXT+4, 30593, 571, 1, 64, 6428.831055, 239.908859, 396.763702, 3.5549, 5, 60, 0, 1), 
(@NEXT+5, 30593, 571, 1, 64, 6400.702148, 236.755035, 395.685333, 1.32629, 5, 60, 0, 1),
(@NEXT+6, 30593, 571, 1, 64, 6410.955078, 249.759094, 396.454742, 2.77181, 5, 60, 0, 1),
(@NEXT+7, 30593, 571, 1, 64, 6367.340820, 183.807068, 391.614655, 0.501217, 5, 60, 0, 1),
(@NEXT+8, 30593, 571, 1, 64, 6382.062500, 176.836975, 393.132507, 1.22528, 5, 60, 0, 1), 
(@NEXT+9, 30593, 571, 1, 64, 6357.964355, 158.979782, 391.124756, 2.99677, 5, 60, 0, 1),
(@NEXT+10, 30593, 571, 1, 64, 6373.327537, 146.681412, 392.788330, 3.35221, 5, 60, 0, 1),
(@NEXT+11, 30593, 571, 1, 64, 6343.335938, 173.300323, 389.862518, 4.18409, 5, 60, 0, 1),
(@NEXT+12, 30593, 571, 1, 64, 6335.788086, 148.828232, 389.702972, 3.19711, 5, 60, 0, 1),
(@NEXT+13, 30593, 571, 1, 64, 6347.954590, 129.882919, 3391.126984, 2.81552, 5, 60, 0, 1),
(@NEXT+14, 30593, 571, 1, 64, 6333.287109, 88.245689, 391.002228, 5.84132, 5, 60, 0, 1),
(@NEXT+15, 30593, 571, 1, 64, 6336.879395, 71.525627, 390.192871, 0.785398, 5, 60, 0, 1),
(@NEXT+16, 30593, 571, 1, 64, 6318.244629, 32.249405, 391.493988, 2.1325, 5, 60, 0, 1),
(@NEXT+17, 30593, 571, 1, 64, 6312.728320, 8.393217, 392.626587, 0.291176, 5, 60, 0, 1),
(@NEXT+18, 30593, 571, 1, 64, 6326.704590, 107.359123, 391.002045, 0.919091, 5, 60, 0, 1),
(@NEXT+19, 30593, 571, 1, 64, 6301.972656, 119.744209, 389.925903, 1.55615, 5, 60, 0, 1),
(@NEXT+20, 30593, 571, 1, 64, 6266.120117, 148.388809, 383.515961, 1.84373, 5, 60, 0, 1),
(@NEXT+21, 30593, 571, 1, 64, 6251.726074, 153.168182, 381.629669, 1.80125, 5, 60, 0, 1),
(@NEXT+22, 30593, 571, 1, 64, 6229.003418, 145.614822, 379.721741, 5.84095, 5, 60, 0, 1),
(@NEXT+23, 30593, 571, 1, 64, 6284.683082, 214.294250, 388.699188, 2.78648, 5, 60, 0, 1),
(@NEXT+24, 30593, 571, 1, 64, 6302.265625, 212.301346, 390.488556, 3.48219, 5, 60, 0, 1),
(@NEXT+25, 30593, 571, 1, 64, 6299.725098, 226.082626, 391.288788, 5.13205, 5, 60, 0, 1),
(@NEXT+26, 30593, 571, 1, 64, 6200.917969,  220.434753, 383.776184, 2.88047, 5, 60, 0, 1),
(@NEXT+27, 30593, 571, 1, 64, 6200.930664, 234.127823, 384.630798, 1.50529, 5, 60, 0, 1),
(@NEXT+28, 30593, 571, 1, 64, 6190.595703, 225.242371, 382.554016, 4.4761, 5, 60, 0, 1),
(@NEXT+29, 30593, 571, 1, 64, 6189.209961, 210.502823, 381.877960, 2.11574, 5, 60, 0, 1),
(@NEXT+30, 30593, 571, 1, 64, 6176.683594, 213.375336, 380.395172, 0.763302, 5, 60, 0, 1),
(@NEXT+31, 30593, 571, 1, 64, 6113.089844, 156.401672, 369.398804, 5.60417, 5, 60, 0, 1),
(@NEXT+32, 30593, 571, 1, 64, 6103.571289, 140.684174, 367.524414, 0.430917, 5, 60, 0, 1),
(@NEXT+33, 30593, 571, 1, 64, 6093.838867, 143.838867, 367.781097, 6.10437, 5, 60, 0, 1),
(@NEXT+34, 30593, 571, 1, 64, 6090.764160, 141.764160, 365.786255, 5.91518, 5, 60, 0, 1),
(@NEXT+35, 30593, 571, 1, 64, 6079.681641, 141.840958, 366.456573, 5.91108, 5, 60, 0, 1),
(@NEXT+36, 30593, 571, 1, 64, 6062.076660, 155.683197, 363.868896, 2.05191, 5, 60, 0, 1),
(@NEXT+37, 30593, 571, 1, 64, 6076.666016, 163.742477, 362.454651, 3.57468, 5, 60, 0, 1),
(@NEXT+38, 30593, 571, 1, 64, 6088.131348, 179.086304, 360.483307, 5.6035, 5, 60, 0, 1),
(@NEXT+39, 30593, 571, 1, 64, 6098.503418, 176.307312, 364.942688, 5.6035, 5, 60, 0, 1),
(@NEXT+40, 30593, 571, 1, 64, 6090.764160, 155.876968, 365.786255, 5.6035, 5, 60, 0, 1),
(@NEXT+41, 30593, 571, 1, 64, 6338.830566, 70.974663, 390.432343, 5.6035, 5, 60, 0, 1),
(@NEXT+42, 30593, 571, 1, 64, 6339.270508, 63.711479, 389.662994, 5.6035, 5, 60, 0, 1),
(@NEXT+43, 30593, 571, 1, 64, 6282.305176, 128.449188, 386.556244, 5.6035, 5, 60, 0, 1),
(@NEXT+44, 30593, 571, 1, 64, 6267.317383, 130.918854, 384.601959, 5.6035, 5, 60, 0, 1),
(@NEXT+45, 30593, 571, 1, 64, 6182.309082, 94.777863, 377.689959, 5.6035, 5, 60, 0, 1),
(@NEXT+46, 30593, 571, 1, 64, 6157.960383, 89.072354, 371.833959, 5.6035, 5, 60, 0, 1),
(@NEXT+47, 30593, 571, 1, 64, 6236.617383, 113.980854, 380.351959, 5.6035, 5, 60, 0, 1),
(@NEXT+48, 30593, 571, 1, 64, 6295.647383, 137.418854, 387.451959, 5.6035, 5, 60, 0, 1),
(@NEXT+49, 30593, 571, 1, 64, 6200.917969,  220.434753, 383.776184, 2.88047, 5, 60, 0, 1),
(@NEXT+50, 30593, 571, 1, 64, 6200.930664, 234.127823, 384.630798, 1.50529, 5, 60, 0, 1),
(@NEXT+51, 30593, 571, 1, 64, 6190.595703, 225.242371, 382.554016, 4.4761, 5, 60, 0, 1),
(@NEXT+52, 30593, 571, 1, 64, 6189.209961, 210.502823, 381.877960, 2.11574, 5, 60, 0, 1),
(@NEXT+53, 30593, 571, 1, 64, 6176.683594, 213.375336, 380.395172, 0.763302, 5, 60, 0, 1),
(@NEXT+54, 30593, 571, 1, 64, 6113.089844, 156.401672, 369.398804, 5.60417, 5, 60, 0, 1),
(@NEXT+55, 30593, 571, 1, 64, 6103.571289, 140.684174, 367.524414, 0.430917, 5, 60, 0, 1),
(@NEXT+56, 30593, 571, 1, 64, 6093.838867, 143.838867, 367.781097, 6.10437, 5, 60, 0, 1),
(@NEXT+57, 30593, 571, 1, 64, 6090.764160, 141.764160, 365.786255, 5.91518, 5, 60, 0, 1),
(@NEXT+58, 30593, 571, 1, 64, 6079.681641, 141.840958, 366.456573, 5.91108, 5, 60, 0, 1),
(@NEXT+59, 30593, 571, 1, 64, 6062.076660, 155.683197, 363.868896, 2.05191, 5, 60, 0, 1),
(@NEXT+60, 30593, 571, 1, 64, 6076.666016, 163.742477, 362.454651, 3.57468, 5, 60, 0, 1),
(@NEXT+61, 30593, 571, 1, 64, 6088.131348, 179.086304, 360.483307, 5.6035, 5, 60, 0, 1),
(@NEXT+62, 30593, 571, 1, 64, 6098.503418, 176.307312, 364.942688, 5.6035, 5, 60, 0, 1),
(@NEXT+63, 30593, 571, 1, 64, 6090.764160, 155.876968, 365.786255, 5.6035, 5, 60, 0, 1),
(@NEXT+64, 30593, 571, 1, 64, 6338.830566, 70.974663, 390.432343, 5.6035, 5, 60, 0, 1),
(@NEXT+65, 30593, 571, 1, 64, 6339.270508, 63.711479, 389.662994, 5.6035, 5, 60, 0, 1),
(@NEXT+66, 30593, 571, 1, 64, 6282.305176, 128.449188, 386.556244, 5.6035, 5, 60, 0, 1),
(@NEXT+67, 30593, 571, 1, 64, 6267.317383, 130.918854, 384.601959, 5.6035, 5, 60, 0, 1),
(@NEXT+68, 30593, 571, 1, 64, 6182.309082, 94.777863, 377.689959, 5.6035, 5, 60, 0, 1),
(@NEXT+69, 30593, 571, 1, 64, 6157.960383, 89.072354, 371.833959, 5.6035, 5, 60, 0, 1),
(@NEXT+70, 30593, 571, 1, 64, 6236.617383, 113.980854, 380.351959, 5.6035, 5, 60, 0, 1);

-- Frostbrood Destroyers 5
UPDATE `creature_template` SET `maxlevel`=80,`minlevel`=80,`exp`=2,`InhabitType`=7,`speed_walk`=3,`mindmg` = 1170,`dmg_multiplier` = 2,`attackpower` = 342,`maxdmg` = 3470,`movementtype`=1,`faction_A`=2068, `faction_H`=2068 WHERE `entry`= 30575;
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
DELETE FROM creature_ai_scripts WHERE `creature_id`=16042;
DELETE FROM `creature_text` WHERE `entry`=16042 AND `groupid`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(16042, 0, 0, '%s goes into a frenzy!', 16, 0, 100, 0, 0, 0, 'Lord Valthalak - Cast Frenzy');
-- Move Yor from EAI to CPP
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'npc_yor' WHERE `entry`=22930;
DELETE FROM creature_ai_scripts WHERE `creature_id`=22930;
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
-- Move boss_anzu from EAI to CPP
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'boss_anzu' WHERE `entry`=23035;
DELETE FROM creature_ai_scripts WHERE `creature_id`=23035;
DELETE FROM `creature_text` WHERE `entry`=23035;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(23035, 0, 0, 'Awaken, my children and assist your master!', 14, 0, 100, 0, 0, 0, 'Anzu - Summon Brood'),
(23035, 1, 0, 'Your spells... ke-kaw... are weak magics... easy to turn against you...', 15, 0, 100, 0, 0, 0, 'Anzu - Spell Bomb'),
(23035, 1, 1, 'Yes... cast your precious little spells, ak-a-ak!', 15, 0, 100, 0, 0, 0, 'Anzu - Spell Bomb');
UPDATE `smart_scripts` SET `event_param2`=100, `event_param4`=100 WHERE  `entryorguid`=7271 AND `source_type`=0 AND `id`=5 AND `link`=0; -- Kirk
DELETE FROM `command` WHERE `name`='reload gameobject_involvedrelation'; -- Runico
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (49555, 49380, 49381);
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES
(49555, 49555, 59807),
(49380, 49380, 59803),
(49381, 49381, 59805);

UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=27724;

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (27709,27753,27754));
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(127478, 0, 0x0, 0x1, '31261'),
(127479, 0, 0x0, 0x1, '31261'),
(127517, 0, 0x0, 0x1, '31261'),
(127518, 0, 0x0, 0x1, '31261'),
(127519, 0, 0x0, 0x1, '31261'),
(127528, 0, 0x0, 0x1, '31261'),
(127539, 0, 0x0, 0x1, '31261');

DELETE FROM `creature` WHERE `guid` > 127479 AND `guid` < 127489;
DELETE FROM `creature` WHERE `guid` > 127519 AND `guid` < 127539 AND `guid` != 127528;

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id` IN (27709,27753,27754);

UPDATE `creature_template` SET `faction_A`=1693, `faction_H`=1693, `unit_flags`=768, `InhabitType`=5 WHERE `entry` IN (27709,27753,27754);
UPDATE `creature_template` SET `ScriptName` = 'npc_drakkari_invader' WHERE `entry` IN (27709,27753,27754);

DELETE FROM `creature_template_addon` WHERE `entry` IN (27709,27753,27754);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(27709, 26751, 0x0, 0x1, NULL),
(27753, 26751, 0x0, 0x1, NULL),
(27754, 26751, 0x0, 0x1, NULL);
-- Random comment
SET @IMMOLATION             := 58627; 
SET @CHECKTRIGGER           := 58594; 
SET @CHECK                  := 58593; 
SET @ABOMINATION            := 30689;
SET @CREDIT                 := 58599;
SET @EXPLOSION              := 58596;
SET @SKELETON               := 31048;
SET @KC                     := 30995;

-- Add SAI for Burning Skeleton
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry`=@SKELETON;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SKELETON;
INSERT INTO `smart_scripts` VALUES
(@SKELETON,0,0,1,25,0,100,0,0,0,0,0,11,@IMMOLATION,0,0,0,0,0,1,0,0,0,0,0,0,0,'Burning Skeleton - On spawn - Cast Immolation on self'),
(@SKELETON,0,1,0,61,0,100,0,0,0,0,0,11,@CHECKTRIGGER,0,0,0,0,0,1,0,0,0,0,0,0,0,'Burning Skeleton - Linked with event 0 - Cast Skeleton Check Master on self'),
(@SKELETON,0,2,3,31,0,100,0,@CHECK,0,0,0,33,@KC,0,0,0,0,0,23,0,0,0,0,0,0,0,'Burning Skeleton - On target hit by spell Check  - Cast Credit Trigger on self'),
(@SKELETON,0,3,4,61,0,100,0,0,0,0,0,28,@CHECKTRIGGER,0,0,0,0,0,1,0,0,0,0,0,0,0,'Burning Skeleton - Linked with event 2 - Remove auras from spell CheckTrigger'),
(@SKELETON,0,4,0,61,0,100,0,0,0,0,0,11,@EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,'Burning Skeleton - Linked with event 3 - Cast explosion on self');

-- Add condition for Check to target only abominations /that are alive/
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@CHECK;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@CHECK,0,0,31,0,3,@ABOMINATION,0,0,0,'','Check can target only chained abominations'),
(13,1,@CHECK,0,0,36,0,0,0,0,0,0,'','Check can target only target alive creatures');

-- Add conditions for Explosion effect 1
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@EXPLOSION;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,2,@EXPLOSION,0,0,31,0,3,@ABOMINATION,0,0,0,'','Explosion effect 1 can target only abomination');

SET @STALKER                := 23033;
SET @ABOMINATION            := 30689;
SET @RIGHT_HAND             := 57983; -- Reference to Nayd's wife
SET @LEFT_HAND              := 57980;
-- Using creature range as a targeting method; guid wise would be wiser but it has bugs out and targets the next living abomination (Not what we want)
UPDATE `creature_template` SET AIName='SmartAI',`InhabitType`=4  WHERE `entry`=@STALKER;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-124991,-124992,-124993,-124981,-124980,-124979);
INSERT INTO `smart_scripts` VALUES
(-124991,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124992,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124993,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124981,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124980,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124979,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');
-- Group 2
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-124982,-124983,-124984,-124969,-124968,-124967);
INSERT INTO `smart_scripts` VALUES
(-124982,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124983,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124984,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124969,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124968,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124967,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');
-- Group 3
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-125000,-125001,-125002,-124985,-124986,-124987);
INSERT INTO `smart_scripts` VALUES
(-125000,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-125001,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-125002,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124985,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124986,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124987,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');
-- Group 4
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-124973,-124974,-124975,-124976,-124977,-124978);
INSERT INTO `smart_scripts` VALUES
(-124973,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124974,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124975,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124976,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124977,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124978,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');
-- Group 5
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-124988,-124989,-124990,-124970,-124971,-124972);
INSERT INTO `smart_scripts` VALUES
(-124988,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124989,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124990,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124970,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124971,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124972,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');
-- Group 6
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-124998,-124999,-124997,-124996,-124995,-124994);
INSERT INTO `smart_scripts` VALUES
(-124997,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124998,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124999,0,0,0,60,0,100,0,0,1,20000,20000,11,@RIGHT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain right hand on abomination'),
(-124994,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124995,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination'),
(-124996,0,0,0,60,0,100,0,0,1,20000,20000,11,@LEFT_HAND,0,0,0,0,0,11,@ABOMINATION,5,0,0,0,0,0,'Stalker - OOC - Cast Chain left hand on abomination');

-- Add condition target for chains
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13  AND `SourceEntry` IN (@LEFT_HAND,@RIGHT_HAND);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@LEFT_HAND,0,0,31,0,3,@ABOMINATION,0,0,0,'','Left Hand Chains only target Chained Abomination'),
(13,1,@RIGHT_HAND,0,0,31,0,3,@ABOMINATION,0,0,0,'','Right Hand Chains only target Chained Abomination');
DELETE FROM `creature_template_addon` WHERE `entry`=27003;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(27003, 270030, 0, 0, 1, 0, NULL);

UPDATE `creature` SET `currentwaypoint`=0,`MovementType`=2,`spawndist`=0 WHERE `guid`=107239;
DELETE FROM `waypoint_data` WHERE `id`=270030;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(270030, 1, 3671.979, -497.5903, 157.9536, 0, 0, 0, 0, 100, 0),
(270030, 2, 3693.592, -472.8958, 163.496, 0, 0, 0, 0, 100, 0),
(270030, 3, 3694.013, -466.6045, 160.7129, 0, 0, 0, 0, 100, 0),
(270030, 4, 3713.763, -454.1045, 159.2129, 0, 10000, 0, 0, 100, 0),
(270030, 5, 3717.158, -453.4165, 161.311, 0, 0, 0, 0, 100, 0),
(270030, 6, 3717.857, -415.6472, 151.0353, 0, 0, 0, 0, 100, 0),
(270030, 7, 3716.621, -404.0498, 152.4212, 0, 0, 0, 0, 100, 0),
(270030, 8, 3704.548, -388.2196, 162.9577, 0, 10000, 0, 0, 100, 0),
(270030, 9, 3717.158, -453.4165, 161.311, 0, 0, 0, 0, 100, 0),
(270030, 10, 3717.357, -443.3972, 160.0353, 0, 0, 0, 0, 100, 0),
(270030, 11, 3717.357, -440.3972, 159.2853, 0, 0, 0, 0, 100, 0),
(270030, 12, 3717.607, -438.3972, 158.7853, 0, 0, 0, 0, 100, 0),
(270030, 13, 3717.607, -436.3972, 158.0353, 0, 0, 0, 0, 100, 0),
(270030, 14, 3717.607, -434.3972, 157.2853, 0, 0, 0, 0, 100, 0),
(270030, 15, 3717.607, -432.6472, 156.2853, 0, 0, 0, 0, 100, 0),
(270030, 16, 3717.607, -430.6472, 155.5353, 0, 0, 0, 0, 100, 0),
(270030, 17, 3717.607, -428.6472, 154.5353, 0, 0, 0, 0, 100, 0),
(270030, 18, 3717.607, -426.6472, 153.7853, 0, 0, 0, 0, 100, 0),
(270030, 19, 3717.607, -424.6472, 153.0353, 0, 0, 0, 0, 100, 0),
(270030, 20, 3717.607, -422.6472, 152.2853, 0, 0, 0, 0, 100, 0),
(270030, 21, 3717.607, -418.6472, 151.5353, 0, 0, 0, 0, 100, 0),
(270030, 22, 3717.857, -415.6472, 151.0353, 0, 10000, 0, 0, 100, 0);
-- Fueling the Project (11715)
-- oh, and guess what! random comment
SET @NPC_OIL                := 25781; -- Oil Pool
SET @SPELL_OIL_COLLECTOR    := 45990; -- Collect Oil
SET @SPELL_SUMON_COLLECTOR  := 45991; -- Summon Oil Collector
SET @SPELL_OIL_COAT         := 46011; -- Oil Coat (small)
SET @SPELL_FD               := 35357; -- Spawn Feign Death

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_OIL;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_OIL;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_OIL;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_OIL,0,0,1,25,0,100,0,0,0,0,0,11,@SPELL_FD,0,0,0,0,0,1,0,0,0,0,0,0,0,'On reset - Cast Spawn Feign Death'),
(@NPC_OIL,0,1,0,61,0,100,0,0,0,0,0,11,@SPELL_OIL_COAT,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Cast Oil Coat (small)'),
--
(@NPC_OIL,0,2,3,8,0,100,0,@SPELL_OIL_COLLECTOR,0,0,0,11,@SPELL_SUMON_COLLECTOR,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit - Cast Summon Oil Collector'),
(@NPC_OIL,0,3,4,61,0,100,0,0,0,0,0,33,@NPC_OIL,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit - Give killcredit'),
(@NPC_OIL,0,4,0,61,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Despawn in 1 sec');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_OIL_COLLECTOR;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_OIL_COLLECTOR,0,0,31,0,3,@NPC_OIL,0,0,0,'','Collect Oil target Oil Pool');
-- Strengthen the Ancients (12092)
-- Woodlands Walker
SET @ENTRY := 26421;
UPDATE `creature_template` SET `npcflag`=1,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100+0,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,50,0,0,11,50994,0,0,0,0,0,1,0,0,0,0,0,0,0,'Woodlands Walker - Cast Toughen Hide - at 50% HP'),
(@ENTRY,0,1,2,64,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip hello - Close gossip - Invoker'),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,88,@ENTRY*100+0,@ENTRY*100+1,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Run random script - Self'),
--
(@ENTRY*100+0,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Woodlands Walker - Emote text - Self'),
(@ENTRY*100+0,9,1,0,0,0,100,0,1000,1000,0,0,2,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Woodlands Walker - Set faction monster - Self'),
--
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Woodlands Walker - Emote text - Self'),
(@ENTRY*100+1,9,1,0,0,0,100,0,1000,1000,0,0,11,47550,0,0,0,0,0,7,0,0,0,0,0,0,0,'Woodlands Walker - Cast Create Bark of the Walkers - Invoker'),
(@ENTRY*100+1,9,2,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Woodlands Walker - Despawn - Self');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The %s is angered by your request and attacks!",16,0,100,0,0,0,"emote text"),
(@ENTRY,1,0,"Breaking off a piece of its bark, the %s hands it to you before departing.",16,0,100,0,0,0,"emote text");
-- See You on the Other Side (12121)
-- Jin'arrak's End (12152)

SET @ENTRY1         := 27199; -- Warlord Jinarrak
SET @ENTRY2         := 27200; -- Offering Bunny - Drakil'jin Exterior
SET @ENTRY3         := 26902; -- Essence of Warlord Jin'arrak
SET @ENTRY4         := 32742; -- Your Corpse
SET @ENTRY5         := 27201; -- Offering Target Bunny - Drakil'jin Exterior
SET @RAGE           := 47744; -- Rage of Jin'arrak
SET @OTOS           := 61611; -- On the Other Side
SET @BODY           := 61612; -- Summon Your Corpse
SET @OFFER          := 48059; -- Place Offering
SET @FEED           := 48060; -- Jin'arrak Feeds
SET @CREDIT         := 48194; -- Jin'arrak Kill Credit

-- Warlord Jinarrak
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY1;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY1,0,0,0,0,'17327 31951');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY1,@ENTRY1*100,@ENTRY1*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY1,0,0,0,54,0,100,1,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Warlord Jin''Arrak - Just summoned - Set phasemask 3 - Self'),
(@ENTRY1,0,1,2,38,0,100,0,0,2,0,0,80,@ENTRY1*100+1,0,2,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Warlord Jin''Arrak - On dataset 0 2 - Run script - Self'),
(@ENTRY1,0,2,0,61,0,100,0,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Linked - Play emote roar'),
(@ENTRY1,0,3,4,38,0,100,0,0,1,0,0,80,@ENTRY1*100,0,2,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Warlord Jin''Arrak - On dataset 0 1 - Run script - Self'),
(@ENTRY1,0,4,0,61,0,100,0,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Linked - Play emote roar'),
-- Scr 1
(@ENTRY1*100,9,0,0,0,0,100,1,0,0,0,0,11,47730,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script -  Gong Effect - Self'),
(@ENTRY1*100,9,1,0,0,0,100,1,10000,10000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Emote Text - Self'),
(@ENTRY1*100,9,2,0,0,0,100,1,0,0,0,0,11,@RAGE,0,0,0,0,0,18,20,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Cast Rage of Jin''arrak - Players in range'),
(@ENTRY1*100,9,3,0,0,0,100,1,10000,10000,0,0,33,@ENTRY3,0,0,0,0,0,18,20,0,0,0,0,0,0,'Warlord Jin''Arrak - Script- Kill credit - Players in range'),
-- Scr2
(@ENTRY1*100+1,9,0,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Say 0'),
(@ENTRY1*100+1,9,1,0,0,0,100,0,1000,1000,0,0,11,48060,0,0,0,0,0,19,@ENTRY5,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Cast feed'),
(@ENTRY1*100+1,9,2,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Say 1'),
(@ENTRY1*100+1,9,3,0,0,0,100,0,3000,3000,0,0,17,64,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - emotestate stun'),
(@ENTRY1*100+1,9,4,0,0,0,100,0,5000,5000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - emotestate none'),
(@ENTRY1*100+1,9,5,0,0,0,100,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Warlord Jin''Arrak - Script - Set field_byte_1 to 7'),
(@ENTRY1*100+1,9,6,0,0,0,100,0,2000,2000,0,0,11,@CREDIT,0,0,0,0,0,18,20,0,0,0,0,0,0,'OOC - Cast credit - Players in range'),
(@ENTRY1*100+1,9,7,0,0,0,100,0,10000,10000,0,0,41,0,0,0,0,0,0,0,1,0,0,0,0,0,0,'OOC - Cast credit - Players in range');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-@RAGE,@OTOS);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-@RAGE,@OTOS,0,'Cast other side when curse expires'),
(@OTOS,@BODY,1,'Summon body when going to other side');


DELETE FROM `creature_text` WHERE `entry`=@ENTRY1;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY1,0,0,'Finally, a worthy offering!',41,0,0,0,0,0,'Warlord Jinarrak - Say Text'),
(@ENTRY1,1,0,'Ahhh! What be happenin'' to me, mon?',41,0,0,0,0,0,'Warlord Jinarrak - Say Text'),
(@ENTRY1,2,0,'How dare you summon me without an offering!',41,0,0,0,0,0,'Warlord Jinarrak - Say Text');

-- Offering Bunny - Drakil'jin Exterior
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY2,0,0,1,54,0,100,1,0,0,0,0,12,@ENTRY1,3,180000,0,0,0,8,0,0,0,4678.47,-4859.35,35.48,3.11,'Just summoned - Temp summon Warlord Jinarrak - Position'),
(@ENTRY2,0,1,0,61,0,100,1,0,0,0,0,11,@OFFER,0,0,0,0,0,1,0,0,0,0,0,0,0,'Link - Cast Place Offering - Self'),
(@ENTRY2,0,2,0,1,0,100,1,1000,1000,0,0,45,0,2,0,0,0,0,11,@ENTRY1,50,0,0,0,0,0,'OOC 2 sec later - Set data 0 2 - Warlord Jinarrak');

-- Essence of Warlord Jin'arrak
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@ENTRY3;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY3,0,0,0,54,0,100,1,0,0,0,0,12,@ENTRY1,3,30000,0,0,0,8,0,0,0,4678.47,-4859.35,35.48,3.11,'Just summoned - Temp summon - Position'),
(@ENTRY3,0,1,0,1,0,100,1,1000,1000,0,0,45,0,1,0,0,0,0,11,@ENTRY1,50,0,0,0,0,0,'OOC 1 sec later - Set data 0 1 - Warlord Jinarrak');
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry =@ENTRY1;
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=@ENTRY5;
-- Your Corpse
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY4;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY4,0,0,1,54,0,100,1,0,0,0,0,85,60352,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Just summoned - Invoker cast Mirror Image - Invoker'),
(@ENTRY4,0,1,2,61,0,100,1,0,0,0,0,44,3,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Link - Set phasemask 3 - Self'),
(@ENTRY4,0,2,0,61,0,100,1,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Link - Cast Permanent Feign Death - Self');
SET @Crystal=31131; -- Containment Crystal
SET @Watcher=31110; -- Eidolon Watcher

-- Update creature_templates and template_addons
UPDATE `creature_template` SET `exp`=2,`minlevel`=80,`maxlevel`=80,`unit_flags`=`unit_flags`|32776 WHERE `entry`=@Watcher; 
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33555200,`AIname`='SmartAI' WHERE `entry`=@Crystal;
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Watcher,@Crystal);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@Watcher,0,0,1,0, NULL),
(@Crystal,0,0,1,0, NULL);
-- Delete old condition 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=193058 AND `SourceId`=1;
-- Four quests need gains control of the Eidolon Watcher not only one
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10028 AND `sourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,10028,0,0,0,9,0,13168,0,0,0,0,0,'','Show Gossip option only if player has quest active'),
(15,10028,0,0,1,9,0,13171,0,0,0,0,0,'','Show Gossip option only if player has quest active'),
(15,10028,0,0,2,9,0,13169,0,0,0,0,0,'','Show Gossip option only if player has quest active'),
(15,10028,0,0,3,9,0,13170,0,0,0,0,0,'','Show Gossip option only if player has quest active');
-- Conditions for Banish Scourge Crystal spell
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `sourceEntry`=58658;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,58658,0,0,31,0,3,@Crystal,0,0,0,0,'','Banish Scourge Crystal Hits Only Containment Crystal');
-- Sai for Containment Crystal
DELETE FROM `smart_scripts` WHERE `entryorguid`=31131 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Crystal,0,0,1,8,0,100,0,58662,0,0,0,33,@Crystal,0,0,0,0,0,7,0,0,0,0,0,0,0,'Containment Crystal - On Spell Hit - Give Quest Credit'),
(@Crystal,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Containment Crystal - Link With Previous Event - Despawn');
UPDATE `smart_scripts` SET `action_param1`=1 WHERE `entryorguid`=2546000 AND `source_type`=9 AND `id`=1;
UPDATE `creature_template` SET `faction_A`=103, `faction_H`=103 WHERE `entry`=21264; -- Seeping Ooze
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=5353;

DELETE FROM `smart_scripts` WHERE `entryorguid`=5353 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5353, 0, 0, 1,62, 0, 100, 0, 1364, 0, 0, 0, 85, 12578, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Itharius - On Gossip Select - Cast Create Oathstone of Yseras Dragonflight'),
(5353, 0, 1, 0,61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Itharius - Linked with Previous Event - Close Gossip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1341;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1341,1,0,0,2,0,10455,1,1,0,0,'','Itharius show gossip only if player has Chained Essence of Eranikus'),
(15,1341,1,0,0,2,0,10589,1,1,1,0,'','Itharius show gossip only if player Does not have Oathstone of Yseras Dragonflight'),
(15,1341,1,0,0,8,0,3374,0,0,1,0,'','Itharius show gossip only if player has not completed The Essence of Eranikus q3374'),
(15,1341,1,0,0,8,0,3373,0,0,0,0,'','Itharius show gossip only if player has completed The Essence of Eranikus q3373');
UPDATE `creature_template` SET `AIName`='' WHERE `AIName`='0';
UPDATE `smart_scripts` SET `action_param3`=0 WHERE `entryorguid`=19055 AND `source_type`=0 AND `id`=0;
UPDATE `creature` SET `MovementType`=0 WHERE `guid`=107239;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=27003;
DELETE FROM `creature` WHERE `id`=27715;
UPDATE `creature_template` SET `faction_a`=14, `faction_h`=14, `AIName`='SmartAI' WHERE `entry` IN (27715, 27716, 27717, 27718);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (27727, 27726);

DELETE FROM `creature_text` WHERE `entry` IN (27719, 27727, 27726);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(27719,0,0,"Ladies and gentlemen! Well... let's just say you don't want to miss this one!",14,0,100,0,0,0,'Grennix Shivwiggle - Quest Accepted'),
(27727,0,0,"You went behind my back. You neglected my orders. You will pay the price.",12,0,100,0,0,0,'Conqueror Krenna - Say 0'),
(27727,1,1,"Enough talk. By the time I'm though with you, not even the worgs will go near your corpse.",12,0,100,0,0,0,'Conqueror Krenna - Say 1'),
(27726,0,0,"I used good judgment when you showed non. I don't want to see you lead us into ruin, Krenna!",12,0,100,0,0,0,'Gorgonna - Say 0'),
(27726,1,1,"It doesn't have to end this way, you know?",12,0,100,0,0,0,'Gorgonna - Say 1'),
(27726,2,2,"We'll see about that",12,0,100,0,0,0,'Gorgonna - Say 2'),
(27726,3,3,"Why... why sister? Why did it have to come to this?",12,0,100,0,0,0,'Gorgonna - Say 3');

-- SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (27715,27716,27717,27718,27727,27719,27726);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27715,27716,27717,27718,27727,27719,27726);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27715,27716,27717,27718,27727,27719,27726);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(27715,0,0,0,9,0,100,0,8,25,17000,24000,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ironhide - Cast Charge'),
(27715,0,1,0,0,0,100,0,5000,7000,7000,9000,11,34298,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ironhide - Cast Maul'),
(27715,0,2,0,9,0,100,0,0,5,7000,11000,11,31279,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ironhide - Cast Swipe'),
(27715,0,3,0,7,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ironhide - Evade - Unseen'),
(27715,0,4,0,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ironhide - Evade - Despawn'),
(27715,0,5,0,6,0,100,0,0,0,0,0,15,12427,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Ironhide - Death - Credit'),
(27715,0,6,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ironhide - Death - Unseen'),
(27715,0,7,0,7,0,100,0,0,0,0,0,6,12427,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Ironhide - Evade - Quest Fail'),

-- Torgg Thundertotem 27716
(27716,0,0,0,0,0,100,0,1000,3000,6000,8000,11,16033,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Torgg Thundertotem - Cast Chain Lightning'),
(27716,0,1,0,0,0,100,0,10000,20000,5000,15000,11,15982,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Cast Healing Wave'),
(27716,0,2,0,0,0,100,0,0,0,21000,21000,11,31991,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Cast Corrupted Nova Totem'),
(27716,0,3,0,0,0,100,0,4000,4000,12000,12000,11,15501,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Cast Earth Shock'),
(27716,0,4,0,7,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Evade - Unseen'),
(27716,0,5,0,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Evade - Despawn'),
(27716,0,6,0,6,0,100,0,0,0,0,0,15,12428,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Torgg Thundertotem - Credit'),
(27716,0,7,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Torgg Thundertotem - Death - Unseen'),
(27716,0,8,0,7,0,100,0,0,0,0,0,6,12428,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Torgg Thundertotem - Evade - Quest Fail'),

-- Rustblood 27717
(27717,0,0,0,0,0,100,0,5000,7000,5000,7000,11,42746,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rustblood - Cast Cleave'),
(27717,0,1,0,9,0,100,0,0,5,22000,30000,11,49398,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rustblood - Cast Knockback'),
(27717,0,2,0,0,0,100,0,12000,15000,18000,21000,11,14102,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rustblood - Cast Head Smash'),
(27717,0,3,0,0,0,100,0,0,3000,12000,12000,11,61893,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rustblood - Cast Lightning Bolt'),
(27717,0,4,0,7,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rustblood - Evade - Unseen'),
(27717,0,5,0,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rustblood - Evade - Despawn'),
(27717,0,6,0,6,0,100,0,0,0,0,0,15,12429,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Rustblood - Death - Credit'),
(27717,0,7,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rustblood  - Death - Unseen'),
(27717,0,8,0,7,0,100,0,0,0,0,0,6,12429,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Rustblood - Evade - Quest Fail'),

-- Horgrenn Hellcleave 27718
(27718,0,0,0,9,0,100,0,0,10,21000,29000,11,16508,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Cast Intimidating Roar'),
(27718,0,1,0,0,0,100,0,3000,6000,8000,12000,11,15572,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Cast Sunder Armor'),
(27718,0,2,0,0,0,100,0,9000,12000,12000,16000,11,39171,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Cast Mortal Strike'),
(27718,0,3,0,0,0,100,0,13000,15000,13000,18000,11,38618,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Cast Whirlwind'),
(27718,0,4,0,7,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Evade - Unseen'),
(27718,0,5,0,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Evade - Despawn'),
(27718,0,6,0,6,0,100,0,0,0,0,0,15,12430,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Death - Credit'),
(27718,0,7,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Death - Unseen'),
(27718,0,8,0,7,0,100,0,0,0,0,0,6,12430,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horgrenn Hellcleave - Evade - Quest Fail'),

-- Conqueror Krenna 27727
(27727,0,0,0,9,0,100,0,0,5,7000,9000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Conqueror Krenna - Cast Cleave'),
(27727,0,1,0,0,0,100,0,9000,12000,12000,17000,11,11430,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Conqueror Krenna - Cast Slam'),
(27727,0,2,0,13,0,100,0,14000,17000,14000,17000,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Conqueror Krenna - Cast Pummel'),
(27727,0,3,0,13,0,100,0,3000,6000,6000,11000,11,34719,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Conqueror Krenna - Cast Fixate'),
(27727,0,4,0,54,0,100,0,0,0,0,0,12,27726,3,75000,0,0,0,8,0,0,0,3244.50,-2340.56,92.14,6.27, 'Conqueror Krenna - Summon Gorgonna'),
(27727,0,5,0,54,0,100,0,0,0,0,0,1,0,18000,0,0,0,0,1,0,0,0,0,0,0,0, 'Conqueror Krenna - Summoned - Say 0'),
(27727,0,6,0,52,0,100,0,0,27727,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0, 'Conqueror Krenna - Say 0 - Say 1'),
(27727,0,7,0,1,0,100,1,35000,35000,1,1,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Conqueror Krenna - OOC 35 Sec - Enemy'),
(27727,0,8,0,6,0,100,0,0,0,0,0,15,12431,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Conqueror Krenna - Death - Credit'),
(27727,0,9,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Conqueror Krenna - Death - Unseen'),
(27727,0,10,0,7,0,100,0,0,0,0,0,6,12431,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Conqueror Krenna - Evade - Quest Fail'),

-- Gorgonna 27726
(27726,0,0,0,1,0,100,1,6000,6000,1,1,1,0,6000,0,0,0,0,1,0,0,0,0,0,0,0,'Gorgonna - OOC 6 Sec - Say 0'),
(27726,0,1,0,52,0,100,0,0,27726,0,0,1,1,18000,0,0,0,0,1,0,0,0,0,0,0,0,'Gorgonna - Say 0 - Say 1'),
(27726,0,2,0,52,0,100,0,1,27726,0,0,1,2,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Gorgonna - Say 1 - Say 2'),
(27726,0,3,0,52,0,100,0,2,27726,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gorgonna - Say 2 - Say 3'),

-- Grennix Shivwiggle 27719
(27719, 0, 0, 0, 19, 0, 100, 0, 12427, 0, 0, 0, 12, 27715, 7, 0, 0, 0, 0, 8, 0, 0, 0, 3242.77, -2340.98, 92.34, 0.98, 'Grennix Shivwiggle - Accepted Quest - Summon 27715'),
(27719, 0, 1, 0, 19, 0, 100, 0, 12428, 0, 0, 0, 12, 27716, 7, 0, 0, 0, 0, 8, 0, 0, 0, 3242.77, -2340.98, 92.34, 0.98, 'Grennix Shivwiggle - Accepted Quest - Summon 27716'),
(27719, 0, 2, 0, 19, 0, 100, 0, 12429, 0, 0, 0, 12, 27717, 7, 0, 0, 0, 0, 8, 0, 0, 0, 3242.77, -2340.98, 92.34, 0.98, 'Grennix Shivwiggle - Accepted Quest - Summon 27717'),
(27719, 0, 3, 0, 19, 0, 100, 0, 12430, 0, 0, 0, 12, 27718, 7, 0, 0, 0, 0, 8, 0, 0, 0, 3242.77, -2340.98, 92.34, 0.98, 'Grennix Shivwiggle - Accepted Quest - Summon 27718'),
(27719, 0, 4, 0, 19, 0, 100, 0, 12431, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grennix Shivwiggle - Accepted Quest - Say 0'),
(27719, 0, 5, 0, 19, 0, 100, 0, 12431, 0, 0, 0, 12, 27727, 7, 0, 0, 0, 0, 8, 0, 0, 0, 3251.91, -2340.61, 91.86, 3.1, 'Grennix Shivwiggle - Accepted Quest - Summon 27727');
UPDATE `smart_scripts` SET `event_flags`=1 WHERE `entryorguid`=7664 AND `source_type`=0 AND `id`IN (3,5,7) AND `link` IN (4,6,8);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=8280;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) and `SourceEntry`=8280;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(20, 0, 8280, 0, 0, 8, 0, 8275, 0, 0, 0, 0, 0, '', 'Securing the Supply Lines can be taken if Taking Back Silithus (Alliance) Complete'),
(19, 0, 8280, 0, 0, 8, 0, 8275, 0, 0, 0, 0, 0, '', 'Securing the Supply Lines can be taken if Taking Back Silithus (Alliance) Complete'),
(20, 0, 8280, 0, 1, 8, 0, 8276, 0, 0, 0, 0, 0, '', 'Securing the Supply Lines can be taken if Taking Back Silithus (Horde) Complete'),
(19, 0, 8280, 0, 1, 8, 0, 8276, 0, 0, 0, 0, 0, '', 'Securing the Supply Lines can be taken if Taking Back Silithus (Horde) Complete');
SET @RavenousJaws=29392;

UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry`=@RavenousJaws;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=6509;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17,0,6509,0,0,1,1,47172,0,0,0,0,0,0,'Cast Gore Bladder only if Cosmetic - Underwater Blood (no sound) aura is active');
DELETE FROM `smart_scripts` WHERE `entryorguid`=@RavenousJaws AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RavenousJaws,0,0,0,0,0,100,0,2000,5000,4000,7000,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - In combat - cast Thrash'),
(@RavenousJaws,0,1,0,6,0,100,0,0,0,0,0,11,47172,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - On death - cast Underwater Blood'),
(@RavenousJaws,0,2,3,8,0,100,0,6509,0,0,0,28,47172,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - On spell hit Gore Bladder - remove aura'),
(@RavenousJaws,0,3,0,61,0,100,0,0,0,0,0,33,29391,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ravenous Jaws - Link previous event - give quest credit');
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` =23162;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` =23162;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23162 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(23162, 0, 0,1,11,0, 100, 0, 0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - On Spawn - Say Emote'),
(23162, 0, 1,2,61,0, 100, 0, 0,0,0,0,19,33088,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Set Unit Flags'),
(23162, 0, 2,0,61,0, 100, 0, 0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Set Phase 1'),
(23162, 0, 3,0, 0,1, 100, 0, 6500,9500,8500,11500,11,40420,0,0,0,0,0,2,0,0,0,0,0,0,0,'Vakkiz the Windrager - IC - Cast Lightning Breath (Phase 1)'),
(23162, 0, 4,5, 2,1, 100, 0, 0,40,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - On 40% HP - Say Emote'),
(23162, 0, 5,6,61,1, 100, 0, 0,0,0,0,3,0,21296,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Change Model'),
(23162, 0, 6,0,61,1, 100, 0, 0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Set Phase 2'),
(23162, 0, 7,0, 0,2, 100, 0, 3000,7000,5000,9000,11,40419,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - IC - Cast Bone Spray (Phase 2)'),
(23162, 0, 8,9, 7,0, 100, 0, 0,0,0,0,19,33088,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - On Evade - Set Unit Flags'),
(23162, 0, 9,10,61,0, 100, 0, 0,0,0,0,3,0,20837,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Set Model'),
(23162, 0,10,0,61,0, 100, 0, 0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Vakkiz the Windrager - Linked with Previous Event - Set Phase 1');

DELETE FROM `creature_text` WHERE `entry` =23162;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-234,-235);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(23162, 0, 0, 'Furious winds envelop Vakkiz as he writhes menacingly towards you.', 16, 0, 100, 0, 0, 0, 'Vakkiz the Windrager'),
(23162, 1, 0, '%s''s flesh shatters in an unearthly rage!', 16, 0, 100, 0, 0, 0, 'Vakkiz the Windrager');
SET @DIBear=30292; -- Dead Icemaw Bear
SET @LJBunny=30366; -- Lure Jormuttar Bunny

-- WTF?! Spell Carve Bear Flank have no triggered spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56562;
-- Set Spell script
DELETE FROM `spell_script_names` WHERE `spell_id`=56565;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(56565,'spell_q13011_bear_flank_master');
-- Update Item's Target requirement
UPDATE `conditions` SET `ConditionTypeOrReference`=31 ,`ConditionTarget`=1 ,`ConditionValue1` =3,`ConditionValue2`=@DIBear WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=56562;
-- Update creature_templates to use SAI
UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry` IN (@DIBear,@LJBunny);
-- Update Icy Crater phaseMask
UPDATE `gameobject` SET `phaseMask`=4 WHERE `guid`=99730;
-- Add Dead Icemaw Bear SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=30292 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@DIBear,0,0,1,8,0,100,0,56562,0,0,0,11,56565,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Icemaw Bear - On Spell Hit - Cast Bear Flank Master'),
(@DIBear,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Icemaw Bear - Link With Previous Event - Despawn'),
(@DIBear,0,2,0,8,0,100,0,56569,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Icemaw Bear - On Spell Hit - Despawn');
-- Add Lure Jormuttar Bunny SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@LJBunny AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@LJBunny,0,0,0,11,0,100,0,0,0,0,0,12,30340,2,120000,0,0,0,1,0,0,0,0,0,0,0,'Lure Jormuttar Bunny - On Spawn - Summon Jormuttar');
-- Add Dead Icemaw Bear creature_text
DELETE FROM `creature_text` WHERE `entry`=30292;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@DIBear,0,0,'This bear\'s flank is frozen solid... try again.',42,0,0,0,0,0,'');
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=29400; -- Corrupted Scarlet Onslaught (EAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=29403; -- Onslaught Gryphon (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=30210; -- Hodir's Helm KC Bunny (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=30575; -- Frostbrood Destroyer (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=30841; -- Death Gate (Mograine) (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=30850; -- Death Gate (Munch) (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=30852; -- Death Gate (Jayde) (SAI)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=34885; -- Dame Evniki Kapsalis (SAI)
-- Random comment ™
-- Corrupted Scarlet Onslaught
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=29400;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29400;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(29400,0,0,0,0,0,100,0,2000,15000,30000,45000,11,38056,2,0,0,0,0,2,0,0,0,0,0,0,0,'Corrupted Scarlet Onslaught - IC - Flesh Rip');

-- Onslaught Raven Bishop
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=29338;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=29338;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29338,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Set Phase 1 - On Aggro'),
(29338,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Stop Moving - On Aggro'),
(29338,0,2,0,4,1,100,1,0,0,0,0,11,50740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Raven Bishop - Cast bolt on Aggro'),
(29338,0,3,0,9,1,100,0,0,40,3400,4700,11,50740,0,0,0,0,0,2,0,0,0,0,0,0,0,'Raven Bishop -  Cast Raven Flock'),
(29338,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Start Moving - When not in flock Range'),
(29338,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Stop Moving - 15 Yards'),
(29338,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Stop Moving - When in flock Range'),
(29338,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Set Phase 2 - 15% Mana'),
(29338,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Start Moving - 15% Mana'),
(29338,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Raven Bishop - Set Phase 1 - When Mana is above 30%'),
(29338,0,10,0,2,1,100,0,10,50,2000,8000,11,50750,0,0,0,0,0,2,0,0,0,0,0,0,0,'Raven Bishop - Health Pct - Cast Raven Heal');

-- Onslaught Paladin
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=29329;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29329;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(29329,0,0,0,4,0,100,0,0,0,0,0,11,19131,2,0,0,0,0,2,0,0,0,0,0,0,0,'Onslaught Paladin - On Aggro - Cast Charge'),
(29329,0,1,0,0,0,100,0,2000,9000,17000,30000,11,32774,2,0,0,0,0,2,0,0,0,0,0,0,0,'Onslaught Paladin  - IC - Avenger''s Shield');

-- Onslaught Harbor Guard
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=29330;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=29330;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29330,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Harbor Guard - Set Phase 1 - On Aggro'),
(29330,0,1,0,4,1,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Harbor Guard - Cast Shoot - On Aggro'),
(29330,0,2,0,9,1,100,0,0,40,3400,4700,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Harbor Guard -  Cast Shoot'),
(29330,0,3,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Harbor Guard - Start Moving - When not in Shoot range'),
(29330,0,4,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Harbor Guard - Stop Moving - 15 Yards'),
(29330,0,5,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Harbor Guard - Stop Moving - When in bolt Range'),
(29330,0,6,0,0,1,100,0,8000,8000,12000,14000,11,50750,0,0,0,0,0,1,0,0,0,0,0,0,0,'Harbor Guard - IC - Cast Frost Shot');
UPDATE `creature_template` SET `ScriptName`='npc_pet_dk_ebon_gargoyle' WHERE `ScriptName`='npc_ebon_gargoyle';
UPDATE `creature_template` SET `ScriptName`='npc_pet_hunter_snake_trap' WHERE `ScriptName`='npc_snake_trap_serpents';
UPDATE `creature_template` SET `ScriptName`='npc_pet_mage_mirror_image' WHERE `ScriptName`='npc_mirror_image';
UPDATE `creature_template` SET `ScriptName`='npc_pet_pri_lightwell' WHERE `ScriptName`='npc_lightwell';
UPDATE `creature_template` SET `ScriptName`='npc_pet_pri_shadowfiend' WHERE `ScriptName`='npc_shadowfiend';
UPDATE `creature_template` SET `ScriptName`='npc_pet_shaman_earth_elemental' WHERE `ScriptName`='npc_earth_elemental';
UPDATE `creature_template` SET `ScriptName`='npc_pet_shaman_fire_elemental' WHERE `ScriptName`='npc_fire_elemental';
-- Change SpellFocus GO radius to 100y
UPDATE `gameobject_template` SET `data1`=100 WHERE `entry`=300209;
-- Archmage Pentarus SAI
SET @ENTRY := 28160; -- NPC entry
SET @SPELL := 50859;  -- Flight to Sholazar
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,10024,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Archmage Pentarus - On gossip option select  - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Archmage Pentarus - Script - Cast Flight to Sholazar on player'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Archmage Pentarus - Script - say 0');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=28160 AND `groupid`=0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28160,0,0, 'I''ll send you on my flying machine. Keep your eyes peeled for clues about what might''ve happened to Hemet!',12,0,100,25,0,0, 'Archmage Pentarus');
-- Gossip conditions for Archmage Pentarus
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10024;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10024,0,0,28,12521,0,0,0,'','Show gossip option if player has quest Where in the World is Hemet Nesingwary?');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10024 AND `id`=1;

-- Add spell target position
DELETE FROM `spell_target_position` WHERE `id`=50987;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(50987,571,5071.35,4642.54,72.164,0.878587);

-- Update Archmage Pentarus' Flying Machine
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=28192;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (16977,16978);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (16977,16978); -- clean old EAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16977, 16978) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(16977,0,0,0,25,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - prevent combat movement on spawn'),
(16977,0,1,0,4,0,100,0,0,0,0,0,11,20823,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Arch Mage Xintor - cast fireball on aggro'),
(16977,0,2,0,4,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - set phase 1 on aggro'),
(16977,0,3,0,9,1,100,0,0,40,2400,3800,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Arch Mage Xintor - cast fireball'),
(16977,0,4,0,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - start normal attack on 15% mana'),
(16977,0,5,0,3,1,100,0,0,15,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - set phase 2 on 15% mana'),
(16977,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - combatmovement'),
(16977,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - combatmovement'),
(16977,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - combatmovement'),
(16977,0,9,0,3,1,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - set phase 1 on 30% mana'),
(16977,0,10,0,0,1,50,0,6000,8000,9000,12000,11,15735,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Arch Mage Xintor - cast arcane missles'),
(16977,0,11,0,2,0,100,0,0,50,0,0,11,33245,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Arch Mage Xintor - 50% hp - cast ice barrier'),
(16977,0,12,0,2,0,100,0,0,50,0,0,11,29458,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Arch Mage Xintor - 50% hp - cast blizzard'),
(16977,0,13,0,2,0,100,0,0,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Arch Mage Xintor - flee on 15% hp'),
(16977,0,14,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Arch Mage Xintor - set phase 0 on evade'),
(16978,0,0,0,0,0,50,0,4000,4000,8000,8000,11,8242,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Lieutenant Commander Thalvos - Cast Shield Slam'),
(16978,0,1,0,0,0,50,0,5000,5000,10000,10000,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Lieutenant Commander Thalvos - Cast Strike'),
(16978,0,2,0,25,0,100,0,0,0,0,0,11,27978,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lieutenant Commander Thalvos - Shroud of Death');
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry` IN (38729,38736);
INSERT INTO `disables`(`sourceType`,`entry`,`flags`,`comment`) VALUES
(0,38729,64,'Ignore LOS on Rod of Purification'),
(0,38736,64,'Ignore LOS on Rod of Purification');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (88954,95173,88942,95172);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(88954,'spell_argaloth_consuming_darkness'),
(95173,'spell_argaloth_consuming_darkness'),
(88942,'spell_argaloth_meteor_slash'),
(95172,'spell_argaloth_meteor_slash');

UPDATE `creature_template` SET `ScriptName`='boss_pit_lord_argaloth' WHERE `entry`=47120;
UPDATE `creature_template` SET `faction_A`=85,`faction_H`=85,`faction_A`=16,`faction_H`=16,`flags_extra`=128 WHERE `entry`=47829;

DELETE FROM `creature_template_addon` WHERE `entry`=47829;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(47829, 0, 0x0, 0x1, '88999');
UPDATE `creature_ai_scripts` SET `action1_param1`=`action1_param1` + 1 WHERE `action1_type`=17;
UPDATE `creature_ai_scripts` SET `action2_param1`=`action2_param1` + 1 WHERE `action2_type`=17;
UPDATE `creature_ai_scripts` SET `action3_param1`=`action3_param1` + 1 WHERE `action3_type`=17;
UPDATE `creature_ai_scripts` SET `action1_param1`=25 WHERE `id`=1531201;
UPDATE `creature_template` SET `AIName` = 'NullAI' WHERE `entry` = 27490;
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` = 31339;
UPDATE `creature_template` SET `ScriptName` = '', AIName = 'SmartAI' WHERE `entry` = 26638;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 26638 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(26638, 0, 1, 0, 0, 0, 100, 6, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Risen Drakkari Bat Rider - In Combat - Dismount"),
(26638, 0, 2, 0, 0, 0, 100, 6, 0, 0, 0, 0, 19, 0x02000000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Risen Drakkari Bat Rider - In Combat - Remove flag"),
(26638, 0, 3, 0, 9, 0, 100, 6, 5, 30, 9000, 12000, 11, 16001, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "Risen Drakkari Bat Rider - At 5 - 30 Range - Cast Impale"),
(26638, 0, 4, 0, 0, 0, 100, 2, 3000, 6000, 9000, 12000, 11, 50414, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Risen Drakkari Bat Rider - In Combat - Cast Curse of Blood"),
(26638, 0, 5, 0, 0, 0, 100, 4, 3000, 6000, 9000, 12000, 11, 59009, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Risen Drakkari Bat Rider - In Combat - Cast Curse of Blood");

DELETE FROM `creature_addon` WHERE `guid` = 127448;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127448, 0, 26751, 0, 1, 0, '');
DELETE FROM `spell_target_position` WHERE `id`=50859;
DELETE FROM `spell_target_position` WHERE `id`=50987;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(50987,571,5832.892,482.8708,658.2753,0.9121326);
SET @NPC := 7271;
-- Move boss_zum_rah from SAI to CPP
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'boss_zum_rah' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC;
DELETE FROM `creature_text` WHERE `entry` =@NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC, 0, 0, 'How dare you enter my sanctum!', 12, 0, 100, 0, 0, 0, 'Witch Doctor Zum''rah'),
(@NPC, 1, 1, 'T''eif godehsi wha!', 14, 14, 100, 0, 0, 0, 'Witch Doctor Zum''rah'),
(@NPC, 2, 2, 'Sands consume you!', 14, 0, 100, 0, 0, 0, 'Witch Doctor Zum''rah'),
(@NPC, 2, 3, 'Fall!', 14, 0, 100, 0, 0, 0, 'Witch Doctor Zum''rah');
DELETE FROM `spell_script_names` WHERE `spell_id`=66545;
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(66545, 'spell_paletress_summon_memory');
UPDATE `creature_ai_scripts` SET `action1_param1`=15 WHERE `id`=1730003; -- Call For Help radius from 0 to 15
UPDATE `creature_ai_scripts` SET `action1_type`=`action2_type`,`action2_type`=0,`action1_param1`=`action2_param1`,`action2_param1`=0 WHERE `id` IN (1772701,3547605); -- Action type gap
UPDATE `creature_ai_scripts` SET `action1_param1`=10255 WHERE `id`=1688002; -- Wrong quest credit (used npc id, should use quest id), fixes quest Testing the Antidote (or at least it should)
DELETE FROM `spell_script_names` WHERE `spell_id`=-19572;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-19572,'spell_hun_improved_mend_pet');

UPDATE `spell_proc_event` SET `procFlags`=0x40000 WHERE `entry` = -19572;
SET @ENTRY := 16880;

UPDATE `quest_template` SET `RequiredSpellCast1`=0 WHERE `Id`=10255;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 33909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hulking Helboar - On Aggro - Cast Hulk'),
(@ENTRY, 0, 1, 0, 8, 0, 100, 1, 34665, 0, 0, 0, 33, 16992, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Hulking Helboar - On Spellhit Administer Antidote - Quest Credit');
DELETE FROM `spell_proc_event` WHERE `entry`=56817;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`) VALUES
(56817, 15, 0x0, 0x20000000, 0x0);
SET @FrostLotus := 12009; 

DELETE FROM `reference_loot_template` WHERE `entry` = @FrostLotus;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@FrostLotus,36908,100,1,0,1,1); -- Frost Lotus (trick)

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (1414,1415,1416,1417,1418,1419,1420,1421,1424,1730,1731,1423,1732,1733,1734,2292,2512,2511,2513,2514,2515,2516,6142,6150,6151,6152,6312,6313,13945,13946,13947,13948,13949,13950,13965,13966,13967,13968,13969,13970,17201,17200,17204,17202,17203,18009,18111,18112,18113,18114,18115,18116,18117,18118,18119,19627,19628,19629,19630,22071,24093,24224,24225,24226,24227,25094,25096,25095,24228,25093,25089,34868);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- -------------------
-- -- Classic Zones -- 
-- -------------------
-- Peacebloom
(1415,2447,100,1,0,1,3), -- Peacebloom
(2512,2447,100,1,0,2,2), -- Peacebloom
-- Silverleaf
(1414, 765,100,1,0,1,3), -- Silverleaf
(1414,5056,-40,1,0,1,1), -- Root Sample (Quest Item)
(2511,765,100,1,0,2,2), -- Silverleaf
-- Earthroot
(1416,2449,100,1,0,1,3), -- Earthroot
(2513,2449,100,1,0,2,2), -- Earthroot
-- Mageroyal
(1417,785,100,1,0,1,3), -- Mageroyal
(1417,2452,20,1,0,1,2), -- Swiftthistle
(2514,785,100,1,0,2,2), -- Mageroyal
-- Briarthorn
(1418,2450,100,1,0,1,3), -- Briarthorn
(1418,2452,40,1,0,1,2), -- Swiftthistle
(2515,2450,100,1,0,2,2), -- Briarthorn
-- Bruiseweed
(1419,2453,100,1,0,1,3), -- Bruiseweed
(2516,2453,100,1,0,2,2), -- Bruiseweed
-- Strangekelp
(1733,3820,100,1,0,1,3), -- Strangekelp
-- Grave Moss
(1424,3369,100,1,0,1,3), -- Grave Moss
-- Wild Steelbloom
(1420,3355,100,1,0,1,3), -- Wild Steelbloom
-- Kingsblood
(1421,3356,100,1,0,1,3), -- Kingsblood
-- Liferoot
(1730,3357,100,1,0,1,3), -- Liferoot
-- Fadeleaf
(1731,3818,100,1,0,1,3), -- Fadeleaf
-- Goldthorn
(1734,3821,100,1,0,1,3), -- Goldthorn
-- Khadgar's Whisker
(1423,3358,100,1,0,1,3), -- Khadgar's Whisker
-- Dragon's Teeth (WINTERSBITE rename only, ids are same) 
(1732,3819,100,1,0,1,3), -- Dragon's Teeth
-- Firebloom
(2292,4625,100,1,0,1,3), -- Firebloom
-- Purple Lotus
(6142,8831,100,1,0,1,3), -- Purple Lotus
(6142,8153, 10,1,0,1,1), -- Wildvine
-- Arthas' Tears
(6150,8836,100,1,0,1,3), -- Arthas' Tears
-- Sungrass
(6151,8838,100,1,0,1,3), -- Sungrass
-- Blindweed
(6152,8839,100,1,0,1,3), -- Blindweed
-- Ghost Mushroom
(6312,8845,100,1,0,1,3), -- Ghost Mushroom
-- Gromsblood
(6313,8846,100,1,0,1,3), -- Gromsblood (Default)
-- Golden Sansam
(13945,13464,100,1,0,1,3), -- Golden Sansam (Default)
-- Dreamfoil
(13946,13463,100,1,0,1,3), -- Dreamfoil (Default)
-- Mountain Silversage
(13947,13465,100,1,0,1,3), -- Mountain Silversage (Default)
-- Sorrowmoss (Plaguebloom)
(13948,13466,100,1,0,1,3), -- Sorrowmoss
-- Black Lotus
(13950,13468,100,1,0,1,3), -- Black Lotus
-- Icecap
(13949,13467,100,1,0,1,3), -- Icecap
-- -------------------------
-- -- The Burning Crusade -- 
-- -------------------------
-- Bloodthistle
(18009,22710,100,1,0,1,3), -- Bloodthistle
-- Felweed
(18111,22785,100,1,0,1,3), -- Felweed
(18111,22575, 15,1,0,1,2), -- Mote of life
(18111,22794,  2,1,0,1,1), -- Fel Lotus
-- Dreaming Glory
(18112,22786,100,1,0,1,3), -- Dreaming Glory
(18112,22575, 15,1,0,1,3), -- Mote of life
(18112,22794,  2,1,0,1,1), -- Fel Lotus
-- Ragveil
(18113,22787,100,1,0,1,3), -- Ragveil
(18113,22575, 15,1,0,1,3), -- Mote of life
(18113,22794,  2,1,0,1,1), -- Fel Lotus
-- Flame Cap
(18114,22788,100,1,0,1,3), -- Flame Cap
(18114,22794,  2,1,0,1,1), -- Fel Lotus
(18114,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Terocone
(18115,22789,100,1,0,1,3), -- Terocone
(18115,22575, 15,1,0,1,3), -- Mote of life
(18115,22794,  3,1,0,1,1), -- Fel Lotus
(18115,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Ancient Lichen
(18116,22790,100,1,0,1,3), -- Ancient Lichen
(18116,22794,  2,1,0,1,1), -- Fel Lotus
(18116,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Netherbloom
(18117,22791,100,1,0,1,3), -- Netherbloom
(18117,22576, 15,1,0,1,3), -- Mote of mana
(18117,22794,  3,1,0,1,1), -- Fel Lotus
(18117,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Nightmare Vine
(18118,22792,100,1,0,1,3), -- Nightmare Vine
(18118,22575, 10,1,0,1,3), -- Nightmare Seed
(18118,22794,  3,1,0,1,1), -- Fel Lotus
(18118,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Mana Thistle
(18119,22793,100,1,0,1,3), -- Mana Thistle
(18119,22575, 15,1,0,1,3), -- Mote of life
(18119,22794,  3,1,0,1,1), -- Fel Lotus
(18119,35229,-25,1,0,1,1), -- Nether Residue (Questitem)
-- Netherdust Bush
(22071,32468,100,1,0,1,3), -- Netherdust Pollen
(22071,22576,15,1,0,1,3), -- Mote of Mana
(22071,22794,  2,1,0,1,1), -- Fel Lotus
(22071,32506,  1,1,0,1,1), -- Netherwing Egg
-- ----------------------------------
-- -- Wrath of the Lich King Zones -- 
-- ----------------------------------
-- Goldclover
(24093,36901,100,1,0,1,3), -- GoldClover
(24093,37921, 35,1,0,1,3), -- Deadnettle
(24093,37704, 20,1,0,1,3), -- Crystallized Life
(24093,36908,  5,1,0,1,1), -- Frost Lotus
-- Firethorn
(25089,39969,50,1,1,2,3), -- Fire Seed
(25089,39970,50,1,1,2,3), -- Fire Leaf 
(25089,37704,25,1,0,1,3), -- Crystallized Life
(25089,36908, 5,1,0,1,1), -- Frost Lotus
-- Tiger Lily
(24224,36904,100,1,0,1,3), -- Tiger Lily
(24224,37921, 35,1,0,1,3), -- Deadnettle
(24224,37704, 20,1,0,1,3), -- Crystallized Life
(24224,36908,  5,1,0,1,1), -- Frost Lotus
-- Talandra's Rose
(24225,36907,100,1,0,1,3), -- Talandra's 
(24225,37921, 35,1,0,1,3), -- Deadnettle
(24225,37704, 20,1,0,1,3), -- Crystallized Life
(24225,36908,  5,1,0,1,1), -- Frost LotusRose
-- Frozen Herb
-- Dragonblight
(25094,36901,60,1,1,1,3), -- Goldclover
(25094,36904,20,1,1,1,3), -- Tiger Lily
(25094,36907,20,1,1,1,3), -- Talandra's Rose
-- Zul Drak & Wintergrasp
(25095,36901,60,1,1,1,4), -- Goldclover
(25095,36904,20,1,1,1,4), -- Tiger Lily
(25095,36907,20,1,1,1,4), -- Talandra's Rose
-- The Nexus
(25096,36901,60,1,1,2,6), -- Goldclover
(25096,36904,20,1,1,2,6), -- Tiger Lily
(25096,36907,20,1,1,2,6), -- Talandra's Rose
-- Adder's Tongue
(25093,36903,100,1,0,1,3), -- Adder's Tongue
(25093,37704, 25,1,0,1,3), -- Crystallized Life
(25093,36908,  5,1,0,1,1), -- Frost Lotus
-- Lichbloom
(24226,36905,100,1,0,1,3), -- Lichbloom
(24226,37704, 25,1,0,1,3), -- Crystallized Life
(24226,36908,  5,1,0,1,1), -- Frost Lotus
-- Icethorn
(24227,36906,100,1,0,1,3), -- Icethorn
(24227,37704, 25,1,0,1,3), -- Crystallized Life
(24227,36908,  5,1,0,1,3), -- Frost Lotus
-- Frost Lotus
(24228,36908,95,1,1,1,1), -- Frost Lotus (95% for 1)
(24228,1, 5,1,1,-@FrostLotus,1), -- Frost Lotus (5% for 2)
(24228,37921, 35,1,0,1,3), -- Deadnettle
(24228,37704, 25,1,0,1,3), -- Crystallized Life
-- --------------------------------
-- -- Felwood Fel Creep Specials --
-- --------------------------------
-- Sungrass
(13965, 8838,100,1,0,1,3), -- Sungrass
(13965,11514, 50,1,0,1,2), -- Fel Creep
-- Gromsblood
(13966, 8846,100,1,0,1,3), -- Gromsblood
(13966,11514, 50,1,0,1,2), -- Fel Creep
-- Golden Sansam
(13967,13464,100,1,0,1,3), -- Golden Sansam
(13967,11514, 50,1,0,1,2), -- Fel Creep
-- Dreamfoil
(13968,13463,100,1,0,1,3), -- Dreamfoil
(13968,11514, 50,1,0,1,2), -- Fel Creep
-- Mountain Silversage
(13969,13465,100,1,0,1,3), -- Mountain Silversage
(13969,11514, 10,1,0,1,2), -- Fel Creep
-- Arthas'Tears
(13970, 8836,100,1,0,1,3), -- Arthas' Tears
(13970,11514, 50,1,0,1,3), -- Fel Creep
-- ----------------------------------
-- -- Zul Gurub Bloodvine Specials --
-- ----------------------------------
-- Purple Lotus
(17200,8831,100,1,0,1,3), -- Purple Lotus
(17200, 8153, 10,1,0,1,1), -- Wildvine
(17200,19726,15,1,0,1,3), -- Bloodvine
-- Sungrass
(17201,8838,100,1,0,1,3), -- Sungrass
(17201,19726,15,1,0,1,3), -- Bloodvine
-- Golden Sansam
(17202,13464,100,1,0,1,3), -- Golden Sansam
(17202,19726, 15,1,0,1,3), -- Bloodvine
-- Dreamfoil
(17203,13463,100,1,0,1,3), -- Dreamfoil
(17203,19726, 15,1,0,1,3), -- Bloodvine
-- Mountain Silversage
(17204,13465,100,1,0,1,3), -- Mountain Silversage
(17204,19726, 15,1,0,1,3), -- Bloodvine
-- --------------------------
-- -- Zangermarsh Specials -- 
-- --------------------------
-- Ragveil
(19627,22787,100,1,0,1,3), -- Ragveil
(19627,22575, 15,1,0,1,3), -- Mote of life
(19627,22794,  2,1,0,1,1), -- Fel Lotus
(19627,24401, 10,1,0,1,3), -- Unidentified Plant Parts
-- Felweed
(19628,22785,100,1,0,1,3), -- Felweed
(19628,22575, 15,1,0,1,2), -- Mote of life
(19628,22794,  2,1,0,1,1), -- Fel Lotus
(19628,24401, 10,1,0,1,3), -- Unidentified Plant Parts
-- Dreaming Glory
(19629,22786,100,1,0,1,3), -- Dreaming Glory
(19629,22575, 15,1,0,1,3), -- Mote of life
(19629,22794,  2,1,0,1,1), -- Fel Lotus
(19629,24401, 10,1,0,1,3), -- Unidentified Plant Parts
-- Blindweed (Zangermarsh)
(19630, 8839,100,1,0,1,3), -- Blindweed
(19630,24401, 10,1,0,1,3); -- Unidentified Plant Parts

-- Cleanups
DELETE FROM `reference_loot_template` WHERE `entry` IN (12010,12011,12012,12013,12014,12015,12016,12017); 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 4 AND `SourceGroup` IN (6150,6313,13948) AND `SourceEntry`=11514;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup` IN (12010,12012,12013,12014) AND `SourceEntry`=11514;
UPDATE `creature_template` SET `ScriptName`='boss_occuthar' WHERE `entry`=52363;
UPDATE `creature_template` SET `minlevel`=87,`maxlevel`=87,`exp`=3,`faction_A`=14,`faction_H`=14,`ScriptName`='npc_eyestalk',`flags_extra`=128 WHERE `entry`=52369;
UPDATE `creature_template` SET `minlevel`=87,`maxlevel`=87,`exp`=3,`faction_A`=14,`faction_H`=14,`ScriptName`='' WHERE `entry`=52389;
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=52368;

UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=52369;
UPDATE `creature_template` SET `unit_flags`=2048 WHERE `entry`=52389;

DELETE FROM `creature_template_addon` WHERE `entry`=52389;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(52389, 0, 0x0, 0x1, '96995');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (96872,96931,96932,96942,101009);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(96872 ,'spell_occuthar_focused_fire'),
(96931 ,'spell_occuthar_eyes_of_occuthar'),
(96932 ,'spell_occuthar_eyes_of_occuthar_vehicle'),
(96942 ,'spell_occuthar_occuthars_destruction'),
(101009 ,'spell_occuthar_occuthars_destruction');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=96931;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,96931,0,0,31,0,3,52368,0,0,0,'','');

DELETE FROM `creature` WHERE `id`=52368;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52363;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(52363, 46598, 1, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=52363;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(52363, 52368, 0, 1, 'Occu''thar - Eyestalk (Seat 1)', 8, 0),
(52363, 52368, 1, 1, 'Occu''thar - Eyestalk (Seat 2)', 8, 0),
(52363, 52368, 2, 1, 'Occu''thar - Eyestalk (Seat 3)', 8, 0),
(52363, 52368, 3, 1, 'Occu''thar - Eyestalk (Seat 4)', 8, 0),
(52363, 52368, 4, 1, 'Occu''thar - Eyestalk (Seat 5)', 8, 0),
(52363, 52368, 5, 1, 'Occu''thar - Eyestalk (Seat 6)', 8, 0),
(52363, 52368, 6, 1, 'Occu''thar - Eyestalk (Seat 7)', 8, 0);
SET @OGUID          := 76803;

DELETE FROM `gameobject` WHERE `id` IN (188539,190353);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
 -- Coldwind Tree
(@OGUID,    188539, 571, 1, 1, 4845.311, 722.2529, 169.1704, 5.585054, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+1,  188539, 571, 1, 1, 4845.701, 676.941, 164.153, 1.780234, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+2,  188539, 571, 1, 1, 4822.568, 667.1375, 166.1218, 5.235988, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+3,  188539, 571, 1, 1, 4839.788, 809.9525, 162.1743, 4.450591, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+4,  188539, 571, 1, 1, 4891.104, 799.2133, 168.9825, 4.76475, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+5,  188539, 571, 1, 1, 4809.472, 874.1573, 163.8867, 6.19592, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+6,  188539, 571, 1, 1, 4896.817, 854.5087, 175.6376, 5.881761, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+7,  188539, 571, 1, 1, 4871.93, 718.883, 165.3885, 1.518436, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+8,  188539, 571, 1, 1, 4890.049, 970.9612, 209.2152, 3.787367, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+9,  188539, 571, 1, 1, 4945.856, 839.2049, 190.6546, 3.490667, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+10, 188539, 571, 1, 1, 4819.289, 791.7388, 166.832, 4.537859, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+11, 188539, 571, 1, 1, 4928.494, 726.8925, 178.0483, 2.722713, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+12, 188539, 571, 1, 1, 4822.72, 801.2385, 166.1128, 5.98648, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+13, 188539, 571, 1, 1, 4890.223, 789.971, 166.3956, 5.445428, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+14, 188539, 571, 1, 1, 4878.446, 770.7858, 163.0117, 5.183629, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+15, 188539, 571, 1, 1, 4893.438, 709.8468, 164.7574, 5.811947, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+16, 188539, 571, 1, 1, 4938.004, 853.88, 188.1079, 4.049168, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+17, 188539, 571, 1, 1, 4928.94, 976.3659, 213.8083, 3.455756, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+18, 188539, 571, 1, 1, 4902.952, 997.422, 217.0715, 4.171338, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+19, 188539, 571, 1, 1, 4909.807, 998.5203, 217.5305, 4.625124, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+20, 188539, 571, 1, 1, 4900.104, 1009.844, 221.0865, 1.710422, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+21, 188539, 571, 1, 1, 5122.282, 1034.124, 227.2998, 2.303831, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+22, 188539, 571, 1, 1, 5135.159, 1036.437, 225.7432, 5.340709, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+23, 188539, 571, 1, 1, 5122.978, 1091.059, 226.1329, 1.989672, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+24, 188539, 571, 1, 1, 5113.761, 1088.344, 227.6372, 3.752462, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+25, 188539, 571, 1, 1, 5107.944, 1096.339, 225.5093, 3.665196, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+26, 188539, 571, 1, 1, 5152.663, 1080.674, 223.8049, 5.026549, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+27, 188539, 571, 1, 1, 5189.047, 1086.043, 220.8354, 4.223697, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+28, 188539, 571, 1, 1, 5179.044, 1072.715, 221.8447, 3.351047, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+29, 188539, 571, 1, 1, 5222.162, 1092.083, 219.5214, 3.909541, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+30, 188539, 571, 1, 1, 5251.857, 1078.996, 220.9522, 0.087266, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+31, 188539, 571, 1, 1, 4842.251, 665.0809, 163.0047, 2.600535, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+32, 188539, 571, 1, 1, 4850.285, 659.3837, 162.0293, 2.583081, 0, 0, 0, 1, 120, 255, 1),
-- Poster Knife
(@OGUID+33, 190353, 571, 1, 1, 4845.379, 722.2457, 169.3926, 2.548179, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+34, 190353, 571, 1, 1, 4822.594, 667.0778, 166.3232, 2.18166, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+35, 190353, 571, 1, 1, 4819.184, 791.6855, 167.0265, 0.9424766, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+36, 190353, 571, 1, 1, 4822.843, 801.2508, 166.3003, 2.932139, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+37, 190353, 571, 1, 1, 4878.438, 770.6991, 163.227, 1.623156, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+38, 190353, 571, 1, 1, 4891.163, 799.1904, 169.2256, 2.129301, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+39, 190353, 571, 1, 1, 4809.532, 874.2202, 164.0672, 3.38594, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+40, 190353, 571, 1, 1, 4896.821, 854.4781, 175.846, 2.286379, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+41, 190353, 571, 1, 1, 4872.037, 718.7377, 165.5899, 1.902409, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+42, 190353, 571, 1, 1, 4890.018, 970.9833, 209.4513, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+43, 190353, 571, 1, 1, 4839.718, 809.8333, 162.3687, 1.221729, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+44, 190353, 571, 1, 1, 4928.391, 726.8994, 178.2229, 5.969027, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+45, 190353, 571, 1, 1, 4893.49, 709.8345, 164.9516, 2.687807, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+46, 190353, 571, 1, 1, 4890.262, 789.9007, 166.38, 1.902409, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+47, 190353, 571, 1, 1, 4937.972, 853.8556, 188.2954, 1.204277, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+48, 190353, 571, 1, 1, 4928.847, 976.4125, 213.9889, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+49, 190353, 571, 1, 1, 4902.885, 997.4144, 217.2868, 0.8377575, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+50, 190353, 571, 1, 1, 4909.735, 998.4642, 217.7249, 1.291542, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+51, 190353, 571, 1, 1, 4900.08, 1009.665, 221.2879, 1.553341, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+52, 190353, 571, 1, 1, 5122.176, 1034.082, 227.4803, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+54, 190353, 571, 1, 1, 5135.044, 1036.4, 225.8995, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+55, 190353, 571, 1, 1, 5122.983, 1091.042, 226.3065, 1.605702, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+56, 190353, 571, 1, 1, 5113.695, 1088.284, 227.8359, 0.7155849, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+57, 190353, 571, 1, 1, 5107.816, 1096.331, 225.7246, 0.3316107, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+58, 190353, 571, 1, 1, 5152.607, 1080.622, 224.0202, 1.850049, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+59, 190353, 571, 1, 1, 5189.124, 1085.911, 221.0087, 1.274088, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+60, 190353, 571, 1, 1, 5179.001, 1072.72, 222.0274, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+61, 190353, 571, 1, 1, 5222.177, 1092.026, 219.7277, 1.274088, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+62, 190353, 571, 1, 1, 5251.752, 1079.047, 221.1224, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+63, 190353, 571, 1, 1, 4945.764, 839.31, 190.6546, 0, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+64, 190353, 571, 1, 1, 4845.712, 676.88, 164.3336, 1.692969, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+65, 190353, 571, 1, 1, 4842.208, 665.113, 163.1968, 5.742135, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+66, 190353, 571, 1, 1, 4850.357, 659.3613, 162.2515, 2.565632, 0, 0, 0, 1, 120, 255, 1);
SET @OGUID          := xxxx;

DELETE FROM `gameobject` WHERE `id`=@OGUID;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID, 209849, 757, 1, 1, 386.859, 1337.48, 170.1612, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 0);SET @ThoriumGems := 12900;
SET @FelIronGems := 12901;
SET @RareGems := 12902;
SET @EpicGems := 12903;
SET @AdamantiteGems := 12904;
SET @WotlkGreenGems := 12905;
SET @WotlkBlueGems := 12906;

DELETE FROM `reference_loot_template` WHERE `entry` IN (@ThoriumGems,@FelIronGems,@RareGems,@AdamantiteGems,@WotlkGreenGems,@WotlkBlueGems);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ThoriumGems
(@ThoriumGems,12363,40,1,1,1,1), -- Arcane Crystal
(@ThoriumGems, 7910,12,1,1,1,1), -- Star Ruby
(@ThoriumGems,12800,12,1,1,1,1), -- Azerothian Diamond
(@ThoriumGems,12361,12,1,1,1,1), -- Blue Sapphire
(@ThoriumGems,12364,12,1,1,1,1), -- Huge Emerald
(@ThoriumGems,12799,12,1,1,1,1), -- Large Opal
-- Fel Iron Gems
(@FelIronGems,23112,0,1,1,1,1), -- Golden Draenite
(@FelIronGems,23077,0,1,1,1,1), -- Blood Garnet
(@FelIronGems,21929,0,1,1,1,1), -- Flame Spessarite
(@FelIronGems,23079,0,1,1,1,1), -- Deep Peridot
(@FelIronGems,23107,0,1,1,1,1), -- Shadow Draenite
(@FelIronGems,23117,0,1,1,1,1), -- Azure Moonstone
-- Rare Gems
(@RareGems,23437,0,1,1,1,1), -- Talasite
(@RareGems,23439,0,1,1,1,1), -- Noble Topaz
(@RareGems,23440,0,1,1,1,1), -- Dawnstone
(@RareGems,23436,0,1,1,1,1), -- Living Ruby
(@RareGems,23441,0,1,1,1,1), -- Nightseye
(@RareGems,23438,0,1,1,1,1), -- Star of Elune
-- Epic Gems
(@EpicGems,32227,0,1,1,1,2), -- Crimson Spinel
(@EpicGems,32228,0,1,1,1,2), -- Empyrean Sapphire
(@EpicGems,32229,0,1,1,1,2), -- Lionseye
(@EpicGems,32230,0,1,1,1,2), -- Shadowsong Amethyst
(@EpicGems,32231,0,1,1,1,2), -- Pyrestone
(@EpicGems,32249,0,1,1,1,2), -- Seaspray Emerald
-- Adamantite Gems
(@AdamantiteGems,23112,0,1,1,1,2), -- Golden Draenite
(@AdamantiteGems,23077,0,1,1,1,2), -- Blood Garnet
(@AdamantiteGems,21929,0,1,1,1,2), -- Flame Spessarite
(@AdamantiteGems,23079,0,1,1,1,2), -- Deep Peridot
(@AdamantiteGems,23107,0,1,1,1,2), -- Shadow Draenite
(@AdamantiteGems,23117,0,1,1,1,2), -- Azure Moonstone
-- WOTLK Green Gems
(@WotlkGreenGems,36917,0,1,1,1,1), -- Bloodstone
(@WotlkGreenGems,36920,0,1,1,1,1), -- Sun Crystal
(@WotlkGreenGems,36923,0,1,1,1,1), -- Chalcedony
(@WotlkGreenGems,36926,0,1,1,1,1), -- Shadow Crystal
(@WotlkGreenGems,36929,0,1,1,1,1), -- Huge Citrine
(@WotlkGreenGems,36932,0,1,1,1,1), -- Dark Jade
-- WOTLK Blue Gems
(@WotlkBlueGems,36918,0,1,1,1,1), -- Scarlet Ruby
(@WotlkBlueGems,36921,0,1,1,1,1), -- Autumn's Glow
(@WotlkBlueGems,36924,0,1,1,1,1), -- Sky Sapphire
(@WotlkBlueGems,36927,0,1,1,1,1), -- Twilight Opal
(@WotlkBlueGems,36930,0,1,1,1,1), -- Monarch Topaz
(@WotlkBlueGems,36933,0,1,1,1,1); -- Forest Emerald
-- --------------------------------------------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------------------------------
-- -------------------
-- -- CLASSIC ZONES --
-- -------------------
SET @Copper := 1502;
SET @Tin := 1503;
SET @Silver := 1504;
SET @Iron := 1505;
SET @Gold :=1506;
SET @Mithril :=1742;
SET @Truesilver := 5045;
SET @DarkIron := 11213;
SET @SmallThorium := 9597;
SET @RichThorium := 12883;
SET @Incendicite := 1409; -- (OR 29574??) 
SET @Indurium := 3266; 

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@Copper,@Tin,@Silver,@Iron,@Gold,@Mithril,@Truesilver,@DarkIron,@SmallThorium,@RichThorium,17938,13960,17241,@Incendicite,@Indurium);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Copper Vein
(@Copper,2770,100,1,0,1,9), -- Copper Ore
(@Copper,2835, 25,1,0,1,11), -- Rough Stone
(@Copper,774 ,5,1,1,1,1), -- Malachite
(@Copper,1210,5,1,1,1,1), -- Shadowgem
(@Copper,818 ,5,1,1,1,1), -- Tigerseye
(@Copper,22634,-100,1,0,1,2), -- Underlight Ore (only on quest)
-- Tin Vein
(@Tin,2771,100,1,0,1,9), -- Tin Ore
(@Tin,2836,25,1,0,1,13), -- Coarse Stone
(@Tin,1206,5,1,1,1,1), -- Moss Agate
(@Tin,1705,5,1,1,1,1), -- Lesser Moonstone
(@Tin,1210,5,1,1,1,1), -- Shadowgem
(@Tin,1529,5,1,1,1,1), -- Jade
(@Tin,2798,-100,1,0,1,2), -- Rethban Ore (only on quest)
(@Tin,22634,-100,1,0,1,2), -- Underlight Ore (only on quest)
-- Silver Vein & Ooze Covered Silver Vein
(@Silver,2775,100,1,0,2,4), -- Silver Ore
(@Silver,1206,5,1,1,1,1), -- Moss Agate
(@Silver,1705,5,1,1,1,1), -- Lesser Moonstone
(@Silver,1210,5,1,1,1,1), -- Shadowgem
-- Iron Deposit
(@Iron,2772,100,1,0,2,4), -- Iron Ore
(@Iron,2838,100,1,0,1,5), -- Heavy Stone
(@Iron,1529,5,1,1,1,1), -- Jade
(@Iron,3864,5,1,1,1,1), -- Citrine
(@Iron,1705,5,1,1,1,1), -- Lesser Moonstone
(@Iron,7909,5,1,1,1,1), -- Aquamarine
-- Gold Vein & Ooze Covered Gold Vein
(@Gold,2776,100,1,0,2,4), -- Gold Ore
(@Gold,3864,5,1,1,1,1), -- Citrine
(@Gold,1705,5,1,1,1,1), -- Lesser Moonstone
(@Gold,7909,5,1,1,1,1), -- Aquamarine
-- Mithril Deposit & Ooze Covered
(@Mithril,3858,100,1,0,2,4), -- Mithril Ore
(@Mithril,7912,80,1,0,1,8), -- Solid Stone
(@Mithril,7909,5,1,1,1,1), -- Aquamarine
(@Mithril,3864,5,1,1,1,1), -- Citrine
(@Mithril,7910,5,1,1,1,1), -- Star Ruby
(@Mithril,9262,5,1,1,1,1), -- Black Vitriol
-- Truesilver Deposit & Ooze Covered
(@Truesilver,7911,100,1,0,2,4), -- Truesilver Ore
(@Truesilver,7909,5,1,1,1,1), -- Aquamarine
(@Truesilver,3864,5,1,1,1,1), -- Citrine
(@Truesilver,7910,5,1,1,1,1), -- Star Ruby
-- Dark Iron Deposit
(@DarkIron,11370,100,1,0,2,4), -- Dark Iron Ore
(@DarkIron, 9262,5,1,1,1,1), -- Black Vitriol
(@DarkIron,11382,5,1,1,1,1), -- Blood of the Mountain
(@DarkIron,11754,5,1,1,1,1), -- Black Diamond
-- Small Thorium Vein Covered
(@SmallThorium,10620,100,1,0,2,3), -- Thorium Ore
(@SmallThorium,12365,100,1,0,1,5), -- Dense Stone
(@SmallThorium,1,15,1,0,-@ThoriumGems,1), -- One From Gems
-- Rich Thorium Vein & Ooze Covered
(@RichThorium,10620,100,1,0,3,5), -- Thorium Ore
(@RichThorium,12365,100,1,0,4,7), -- Dense Stone
(@RichThorium,1,25,1,0,-@ThoriumGems,1), -- One From Gems
-- Special Cases:
-- Truesilver Vein+Tainted Vitriol
(17938,7911,100,1,0,2,8), -- Truesilver Ore
(17938,7909,5,1,1,1,1), -- Aquamarine
(17938,3864,5,1,1,1,1), -- Citrine
(17938,7910,5,1,1,1,1), -- Star Ruby
(17938,11513,50,1,0,1,1), -- Tainted Vitriol
-- Small Thorium Vein+Tainted Vitriol
(13960,10620,100,1,0,1,8), -- Thorium Ore
(13960,12365,100,1,0,1,10), -- Dense Stone
(13960,1,15,1,0,-@ThoriumGems,1), -- One From Gems
(13960,11513,50,1,0,1,1), -- Tainted Vitriol 
-- Hakkari Thorium Vein
(17241,10620,100,1,0,1,8), -- Thorium Ore
(17241,12365,100,1,0,1,10), -- Dense Stone
(17241,1,15,1,0,-@ThoriumGems,1), -- One From Gems
(17241,19774,40,1,0,5,10), -- Souldarite
-- Incendicite Mineral Vein
(@Incendicite,3340,-100,1,0,1,2), -- Incendicite Ore (for quest) 
-- Indurium Mineral Vein
(@Indurium,5833,-100,1,0,2,4); -- Indurium Ore (for quest)
-- -------------------------------
-- -- The Burning Crusade Zones -- 
-- -------------------------------
SET @FelIron :=18359;
SET @Nethercite := 22070;
SET @Adamantite := 18361;
SET @RichAdamantite := 26861;
SET @Khorium := 18363;
SET @GemVein := 26862;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@FelIron,@Nethercite,@Adamantite,@RichAdamantite,@Khorium,@GemVein);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Fel Iron Deposit
(@FelIron,23424,100,1,0,2,4), -- Fel Iron Ore
(@FelIron,22573,10,1,0,1,2), -- Mote of Earth
(@FelIron,22574,10,1,0,1,2), -- Mote of Fire
(@FelIron,23427,5,1,0,1,2), -- Eternium Ore
(@FelIron,1,5,1,0,-@FelIronGems,1), -- One From Green Gems
-- Nethercite Deposit
(@Nethercite,32464,100,1,0,1,2), -- Nethercite Ore
(@Nethercite,22573,10,1,0,1,4), -- Mote of Earth
(@Nethercite,22574,10,1,0,1,4), -- Mote of Fire
(@Nethercite,1,5,1,0,-@FelIronGems,1), -- One From Green Gems
(@Nethercite,2,1,1,0,-@RareGems,1), -- One From Blue Gems
-- Adamantite Deposit
(@Adamantite,23425,100,1,0,2,4), -- Adamantite Ore
(@Adamantite,22573,10,1,0,1,8), -- Mote of Earth
(@Adamantite,23427,10,1,0,1,2), -- Eternium Ore
(@Adamantite,1,5,1,0,-@AdamantiteGems,1), -- One From Green Gems
(@Adamantite,2,1,1,0,-@RareGems,1), -- One From Blue Gems
-- Rich Adamantite Deposit
(@RichAdamantite,23425,100,1,0,5,7), -- Adamantite Ore
(@RichAdamantite,22573,10,1,0,4,8), -- Mote of Earth
(@RichAdamantite,23427,10,1,0,2,3), -- Eternium Ore
(@RichAdamantite,1,5,1,0,-@AdamantiteGems,1), -- One From Green Gems
(@RichAdamantite,2,1,1,0,-@RareGems,1), -- One From Blue Gems
-- Khorium Vein
(@Khorium,23426,100,1,0,2,4), -- Khorim Ore
(@Khorium,22573,35,1,0,2,5), -- Mote of Earth
(@Khorium,22574,10,1,0,2,5), -- Mote of Fire
(@Khorium,23427,10,1,0,1,3), -- Eternium Ore
(@khorium,1,5,1,0,-@FelIronGems,1), -- One From Gems
(@khorium,2,1,1,0,-@RareGems,1), -- One From Gems
-- Ancient Gem Vein
(@GemVein,34907,70,1,1,1,9), -- Shattered Gem Fragments
(@GemVein,1,20,1,1,-@EpicGems,1), -- Epic Gems
(@GemVein,2,10,1,1,-@FelIronGems,1); -- One From Gems
-- ----------------------------------
-- -- Wrath of the Lich King Zones -- 
-- ----------------------------------
SET @Cobalt :=24153;
SET @RichCobalt := 24154;
SET @Saronite := 24155;
SET @RichSaronite := 24156;
SET @Titanium := 24157;
SET @PureSaronite := 27244;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@Cobalt,@RichCobalt,@Saronite,@RichSaronite,@PureSaronite,@Titanium);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Cobalt Deposit
(@Cobalt,36909,100,1,0,2,4), -- Cobalt Ore
(@Cobalt,37701,30,1,0,1,2), -- Crystallized Earth
(@Cobalt,37705,30,1,0,1,2), -- Crystallized Water
(@Cobalt,1,5,1,0,-@WotlkGreenGems,1), -- One From Green Gems
-- Rich Cobalt Deposit
(@RichCobalt,36909,100,1,0,4,8), -- Cobalt Ore
(@RichCobalt,37701,30,1,0,1,2), -- Crystallized Earth
(@RichCobalt,37705,30,1,0,1,2), -- Crystallized Water
(@RichCobalt,1,5,1,0,-@WotlkGreenGems,1), -- One From Green Gems
(@RichCobalt,2,5,1,0,-@WotlkBlueGems,1), -- One From Blue Gems
-- Saronite Deposit
(@Saronite,36912,100,1,0,2,4), -- Saronite Ore
(@Saronite,37701,40,1,0,1,2), -- Crystallized Earth
(@Saronite,37703,40,1,0,1,2), -- Crystallized Shadow
(@Saronite,1,5,1,0,-@WotlkGreenGems,1), -- One From Green Gems
-- Rich Saronite Deposit
(@RichSaronite,36912,100,1,0,5,7), -- Saronite Ore
(@RichSaronite,37701,40,1,0,1,8), -- Crystallized Earth
(@RichSaronite,37703,40,1,0,1,8), -- Crystallized Shadow
(@RichSaronite,1,5,1,0,-@WotlkGreenGems,1), -- One From Green Gems
(@RichSaronite,2,5,1,0,-@WotlkBlueGems,1), -- One From Blue Gems
-- Titanium Vein
(@Titanium,36910,100,1,0,2,4), -- Titanium Ore
(@Titanium,37701,50,1,0,3,6), -- Crystallized Earth
(@Titanium,37705,50,1,0,3,6), -- Crystallized Water
(@Titanium,37702,50,1,0,3,6), -- Crystallized Fire
(@Titanium,37703,50,1,0,3,6), -- Crystallized Air
(@Titanium,1,25,1,0,-@WotlkGreenGems,1), -- One From Green Gems
(@Titanium,2,5,1,0,-@WotlkBlueGems,1), -- One From Blue Gems
-- Pure Saronite Deposit
(@PureSaronite,36912,100,1,0,22,38), -- Saronite Ore
(@PureSaronite,35627,60,1,0,2,4), -- Eternal Earth
(@PureSaronite,35624,60,1,0,2,4), -- Eternal Shadow
(@PureSaronite,1,35,1,0,-@WotlkGreenGems,1), -- One From Green Gems
(@PureSaronite,2,50,1,0,-@WotlkBlueGems,1); -- One From Blue Gems

DELETE FROM `reference_loot_template` WHERE `entry` IN (12909,12991,12992,12993,12994,12995,12996,12997,12998,12999);-- SELECT `entryorguid`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`comment` FROM `smart_scripts`  WHERE `event_type`=14;
UPDATE `smart_scripts` SET `event_type`=74,`event_param2`=`event_param1`,`event_param1`=0,`target_type`=9 WHERE `entryorguid`=20049 AND `id`=4;
UPDATE `smart_scripts` SET `event_type`=74,`event_param2`=`event_param1`,`event_param1`=0,`target_type`=9 WHERE `entryorguid`=9045 AND `id`=3;
UPDATE `smart_scripts` SET `event_type`=74,`target_type`=9 WHERE `event_type`=14 AND `event_param1`=0 AND `event_param2` > 0 AND `event_param2` < 100;
UPDATE `smart_scripts` SET `event_param1`=`event_param2`,`event_param2`=30 WHERE `event_type`=14 AND `event_param2` >= 100;
-- Grand Crusader
DELETE FROM `spell_script_names` WHERE `spell_id`=-75806;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-75806,'spell_pal_grand_crusader');

-- Grand Crusader can only be activated by Crusader Strike or Hammer of the Righteous
DELETE FROM `spell_proc_event` WHERE `entry`=-75806;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(-75806, 0, 10, 0, 0x48000, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_proc_event` WHERE `entry`=53390;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(53390, 11, 0, 192, 0, 65536, 0, 0, 0, 0, 0);
-- Random comment
SET @SHREDDER		:= 27061; -- Xink's Shredder
SET @XINK			:= 26660; -- Xink
SET @SPELL			:= 52872; -- Forceitem Xink's Shredder

UPDATE `creature_template` SET `npcflag`=16777216,`unit_flags`=32768,`spell1`=47938,`spell2`=47921,`spell3`=49857,`spell4`=47966, `spell6`=47939 ,`VehicleId`=42 WHERE `entry`=@SHREDDER;
-- Creature Gossip_menu_option ppdate from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9422) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9422,0,0, 'I seem to have misplaced your Shredder Control Device... might you have another?',1,1,0,0,0,0, '');
-- Gossip option conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=9422);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9422,0,1,9,12050,0,0,0,'','Show gossip only if Lumber Hack quest is taken'),
(15,9422,0,1,26,36734,0,0,0,'','Show gossip only if player does not have item Xink''s Shredder Control Device'),
(15,9422,0,2,26,36734,0,0,0,'','Show gossip option if player does not have item Xink''s Shredder Control Device'),
(15,9422,0,2,9,12052,0,0,0,'','Show gossip option if player has quest marked as taken');

DELETE FROM `conditions` WHERE `SourceEntry`=@SHREDDER;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`)VALUES
(16,0,@SHREDDER,0,23,4230,0,0,0,'',"Dismount player when not in intended zone - Coldwind Heights");

-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (26660,27061) AND `groupid` IN (0,1);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@XINK,0,0, 'About time!  Get that lumber and get moving.  The horde won''t be up there fighting forever, there''s money to be made!',12,0,100,25,1000,0, 'Xink'),
(@SHREDDER,0,0, 'Xink''s Shredder ready and available for woodland destruction.',16,0,100,0,0,0, 'Xink''s Shredder'),
(@SHREDDER,1,0, 'Xink''s Shredder security features activated.  Returning to base.',16,0,100,0,0,0, 'Xink''s Shredder');

-- SAI for Xink
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@XINK;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@XINK AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@XINK,0,0,0,19,0,100,0,12050,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Xink - On Quest Accept - say 0'),
(@XINK,0,1,2,62,0,100,0,9422,0,0,0,11,@SPELL,0,0,0,0,0,7,0,0,0,0,0,0,0,'Xink - On Gossip option select - Cast Forceitem Xink''s Shredder'),
(@XINK,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Xink - On Gossip option select - Close Gossip');

DELETE FROM `conditions` WHERE `SourceEntry`=47939;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 47939, 0, 0, 35, 0, 1, 5, 3, 0, 0, 0, '', 'Gather Lumber - limit GO targets to Coldwind Tree');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=27061;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(27061, 47920, 1, 0);
DELETE FROM `spell_proc_event` WHERE `entry`=46916;
INSERT INTO `spell_proc_event` (`entry`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`) VALUES
(46916,4,0x200000,0x0,0x0);
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (49527, 49518, 49528, 49544, 49537, 49548);
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`) VALUES
(49527, 49527, 59972),
(49518, 49518, 59971),
(49528, 49528, 59973),
(49544, 49544, 59965),
(49537, 49537, 59963),
(49548, 49548, 59969);

UPDATE `creature_template` SET `AIName` = 'NullAI' WHERE `entry` = 30413;

DELETE FROM `spell_script_names` WHERE `spell_id` = 53242;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(53242, 'spell_tharon_ja_clear_gift_of_tharon_ja');
-- Digging Through Bones (10922)
SET @LETOLL       := 22458;
SET @RESEARCHER   := 22464;
SET @B_SIFTER     := 22466;
SET @SG_TRIGGER   := 22457;
SET @RESEARCHER1  := 78837;

-- Faulty spawn, it needs to be spawned by a script.
DELETE FROM `creature` WHERE `guid`=85488;

DELETE FROM `creature_text` WHERE `entry`=@LETOLL;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@LETOLL,0,0,"'Aright, listen up! Form a circle around me and move out!",12,0,100,0,0,0,''),
(@LETOLL,1,0,"Aright, $R, just keep us safe from harm while we work. We'll pay you when we return.",12,0,100,0,0,0,''),
(@LETOLL,2,0,"The dig site is just north of here.",12,0,100,0,0,0,''),
(@LETOLL,3,0,"We're here! Start diggin'!",12,0,100,0,0,0,''),
(@LETOLL,4,0,"I think there's somethin' buried here, beneath the sand!",12,0,100,396,0,0,''),
(@LETOLL,5,0,"Almost got it!",12,0,100,396,0,0,''),
(@LETOLL,6,0,"By Brann's brittle bananas! What is it?! It... It looks like a drum.",12,0,100,396,0,0,''),
(@LETOLL,7,0,"Have ye gone mad? You expect me to leave behind a drum without first beatin' on it? Not this son of Ironforge! No sir!",12,0,100,0,0,0,''),
(@LETOLL,8,0,"Shut yer yaps! I'm gonna bang on this drum and that's that!",12,0,100,0,0,0,''),
(@LETOLL,9,0,"IN YOUR FACE! I told you there was somethin' here!",12,0,100,0,0,0,''),
(@LETOLL,10,0,"Don't just stand there! Help him out!",12,0,100,0,0,0,''),
(@LETOLL,11,0,"You've been a tremendous help, $R! Let's get out of here before more of those things show up! I'll let Dwarfowitz know you did the job asked of ya' admirably.",12,0,100,0,0,0,'');

DELETE FROM `creature_text` WHERE `entry`=@RESEARCHER;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@RESEARCHER,0,0,"Wow... a drum.",12,0,100,0,0,0,''),
(@RESEARCHER,1,0,"This discovery will surely rock the foundation of modern archaeology.",12,0,100,0,0,0,''),
(@RESEARCHER,2,0,"Yea, great. Can we leave now? This desert is giving me hives.",12,0,100,0,0,0,''),
(@RESEARCHER,3,0,"This reminds me of that one time where you made us search Silithus for evidence of sand gnomes.",12,0,100,0,0,0,''),
(@RESEARCHER,4,0,"Or that time when you told us that you'd discovered the cure for the plague of the 20th century. What is that even? 20th century?",12,0,100,0,0,0,''),
(@RESEARCHER,5,0,"I don't think it can top the one time where he told us that he'd heard that Arthas's cousin's skeleton was frozen beneath a glacier in Winterspring. I'll never forgive you for that one, Letoll. I mean honestly... Arthas's cousin?",12,0,100,0,0,0,''),
(@RESEARCHER,6,0,"I dunno. It can't possibly beat the time he tried to convince us that we're all actually a figment of some being's imagination and that they only use us for their own personal amusement. That went over well during dinner with the family.",12,0,100,0,0,0,''),
(@RESEARCHER,7,0,"Say, do you guys hear that?",12,0,100,0,0,0,'');

DELETE FROM `waypoints` WHERE `entry` IN (@LETOLL,@RESEARCHER,@LETOLL*100);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@LETOLL,1,-3728.1,5385.5,-3.41,''),
(@LETOLL,2,-3735.9,5392.8,-4.8,''),
(@LETOLL,3,-3729.7,5381,-4.9,''),
(@LETOLL,4,-3704.6, 5372.74, -9.33,''),
(@LETOLL,5,-3704.8,5374.7,-8.9,''),
(@LETOLL,6,-3623.2,5403.2,-11.5,''),
(@LETOLL,7,-3554.6,5455.2,-11.3,''),
(@LETOLL,8,-3557.7,5468.9,-8.1,''),
(@LETOLL,9,-3548.9,5458.3,-12.3,''),
(@RESEARCHER,1,-3725.1,5381.9,-4.4,''),
(@RESEARCHER,2,-3735.7,5390.7,-5.7,''),
(@RESEARCHER,3,-3728.4,5384.1,-3.4,''),
(@RESEARCHER,4,-3703.1,5371.4,-10.1,''),
(@RESEARCHER,5,-3619.6,5400.8,-12.1,''),
(@RESEARCHER,6,-3554.2,5451.1,-11.8,''),
(@RESEARCHER,7,-3563.1,5462.8,-6.5,''),
(@RESEARCHER,8,-3551.1,5454,-11.9,'');


UPDATE `creature_template` SET `AIname`='SmartAI' WHERE `entry` IN (@LETOLL,@RESEARCHER,@B_SIFTER);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@LETOLL,-@RESEARCHER1,@B_SIFTER);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@LETOLL*100+2,@LETOLL*100+1,@LETOLL*100,@RESEARCHER*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@LETOLL,0,0,1,19,0,100,0,10922,0,0,0,53,0,@LETOLL,0,0,0,0,1,0,0,0,0,0,0,0,'On quest accept - Start WP'),
(@LETOLL,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say line 0'),
(@LETOLL,0,2,3,40,0,100,0,1,@LETOLL,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Pause WP'),
(@LETOLL,0,3,10,61,0,100,0,0,0,0,0,80,@LETOLL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Start Timed Event'),
(@LETOLL,0,4,5,40,0,100,0,8,@LETOLL,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Set emote digging'),
(@LETOLL,0,5,0,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,78837,@RESEARCHER,0,0,0,0,0,'On Link - Set Data'),
(@LETOLL,0,6,7,40,0,100,0,9,@LETOLL,0,0,17,467,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Set emote digging'),
(@LETOLL,0,7,8,61,0,100,0,0,0,0,0,45,0,3,0,0,0,0,10,78837,@RESEARCHER,0,0,0,0,0,'On Link - Set Data'),
(@LETOLL,0,8,0,61,0,100,0,0,0,0,0,80,@LETOLL*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Start Timed Event'),
(@LETOLL,0,9,0,40,0,100,0,7,@LETOLL,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Say line 3'),
(@LETOLL,0,10,0,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set npc flag'),
(@LETOLL,0,11,0,40,0,100,0,7,@LETOLL,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Pause WP'),
--
(-@RESEARCHER1,0,0,0,38,0,100,0,0,1,0,0,53,0,@RESEARCHER,0,0,0,0,1,0,0,0,0,0,0,0,'On Data - Start WP'),
(-@RESEARCHER1,0,1,2,40,0,100,0,6,@RESEARCHER,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,' On Data - Start WP'),
(-@RESEARCHER1,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Start digging'),
(-@RESEARCHER1,0,3,4,40,0,100,0,7,@RESEARCHER,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Pause WP'),
(-@RESEARCHER1,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Start digging'),
(-@RESEARCHER1,0,5,6,40,0,100,0,8,@RESEARCHER,0,0,54,35500,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP reached - Pause WP'),
(-@RESEARCHER1,0,6,0,61,0,100,0,0,0,0,0,80,@RESEARCHER*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'ON WP reached - Start Timed Event'),
(-@RESEARCHER1,0,7,0,11,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Respawn - Set Emote State none'),
-- 
(@LETOLL*100,9,0,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 1'),
(@LETOLL*100,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 2'),
(@LETOLL*100,9,2,0,0,0,100,0,500,500,0,0,45,0,1,0,0,0,0,10,78837,@RESEARCHER,0,0,0,0,0,'On Script - Set Data'),
--
(@LETOLL*100+1,9,0,0,0,0,100,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 4'),
(@LETOLL*100+1,9,1,0,0,0,100,0,2000,2000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 5'),
(@LETOLL*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 6'),
--
(@RESEARCHER*100,9,0,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 0'),
(@RESEARCHER*100,9,1,0,0,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Set emote state none'),
(@RESEARCHER*100,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 1'),
(@RESEARCHER*100,9,3,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 2'),
--
(@LETOLL*100+1,9,3,0,0,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Set emote state none'),
(@LETOLL*100+1,9,4,0,0,0,100,0,22000,22000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 7'),
--
(@RESEARCHER*100,9,4,0,0,0,100,0,12000,12000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 3'),
(@RESEARCHER*100,9,5,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 4'),
(@RESEARCHER*100,9,6,0,0,0,100,0,6000,6000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 5'),
(@RESEARCHER*100,9,7,0,0,0,100,0,17000,17000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 6'),
--
(@LETOLL*100+1,9,5,0,0,0,100,0,34000,34000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 8'),
--
(@RESEARCHER*100,9,8,0,0,0,100,0,6000,6000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 7'),
(@RESEARCHER*100,9,9,0,0,0,100,0,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Despawn'),
--
(@LETOLL*100+1,9,6,0,0,0,100,0,7000,7000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 9'),
(@LETOLL*100+1,9,7,0,0,0,100,0,500,500,0,0,12,@B_SIFTER,1,60000,0,0,0,8,0,0,0,-3550,5456.1,-12.3,0,'On Script - Summon worm'),
(@LETOLL*100+1,9,8,0,0,0,100,0,8000,8000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 10'),
(@LETOLL*100+1,9,9,0,0,0,100,0,8000,8000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Say line 11'),
(@LETOLL*100+1,9,10,0,0,0,100,0,6000,6000,0,0,15,10922,0,0,0,0,0,18,20,0,0,0,0,0,0,'On Script - Give quest credit'),
(@LETOLL*100+1,9,11,0,0,0,100,0,3000,3000,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Restore npcflags'),
(@LETOLL*100+1,9,12,0,0,0,100,0,1000,1000,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,' On Script - Stop Script'),
(@LETOLL*100+1,9,13,0,0,0,100,0,16000,16000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Script - Despawn'),
--
(@B_SIFTER,0,0,0,0,0,100,0,2000,6000,12000,17000,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'- IC - Cast Poison'),
(@B_SIFTER,0,1,0,0,0,100,0,5000,25000,35000,40000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,'- IC - Cast Bore');
DELETE FROM `creature_addon` WHERE `guid` IN (127445, 127446, 127447);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127445, 0, 26751, 0, 1, 0, ''),
(127446, 0, 26751, 0, 1, 0, ''),
(127447, 0, 26751, 0, 1, 0, '');
-- Unleash the Raptors (11147)
SET @EVENT         := 15363;
SET @RAPTOR        := 23741;
SET @QUEST_CREDIT  := 23727;

DELETE FROM `event_scripts` WHERE `id`= @EVENT;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(@EVENT,0,8,@QUEST_CREDIT,1,0,0,0,0,0),
(@EVENT,0,10,@RAPTOR,600000,0,-2617.885,-3277.134,31.93436,0.541052),
(@EVENT,0,10,@RAPTOR,600000,0,-2621.778,-3275.271,30.62537,0.296706),
(@EVENT,0,10,@RAPTOR,600000,0,-2620.451,-3279.923,31.8134,0.296706),
(@EVENT,0,10,@RAPTOR,600000,0,-2482.963,-3240.589,40.96778,2.495821),
(@EVENT,0,10,@RAPTOR,600000,0,-2481.632,-3245.017,43.09342,2.583087),
(@EVENT,0,10,@RAPTOR,600000,0,-2479.413,-3239.004,40.06413,2.530727),
(@EVENT,0,10,@RAPTOR,600000,0,-2524.415,-3128.137,29.7597,0.3316126),
(@EVENT,0,10,@RAPTOR,600000,0,-2527.19,-3125.763,29.5518,0.3839724),
(@EVENT,0,10,@RAPTOR,600000,0,-2526.191,-3131.122,29.00879,0.2792527);

UPDATE `creature_template` SET AIName='SmartAI' WHERE entry=@RAPTOR;
DELETE FROM `smart_scripts` WHERE entryorguid IN (@RAPTOR);
INSERT INTO `smart_scripts` VALUES
(@RAPTOR,0,0,0,54,0,100,0,0,0,0,0,53,1,@RAPTOR,0,0,0,0,1,0,0,0,0,0,0,0,'Captured Raptor - On Summon - Start WayPoint'),
(@RAPTOR,0,1,0,54,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captured Raptor - Summon - Aggresive'),
(@RAPTOR,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,0,0,0,0,0,0,0,'Captured Raptor - Summon - Attack Random Hostile'),
(@RAPTOR,0,3,0,1,0,100,1,60000,60000,60000,60000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captured Raptor - OOC 60 Secs - Despawn'),
(@RAPTOR,0,4,0,1,0,100,1,25000,25000,25000,25000,53,1,@RAPTOR,0,0,0,0,1,0,0,0,0,0,0,0,'Captured Raptor - OOC 25 Secs - Start WayPoint');

DELETE FROM `waypoints` WHERE entry IN (@RAPTOR);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@RAPTOR,1,-2457.79, -3169.9, 35.109,'Captured Raptor'),
(@RAPTOR,2,-2446.18, -3176.67, 34.5238,'Captured Raptor'),
(@RAPTOR,3,-2436.55, -3170.93, 35.8081,'Captured Raptor'),
(@RAPTOR,4,-2428.23, -3146.74, 35.8573,'Captured Raptor'),
(@RAPTOR,5,-2444.57, -3138.12, 35.8598,'Captured Raptor'),
(@RAPTOR,6,-2457.32, -3146.25, 35.4215,'Captured Raptor'),
(@RAPTOR,7,-2468, -3161.3, 34.8617,'Captured Raptor');

-- Missing spell focus
DELETE FROM `gameobject` WHERE `id` = 124154;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(76870, 124154, 1, 1, 1, -2456.02, -3150.7, 35.8358, 4.69274, 0, 0, 0.714019, -0.700126, 300, 0, 1);

-- Missing gameobject template
DELETE FROM `gameobject_template` WHERE `entry`= 124154;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(124154, 8, 1287, 'TEMP Blackhoof Village Windmill', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1459, 10, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);
-- Hack field
UPDATE `quest_template` SET `RequiredSpellCast1`=0 WHERE `Id`=11147;
UPDATE `instance_template` SET `script`='instance_the_stockade' WHERE `map`=34;
-- Bazil Thredd should be the last boss in the instance, not Dextren Ward
UPDATE `instance_encounters` SET `lastEncounterDungeon`=12 WHERE `entry`=539;
UPDATE `instance_encounters` SET `lastEncounterDungeon`=0 WHERE `entry`=540;
UPDATE `instance_template` SET `script`='instance_ragefire_chasm' WHERE `map`=389;
-- Applicable id for made up GO template
UPDATE `gameobject_template` SET `entry`=300149 WHERE  `entry`=124154;
UPDATE `instance_template` SET `script`='instance_the_underbog' WHERE `map`=546;
UPDATE `instance_template` SET `script`='instance_the_slave_pens' WHERE `map`=547;
UPDATE `instance_template` SET `script`='instance_maraudon' WHERE `map`=349;
UPDATE `instance_template` SET `script`='instance_dire_maul' WHERE `map`=429;
UPDATE `gameobject` SET `id`=300149 WHERE `guid`=76870;
DELETE FROM `spell_script_names` WHERE `spell_id` = 60144;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(60144, 'spell_hun_viper_attack_speed');
-- Rejek: First Blood (12734)
SET @SPELL        := 52992;
SET @WASP         := 28086;
SET @HARDKNUCKLE  := 28096;
SET @WARRIOR      := 28109;
SET @ORACLE       := 28110;
SET @CREDIT1      := 28040;
SET @CREDIT2      := 36189;
SET @CREDIT3      := 29043;
SET @FLIPATTACK   := 50533;
SET @CHARGE       := 49758;
SET @STING        := 34392;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@WASP;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@WASP;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@WASP;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@WASP,0,0,0,2,0,100,0,0,30,7000,9000,11,@STING,1,0,0,0,0,1,0,0,0,0,0,0,0,'Sapphire Hive Wasp - On HP 30% - Cast Stinger Rage'),
(@WASP,0,1,2,8,0,100,1,@SPELL,0,0,0,33,@CREDIT1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sapphire Hive Wasp - On Spellhit - Give Quest Credit'),
(@WASP,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sapphire Hive Wasp - On Link - Despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@HARDKNUCKLE;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@HARDKNUCKLE;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@HARDKNUCKLE;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HARDKNUCKLE,0,0,0,9,0,100,1,10,30,0,0,11,@CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hardknuckle Charger - On range - Cast Charge'),
(@HARDKNUCKLE,0,1,2,8,0,100,1,@SPELL,0,0,0,33,@CREDIT2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Hardknuckle Charger - On Spellhit - Give Quest Credit'),
(@HARDKNUCKLE,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hardknuckle Charger - On Link - Despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@WARRIOR;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@WARRIOR;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@WARRIOR;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@WARRIOR,0,0,0,0,0,100,0,2000,6000,4000,7000,11,@FLIPATTACK,1,0,0,0,0,2,0,0,0,0,0,0,0,'Mistwhisper Warrior - IC - Cast Flip Arrack'),
(@WARRIOR,0,1,2,8,0,100,1,@SPELL,0,0,0,33,@CREDIT3,0,0,0,0,0,7,0,0,0,0,0,0,0,'Mistwhisper Warrior - On Spellhit - Give Quest Credit'),
(@WARRIOR,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mistwhisper Warrior - On Link - Despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ORACLE;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ORACLE;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ORACLE;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ORACLE,0,0,0,0,0,100,0,4000,7000,11000,19000,11,54921,1,0,0,0,0,1,0,0,0,0,0,0,0,'Mistwhisper Oracle - IC - Cast Lightning Cloud'),
(@ORACLE,0,1,2,8,0,100,1,@SPELL,0,0,0,33,@CREDIT3,0,0,0,0,0,7,0,0,0,0,0,0,0,'Mistwhisper Oracle - On Spellhit - Give Quest Credit'),
(@ORACLE,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mistwhisper Oracle - On Link - Despawn');
DELETE FROM `creature_text` WHERE `entry` IN (27986, 28047, 28568);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(27986, 0, 0, 'Aye, I''ll try it.', 12, 0, 100, 273, 0, 0, 'Hemet Nesingwary'),
(27986, 1, 0, 'That''s exactly what I needed!', 12, 0, 100, 5, 0, 0, 'Hemet Nesingwary'),
(27986, 2, 0, 'It''s got my vote! That''ll put hair on your chest like nothing else will.', 12, 0, 100, 1, 0, 0, 'Hemet Nesingwary'),
(27986, 3, 0, 'What a fight you missed, Dorian! It was one for the ages!', 12, 0, 100, 5, 0, 0, 'Hemet Nesingwary'),
(27986, 4, 0, 'There we were, riding into battle at full speed on the back of Stampy...', 12, 0, 100, 5, 0, 0, 'Hemet Nesingwary'),

(27986, 5, 0, 'Well, lad, you can start by readin'' The Green Hills of Stranglethorn. Then, maybe you can join me on one of my safaris. What do you say?', 12, 0, 100, 0, 0, 0, 'Hemet Nesingwary'),

(28047, 0, 0, 'I''m always up for something of Grimbooze''s.', 12, 0, 100, 273, 0, 0, 'Hadrius Harlowe'),
(28047, 1, 0, 'Well, so far, it tastes like something my wife would drink...', 12, 0, 100, 5, 0, 0, 'Hadrius Harlowe'),
(28047, 2, 0, 'Now, there''s the kick I''ve come to expect from Grimbooze''s drinks! I like it!', 12, 0, 100, 5, 0, 0, 'Hadrius Harlowe'),

(28568, 0, 0, 'Sure!', 12, 0, 100, 273, 0, 0, 'Tamara Wobblesprocket'),
(28568, 1, 0, 'Oh my...', 12, 0, 100, 0, 0, 0, 'Tamara Wobblesprocket'),
(28568, 2, 0, 'Tastes like I''m drinking... engine degreaser!', 12, 0, 100, 1, 0, 0, 'Tamara Wobblesprocket');
-- To Rule The Skies (23061) & Onyx Scales
SET @OBSIDIA        := 23282;
SET @RIVENDARK      := 23061;
SET @FURYWING       := 23261;
SET @INSIDION       := 23281;
SET @APEXIS_SHARD   := 32569;
SET @OBSIDIA_EGG    := 185932;
SET @FURYWING_EGG   := 185937;
SET @INSIDION_EGG   := 185938;
SET @RIVENDARK_EGG  := 185936;

UPDATE `creature_template` SET `InhabitType`=7, `AIName`= 'SmartAI' WHERE `entry` IN (@OBSIDIA,@RIVENDARK,@FURYWING,@INSIDION);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (@OBSIDIA_EGG,@FURYWING_EGG,@INSIDION_EGG,@RIVENDARK_EGG);
UPDATE `creature_template_addon` SET `bytes1`=33554432 WHERE `entry` IN (@OBSIDIA,@RIVENDARK,@FURYWING,@INSIDION);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@OBSIDIA_EGG AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@OBSIDIA_EGG,1,0,1,62,0,100,0,8685,0,0,0,57,@APEXIS_SHARD,35,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select -Remove Item - Player'),
(@OBSIDIA_EGG,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Link - Close gossip'),
(@OBSIDIA_EGG,1,2,0,61,0,100,0,0,0,0,0,12,@OBSIDIA,6,30000,0,0,0,8,0,0,0,2421.336, 6968.062, 391.037,0,'On Script - Summon Obsidia - Location');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@FURYWING_EGG AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@FURYWING_EGG,1,0,1,62,0,100,0,8690,0,0,0,57,@APEXIS_SHARD,35,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Remove Item - Player'),
(@FURYWING_EGG,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Link - Close gossip'),
(@FURYWING_EGG,1,2,0,61,0,100,0,0,0,0,0,12,@FURYWING,6,30000,0,0,0,8,0,0,0,3845.314, 5220.040, 295.412,0,'On Script - Summon Furywing - Location');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@INSIDION_EGG AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@INSIDION_EGG,1,0,1,62,0,100,0,8691,0,0,0,57,@APEXIS_SHARD,35,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Remove Item - Player'),
(@INSIDION_EGG,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Link - Close gossip'),
(@INSIDION_EGG,1,2,0,61,0,100,0,0,0,0,0,12,@INSIDION,6,30000,0,0,0,8,0,0,0,4176.496, 5452.214, 291.923,0,'On Script - Summon Insidion - Location');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@RIVENDARK_EGG AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RIVENDARK_EGG,1,0,1,62,0,100,0,8689,0,0,0,57,@APEXIS_SHARD,35,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Remove Item - Player'),
(@RIVENDARK_EGG,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Link - Close gossip'),
(@RIVENDARK_EGG,1,2,0,61,0,100,0,0,0,0,0,12,@RIVENDARK,6,30000,0,0,0,8,0,0,0,2060.603, 7418.534, 391.098,0,'On Script - Summon Rivendark - Location');

-- Obsidia SPAWN:2421.336, 6968.062, 391.037 FLY: 2426.8,7001.64,367.572
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@OBSIDIA,@RIVENDARK,@FURYWING,@INSIDION) AND`source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OBSIDIA, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 3000, 9000, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - In combat - Cast Flame Breath'),
(@OBSIDIA, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 2000, 6000, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - In combat - Cast Cleave '),
(@OBSIDIA, 0, 2, 0, 0, 0, 100, 0, 15000, 16000, 15000, 16000, 11, 40717, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - In combat - Cast Hellfire'),
(@OBSIDIA, 0, 3, 0, 0, 0, 100, 0, 13000, 13500, 13000, 13500, 11, 40032, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - In combat - Cast Fiery Breath '),
(@OBSIDIA, 0, 4, 0, 0, 0, 100, 0, 18000, 19000, 18000, 19000, 11, 36922, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - In combat - Cast Bellowing Roar'),
(@OBSIDIA, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 2426.8, 7001.64, 367.572, 0, 'Obsidia - On Spawn - Move to Pos');

-- Rivendark 2060.603, 7418.534, 391.098 FLY: 2064.69,7372.69,371.159
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@RIVENDARK, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 3000, 9000, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Cast Flame Breath'),
(@RIVENDARK, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 2000, 6000, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Cast Cleave '),
(@RIVENDARK, 0, 2, 0, 0, 0, 100, 0, 7000, 12000, 7000, 12000, 11, 41988, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Cast Corruption'),
(@RIVENDARK, 0, 3, 0, 0, 0, 100, 0, 13000, 13500, 13000, 13500, 11, 40032, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Cast Fiery Breath '),
(@RIVENDARK, 0, 4, 0, 0, 0, 100, 0, 18000, 19000, 18000, 19000, 11, 36922, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Cast Bellowing Roar'),
(@RIVENDARK, 0, 5, 0, 0, 0, 100, 0, 5000, 6000, 5000, 6000, 11, 15847, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Rivendark - In combat - Tail Swipe'),
(@RIVENDARK, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 2064.69, 7372.69, 371.159, 0, 'Rivendark- On Spawn - Move to Pos');
-- Furywing 3845.314, 5220.040, 295.412 FLY: 3891.27,5227.05,270.094
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@FURYWING, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 3000, 9000, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Cast Flame Breath'),
(@FURYWING, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 2000, 6000, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Cast Cleave '),
(@FURYWING, 0, 2, 0, 0, 0, 100, 0, 10000, 16000, 10000, 16000, 11, 41572, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Cast Wing Buffet'),
(@FURYWING, 0, 3, 0, 0, 0, 100, 0, 13000, 13500, 13000, 13500, 11, 40032, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Cast Fiery Breath '),
(@FURYWING, 0, 4, 0, 0, 0, 100, 0, 18000, 19000, 18000, 19000, 11, 36922, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Cast Bellowing Roar'),
(@FURYWING, 0, 5, 0, 0, 0, 100, 0, 5000, 6000, 5000, 6000, 11, 15847, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Furywing - In combat - Tail Swipe'),
(@FURYWING, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3891.27, 5227.05, 270.094, 0, 'Furywing - On Spawn - Move to Pos');
-- Insidion 4176.496, 5452.214, 291.923 FLY: 4143.16,5441.75,274.503
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INSIDION, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 3000, 9000, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Insidion - In combat - Cast Flame Breath'),
(@INSIDION, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 2000, 6000, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Insidion - In combat - Cast Cleave '),
(@INSIDION, 0, 2, 0, 0, 0, 100, 0, 10000, 16000, 10000, 16000, 11, 40719, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Insidion - In combat - Cast Flame Buffet'),
(@INSIDION, 0, 3, 0, 0, 0, 100, 0, 13000, 13500, 13000, 13500, 11, 40032, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Insidion - In combat - Cast Fiery Breath '),
(@INSIDION, 0, 4, 0, 0, 0, 100, 0, 18000, 19000, 18000, 19000, 11, 36922, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Insidion - In combat - Cast Bellowing Roar'),
(@INSIDION, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 4143.16, 5441.75, 274.503, 0, 'Insidion - On Spawn - Move to Pos');
-- Vile Like Fire! (13071)

SET @NPC_DRAKE            := 30272; -- Njorndar Proto-Drake (not mount)
SET @NPC_DRAKE_MOUNT      := 30564; -- Njorndar Proto-Drake
SET @NPC_FIRE_BUNNY       := 30599; -- Vile Like Fire! Fire Bunny
SET @NPC_CREDIT           := 30576; -- Vile Like Fire! Kill Credit Bunny
SET @SPELL_MOUNT          := 57401; -- Njorndar Proto-Drake
SET @SPELL_STRAFE         := 7769; -- Strafe Jotunheim Building
SET @AURA_OUT_OF_AREA     := 57404; -- Out of Jotunheim! (mount out of area)
SET @SPELL_SPREAD_FIRE    := 57469; -- Vile Like Fire!: Spread the Fire
SET @SPELL_FIRE           := 7448; -- Vile Like Fire!: Fire

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@NPC_DRAKE;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@NPC_DRAKE,@SPELL_MOUNT,1,0);

UPDATE `creature_template` SET `npcflag`=16777216,`faction_A`=190,`faction_H`=190 WHERE `entry`=@NPC_DRAKE;
UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=80,`maxlevel`=80,`exp`=2,`unit_flags`=8,`HoverHeight`=2.25,`InhabitType`=4,`spell1`=57493,`spell3`=7769 WHERE `entry`=@NPC_DRAKE_MOUNT;

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_DRAKE_MOUNT;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@NPC_DRAKE_MOUNT,0,0,50331648,1,0,'57403'); -- 57403: Flight

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@SPELL_STRAFE,@SPELL_SPREAD_FIRE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_STRAFE,0,0,31,0,3,@NPC_CREDIT,0,0,0,'','Strafe Jotunheim Building targets Kill Credit Bunny'),
(13,1,@SPELL_SPREAD_FIRE,0,0,31,0,3,@NPC_CREDIT,0,0,0,'','Spread the Fire targets Kill Credit Bunny'),
(13,1,@SPELL_SPREAD_FIRE,0,1,31,0,3,@NPC_FIRE_BUNNY,0,0,0,'','Spread the Fire targets Kill Credit Bunny');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_SPREAD_FIRE;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_SPREAD_FIRE,@SPELL_FIRE,1,'Spread Fire triggers Fire');

UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=@NPC_FIRE_BUNNY;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@NPC_CREDIT;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_DRAKE_MOUNT;

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_CREDIT,@NPC_DRAKE_MOUNT);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_CREDIT,0,0,0,23,0,100,0,@SPELL_FIRE,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On no aura - Set phase 1'),
(@NPC_CREDIT,0,1,2,8,1,100,0,@SPELL_STRAFE,0,0,0,11,@SPELL_SPREAD_FIRE,0,0,0,0,0,1,0,0,0,0,0,0,0,'On spellhit - Cast Spread Fire'),
(@NPC_CREDIT,0,2,3,61,1,100,0,0,0,0,0,45,0,1,0,0,0,0,7,0,0,0,0,0,0,0,'On link - Set data'),
(@NPC_CREDIT,0,3,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set phase 1'),
--
(@NPC_DRAKE_MOUNT,0,0,0,38,0,100,0,0,1,0,0,33,@NPC_CREDIT,0,0,0,0,0,23,0,0,0,0,0,0,0,'On Data - Give killcredit owner');

DELETE FROM `conditions` WHERE `SourceEntry` = 57402;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 1, 57402, 0, 0, 23, 0, 4526, 0, 0, 0, 0, 0, '', 'Dismount player when not in intended zone');
-- Fix I've Got a Flying Machine
-- Steel Gate Chief Archaeologist SAI & Text & Condition
SET @ENTRY			 := 24399;
SET @ENTRY1			:= 24418;
SET @ENTRY2			:= 24439;
SET @ENTRY3			:= 24438;
SET @STALKER		 := 105997;
SET @CGUID			 := 142705;
SET @MENUID			:= 8954;
SET @OPTION			:= 0;

UPDATE `creature_template` SET  `unit_flags`=16777216, `InhabitType`=5, `spell1`=44009, `spell2`=43770, `spell3`=43799, `spell4`=43769, `spell5`=47769 WHERE `entry`=@ENTRY1;
DELETE FROM `creature` WHERE `id`=24439;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@CGUID+0, 24439, 571, 1, 1, 24780, 0, 2088.714, -3263.196, 82.50323, 0.2792527, 120, 0, 0, 42, 0, 0, 0, 0, 0), -- Sack of Relics (Area: 0)
(@CGUID+1, 24439, 571, 1, 1, 24780, 0, 2047.712, -3236.201, 62.82506, 3.682645, 120, 0, 0, 42, 0, 0, 0, 0, 0), -- Sack of Relics (Area: Steel Gate)
(@CGUID+2, 24439, 571, 1, 1, 24780, 0, 2017.764, -3243.003, 74.95174, 3.246312, 120, 0, 0, 42, 0, 0, 0, 0, 0), -- Sack of Relics (Area: Steel Gate)
(@CGUID+3, 24439, 571, 1, 1, 24780, 0, 2068.706, -3318.71, 98.2312, 5.72468, 120, 0, 0, 42, 0, 0, 0, 0, 0), -- Sack of Relics (Area: Steel Gate)
(@CGUID+4, 24439, 571, 1, 1, 24780, 0, 1996.727, -3323.912, 99.77941, 5.532694, 120, 0, 0, 42, 0, 0, 0, 0, 0), -- Sack of Relics (Area: Steel Gate)
(@CGUID+5, 24439, 571, 1, 1, 24780, 0, 2068.706, -3318.71, 98.2312, 5.72468, 120, 0, 0, 42, 0, 0, 0, 0, 0); -- Sack of Relics (Area: 0)

DELETE FROM `creature_template_addon` WHERE `entry`=24418;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(24418, 0, 0, 0, 0x1, 0x1, '43775 43889'); -- Steel Gate Flying Machine - Flight Drop Off Buff

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@MENUID,@OPTION,0,0,11,45973,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - Cast spell'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On Link - Close gossip'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,43767,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On Link - Cast Invoker'),
(@ENTRY,0,3,4,19,0,100,1,11390,0,0,0,11,45973,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On Quest Accept - Cast spell'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,11,43767,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On Link - Cast Invoker'),
(@ENTRY,0,5,0,19,0,100,0,11390,0,0,0,12,@ENTRY3,3,120000,0,0,0,8,0,0,0,1972.773,-3265.381,134.719,0, 'Steel Gate Chief Archaeologist - On Link - Cast Invoker');

UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `AIName`= 'SmartAI', `type_flags`=1048576 WHERE `entry`=@ENTRY3;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY3; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY3,0,0,0,54,0,100,0,0,0,0,0,11,43890,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grapple Target - Just Summoned - Cast Invisibility on self');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`= @ENTRY1;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@ENTRY1, 43768, 1, 0); 

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@MENUID AND `id`=@OPTION;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@MENUID,@OPTION,0,'Sir, I need another flying machine...',1,1,0,0,0,0,'');

-- Gossip conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@MENUID AND `SourceEntry`=@OPTION;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@MENUID,@OPTION,0,9,11390,0,0,0,'','Show gossip option 0 if player has quest I''ve got a Flying Machine');

DELETE FROM `conditions` WHERE `SourceEntry`=@ENTRY1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(16, 0, @ENTRY1, 0, 23, 3999, 0, 0, 0, '', 'Dismount player when not in intended zone');
-- Condition for Grappling Hook spell(43770)
DELETE FROM `conditions` WHERE `SourceEntry`=43770;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13, 1, 43770, 0, 31, 3, 24439, 0, 0, '', 'Spell 43770(Grappling Hook) targets npc 24439(Sack of Relics)');
-- Spell Conditions
DELETE FROM `conditions` WHERE `SourceEntry`IN (43891,43892,43789);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13, 1, 43892, 0, 31, 3, 24439, 0, 0, '', 'Spell 43892 targets npc 24439'),
(13, 1, 43891, 0, 29, @ENTRY2, 1, 0, 0, '', 'Spell 43892 targets npc 24439'),
(13, 1, 43789, 0, 31, 3, 24439, 0, 0, '', 'Spell 43892 targets npc 24439');

-- Sack of Relics SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY2 AND `source_type`=0;
UPDATE `creature_template` SET AIName='SmartAI' WHERE entry=@ENTRY2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY2,0,0,0,8,0,100,0,43770,0,0,0,11,46598,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Sack of Relics - On Link - Mount Sack to vehicle'),
(@ENTRY2,0,1,2,8,0,100,1,43892,0,0,0,11,46598,0,0,0,0,0,10,105997,15214,0,0.0,0.0,0.0,0.0,' Sack of Relics - Remove Vehicle - In range'),
(@ENTRY2,0,2,3,61,0,100,1,0,0,0,0,11,36553,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Sack of Relics - On Link - Cast pet stay(36553)'),
(@ENTRY2,0,3,4,61,0,100,1,0,0,0,0,33,24439,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,'Sack of Relics - On Link - Quest Credit'),
(@ENTRY2,0,4,0,61,0,100,1,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Sack of Relics - On Link - Despawn');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=43770;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(43770,43789,1,'Trigger grip beam');

DELETE FROM `smart_scripts` WHERE `entryorguid`=-@STALKER AND `source_type`=0;
UPDATE `creature_template` SET AIName='SmartAI' WHERE entry=15214;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-@STALKER,0,0,0,1,0,100,0,0,0,0,0,11,43892,0,0,0,0,0,11,@ENTRY2,10,0,0.0,0.0,0.0,0.0,'Invisible Stalker - OOC - Cast Spell');
UPDATE `conditions` SET `SourceTypeOrReferenceId`=17, `SourceGroup`=0 WHERE  `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=43789 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=24439 AND `ConditionValue3`=0;
UPDATE `conditions` SET `SourceTypeOrReferenceId`=17, `SourceGroup`=0 WHERE  `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=43892 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=24439 AND `ConditionValue3`=0;
UPDATE `conditions` SET `SourceTypeOrReferenceId`=17 WHERE  `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=43891 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=24439 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
UPDATE `conditions` SET `SourceGroup`=0 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=57402;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (43891,43789);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43892;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 43891, 0, 0, 29, 0, 24439, 1, 0, 0, 0, 0, '', 'Spell Drop-Off Periodic targets npc Sack of Relics'),
(17, 0, 43789, 0, 0, 31, 0, 3, 24439, 0, 0, 0, 0, '', 'Spell Grappling Beam targets npc Sack of Relics'),
(13, 1, 43892, 0, 0, 31, 0, 3, 24439, 0, 0, 0, 0, '', 'Spell Steel Gate Drop Off Check targets npc Sack of Relics');
-- Sleeping Giants A:11432 H:11433
SET @ENTRY    := 24669; -- Dormant Vrykul
SET @ITEM     := 34083; -- Awakening Rod

DELETE FROM `conditions` WHERE `SourceEntry`=@ITEM;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,@ITEM,0,24,1,@ENTRY,0,0,'','Awakening Rod target only Dormant Vrykul');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Interference with the wakening ritual causes the vrykul to die.',16,0,100,0,0,0,'Dormant Vrykul emote text'),
(@ENTRY,0,1,'The vrykul dies from being awakened improperly.',16,0,100,0,0,0,'Dormant Vrykul emote text'),
(@ENTRY,0,2,'The incorrect application of the awakening rod causes the dormant vrykul to expire.',16,0,100,0,0,0,'Dormant Vrykul emote text');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100) AND `source_type` IN (0,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,44261,0,0,0,5,53,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Dormant Vrykul - On Spellhit - Emote visual - Self'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,' Dormant Vrykul - On Link - Start Action Script'),
--
(@ENTRY*100,9,0,0,0,0,100,0,300,300,300,300,1,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,' Dormant Vrykul - On Script - Emote text  Invoker'),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,2000,2000,33,24669,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,' Dormant Vrykul - On Script - Kill credit Invoker'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,' Dormant Vrykul - On Script - Die'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,41,4500,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Dormant Vrykul - On Script  Despawn');
-- Proper condition for spell
DELETE FROM `conditions` WHERE `SourceEntry`=34083; 
DELETE FROM `conditions` WHERE `SourceEntry`=50165; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 50165, 0, 0, 31, 1, 3, 24669, 0, 0, 173, 0, '', 'Awakening Rod target limit to Dormant Vrykul');
UPDATE `smart_scripts` SET `target_type`=23 WHERE `entryorguid`=30468 AND `source_type`=0 AND `id`=2 AND `link`=0;
-- Cannot Reproduce (13320,13355)
-- Retest Now (13321,13322,13356,13357)

SET @NPC_BLUE_KC      := 32242; -- Blue Sample KC Bunny
SET @NPC_GREEN_KC     := 32244; -- Green Sample KC Bunny
SET @NPC_DARK_KC      := 32245; -- Dark Sample KC Bunny
SET @SPELL_COLLECT    := 60256; -- Collect Sample
SET @SPELL_WRITHING   := 60310; -- Throw Writhing Mass
SET @NPC_MASS_KC      := 32266; -- Writhing Mass KC Bunny
SET @AURA_DISCERNMENT := 60311; -- Dark Discernment
SET @ITEM_ESSENCE     := 44301; -- Tainted Essence

UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC);
UPDATE `creature` SET `MovementType`=0 WHERE `id` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_BLUE_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_BLUE_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blue Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_BLUE_KC,0,1,0,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blue Sample KC Bunny - On spellhit - Killed moster credit"),
--
(@NPC_GREEN_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_GREEN_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Green Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_GREEN_KC,0,1,0,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Green Sample KC Bunny - On spellhit - Killed moster credit"),
--
(@NPC_DARK_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_DARK_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dark Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_DARK_KC,0,1,0,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dark Sample KC Bunny - On spellhit - Killed moster credit");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (32290,32289);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (32290,32289) AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(32289, 0, 0, 0, 0, 0, 100, 0, 0, 0, 7000, 9000, 11, 34359, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Damned Apothecary - IC - Cast Fire Breath Potion (Self)'),
(32289, 0, 1, 0, 2, 0, 100, 0, 30, 50, 60000, 60000, 11, 17534, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Damned Apothecary - On between 30 and 50% HP - Cast Healing Potion (Self)'),
--
(32290, 0, 0, 0, 0, 0, 100, 0, 0, 2000, 3000, 10000, 11, 60846, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cultist Alchemist - IC - Cast Corrosive Vial');


DELETE FROM `conditions` WHERE `SourceEntry` IN (@SPELL_COLLECT,@SPELL_WRITHING) AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` WHERE `SourceEntry`=@ITEM_ESSENCE AND `SourceTypeOrReferenceId`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_COLLECT,0,0,31,0,3,@NPC_BLUE_KC,0,0,0,'','Spell target creature'),
(13,1,@SPELL_COLLECT,0,1,31,0,3,@NPC_GREEN_KC,0,0,0,'','Spell target creature'),
(13,1,@SPELL_COLLECT,0,2,31,0,3,@NPC_DARK_KC,0,0,0,'','Spell target creature'),
--
(13,1,@SPELL_WRITHING,0,0,31,0,3,@NPC_BLUE_KC,0,0,0,'','Spell target creature'),
(13,1,@SPELL_WRITHING,0,1,31,0,3,@NPC_GREEN_KC,0,0,0,'','Spell target creature'),
(13,1,@SPELL_WRITHING,0,2,31,0,3,@NPC_DARK_KC,0,0,0,'','Spell target creature'),

-- Tainted Essence drops only if player has aura
(1,32236,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32259,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32262,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32268,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32276,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32279,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32289,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32290,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura'),
(1,32297,@ITEM_ESSENCE,0,0,1,0,@AURA_DISCERNMENT,0,0,0,0,'','Loot requires aura');
UPDATE `creature` SET `spawndist`=0 WHERE `id` IN (32242,32244,32245);
SET @NPC_BLUE_KC      := 32242; -- Blue Sample KC Bunny
SET @NPC_GREEN_KC     := 32244; -- Green Sample KC Bunny
SET @NPC_DARK_KC      := 32245; -- Dark Sample KC Bunny
SET @SPELL_COLLECT    := 60256; -- Collect Sample
SET @SPELL_WRITHING   := 60310; -- Throw Writhing Mass
SET @NPC_MASS_KC      := 32266; -- Writhing Mass KC Bunny
SET @ITEM_ESSENCE     := 44301; -- Tainted Essence

UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC);
UPDATE `creature` SET `MovementType`=0 WHERE `id` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_BLUE_KC,@NPC_GREEN_KC,@NPC_DARK_KC) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_BLUE_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_BLUE_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blue Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_BLUE_KC,0,1,2,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blue Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_BLUE_KC,0,2,0,61,0,100,0,0,0,0,0,11,60505,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blue Sample KC Bunny - On Link - Cast Fury of the Fallen Cultist to Invoker"),
--
(@NPC_GREEN_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_GREEN_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Green Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_GREEN_KC,0,1,2,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Green Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_GREEN_KC,0,2,0,61,0,100,0,0,0,0,0,11,60506,0,0,0,0,0,7,0,0,0,0,0,0,0,"Green Sample KC Bunny - On Link - Cast Blood of the Fallen Cultist to Invoker"),
--
(@NPC_DARK_KC,0,0,0,8,0,100,0,@SPELL_COLLECT,0,0,0,33,@NPC_DARK_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dark Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_DARK_KC,0,1,2,8,0,100,0,@SPELL_WRITHING,0,0,0,33,@NPC_MASS_KC,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dark Sample KC Bunny - On spellhit - Killed moster credit"),
(@NPC_DARK_KC,0,2,0,61,0,100,0,0,0,0,0,11,60504,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dark Sample KC Bunny - On Link - Cast Agony of the Fallen Cultist to Invoker");
-- Out of Body Experience (12327)
SET @CGUID                  = 142712;   -- 5 required
SET @ARUGAL                 = 27620;    -- Shade of Arugal
SET @VALANAR                = 27619;    -- Valanar
SET @THERALDIS              = 27624;    -- Theraldis
SET @KELESETH               = 27618;    -- Keleseth
SET @ATHERANN               = 27616;    -- Atherann
SET @SPELL_OOBE             = 49097;    -- Out of Body Experience Invisibility + Detection + Teleport Silverpine
SET @SPELL_TELEPORT_BACK    = 49098;    -- Grizzly Hills - Quest - Arugal Teleport Back
SET @SPELL_EVENT_CHANNEL    = 49128;    -- Arugal Event Channel
SET @SPELL_CREDIT           = 49131;    -- Out of Body Experience Quest Credit
SET @TRIGGER                =  4990;    -- Areatrigger

DELETE FROM `creature` WHERE `id` IN (@ARUGAL,@VALANAR,@THERALDIS,@KELESETH,@ATHERANN);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`,  `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+0,@ARUGAL,0,1,1,0,0,-463.526,1499.51,20.4721,1.55035,300,0,0,10635,0,0,0,0,0),
(@CGUID+1,@ATHERANN,0,1,1,0,0,-458.712,1504.8,16.9815,3.93558,300,0,0,29820,0,0,0,0,0),
(@CGUID+2,@KELESETH,0,1,1,0,0,-471.433,1500.51,18.4603,0.024287,300,0,0,28830,0,0,0,0,0),
(@CGUID+3,@VALANAR,0,1,1,0,0,-462.81,1491.7,17.2292,1.65734,300,0,0,96100,3309,0,0,0,0),
(@CGUID+4,@THERALDIS,0,1,1,0,0,-472.925,1495.71,18.3354,0.577431,300,0,0,28830,0,0,0,0,0);

-- Also serves as a fail safe, if you accidently remove the aura you will be prompted to a credit.
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= -@SPELL_OOBE;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-@SPELL_OOBE,@SPELL_TELEPORT_BACK,0,'When Out of Body Experience expires cast Arugal Teleport Back');

DELETE FROM `spell_target_position` WHERE `id` IN (@SPELL_OOBE,@SPELL_TELEPORT_BACK);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(@SPELL_OOBE,1,0,-481.041992,1492.949951,19.932100,0), -- Silverpine Forrest
(@SPELL_TELEPORT_BACK,1,571,3842.16,-3428.43,293.105,1.8776);   -- Grizzly Hills

DELETE FROM `creature_text` WHERE `entry` IN (@VALANAR,@THERALDIS);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@VALANAR,0,0,'Rise, Arugal! The power of the Lich King commands you!',12,0,100,0,0,0,'Prince Valanar - Silverpine'),
(@THERALDIS,0,0,'Yes... he shall suit our needs perfectly. Have him sent to Solstice Village when you''re ready. Arthas will not be pleased if we fall behind schedule.',12,0,100,0,0,0,'Prince Theraldis - Silverpine');

-- Detection Auras
DELETE FROM `creature_template_addon` WHERE `entry` IN (@ARUGAL,@VALANAR,@THERALDIS,@KELESETH,@ATHERANN);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ARUGAL,0,0,0,0,0,'49130'),
(@ATHERANN,0,0,0,0,0,'49130'),
(@KELESETH,0,0,0,0,0,'49130'),
(@VALANAR,0,0,0,0,0,'49130'),
(@THERALDIS,0,10721,0,0,0,'49130');

DELETE FROM `areatrigger_scripts` WHERE `entry`=@TRIGGER;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (@TRIGGER,'SmartTrigger');

UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `AIName`='SmartAI' ,`unit_flags`=`unit_flags`|2, `InhabitType` = IF (`entry` =@ARUGAL, 4, `InhabitType`) WHERE `entry` IN (@ARUGAL,@VALANAR,@THERALDIS,@KELESETH,@ATHERANN);

DELETE FROM `smart_scripts` WHERE `source_type` = 2 AND `entryorguid`= @TRIGGER;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (@ARUGAL,@VALANAR,@THERALDIS,@KELESETH,@ATHERANN);
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` =@ARUGAL*100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@TRIGGER,2,0,0,46,0,100,0,@TRIGGER,0,0,0,45,0,1,0,0,0,0,10,@CGUID+0,0,0,0,0,0,0,'On Trigger - Set data 0 1 Shade of Arugal'),
--
(@ARUGAL,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shade of Arugal - on Spawn - React State Passive'),
(@ARUGAL,0,1,0,38,0,100,0,0,1,0,0,80,@ARUGAL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shade of Arugal - on Data set 0 1 - Run script'),
--
(@VALANAR,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Valanar - on Spawn - react Passive'),
(@VALANAR,0,1,0,1,0,100,0,0,0,0,0,11,@SPELL_EVENT_CHANNEL,2,0,0,0,0,11,@ARUGAL,20,0,0,0,0,0,'Valanar - OOC - cast Arugal Event Channel'),
(@VALANAR,0,2,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Valanar - on Data set 0 1 - Say text'),
--
(@KELESETH,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keleseth - on Spawn - react Passive'),
(@KELESETH,0,1,0,1,0,100,0,0,0,0,0,11,@SPELL_EVENT_CHANNEL,2,0,0,0,0,11,@ARUGAL,20,0,0,0,0,0,'Keleseth - OOC - cast Arugal Event Channel'),
--
(@ATHERANN,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Atherann - on Spawn - react Passive'),
(@ATHERANN,0,1,0,1,0,100,0,0,0,0,0,11,@SPELL_EVENT_CHANNEL,2,0,0,0,0,11,@ARUGAL,20,0,0,0,0,0,'Atherann - OOC - cast Arugal Event Channel'),
--
(@THERALDIS,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Theraldis - on Spawn - react Passive'),
(@THERALDIS,0,1,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Theraldis - on Data set 0 1 - Say text'),
--
(@ARUGAL*100,9,0,0,0,0,100,1,5000,5000,0,0,45,0,1,0,0,0,0,19,@VALANAR,20,0,0,0,0,0,'On script - set Data 0 1 Prince Valanar'), -- prevent multiple events during an event
(@ARUGAL*100,9,1,0,0,0,100,0,8000,8000,0,0,45,0,1,0,0,0,0,19,@THERALDIS,20,0,0,0,0,0,'On script - set Data 0 1 Prince Theraldis'),
(@ARUGAL*100,9,2,0,0,0,100,0,0,0,0,0,11,@SPELL_CREDIT,2,0,0,0,0,17,0,30,0,0,0,0,0,'On script - cast Out of Body Experience Quest Credit'),
(@ARUGAL*100,9,3,0,0,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On script - call script reset');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_EVENT_CHANNEL;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@TRIGGER;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,@SPELL_EVENT_CHANNEL,0,0,31,0,3,@ARUGAL,0,0,0,'','Arugal Event Channel targets Shade of Arugal'),
(22,1,@TRIGGER,2,0,1,0,@SPELL_OOBE,0,0,0,0,'','SAI areatrigger 4990 triggers only if player has aura Out of Body Experience'),
(22,1,@TRIGGER,2,0,9,0,12327,0,0,0,0,'','SAI areatrigger 4990 triggers only if player has taken Quest Out of Body Experience');
-- Ribbly Screwspigot 9543
SET @GOSSIP			:= 1970;
SET @RIBBLY			:= 9543;
SET @CRONY			:= 10043;

DELETE FROM `creature_equip_template` WHERE `entry` =@RIBBLY;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@RIBBLY, 5280, 0, 0); -- Ribbly Screwspigot

DELETE FROM `creature_template_addon` WHERE `entry` =@RIBBLY;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@RIBBLY, 0, 0x0, 0x1, ''); -- Ribbly Screwspigot

DELETE FROM `gossip_menu` WHERE `entry` =@GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP, 2643);

DELETE FROM `gossip_menu_option` WHERE `menu_id` =@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP,0,0, 'You''re good for nothing, Ribbly. It''s time to pay for your wickedness!.', 1, 1, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `AIName`= 'SmartAI',`gossip_menu_id`=@GOSSIP ,`npcflag`=1, `speed_walk`=1.142857, `speed_run`=1, `rangeattacktime`=2000, `unit_flags`=32832, `dynamicflags`=0 WHERE `entry`=@RIBBLY;
DELETE FROM `smart_scripts` WHERE `entryorguid` =@RIBBLY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RIBBLY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 2, 735, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - On Reset - Set Default Faction'),
(@RIBBLY, 0, 1, 2, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - On Gossip Select - Close Menu'),
(@RIBBLY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 2, 736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Linked with Previous Event - Set Hostile'),
(@RIBBLY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 5000, 0, 0, 0, 11, @CRONY, 10, 100, 0, 0, 0, 0, 'Ribbly Screwspigot - Linked with Previous Event - Send Data 1 1 to Ribblys Cronies'),
(@RIBBLY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Linked with Previous Event - Attack Invoker'),
(@RIBBLY, 0, 5, 0, 4 , 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - On Aggro - Say line 0'),
(@RIBBLY, 0, 6, 0, 0 , 0, 100, 0, 4000, 12000, 4000, 12000, 11, 12540, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - IC - Cast Gouge'),
(@RIBBLY, 0, 7, 0, 0 , 0, 100, 0, 5000, 14000, 5000, 14000, 11, 9080 , 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - IC - Cast Hamstring');

DELETE FROM `creature_text` WHERE `entry` =@RIBBLY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@RIBBLY, 0, 0, 'No! Get away from me! Help!', 12, 0, 100, 0, 0, 0, 'Ribbly Screwspigot');

UPDATE `creature_template` SET `AIName`= 'SmartAI',`unit_flags`=576 WHERE `entry`= @CRONY;
DELETE FROM `smart_scripts` WHERE `entryorguid` =@CRONY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@CRONY, 0, 0, 0, 25,  0, 100, 0, 0, 0, 0, 0, 2, 735, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - On Reset - Set Default Faction'),
(@CRONY, 0, 1, 2, 38,  0, 100, 0, 1, 1, 0, 0, 2, 736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - On Data Set 1 1 - Set Hostile'),
(@CRONY, 0, 2, 0, 61,  0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - Linked with Previous Event - Attack'),
(@CRONY, 0, 3, 0, 0,  0, 100, 0, 5000, 14000, 5000, 14000, 11, 15692, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - IC - Cast Eviscerate'),
(@CRONY, 0, 4, 0, 0,  0, 100, 0, 2000, 11000, 2000, 11000, 11, 15581, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - IC - Cast Sinister Strike'),
(@CRONY, 0, 5, 0, 0,  0, 100, 0, 8000, 18000, 8000, 18000, 11, 13298, 0, 0, 0, 0, 0, 2, 32, 0, 0, 0, 0, 0, 0, 'Ribblys Crony - IC - Cast Poison');
DELETE FROM `creature_equip_template` WHERE `entry` =9543;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(9543, 1, 5280, 0, 0);
UPDATE `instance_template` SET `script`='instance_auchenai_crypts' WHERE `map`=558;
UPDATE `instance_template` SET `script`='instance_mana_tombs' WHERE `map`=557; 

DELETE FROM `spell_script_names` WHERE `spell_id` IN (33923, 38796, 33666, 38795, 39365);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(33923, 'spell_murmur_sonic_boom'),
(38796, 'spell_murmur_sonic_boom'),
(33666, 'spell_murmur_sonic_boom_effect'),
(38795, 'spell_murmur_sonic_boom_effect'),
(39365, 'spell_murmur_thundering_storm');

DELETE FROM `creature_ai_scripts` WHERE `id`=1879605;
-- It Rolls Downhill (12673)
/*
-- Blight Geist
-- Emote ID: OneShotSpellCast (51)
-- Emote ID: OneShotAttack1H (36) -- WP 6174.282, -2017.246, 245.1156
*/
SET @TARGET         := 52247;   -- Target Crystal 
SET @CHARM          := 52252;   -- Charm Blight Geist
SET @CHARM_P        := 52244;   -- Charm Periodic
SET @EVIL_S         := 61456;   -- Evil Teleport
SET @GEIST          := 28750;   -- Blight Geist
SET @HARVEST        := 52245;   -- Harvest Blight Crystal
SET @CREDIT         := 52248;   -- Kill Credit - Blighted Geist
SET @BLIGHT1        := 190716;  -- Crystallized Blight
SET @BLIGHT2        := 190939;  -- Crystallized Blight
SET @BLIGHT3        := 190940;  -- Crystallized Blight
SET @RADIATION      := 52243;   -- Orange Radiation, Small

DELETE FROM `creature_text` WHERE `entry`=@GEIST;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@GEIST, 0, 1, 'Mphmm rmphhimm rrhumghph?', 12, 0, 100, 1, 0, 0, 'Blight Geist'),
(@GEIST, 0, 2, 'Mhrrumph rummrhum phurr!', 12, 0, 100, 1, 0, 0, 'Blight Geist');

DELETE FROM `creature_template_addon` WHERE `entry`=28750;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28750,0,0,1,0, '');

UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=@HARVEST WHERE `entry`=@GEIST;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@GEIST,@GEIST*100) AND `source_type`IN (0,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GEIST,0,0,1,8,0,100,0,@HARVEST,0,0,0,69,0,0,0,0,0,0,13,@BLIGHT1,5,30,0.0,0.0,0.0,0.0,'On Spellhit - Move to pos - Blight1'),
(@GEIST,0,1,0,61,0,100,0,0,0,0,0,80,@GEIST*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On Spellhit - Move to pos - Blight1'),
--
(@GEIST,0,2,3,8,0,100,0,@HARVEST,0,0,0,69,0,0,0,0,0,0,13,@BLIGHT2,5,30,0.0,0.0,0.0,0.0,'On Spellhit - Move to pos - Blight1'),
(@GEIST,0,3,0,61,0,100,0,0,0,0,0,80,@GEIST*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On Spellhit Move to pos - Blight2'),
--
(@GEIST,0,4,5,8,0,100,0,@HARVEST,0,0,0,69,0,0,0,0,0,0,13,@BLIGHT3,5,30,0.0,0.0,0.0,0.0,'On Spellhit - Move to pos - Blight1'),
(@GEIST,0,5,0,61,0,100,0,0,0,0,0,80,@GEIST*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On Spellhit Move to pos - Blight3'),
--
(@GEIST*100,9,0,0,0,0,100,0,4000,4000,4000,4000,11,@TARGET,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,' - On Scrip - '),
(@GEIST*100,9,1,0,0,0,100,0,4000,4000,4000,4000,11,@EVIL_S,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,' - On Scrip - '),
(@GEIST*100,9,2,0,0,0,100,1,2000,2000,2000,2000,11,@CREDIT,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,' - On Scrip - '),
(@GEIST*100,9,3,0,0,0,100,0,1000,1000,1000,1000,69,0,0,0,0,0,0,1,0,0,0,6174.282, -2017.246, 245.1156,0.0,'On move inform 0 Cast credit'),
(@GEIST*100,9,4,0,0,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On link - Despawn - Self'),
--
(@GEIST,0,6,0,8,0,100,0,@CHARM_P,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On Spellhit - Say Random'),
(@GEIST,0,7,0,8,0,100,0,@CHARM,0,0,0,11,@RADIATION,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'On Spellhit - Say Random');
--
DELETE FROM `conditions` WHERE `SourceEntry`=@GEIST;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @GEIST, 1, 0, 30, 1, @BLIGHT1, 1, 0, 1, 0, 0, '', 'Execute SAI 0 only if GObject is in range'),
(22, 3, @GEIST, 1, 0, 30, 1, @BLIGHT2, 1, 0, 1, 0, 0, '', 'Execute SAI 2 only if GObject is in range'),
(22, 4, @GEIST, 1, 0, 30, 1, @BLIGHT3, 1, 0, 1, 0, 0, '', 'Execute SAI 6 only if GObject is in range');
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Spellhit - Go to PoS GO' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Link - Start Action Script' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Spellhit - Go to PoS GO' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Link - Start Action Script' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Spellhit - Go to PoS GO' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=4 AND `link`=5;
UPDATE `smart_scripts` SET `comment`='Blight Geist - On Link - Start Action Script' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=5 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Spellhit - Say Random' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=6 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Spellhit - Add Aura Self' WHERE  `entryorguid`=28750 AND `source_type`=0 AND `id`=7 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Script - Cast Spell Target' WHERE  `entryorguid`=2875000 AND `source_type`=9 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Script - Cast Spell Evil Teleport' WHERE  `entryorguid`=2875000 AND `source_type`=9 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Script - Cast Credit' WHERE  `entryorguid`=2875000 AND `source_type`=9 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Script - Go to Teleport Pad' WHERE  `entryorguid`=2875000 AND `source_type`=9 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `comment`='Blight Geist  - On Script - Despawn' WHERE  `entryorguid`=2875000 AND `source_type`=9 AND `id`=4 AND `link`=0;
UPDATE `reference_loot_template` SET `groupid`=2 WHERE  `entry`=25019; -- Grand Warlock Nethekurse (Heroic)
UPDATE `reference_loot_template` SET `groupid`=2 WHERE  `entry`=25020; -- Warbringer O'mrogg (Heroic)

UPDATE `creature_loot_template` SET `groupid`=2 WHERE  `entry`=16809 AND `item`=25020;
UPDATE `creature_loot_template` SET `groupid`=2 WHERE  `entry`=16807 AND `item`=25019;

-- Zero Tolerance (12686) & Hazardous Materials, these are a 2 in 1 quest
SET @DARMUK    := 28793; -- Darmuk
SET @SERVANT   := 28802; -- Servant of Drakuru
SET @HAND      := 28805; -- Hand of Drakuru

/*
Reference to GO text 
-- Scourge Disguise Failing! Run for cover!
-- Scourge Disguise Failing! Find a safe place!
-- Scourge Disguise Failing! Hide quickly!
*/
-- Darmuk
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@DARMUK;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@DARMUK;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@DARMUK,0,0,0,0,0,100,0,7000,13000,12000,17000,11,54386,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darmuk - IC - Cast Darmuk''s Vigilance'),
(@DARMUK,0,1,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darmuk - On Aggro - Say1');

DELETE FROM `creature_text` WHERE `entry`=@DARMUK;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@DARMUK, 0, 1, 'Your disguise doesn''t fool me, fleshling! Your defeat will please Drakuru!', 12, 0, 100, 1, 0, 0, 'Darmuk');

-- Servant of Drakuru
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@SERVANT;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@SERVANT;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SERVANT,0,0,0,0,0,100,0,4000,4800,12000,14000,11,50361,0,0,0,0,0,2,0,0,0,0,0,0,0,'Servant of Drakuru - IC - Cast Rot Armor'),
(@SERVANT,0,1,0,29,0,100,1,0,0,0,0,36,@HAND,0,0,0,0,0,1,0,0,0,0,0,0,0,' Servant of Drakuru - On charm - Update entry Self');

-- Hand of Drakuru
UPDATE `creature_model_info` SET `bounding_radius`=1.24,`combat_reach`=4 WHERE `modelid`=26924;
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=52400,`spell2`=52401,`spell3`=52402, `minlevel`=75, `maxlevel`=75, `npcflag`=264, `mindmg`=194, `maxdmg`=283, `exp`=2, `attackpower`=432, `minrangedmg`=441, `maxrangedmg`=661 WHERE `entry`=@HAND;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@HAND;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HAND,0,0,0,16,0,100,1,52390,1,2000,2000,36,@SERVANT,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hand of Drakuru - On aura remove - Update entry');

-- Gameobject, relating to Hazardous Materials.
SET @OGUID = 9246;
DELETE FROM `gameobject` WHERE `id`=190720;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 190720, 571, 1, 1, 6242.536, -1959.009, 417.684, 0.4712385, 0, 0, 0, 1, 120, 255, 1), -- Harvested Blight Crystal (Area: 0)
(@OGUID+1, 190720, 571, 1, 1, 6255.469, -1972.384, 417.7136, 0.3316107, 0, 0, 0, 1, 120, 255, 1), -- Harvested Blight Crystal (Area: Reliquary of Pain)
(@OGUID+2, 190720, 571, 1, 1, 6245.086, -2010.295, 417.5486, 4.450591, 0, 0, 0, 1, 120, 255, 1), -- Harvested Blight Crystal (Area: Reliquary of Pain)
(@OGUID+3, 190720, 571, 1, 1, 6208.02, -2098.342, 417.5984, 0.6981314, 0, 0, 0, 1, 120, 255, 1), -- Harvested Blight Crystal (Area: Reliquary of Pain)
(@OGUID+4, 190720, 571, 1, 1, 6182.603, -2088.755, 417.549, 2.530723, 0, 0, 0, 1, 120, 255, 1); -- Harvested Blight Crystal (Area: Reliquary of Pain)
-- Sabotage (12676)
SET @ENTRY      := 28780; -- Explosive Charges Bunny
SET @GOB        := 190731; -- Scourgewagon
SET @DETONATE   := 52322; -- Detonate Charges
SET @EX1        := 52325; -- Explode Scourgewagon:Roller
SET @EX2        := 52329; -- Explode Scourgewagon:Frame
SET @EX3        := 52330; -- Explode Scourgewagon:Grill
SET @EX4        := 52332; -- Explode Scourgewagon:Wheel
SET @CREDIT     := 52346; -- Credit

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@DETONATE;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@DETONATE,@EX1,1,'Explode Scourgewagon'),
(@DETONATE,@EX2,1,'Explode Scourgewagon'),
(@DETONATE,@EX3,1,'Explode Scourgewagon'),
(@DETONATE,@EX4,1,'Explode Scourgewagon');

-- Explosive Charges Bunny
SET @SOURCETYPE :=0;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Explosive Charges Bunny - On just summoned - Run script'),
--
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,2000,2000,11,@DETONATE,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Explosive Charges Bunny - On Timed Script - Cast detonate'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,11,@CREDIT,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Explosive Charges Bunny - On Timed Script - Cast credit ');
UPDATE `instance_template` SET `script`='instance_vault_of_archavon' WHERE `map`=624;
ALTER TABLE `reputation_reward_rate` ADD `quest_repeteable_rate` FLOAT NOT NULL DEFAULT '1' AFTER `quest_weekly_rate`;
UPDATE `reputation_reward_rate` SET `quest_repeteable_rate`=3 WHERE `faction`=970; -- Sporegar, 3x on repeteable quests
ALTER TABLE `reputation_reward_rate` CHANGE `quest_repeteable_rate` `quest_repeatable_rate` FLOAT NOT NULL DEFAULT '1';
DELETE FROM `creature_text` WHERE `entry` IN (24068, 23954, 23980);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(24068, 0, 0, 'Ingvar! Your pathetic failure will serve as a warning to all... you are damned! Arise and carry out the master''s will!', 14, 0, 100, 0, 0, 13754, 'Annhylde the Caller to Ingvar the Plunderer'),

(23954, 0, 0, 'I''ll paint my face with your blood!', 14, 0, 100, 0, 0, 13207, 'Ingvar the Plunderer - SAY_AGGRO_1'),
(23954, 1, 0, 'Mjul orm agn gjor!', 14, 0, 100, 0, 0, 13212, 'Ingvar the Plunderer - SAY_SLAY_1'),
(23954, 2, 0, 'My life for the... death god!', 14, 0, 100, 0, 0, 13213, 'Ingvar the Plunderer - SAY_DEATH_1'),

(23954, 3, 0, 'I return! A second chance to carve your skull!', 14, 0, 100, 0, 0, 13209, 'Ingvar the Plunderer - SAY_AGGRO_2'),
(23954, 4, 0, 'I am a warrior born!', 14, 0, 100, 0, 0, 13214, 'Ingvar the Plunderer - SAY_SLAY_2'),
(23954, 5, 0, 'No! I can do... better! I can...', 14, 0, 100, 0, 0, 13211, 'Ingvar the Plunderer - SAY_DEATH_2');

UPDATE `creature_template` SET `lootid`=`entry` WHERE entry IN (23954, 31673);
UPDATE `creature_template` SET `lootid`=0 WHERE entry IN (23980, 31674);

UPDATE `creature_loot_template` SET `entry`=23954 WHERE `entry`=23980;
UPDATE `creature_loot_template` SET `entry`=31673 WHERE `entry`=31674;
SET @CGUID := 53919; -- set by TDB team (8)

UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=30755;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+7;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 30755, 571, 1, 1, 5844.797, 479.632, 657.6495, 3.351032, 120, 0, 0), -- Kor'kron Reaver (Area: 4395)
(@CGUID+1, 30755, 571, 1, 1, 5848.494, 480.568, 657.6278, 3.368485, 120, 0, 0), -- Kor'kron Reaver (Area: 4395)
(@CGUID+2, 30755, 571, 1, 1, 5845.834, 475.8459, 657.7172, 3.298672, 120, 0, 0), -- Kor'kron Reaver (Area: 4395)
(@CGUID+3, 30755, 571, 1, 1, 5849.62, 476.4291, 657.7032, 3.222836, 120, 0, 0), -- Kor'kron Reaver (Area: 4395)
(@CGUID+4, 30352, 571, 1, 1, 5803.514, 494.7659, 657.2115, 5.54129, 120, 0, 0), -- Skybreaker Marine (Area: 4395)
(@CGUID+5, 30352, 571, 1, 1, 5805.08, 492.9698, 657.2003, 5.584598, 120, 0, 0), -- Skybreaker Marine (Area: 4395)
(@CGUID+6, 30352, 571, 1, 1, 5801.245, 492.336, 657.3757, 5.602507, 120, 0, 0), -- Skybreaker Marine (Area: 4395)
(@CGUID+7, 30352, 571, 1, 1, 5802.888, 490.7988, 657.3538, 5.602507, 120, 0, 0); -- Skybreaker Marine (Area: 4395)
-- Prepping the Speech
UPDATE `quest_template` SET `Details` = 'High Tinker Mekkatorque asked me to write a speech that he could give before the battle starts, but I just can''t tell which draft is good and which ones just stink.$b$bCould you try some of them out on the local gnome residents? This device creates an image of Mekkatorque saying a few lines from each of my speech drafts.$b$bLet me know which one works, okay?', `RequestItemsText` = 'Let me know which one works, okay?', `OfferRewardText` = 'Oh my. Their reactions were that different?$b$bNot completely what I was expecting, but I think I have a speech that will do.$b$bJust let me find where I put it...' WHERE `id`=25283;
-- Fix Q I'm Not Dead Yet! (13229 / 13221) by Rohlik
UPDATE `creature_template` SET `AIName` = 'SmartAI', `InhabitType` = 1 WHERE `entry` = 31279;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` IN (13221, 13229);

DELETE FROM `db_script_string` WHERE `entry` IN (2000000507,2000000508);
DELETE FROM `waypoint_data` where id=3127900; -- We delete old WP data from DB
DELETE FROM `waypoint_scripts` WHERE id=31279;

-- Text for NPC Father Kamaros
DELETE from `creature_text` where `entry`=31279 AND `groupid` IN (1, 2, 3, 4);
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `comment`) VALUES
(31279, 1, 'The Light''s blessing be upon you for aiding me in my time of need, $n.', 12, 100, 'Father Kamaros'),
(31279, 2, 'I''ve had my fill of this place. Let us depart.', 12, 100, 'Father Kamaros'),
(31279, 3, 'You must tell my brothers that live.', 12, 100, 'Father Kamaros'),
(31279, 4, 'I have you to thank for my life. I will return to my comrades and spread word of your bravery. Fight the Scourge with all the strength you can muster, and we will be by your side.', 12, 100, 'Father Kamaros');

-- SAI
DELETE FROM `smart_scripts` WHERE (`entryorguid`=31279 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(31279, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(31279, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(31279, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 25054, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt on Aggro'),
(31279, 0, 3, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 25054, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt'),
(31279, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in bolt Range'),
(31279, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 15 Yards'),
(31279, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving when in bolt Range'),
(31279, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 2 at 15% Mana'),
(31279, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving at 15% Mana'),
(31279, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 When Mana is above 30%'),
(31279, 0, 11, 0, 0, 1, 100, 0, 5000, 6200, 11700, 15600, 11, 17146, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Shadow Word: Pain'),
(31279, 0, 12, 0, 2, 0, 100, 1, 0, 50, 0, 0, 11, 32595, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Power Word: Shield at 50% HP'),
(31279, 0, 13, 14, 19, 0, 100, 0, 0, 0, 0, 0, 75, 58921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On accept Q - Cast Power Word Fortitude'),
(31279, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On accept Q - Start talking'),
(31279, 0, 15, 0, 52, 0, 100, 0, 1, 31279, 0, 0, 1, 2, 1000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On accept Q - After 4 sec start talking again'),
(31279, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 1000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On accept Q - After 4 sec start talking again'),
(31279, 0, 17, 0, 52, 0, 100, 0, 2, 31279, 0, 0, 53, 0, 31279, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - After 5 sec - WP load'),
(31279, 0, 18, 0, 40, 0, 100, 0, 13, 0, 0, 0, 1, 3, 2900, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On last WP point - Say something'),
(31279, 0, 19, 0, 52, 0, 100, 0, 3, 31279, 0, 0, 1, 4, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On last WP point - Say something 2'),
(31279, 0, 20, 0, 52, 0, 100, 0, 4, 31279, 0, 0, 15, 13229, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On last WP point - Q complete(horde)'),
(31279, 0, 21, 0, 52, 0, 100, 0, 4, 31279, 0, 0, 15, 13221, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, 'Father Kamaros - On last WP point - Q complete(ali)'),
(31279, 0, 22, 0, 52, 0, 100, 0, 4, 31279, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Father Kamaros - after final talking - despawn');

-- WP for NPC Father Kamaros
DELETE from `waypoints` where `entry`=31279;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(31279, 1,  6716.76, 3436.7,  682.197, 'Q I''m Not Dead Yet!'),
(31279, 2,  6724.09, 3433.56, 682.197, 'Q I''m Not Dead Yet!'),
(31279, 3,  6734.95, 3435.7,  681.87, 'Q I''m Not Dead Yet!'),
(31279, 4,  6766.36, 3464.42, 673.201, 'Q I''m Not Dead Yet!'),
(31279, 5,  6782.48, 3478.07, 674.097, 'Q I''m Not Dead Yet!'),
(31279, 6,  6789.64, 3484.14, 676.423, 'Q I''m Not Dead Yet!'),
(31279, 7,  6815.31, 3483.01, 685.829, 'Q I''m Not Dead Yet!'),
(31279, 9,  6875.41, 3479.14, 694.799, 'Q I''m Not Dead Yet!'),
(31279, 10, 6946.3,  3477.29, 708.832, 'Q I''m Not Dead Yet!'),
(31279, 11, 6980.65, 3468.12, 710.813, 'Q I''m Not Dead Yet!'),
(31279, 12, 7008.43, 3458.64, 696.751, 'Q I''m Not Dead Yet!'),
(31279, 13, 7042.92, 3438.07, 695.543, 'Q I''m Not Dead Yet!');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (23980,31674,23954,31673);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1,23954,43228,0,0,1,0,57940,0,0,0,0,0,'','Can loot Stone Keeper''s Shard only with aura Essence of Wintergrasp'),
(1,31673,43228,0,0,1,0,57940,0,0,0,0,0,'','Can loot Stone Keeper''s Shard only with aura Essence of Wintergrasp');
DELETE from `waypoints` where `entry`=31279;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(31279, 1,  6716.76, 3436.7,  682.197, 'Q I''m Not Dead Yet!'),
(31279, 2,  6724.09, 3433.56, 682.197, 'Q I''m Not Dead Yet!'),
(31279, 3,  6734.95, 3435.7,  681.87, 'Q I''m Not Dead Yet!'),
(31279, 4,  6766.36, 3464.42, 673.201, 'Q I''m Not Dead Yet!'),
(31279, 5,  6782.48, 3478.07, 674.097, 'Q I''m Not Dead Yet!'),
(31279, 6,  6789.64, 3484.14, 676.423, 'Q I''m Not Dead Yet!'),
(31279, 7,  6815.31, 3483.01, 685.829, 'Q I''m Not Dead Yet!'),
(31279, 8,  6875.41, 3479.14, 694.799, 'Q I''m Not Dead Yet!'),
(31279, 9, 6946.3,  3477.29, 708.832, 'Q I''m Not Dead Yet!'),
(31279, 10, 6980.65, 3468.12, 710.813, 'Q I''m Not Dead Yet!'),
(31279, 11, 7008.43, 3458.64, 696.751, 'Q I''m Not Dead Yet!'),
(31279, 12, 7042.92, 3438.07, 695.543, 'Q I''m Not Dead Yet!');
-- Fuel for the Fire (12690)
-- http://www.youtube.com/watch?v=3rC1yU1ytl8
SET @CREDIT             :=52590; -- Credit to Master
SET @CREDIT_MASTER      :=52587; -- Assign Kill Credit to Master
SET @TEXPLOSION         :=52565; -- Troll Explosion
SET @FFTF_EXPL          :=52575; -- Fuel for the Fire:Troll Explosion
SET @MEAT_EXPL          :=52578; -- Explode Troll:Meat
SET @BMEAT_EXPL         :=52580; -- Explode Troll:Bloody Meat
SET @SUICIDE_NL         :=51744; -- Suicide (No Log)
SET @DSC                :=28844; -- Drakkari Skullcrusher
SET @B_ABOM             :=28843; -- Bloated Abomination

DELETE FROM `spell_script_names` WHERE `spell_id`=52510;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(52510, 'spell_q12690_burst_at_the_seams');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@B_ABOM;
DELETE FROM `smart_scripts` WHERE entryorguid =@B_ABOM;

DELETE FROM `conditions` WHERE `SourceEntry`IN (52510);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 2, 52510, 0, 0, 31, 0, 3, 28844, 0, 0, 0, 0, '', 'Spell Burst at the Seams targets Drakkari Skullcrusher');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@DSC;
DELETE FROM `smart_scripts` WHERE `source_type`IN (0,9) AND `entryorguid`IN (@DSC,@DSC*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@DSC,0,0,0,8,0,100,0,52510,0,0,0,80,@DSC*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drakkari Skullcrusher - On Spellhit - Start Timed Action Script'),
(@DSC*100,9,0,0,0,0,100,0,0,0,0,0,11,@TEXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakkari Skullcrusher - On Script - Cast Troll Explosion'),
(@DSC*100,9,1,0,0,0,100,0,0,0,0,0,11,@MEAT_EXPL,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakkari Skullcrusher - On Script - Cast Meat Explosion'),
(@DSC*100,9,2,0,0,0,100,0,0,0,0,0,11,@SUICIDE_NL,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakkari Skullcrusher - On Script - Cast Suicide');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN (@TEXPLOSION,@MEAT_EXPL);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@TEXPLOSION,@FFTF_EXPL,1,'Trigger Troll Explosion with FFTF explosion'),
(@MEAT_EXPL,@BMEAT_EXPL,1,'Trigger Meat Explosion with Bloody Meat Explosion');
SET @MATT2          := 32404;  -- Matthias Lehner
SET @PLSP_FC        := 58989;  -- Prodigal Leader Force Cast
SET @L_CAPTAIN      := 32414;  -- Lordaeron Captain
SET @L_FOOTSOLDIER  := 31254;  -- Lordaeron Footsoldier 

DELETE FROM `smart_scripts` WHERE `entryorguid`=@MATT2 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MATT2,0,0,0,19,0,100,0,13395,0,0,0,11,@PLSP_FC,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Quest accept - Cast spell - Cast Invoker'),
(@MATT2,0,1,0,19,0,100,0,13236,0,0,0,11,@PLSP_FC,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Quest accept - Cast spell - Cast  Invoker'),
(@MATT2,0,2,3,62,0,100,0,10226,0,0,0,11,@PLSP_FC,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Gossip Select - Cast spell - Cast Invoker'),
(@MATT2,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Gossip Select - Close Gossip - Invoker');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10226;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10226,0,0,0,9,0,13395,0,0,0,0,0,'','Show Gossip Menu Option only when quest is active'),
(15,10226,0,0,1,9,0,13236,0,0,0,0,0,'','Show Gossip Menu Option only when quest is active');
UPDATE `quest_template` SET `requiredspellcast1`=0 WHERE `id` IN (10545,10512);



-- Escape from Silverbrook
SET @ENTRY          := 27499; -- Caged Prisoner
SET @PRISONER       := 27411; -- Freed Alliance Scout
SET @HORSE          := 27409; -- The Qorse (Reference to Machiavelli)
SET @SUMM_HORSE     := 48651; -- Summon Ducal's Horse
SET @SUMM_WORG      := 48681; -- Summon Worgen
SET @WORG           := 27417; -- Silverbrook Worgen

DELETE FROM `spell_script_names` WHERE `spell_id` IN (48682,48681);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(48682, 'spell_q12308_escape_from_silverbrook'),
(48681, 'spell_q12308_escape_from_silverbrook_summon_worgen'); 

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` IN (@ENTRY,@PRISONER,@HORSE,@WORG);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@ENTRY,@PRISONER,@PRISONER*100,@HORSE,@HORSE*100,@WORG) AND `source_type`IN (0,9);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@ENTRY,@PRISONER,@HORSE,@WORG);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)VALUES
(@ENTRY,0,0,1,19,0,100,0,12308,0,0,0,11,48710,0,0,0,0,0,19,24042,10,0,0,0,0,0,'Caged Prisoner - on quest accepted - Summon Freed Alliance Scout'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,188706,10,0,0,0,0,0,'Caged Prisoner - On Link - Activate Cage'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Caged Prisoner - On quest accepted - Summon Freed Alliance Scout'),
-- 
(@PRISONER,0,0,0,54,0,100,0,0,0,0,0,80,@PRISONER*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Respawn - Start Timed Action Script'),
(@PRISONER,0,1,2,40,0,100,1,6,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On WP Reached - Say 3'),
(@PRISONER,0,2,3,61,0,100,0,0,0,0,0,11,@SUMM_HORSE,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Link - Summon Horse'),
(@PRISONER,0,3,0,61,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,19,@HORSE,10,0,0,0,0,0,'Freed Alliance Scout - On Link - Mount Horse'),
(@PRISONER,0,4,0,38,0,100,0,1,1,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Link - Say'),
--
(@PRISONER*100,9,0,0,0,0,100,0,3000,3000,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Script - Say 0'),
(@PRISONER*100,9,1,0,0,0,100,0,5000,5000,5000,5000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Script - Say 1'),
(@PRISONER*100,9,2,0,0,0,100,0,4000,4000,4000,4000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Script - Say 2'),
(@PRISONER*100,9,3,0,0,0,100,0,9000,9000,9000,9000,53,1,@PRISONER,0,0,0,0,1,0,0,0,0,0,0,0,'Freed Alliance Scout - On Script - Start WP movement'),
--
(@HORSE,0,0,1,27,0,100,0,0,0,0,0,80,@HORSE*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ducal''s Horse - On Passanger Boarded - Start Timed Action Script'),
(@HORSE,0,1,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ducal''s Horse - On Link - Allow Combat Movement'),
(@HORSE,0,2,5,40,0,100,0,102,0,0,0,11,48678,0,0,0,0,0,21,10,0,0,0,0,0,0,'Ducal''s Horse - On WP Reached - Dismount Player'),
(@HORSE,0,3,0,40,0,100,0,36,0,0,0,97,25,10,0,0,0,0,1,0,0,0,4063.238525,-2261.991211,215.988922,0,'Ducal''s Horse - On WP Reached - Jump to PoS'),
(@HORSE,0,4,0,40,0,100,0,74,0,0,0,97,25,10,0,0,0,0,1,0,0,0,3900.396484,-2743.329346, 219.152481,0,'Ducal''s Horse - On WP Reached - Jump to PoS'),
(@HORSE,0,5,6,61,0,100,0,0,0,0,0,33,28019,0,0,0,0,0,21,10,0,0,0,0,0,0,'Ducal''s Horse - On WP Reached - Give Credit'),
(@HORSE,0,6,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ducal''s Horse - On WP Reached - Despawn'),
-- 48678
(@HORSE*100,9,0,0,0,0,100,0,5000,5000,5000,5000,53,1,@HORSE,0,12308,0,0,1,0,0,0,0,0,0,0,'Ducal''s Horse - Script - Start WP Movement'),
(@HORSE*100,9,1,0,0,0,100,0,1000,1000,1000,1000,45,1,1,0,0,0,0,19,@PRISONER,10,0,0,0,0,0,'Ducal''s Horse - Script - Start WP Movement'),
(@HORSE*100,9,2,0,0,0,100,0,0,0,0,0,11,48683,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ducal''s Horse - Script - Cast On self'),
--
(@WORG,0,0,0,54,0,100,0,9,0,0,0,49,0,0,0,0,0,0,19,@HORSE,60,0,0,0,0,0,'Silverbrook Worgen - On Spawn - Attack Horse'),
(@WORG,0,1,0,4,0,100,0,9,0,0,0,11,36589,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silverbrook Worgen - On Aggro - Cast Dash');

DELETE FROM `creature_text` WHERE entry = 27411;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(27411, 0, 0, 'Were you bitten?', 12, 0, 100, 6, 0, 0, 'Freed Alliance Scout Say1'),
(27411, 1, 1, 'Answer me! Were you bloody bitten?', 14, 0, 100, 22, 0, 0, 'Freed Alliance Scout Yell'),
(27411, 2, 2, 'You don''t even know, do you? The trappers? They''re not human... we have to get out of here! Come, quick!', 12, 0, 100, 0, 0, 0, 'Freed Alliance Scout Say2'),
(27411, 3, 3, 'Take Ducal''s horse, he''s one of them now!', 12, 0, 100, 0, 0, 0, 'Freed Alliance Scout Say3'),
(27411, 4, 4, 'There''s lamp oil in the back - make use of it. The fiends hate fire!', 12, 0, 100, 0, 0, 0, 'Freed Alliance Scout Say4');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`= 27409;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(27409, 48678, 1, 0); -- Mount Ducal's Horse (for player)

UPDATE `creature_template` SET `speed_walk`=1.142857, `speed_run`=1, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=27499; -- Caged Prisoner
UPDATE `creature_template` SET `VehicleId` = 51, `IconName`= 'vehichleCursor', `npcflag` =16777216, `unit_flags`=0, `spell1` = 48677, `spell2` = 48768, `spell3` = 48783 WHERE `entry` = 27409;
UPDATE `creature_template` SET `faction_A`=1891,`faction_H`=1891,`baseattacktime`=1500,`unit_flags`=768 WHERE `entry`=27411;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE entry = 27417;

-- Ducal's Horse waypoints
DELETE FROM `waypoints` WHERE entry = 27409;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(27409, 0, 4431.638672, -2481.546143, 245.497971, ''),
(27409, 1, 4449.238281, -2471.332031, 242.360382, ''),
(27409, 2, 4461.925293, -2462.848145, 239.519882, ''),
(27409, 3, 4462.994141, -2448.238037, 237.881256, ''),
(27409, 4, 4479.575684, -2434.093506, 235.040390, ''),
(27409, 5, 4488.495605, -2420.688477, 233.043091, ''),
(27409, 6, 4494.654785, -2414.143066, 230.241013, ''),
(27409, 7, 4499.730469, -2414.861572, 230.952850, ''),
(27409, 8, 4510.846191, -2401.806641, 226.618698, ''),
(27409, 9, 4517.005371, -2388.016357, 220.151077, ''),
(27409, 10, 4520.017578, -2373.915283, 213.041779, ''),
(27409, 11, 4524.577637, -2355.400391, 202.208481, ''),
(27409, 12, 4520.500977, -2332.202148, 190.853638, ''),
(27409, 13, 4509.677734, -2314.525635, 182.408096, ''),
(27409, 14, 4488.281250, -2309.130127, 184.351913, ''),
(27409, 15, 4480.724609, -2311.419434, 185.420715, ''),
(27409, 16, 4470.293457, -2314.579346, 183.929382, ''),
(27409, 17, 4453.349121, -2318.290771, 189.487000, ''),
(27409, 18, 4442.953613, -2311.859375, 192.656219, ''),
(27409, 19, 4414.564941, -2297.739258, 191.105362, ''),
(27409, 20, 4396.023438, -2286.889648, 192.638016, ''),
(27409, 21, 4383.112305, -2278.546631, 188.321487, ''),
(27409, 22, 4369.118652, -2256.089844, 187.592911, ''),
(27409, 23, 4339.653320, -2250.217529, 188.636993, ''),
(27409, 24, 4299.784180, -2260.091309, 205.303589, ''),
(27409, 25, 4292.068848, -2261.806885, 209.099808, ''),
(27409, 26, 4258.068359, -2270.728027, 212.053543, ''),
(27409, 27, 4224.148926, -2276.497559, 214.878052, ''),
(27409, 28, 4210.618652, -2280.829346, 214.910553, ''),
(27409, 29, 4193.759766, -2285.936035, 219.885529, ''),
(27409, 30, 4168.561523, -2272.436279, 221.375009, ''),
(27409, 31, 4151.019531, -2269.352783, 223.433472, ''),
(27409, 32, 4131.847168, -2271.157715, 221.920700, ''),
(27409, 33, 4112.480469, -2276.041748, 219.916550, ''),
(27409, 34, 4103.597656, -2274.198730, 219.276031, ''),
(27409, 35, 4093.837158, -2276.393066, 219.042526, ''),
(27409, 36, 4084.734375, -2272.286133, 217.870331, ''), -- Jump PoS
(27409, 37, 4063.238525, -2261.991211, 215.988922, ''), -- Jump continuation
(27409, 38, 4059.935547, -2260.473145, 216.993256, ''),
(27409, 39, 4028.185791, -2252.874512, 218.258530, ''),
(27409, 40, 4020.977539, -2249.354004, 217.129837, ''),
(27409, 41, 4005.426025, -2256.105957, 218.451675, ''),
(27409, 42, 3988.108398, -2262.058350, 217.109756, ''),
(27409, 43, 3968.364014, -2267.235840, 215.268341, ''),
(27409, 44, 3953.139893, -2268.633057, 212.391113, ''),
(27409, 45, 3935.732422, -2276.518066, 209.669937, ''),
(27409, 46, 3922.170898, -2282.024414, 211.200699, ''),
(27409, 47, 3913.766846, -2300.279541, 209.620239, ''),
(27409, 48, 3914.160156, -2317.614990, 208.949615, ''),
(27409, 49, 3911.533936, -2330.580078, 207.751999, ''),
(27409, 50, 3907.095947, -2346.107422, 204.630707, ''),
(27409, 51, 3901.425537, -2362.481201, 206.197708, ''),
(27409, 52, 3885.374756, -2368.482178, 202.270737, ''),
(27409, 53, 3871.682617, -2371.436035, 196.694305, ''),
(27409, 54, 3858.806396, -2374.236816, 194.038589, ''),
(27409, 55, 3833.323975, -2390.121582, 187.584473, ''),
(27409, 56, 3818.713379, -2403.767090, 183.718597, ''),
(27409, 57, 3812.403564, -2425.267334, 185.086273, ''),
(27409, 58, 3812.611328, -2432.785400, 186.023727, ''),
(27409, 59, 3812.221680, -2453.928711, 188.508041, ''),
(27409, 60, 3815.669189, -2479.355957, 192.388458, ''),
(27409, 61, 3819.468262, -2503.677002, 195.024658, ''),
(27409, 62, 3822.264648, -2517.937256, 194.068130, ''),
(27409, 63, 3825.485107, -2534.361572, 196.379684, ''),
(27409, 64, 3829.201660, -2554.680664, 196.714203, ''),
(27409, 65, 3836.672119, -2578.528076, 196.706253, ''),
(27409, 66, 3847.536133, -2609.345459, 200.060410, ''),
(27409, 67, 3861.525879, -2624.756592, 202.314850, ''),
(27409, 68, 3882.063232, -2655.939209, 203.425415, ''),
(27409, 69, 3886.698975, -2663.550293, 208.091705, ''),
(27409, 70, 3900.575928, -2672.409912, 212.662750, ''),
(27409, 71, 3909.817383, -2687.583008, 217.098572, ''),
(27409, 72, 3911.782959, -2695.853027, 220.364487, ''),
(27409, 73, 3916.008301, -2703.185791, 221.175446, ''),
(27409, 74, 3912.544678, -2712.180420, 221.059509, ''), -- Jump location
(27409, 75, 3900.396484, -2743.329346, 219.152481, ''), -- Jump continue
(27409, 76, 3889.821777, -2751.587646, 221.798737, ''),
(27409, 77, 3883.421875, -2756.963379, 223.885544, ''),
(27409, 78, 3851.103027, -2769.906494, 227.460480, ''),
(27409, 79, 3837.903076, -2769.537842, 226.115402, ''),
(27409, 80, 3813.292725, -2770.593018, 220.927460, ''),
(27409, 81, 3801.162109, -2771.017578, 219.535080, ''),
(27409, 82, 3780.501709, -2772.391602, 213.905884, ''),
(27409, 83, 3767.551025, -2775.388672, 211.281708, ''),
(27409, 84, 3759.778320, -2782.290771, 209.165924, ''),
(27409, 85, 3752.759277, -2787.596436, 206.495926, ''),
(27409, 86, 3729.982422, -2803.813721, 210.023056, ''),
(27409, 87, 3723.949951, -2808.085693, 211.655594, ''),
(27409, 88, 3705.986328, -2819.675537, 215.066315, ''),
(27409, 89, 3685.556152, -2832.987549, 217.602127, ''),
(27409, 90, 3674.411377, -2843.797852, 217.875214, ''),
(27409, 91, 3662.455811, -2853.292480, 216.581512, ''),
(27409, 92, 3647.392822, -2857.280518, 213.150558, ''),
(27409, 93, 3630.625977, -2860.268555, 214.962250, ''),
(27409, 94, 3610.744141, -2858.618164, 208.903931, ''),
(27409, 95, 3587.919189, -2854.562500, 203.447754, ''),
(27409, 96, 3562.793213, -2842.607666, 197.044495, ''),
(27409, 97, 3534.265625, -2828.214600, 197.154617, ''),
(27409, 98, 3515.692871, -2829.376709, 201.276230, ''),
(27409, 99, 3487.658691, -2829.192871, 202.143524, ''),
(27409, 100, 3472.460693, -2821.599365, 201.429428, ''),
(27409, 101, 3460.582031, -2817.212402, 201.804962, ''),
(27409, 102, 3443.644531, -2811.332520, 202.097687, '');

-- Freed Alliance Scout waypoints
DELETE FROM `waypoints` WHERE entry = 27411;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(27411, 0, 4394.648438, -2502.304688, 252.802429, ''),
(27411, 1, 4389.777832, -2502.323242, 252.251602, ''),
(27411, 2, 4382.442383, -2501.507080, 246.809448, ''),
(27411, 3, 4381.006836, -2497.183838, 247.235260, ''),
(27411, 4, 4393.843750, -2484.841553, 248.717392, ''),
(27411, 5, 4416.043457, -2481.504150, 247.175400, ''),
(27411, 6, 4425.312500, -2486.656006, 246.555176, '');
UPDATE `conditions` SET `NegativeCondition`=0 WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (36597,39166,39167,39168) AND `SourceEntry`=51315 AND `ConditionTypeOrReference`=3;
--  Suppression (7583)
SET @NPC_DEMON  := 12396;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_DEMON;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_DEMON;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_DEMON);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_DEMON,0,0,0,0,0,100,0,5000,8000,18000,24000,11,16005,0,0,0,0,0,2,0,0,0,0,0,0,0,'Doomguard Commander - Cast Rain of Fire'),
(@NPC_DEMON,0,1,0,0,0,100,0,12000,15000,20000,25000,11,16727,0,0,0,0,0,2,0,0,0,0,0,0,0,'Doomguard Commander - Cast War Stomp'),
(@NPC_DEMON,0,2,0,0,0,100,0,2000,4000,25000,32000,11,20812,0,0,0,0,0,2,0,0,0,0,0,0,0,'Doomguard Commander - Cast Cripple'),
(@NPC_DEMON,0,3,0,0,0,100,0,7000,14000,17000,22000,11,15090,0,0,0,0,0,2,0,0,0,0,0,0,0,'Doomguard Commander - Cast Dispel Magic'),
--
(@NPC_DEMON,0,4,5,8,0,100,0,23019,0,0,0,56,18605,1,0,0,0,0,18,20,0,0,0,0,0,0,'Doomguard Commander - On spellhit - Add item Imprisoned Doomguard'),
(@NPC_DEMON,0,5,6,61,0,100,0,0,0,0,0,11,23020,0,0,0,0,0,1,0,0,0,0,0,0,0,'Doomguard Commander - On spellhit - Cast Crystal Imprisonment'),
(@NPC_DEMON,0,6,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Doomguard Commander - On spellhit - Despawn');

-- Conditions for Glowing Crystal Prison 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=23015;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,23015,0,0,31,1,3,12396,0,0,173,0,'','Glowing Crystal Prison target limit to Doomguard Commander');
ALTER TABLE `quest_template` DROP `RequiredSpellCast1`;
ALTER TABLE `quest_template` DROP `RequiredSpellCast2`;
ALTER TABLE `quest_template` DROP `RequiredSpellCast3`;
ALTER TABLE `quest_template` DROP `RequiredSpellCast4`;
-- Update sai to correlate with the pointid changes, otherwise we get a cluster of bad movement
UPDATE `smart_scripts` SET `event_param1`=7 WHERE  `entryorguid`=27411 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `event_param1`=37 WHERE  `entryorguid`=27409 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `event_param1`=75 WHERE  `entryorguid`=27409 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `event_param1`=103 WHERE  `entryorguid`=27409 AND `source_type`=0 AND `id`=2 AND `link`=5;

DELETE FROM `waypoints` WHERE entry = 27409;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(27409, 1, 4431.638672, -2481.546143, 245.497971, ''),
(27409, 2, 4449.238281, -2471.332031, 242.360382, ''),
(27409, 3, 4461.925293, -2462.848145, 239.519882, ''),
(27409, 4, 4462.994141, -2448.238037, 237.881256, ''),
(27409, 5, 4479.575684, -2434.093506, 235.040390, ''),
(27409, 6, 4488.495605, -2420.688477, 233.043091, ''),
(27409, 7, 4494.654785, -2414.143066, 230.241013, ''),
(27409, 8, 4499.730469, -2414.861572, 230.952850, ''),
(27409, 9, 4510.846191, -2401.806641, 226.618698, ''),
(27409, 10, 4517.005371, -2388.016357, 220.151077, ''),
(27409, 11, 4520.017578, -2373.915283, 213.041779, ''),
(27409, 12, 4524.577637, -2355.400391, 202.208481, ''),
(27409, 13, 4520.500977, -2332.202148, 190.853638, ''),
(27409, 14, 4509.677734, -2314.525635, 182.408096, ''),
(27409, 15, 4488.281250, -2309.130127, 184.351913, ''),
(27409, 16, 4480.724609, -2311.419434, 185.420715, ''),
(27409, 17, 4470.293457, -2314.579346, 183.929382, ''),
(27409, 18, 4453.349121, -2318.290771, 189.487000, ''),
(27409, 19, 4442.953613, -2311.859375, 192.656219, ''),
(27409, 20, 4414.564941, -2297.739258, 191.105362, ''),
(27409, 21, 4396.023438, -2286.889648, 192.638016, ''),
(27409, 22, 4383.112305, -2278.546631, 188.321487, ''),
(27409, 23, 4369.118652, -2256.089844, 187.592911, ''),
(27409, 24, 4339.653320, -2250.217529, 188.636993, ''),
(27409, 25, 4299.784180, -2260.091309, 205.303589, ''),
(27409, 26, 4292.068848, -2261.806885, 209.099808, ''),
(27409, 27, 4258.068359, -2270.728027, 212.053543, ''),
(27409, 28, 4224.148926, -2276.497559, 214.878052, ''),
(27409, 29, 4210.618652, -2280.829346, 214.910553, ''),
(27409, 30, 4193.759766, -2285.936035, 219.885529, ''),
(27409, 31, 4168.561523, -2272.436279, 221.375009, ''),
(27409, 32, 4151.019531, -2269.352783, 223.433472, ''),
(27409, 33, 4131.847168, -2271.157715, 221.920700, ''),
(27409, 34, 4112.480469, -2276.041748, 219.916550, ''),
(27409, 35, 4103.597656, -2274.198730, 219.276031, ''),
(27409, 36, 4093.837158, -2276.393066, 219.042526, ''),
(27409, 37, 4084.734375, -2272.286133, 217.870331, ''), -- Jump PoS
(27409, 38, 4063.238525, -2261.991211, 215.988922, ''), -- Jump continuation
(27409, 39, 4059.935547, -2260.473145, 216.993256, ''),
(27409, 40, 4028.185791, -2252.874512, 218.258530, ''),
(27409, 41, 4020.977539, -2249.354004, 217.129837, ''),
(27409, 42, 4005.426025, -2256.105957, 218.451675, ''),
(27409, 43, 3988.108398, -2262.058350, 217.109756, ''),
(27409, 44, 3968.364014, -2267.235840, 215.268341, ''),
(27409, 45, 3953.139893, -2268.633057, 212.391113, ''),
(27409, 46, 3935.732422, -2276.518066, 209.669937, ''),
(27409, 47, 3922.170898, -2282.024414, 211.200699, ''),
(27409, 48, 3913.766846, -2300.279541, 209.620239, ''),
(27409, 49, 3914.160156, -2317.614990, 208.949615, ''),
(27409, 50, 3911.533936, -2330.580078, 207.751999, ''),
(27409, 51, 3907.095947, -2346.107422, 204.630707, ''),
(27409, 52, 3901.425537, -2362.481201, 206.197708, ''),
(27409, 53, 3885.374756, -2368.482178, 202.270737, ''),
(27409, 54, 3871.682617, -2371.436035, 196.694305, ''),
(27409, 55, 3858.806396, -2374.236816, 194.038589, ''),
(27409, 56, 3833.323975, -2390.121582, 187.584473, ''),
(27409, 57, 3818.713379, -2403.767090, 183.718597, ''),
(27409, 58, 3812.403564, -2425.267334, 185.086273, ''),
(27409, 59, 3812.611328, -2432.785400, 186.023727, ''),
(27409, 60, 3812.221680, -2453.928711, 188.508041, ''),
(27409, 61, 3815.669189, -2479.355957, 192.388458, ''),
(27409, 62, 3819.468262, -2503.677002, 195.024658, ''),
(27409, 63, 3822.264648, -2517.937256, 194.068130, ''),
(27409, 64, 3825.485107, -2534.361572, 196.379684, ''),
(27409, 65, 3829.201660, -2554.680664, 196.714203, ''),
(27409, 66, 3836.672119, -2578.528076, 196.706253, ''),
(27409, 67, 3847.536133, -2609.345459, 200.060410, ''),
(27409, 68, 3861.525879, -2624.756592, 202.314850, ''),
(27409, 69, 3882.063232, -2655.939209, 203.425415, ''),
(27409, 70, 3886.698975, -2663.550293, 208.091705, ''),
(27409, 71, 3900.575928, -2672.409912, 212.662750, ''),
(27409, 72, 3909.817383, -2687.583008, 217.098572, ''),
(27409, 73, 3911.782959, -2695.853027, 220.364487, ''),
(27409, 74, 3916.008301, -2703.185791, 221.175446, ''),
(27409, 75, 3912.544678, -2712.180420, 221.059509, ''), -- Jump location
(27409, 76, 3900.396484, -2743.329346, 219.152481, ''), -- Jump continue
(27409, 77, 3889.821777, -2751.587646, 221.798737, ''),
(27409, 78, 3883.421875, -2756.963379, 223.885544, ''),
(27409, 79, 3851.103027, -2769.906494, 227.460480, ''),
(27409, 80, 3837.903076, -2769.537842, 226.115402, ''),
(27409, 81, 3813.292725, -2770.593018, 220.927460, ''),
(27409, 82, 3801.162109, -2771.017578, 219.535080, ''),
(27409, 83, 3780.501709, -2772.391602, 213.905884, ''),
(27409, 84, 3767.551025, -2775.388672, 211.281708, ''),
(27409, 85, 3759.778320, -2782.290771, 209.165924, ''),
(27409, 86, 3752.759277, -2787.596436, 206.495926, ''),
(27409, 87, 3729.982422, -2803.813721, 210.023056, ''),
(27409, 88, 3723.949951, -2808.085693, 211.655594, ''),
(27409, 89, 3705.986328, -2819.675537, 215.066315, ''),
(27409, 90, 3685.556152, -2832.987549, 217.602127, ''),
(27409, 91, 3674.411377, -2843.797852, 217.875214, ''),
(27409, 92, 3662.455811, -2853.292480, 216.581512, ''),
(27409, 93, 3647.392822, -2857.280518, 213.150558, ''),
(27409, 94, 3630.625977, -2860.268555, 214.962250, ''),
(27409, 95, 3610.744141, -2858.618164, 208.903931, ''),
(27409, 96, 3587.919189, -2854.562500, 203.447754, ''),
(27409, 97, 3562.793213, -2842.607666, 197.044495, ''),
(27409, 98, 3534.265625, -2828.214600, 197.154617, ''),
(27409, 99, 3515.692871, -2829.376709, 201.276230, ''),
(27409, 100, 3487.658691, -2829.192871, 202.143524, ''),
(27409, 101, 3472.460693, -2821.599365, 201.429428, ''),
(27409, 102, 3460.582031, -2817.212402, 201.804962, ''),
(27409, 103, 3443.644531, -2811.332520, 202.097687, '');

-- Freed Alliance Scout waypoints
DELETE FROM `waypoints` WHERE entry = 27411;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(27411, 1, 4394.648438, -2502.304688, 252.802429, ''),
(27411, 2, 4389.777832, -2502.323242, 252.251602, ''),
(27411, 3, 4382.442383, -2501.507080, 246.809448, ''),
(27411, 4, 4381.006836, -2497.183838, 247.235260, ''),
(27411, 5, 4393.843750, -2484.841553, 248.717392, ''),
(27411, 6, 4416.043457, -2481.504150, 247.175400, ''),
(27411, 7, 4425.312500, -2486.656006, 246.555176, '');
UPDATE `gameobject_loot_template` SET `item`=33700 WHERE  `entry`=24157 AND `item`=37703;
ALTER TABLE `command` CHANGE `security` `permission` SMALLINT(5) UNSIGNED DEFAULT 0 NOT NULL;

-- Player commands
UPDATE `command` SET `permission` = 7 WHERE `permission` = 0;
-- Moderator commands
UPDATE `command` SET `permission` = 8 WHERE `permission` = 1;
-- GM commands
UPDATE `command` SET `permission` = 9 WHERE `permission` = 2;
-- administrator commands
UPDATE `command` SET `permission` = 10 WHERE `permission` = 3;
-- console commands
UPDATE `command` SET `permission` = 12 WHERE `permission` = 4;
-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 201 WHERE `name` = '.rbac account';
UPDATE `command` SET `permission` = 202 WHERE `name` = '.rbac account group';
UPDATE `command` SET `permission` = 203 WHERE `name` = '.rbac account group add';
UPDATE `command` SET `permission` = 204 WHERE `name` = '.rbac account group remove';
UPDATE `command` SET `permission` = 205 WHERE `name` = '.rbac account role';
UPDATE `command` SET `permission` = 206 WHERE `name` = '.rbac account role grant';
UPDATE `command` SET `permission` = 207 WHERE `name` = '.rbac account role deny';
UPDATE `command` SET `permission` = 208 WHERE `name` = '.rbac account role revoke';
UPDATE `command` SET `permission` = 209 WHERE `name` = '.rbac account permission';
UPDATE `command` SET `permission` = 210 WHERE `name` = '.rbac account permission grant';
UPDATE `command` SET `permission` = 211 WHERE `name` = '.rbac account permission deny';
UPDATE `command` SET `permission` = 212 WHERE `name` = '.rbac account permission revoke';
UPDATE `command` SET `permission` = 214 WHERE `name` = '.rbac account list groups';
UPDATE `command` SET `permission` = 215 WHERE `name` = '.rbac account list roles';
UPDATE `command` SET `permission` = 216 WHERE `name` = '.rbac account list permissions';
UPDATE `command` SET `name` = 'rbac account' WHERE `name` = '.rbac account';
UPDATE `command` SET `name` = 'rbac account group' WHERE `name` = '.rbac account group';
UPDATE `command` SET `name` = 'rbac account group add' WHERE `name` = '.rbac account group add';
UPDATE `command` SET `name` = 'rbac account group remove' WHERE `name` = '.rbac account group remove';
UPDATE `command` SET `name` = 'rbac account role' WHERE `name` = '.rbac account role';
UPDATE `command` SET `name` = 'rbac account role grant' WHERE `name` = '.rbac account role grant';
UPDATE `command` SET `name` = 'rbac account role deny' WHERE `name` = '.rbac account role deny';
UPDATE `command` SET `name` = 'rbac account role revoke' WHERE `name` = '.rbac account role revoke';
UPDATE `command` SET `name` = 'rbac account permission' WHERE `name` = '.rbac account permission';
UPDATE `command` SET `name` = 'rbac account permission grant' WHERE `name` = '.rbac account permission grant';
UPDATE `command` SET `name` = 'rbac account permission deny' WHERE `name` = '.rbac account permission deny';
UPDATE `command` SET `name` = 'rbac account permission revoke' WHERE `name` = '.rbac account permission revoke';
UPDATE `command` SET `name` = 'rbac account list groups' WHERE `name` = '.rbac account list groups';
UPDATE `command` SET `name` = 'rbac account list roles' WHERE `name` = '.rbac account list roles';
UPDATE `command` SET `name` = 'rbac account list permissions' WHERE `name` = '.rbac account list permissions';
-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 217 WHERE `name` = 'account';
UPDATE `command` SET `permission` = 218 WHERE `name` = 'account addon';
UPDATE `command` SET `permission` = 219 WHERE `name` = 'account create';
UPDATE `command` SET `permission` = 220 WHERE `name` = 'account delete';
UPDATE `command` SET `permission` = 221 WHERE `name` = 'account lock';
UPDATE `command` SET `permission` = 222 WHERE `name` = 'account lock country';
UPDATE `command` SET `permission` = 223 WHERE `name` = 'account lock ip';
UPDATE `command` SET `permission` = 224 WHERE `name` = 'account onlinelist';
UPDATE `command` SET `permission` = 225 WHERE `name` = 'account password';
UPDATE `command` SET `permission` = 226 WHERE `name` = 'account set';
UPDATE `command` SET `permission` = 227 WHERE `name` = 'account set addon';
UPDATE `command` SET `permission` = 228 WHERE `name` = 'account set gmlevel';
UPDATE `command` SET `permission` = 229 WHERE `name` = 'account set password';
-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 230 WHERE `name` = 'achievement';
UPDATE `command` SET `permission` = 231 WHERE `name` = 'achievement add';
UPDATE `command` SET `permission` = 232 WHERE `name` = 'arena';
UPDATE `command` SET `permission` = 233 WHERE `name` = 'arena captain';
UPDATE `command` SET `permission` = 234 WHERE `name` = 'arena create';
UPDATE `command` SET `permission` = 235 WHERE `name` = 'arena disband';
UPDATE `command` SET `permission` = 236 WHERE `name` = 'arena info';
UPDATE `command` SET `permission` = 237 WHERE `name` = 'arena lookup';
UPDATE `command` SET `permission` = 238 WHERE `name` = 'arena rename';
-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 239 WHERE `name` = 'ban';
UPDATE `command` SET `permission` = 240 WHERE `name` = 'ban account';
UPDATE `command` SET `permission` = 241 WHERE `name` = 'ban character';
UPDATE `command` SET `permission` = 242 WHERE `name` = 'ban ip';
UPDATE `command` SET `permission` = 243 WHERE `name` = 'ban playeraccount';
UPDATE `command` SET `permission` = 244 WHERE `name` = 'baninfo';
UPDATE `command` SET `permission` = 245 WHERE `name` = 'baninfo account';
UPDATE `command` SET `permission` = 246 WHERE `name` = 'baninfo character';
UPDATE `command` SET `permission` = 247 WHERE `name` = 'baninfo ip';
UPDATE `command` SET `permission` = 248 WHERE `name` = 'banlist';
UPDATE `command` SET `permission` = 249 WHERE `name` = 'banlist account';
UPDATE `command` SET `permission` = 250 WHERE `name` = 'banlist character';
UPDATE `command` SET `permission` = 251 WHERE `name` = 'banlist ip';
UPDATE `command` SET `permission` = 252 WHERE `name` = 'unban';
UPDATE `command` SET `permission` = 253 WHERE `name` = 'unban account';
UPDATE `command` SET `permission` = 254 WHERE `name` = 'unban character';
UPDATE `command` SET `permission` = 255 WHERE `name` = 'unban ip';
UPDATE `command` SET `permission` = 256 WHERE `name` = 'unban playeraccount';
DELETE FROM `creature_ai_scripts` WHERE `action1_type`=27;

-- INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
--   ('343001', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '5043', '17013', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Agamaggan''s Agility on Quest Complete'),
--   ('343002', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '5042', '16612', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Agamaggan''s Strength on Quest Complete'),
--   ('343003', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '5046', '16610', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Razorhide on Quest Complete'),
--   ('343004', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '5045', '10767', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Rising Spirit on Quest Complete'),
--   ('343005', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '889', '16618', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Spirit of the Wind on Quest Complete'),
--   ('343006', '3430', '0', '0', '100', '0', '0', '0', '0', '0', '27', '5044', '7764', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mangletooth - Cast Wisdom of Agamaggan on Quest Complete');

UPDATE `smart_scripts` SET `action_type`=33, `action_param2`=0 WHERE `source_type`=0 AND `action_type`=27; -- by VM

-- all quests that used RequiredSpellCastX fields
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|32 WHERE `Id` IN
(28,29,532,553,849,877,905,974,2118,2932,2994,3825,5096,5163,5165,5441,
6124,6129,6381,6395,6661,8346,8889,9066,9169,9193,9275,9294,9391,9440,
9444,9447,9489,9526,9600,9629,9667,9685,9720,9805,9824,9874,9910,10011,
10078,10087,10129,10144,10146,10182,10208,10233,10240,10305,10306,10307,
10313,10335,10345,10392,10426,10446,10447,10488,10545,10564,10598,10637,
10688,10714,10771,10792,10802,10808,10813,10833,10859,10866,10895,10913,
10923,10935,11055,11150,11205,11232,11245,11247,11258,11259,11285,11330,
11332,11421,11496,11515,11523,11542,11543,11547,11568,11576,11582,11610,
11617,11637,11656,11677,11684,11694,11713,11880,12092,12094,12096,12154,
12172,12173,12180,12213,12232,12267,12417,12449,12502,12588,12591,12598,
12641,12669,12728,12859,13110,13119,13211);
-- Deeprun Rat Roundup (6661)

SET @QUEST                 := 6661;  -- Random Comment
SET @NPC_RAT               := 13016; -- Deeprun Rat
SET @NPC_ENTHRALLED_RAT    := 13017; -- Enthralled Deeprun Rat
SET @NPC_MONTY             := 12997; -- Monty <Rat Extermination Specialist>
SET @SPELL_FLUTE           := 21050; -- Melodious Rapture
SET @SPELL_FLUTE_VISUAL    := 21051; -- Melodious Rapture Visual (DND)
SET @SPELL_BASH            := 21052; -- Monty Bashes Rats (DND)

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_RAT;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_ENTHRALLED_RAT;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_MONTY;

UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=1141; -- Deeprun Rat
-- Addon data for creature 13016 (Deeprun Rat)
DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_RAT;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@NPC_RAT,0,0,1,0, ''); -- Deeprun Rat

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_RAT,@NPC_ENTHRALLED_RAT,@NPC_MONTY);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_RAT,0,0,1,8,0,100,1,@SPELL_FLUTE,0,0,0,12,@NPC_ENTHRALLED_RAT,2,120000,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - On Spellhit - Summon Enthralled Rat'),
(@NPC_RAT,0,1,0,61,0,100,0,0,0,0,0,41,100,1,0,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - On link - Despawn'),
--
(@NPC_ENTHRALLED_RAT,0,0,1,54,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - Just summoned - Update Faction'),
(@NPC_ENTHRALLED_RAT,0,1,2,61,0,100,0,0,0,0,0,33,@NPC_ENTHRALLED_RAT,0,0,0,0,0,21,5,0,0,0,0,0,0,'Deeprun Rat - On Link - Give Q credit'),
(@NPC_ENTHRALLED_RAT,0,2,3,61,0,100,0,0,0,0,0,11,@SPELL_FLUTE_VISUAL,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - On Link - Set Flute Visual'),
(@NPC_ENTHRALLED_RAT,0,3,4,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,21,5,0,0,0,0,0,0,'Deeprun Rat - On Link - Follow Player'),
(@NPC_ENTHRALLED_RAT,0,4,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - On LInk- Set Phase 1'),
(@NPC_ENTHRALLED_RAT,0,5,0,8,1,100,0,@SPELL_BASH,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deeprun Rat - On Spellhit - Despawn'),
--
(@NPC_MONTY,0,0,1,20,0,100,0,@QUEST,0,0,0,11,@SPELL_BASH,0,0,0,0,0,1,0,0,0,0,0,0,0,'Monty - On Reward Quest - Cast Bash'),
(@NPC_MONTY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Monty - On Reward Quest - Talk');

DELETE FROM `creature_text` WHERE `entry`=@NPC_MONTY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_MONTY,0,0,'Into the box me pretties! Thats it. One by one ye go.',12,0,0,0,0,0,'Monty');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_BASH;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_BASH,0,0,31,0,3,@NPC_ENTHRALLED_RAT,0,0,0,'','Spell Bash target rats');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rotface_vile_gas_trigger';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72285, 'spell_rotface_vile_gas_trigger'),
(72288, 'spell_rotface_vile_gas_trigger');
