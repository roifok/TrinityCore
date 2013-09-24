-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 201 WHERE `name` = 'rbac account';
UPDATE `command` SET `permission` = 202 WHERE `name` = 'rbac account group';
UPDATE `command` SET `permission` = 203 WHERE `name` = 'rbac account group add';
UPDATE `command` SET `permission` = 204 WHERE `name` = 'rbac account group remove';
UPDATE `command` SET `permission` = 205 WHERE `name` = 'rbac account role';
UPDATE `command` SET `permission` = 206 WHERE `name` = 'rbac account role grant';
UPDATE `command` SET `permission` = 207 WHERE `name` = 'rbac account role deny';
UPDATE `command` SET `permission` = 208 WHERE `name` = 'rbac account role revoke';
UPDATE `command` SET `permission` = 209 WHERE `name` = 'rbac account permission';
UPDATE `command` SET `permission` = 210 WHERE `name` = 'rbac account permission grant';
UPDATE `command` SET `permission` = 211 WHERE `name` = 'rbac account permission deny';
UPDATE `command` SET `permission` = 212 WHERE `name` = 'rbac account permission revoke';
UPDATE `command` SET `permission` = 214 WHERE `name` = 'rbac account list groups';
UPDATE `command` SET `permission` = 215 WHERE `name` = 'rbac account list roles';
UPDATE `command` SET `permission` = 216 WHERE `name` = 'rbac account list permissions';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (63276,63278);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(63276,'spell_general_vezax_mark_of_the_faceless'),
(63278,'spell_general_vezax_mark_of_the_faceless_leech');
DELETE FROM `trinity_string` WHERE `entry` IN (453, 548, 549, 550, 714, 716, 749, 752, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 871); 
REPLACE INTO `trinity_string` (`entry`, `content_default`) VALUES
(453,'│Player %s %s (guid: %u)'),
(548,'│ GM Mode active, Phase: -1'),
(549,'├─ Banned: (Type: %s, Reason: %s, Time: %s, By: %s)'),
(550,'├─ Muted: (Reason: %s, Time: %s, By: %s)'),
(714,'│ Account: %s (ID: %u), GMLevel: %u'),
(716,'│ Last Login: %s (Failed Logins: %u)'),
(749,'│ OS: %s - Latency: %u ms - Mail: %s'),
(752,'│ Last IP: %s (Locked: %s)'),
(843,'│ Level: %u (%u/%u XP (%u XP left))'),
(844,'│ Race: %s %s, %s'),
(845,'│ Alive ?: %s'),
(846,'│ Phase: %u'),
(847,'│ Money: %ug%us%uc'),
(848,'│ Map: %s, Area: %s, Zone: %s'),
(849,'│ Guild: %s (ID: %u)'),
(850,'├─ Rank: %s'),
(851,'├─ Note: %s'),
(852,'├─ O. Note: %s'),
(853,'│ Played time: %s'),
(854,'└ Mails: %d Read/%u Total'),
(871,'│ Level: %u');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (25510,25511,25512,25513);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25510,25511,25512,25513) AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25510, 0, 0, 0, 8, 0, 100, 1, 45692, 0, 0, 0, 33, 25510, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '1st Kvaldir Vessel (The Serpent''s Maw) - On Spellhit "Use Tuskarr Torch" - Give Quest Credit'),
(25511, 0, 0, 0, 8, 0, 100, 1, 45692, 0, 0, 0, 33, 25511, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '2nd Kvaldir Vessel (The Kur Drakkar) - On Spellhit "Use Tuskarr Torch" - Give Quest Credit'),
(25512, 0, 0, 0, 8, 0, 100, 1, 45692, 0, 0, 0, 33, 25512, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '3rd Kvaldir Vessel (Bor''s Hammer) - On Spellhit "Use Tuskarr Torch" - Give Quest Credit'),
(25513, 0, 0, 0, 8, 0, 100, 1, 45692, 0, 0, 0, 33, 25513, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '4th Kvaldir Vessel (Bor''s Anvil) - On Spellhit "Use Tuskarr Torch" - Give Quest Credit');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (19866,19867,19868);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19866,19867,19868) AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(19866, 0, 0, 0, 8, 0, 100, 1, 34646, 0, 0, 0, 33, 19866, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis East KV Rune - On Spellhit "Activate Kirin''Var Rune" - Give Quest Credit'),
(19867, 0, 0, 0, 8, 0, 100, 1, 34646, 0, 0, 0, 33, 19867, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis NE KV Rune - On Spellhit "Activate Kirin''Var Rune" - Give Quest Credit'),
(19868, 0, 0, 0, 8, 0, 100, 1, 34646, 0, 0, 0, 33, 19868, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis West KV Rune - On Spellhit "Activate Kirin''Var Rune" - Give Quest Credit');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19723,19724) AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(19723, 0, 0, 1, 8, 0, 100, 1, 34526, 0, 0, 0, 80, 1972300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Ballista - On Spellhit - Run Script'),
(19723, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 19723, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Ballista - On Spellhit (Link) - Quest Credit'),
(19724, 0, 0, 1, 8, 0, 100, 1, 34526, 0, 0, 0, 80, 1972400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Tent - On Spellhit - Run Script'),
(19724, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 19724, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invis BE Tent - On Spellhit (Link) - Quest Credit');
-- --------------------------------------------------------------------------------------
-- -- Skinning Loot Revamp by ZxBiohazardZx
-- --------------------------------------------------------------------------------------
SET @var := 100000; -- Set this to the reference value, gap is 10 minimum, more ofc later (10<00X>)?
-- Delete old junk that isnt needed & assign new template to those creatures:
UPDATE `creature_template` SET `skinloot`=0 WHERE `entry`=534;
DELETE FROM `skinning_loot_template` WHERE `entry`=534;
UPDATE `creature_template` SET `skinloot`=@var WHERE `skinloot` IN (721,883,890,2098,2442,2620,4166,5951,17467,10780,12296,12297,12298);
DELETE FROM `skinning_loot_template` WHERE `entry` IN(721,883,890,2098,2442,2620,4166,5951,17467,10780,12296,12297,12298);
-- Var+1
UPDATE `creature_template` SET `skinloot`=@var+1 WHERE `skinloot`=100007;
DELETE FROM `skinning_loot_template` WHERE `entry`=100007;
-- Var+2
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+2 WHERE `skinloot` IN (
 113, 118, 119, 330, 390, 524, 525, 822, 834,1125,1126,1127,1128,1131,1132,1133,1134,1135,
1137,1138,1190,1196,1199,1201,1547,1548,1549,1553,1554,1689,1765,1922,2033,2034,2042,2043,
2070,2175,2956,2957,2958,2959,2960,2972,2973,3035,3068,3099,3100,3110,3121,3122,3123,3125,
3126,3127,3130,3131,3225,3226,3227,3566,5807,6789,10105,10356,14430,15650,15651,15652,
16347,16353,17199,17200,17202,17203,17345,17372,17373);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 113, 118, 119, 330, 390, 524, 525, 822, 834,1125,1126,1127,1128,1131,1132,1133,1134,1135,
1137,1138,1190,1196,1199,1201,1547,1548,1549,1553,1554,1689,1765,1922,2033,2034,2042,2043,
2070,2175,2956,2957,2958,2959,2960,2972,2973,3035,3068,3099,3100,3110,3121,3122,3123,3125,
3126,3127,3130,3131,3225,3226,3227,3566,5807,6789,10105,10356,14430,15650,15651,15652,
16347,16353,17199,17200,17202,17203,17345,17372,17373);
-- Var+3
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+3 WHERE `skinloot` IN (
 157, 454, 833,1130,1186,1188,1191,1271,1388,1693,1766,1769,1770,1778,1779,1782,1797,1892,
1893,1896,1924,1961,1972,2069,2163,2164,2185,2321,2322,2974,3056,3058,3231,3234,3241,3242,
3243,3244,3246,3248,3254,3255,3415,3425,3461,3531,4127,4316,5829,5865,12431,12432,16348,
16354,17347,17525,17556);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 157, 454, 833,1130,1186,1188,1191,1271,1388,1693,1766,1769,1770,1778,1779,1782,1797,1892,
1893,1896,1924,1961,1972,2069,2163,2164,2185,2321,2322,2974,3056,3058,3231,3234,3241,3242,
3243,3244,3246,3248,3254,3255,3415,3425,3461,3531,4127,4316,5829,5865,12431,12432,16348,
16354,17347,17525,17556);
-- Var+4 
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+4 WHERE `skinloot` IN (
 213, 547, 565,1189,1192,1224,2071,2165,2172,2187,2237,2323,3236,3240,3245,3247,3256,3257,
3398,3416,3424,3426,3463,3466,3475,3721,3816,3823,4008,4009,4011,4129,5053,6788,10644,16349,
16355,17348,17527,17588,17589);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 213, 547, 565,1189,1192,1224,2071,2165,2172,2187,2237,2323,3236,3240,3245,3247,3256,3257,
3398,3416,3424,3426,3463,3466,3475,3721,3816,3823,4008,4009,4011,4129,5053,6788,10644,16349,
16355,17348,17527,17588,17589);
-- Var+5 
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+5 WHERE `skinloot` IN (
 335, 345, 521, 628, 819, 923,1015,1016,1017,1020,1021,1022,1258,1400,1417,1923,2089,2275,
2351,2354,2356,2384,2476,2529,3235,3237,3238,3239,3249,3250,3252,3472,3473,3474,3774,3809,
3810,3817,3824,4012,4013,4014,4015,4016,4018,4019,4031,4032,4042,4044,4067,4117,4126,4126,
4128,4250,5835,12678,12723,12940);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 335, 345, 521, 628, 819, 923,1015,1016,1017,1020,1021,1022,1258,1400,1417,1923,2089,2275,
2351,2354,2356,2384,2476,2529,3235,3237,3238,3239,3249,3250,3252,3472,3473,3474,3774,3809,
3810,3817,3824,4012,4013,4014,4015,4016,4018,4019,4031,4032,4042,4044,4067,4117,4126,4126,
4128,4250,5835,12678,12723,12940);
-- Var+6 
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+6 WHERE `skinloot` IN (1225,3653,3851,3853,3854,3855,3861,3862,3864,3865,3914,5058);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (1225,3653,3851,3853,3854,3855,3861,3862,3864,3865,3914,5058);
-- Var+7 
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+7 WHERE `skinloot` IN (3857,3859,3866,3868,3886,4279,4511,4514,4824,4827,4887,14357);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (3857,3859,3866,3868,3886,4279,4511,4514,4824,4827,4887,14357);
-- Var+8
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+8 WHERE `skinloot` IN (1042,1043,1069);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (1042,1043,1069);
-- Var+9
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+9 WHERE `skinloot` IN (3630,3631,3632,3633,3634,3636,3637,3641,5048,5056,5755,5756,5762,8886,20797);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (3630,3631,3632,3633,3634,3636,3637,3641,5048,5056,5755,5756,5762,8886,20797);
-- Var+10
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+10 WHERE `skinloot` IN (
 205, 206, 533, 681, 683, 855, 898, 920,1018,1019,1023,1150,1353,2248,2385,2408,2559,3476,
3789,3791,3811,3815,3818,3825,4017,4041,4107,4109,4110,4118,4119,4124,4142,4147,4248,4249,4548,
4688,5827,6071,6167,10116,10882,12677);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 205, 206, 533, 681, 683, 855, 898, 920,1018,1019,1023,1150,1353,2248,2385,2408,2559,3476,
3789,3791,3811,3815,3818,3825,4017,4041,4107,4109,4110,4118,4119,4124,4142,4147,4248,4249,4548,
4688,5827,6071,6167,10116,10882,12677);
-- Var+11
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+11 WHERE `skinloot` IN (
 507, 682, 685, 686, 688, 689, 736, 856,1084,1085,1108,1151,1152,2249,2250,2251,2406,
2407,2560,2727,4139,4140,4143,4144,4150,4151,4304,4341,4351,4689,4696,4697,4700,4726,
4728,10131,10992,12676);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
 507, 682, 685, 686, 688, 689, 736, 856,1084,1085,1108,1151,1152,2249,2250,2251,2406,
2407,2560,2727,4139,4140,4143,4144,4150,4151,4304,4341,4351,4689,4696,4697,4700,4726,
4728,10131,10992,12676);
-- Var+12
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `skinloot`=@var+12 WHERE `skinloot` IN (
3927,4274,4515,4538,4825,4829);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (
3927,4274,4515,4538,4825,4829);
-- Var+13
UPDATE `creature_template` SET `skinloot`=@var+13 WHERE `skinloot` IN 
(687, 690, 728, 767, 772, 854, 874,1082,1114,1557,2473,2561,2728,2729,2731,2732,4342,4343,
4344,4345,4347,4348,4352,4355,4356,4357,4388,4662,4678,4681,4685,4690,4699,4701,4702,4727,
4729,10136,11785,13602,14227,14232,14233);
DELETE FROM `skinning_loot_template` WHERE `entry` IN
(687, 690, 728, 767, 772, 854, 874,1082,1114,1557,2473,2561,2728,2729,2731,2732,4342,4343,
4344,4345,4347,4348,4352,4355,4356,4357,4388,4662,4678,4681,4685,4690,4699,4701,4702,4727,
4729,10136,11785,13602,14227,14232,14233);

-- Var+14
UPDATE `creature_template` SET `skinloot`=@var+14 WHERE `skinloot` IN 
( 730,1087,1511,1514,1516,1550,1551,1558,2657,2658,2734,4389,4841,5224,5260,5268,5272,5300,
5304,5305,5307,5308,5419,5420,5425,5426,7268,11786,12741);
DELETE FROM `skinning_loot_template` WHERE `entry` IN
( 730,1087,1511,1514,1516,1550,1551,1558,2657,2658,2734,4389,4841,5224,5260,5268,5272,5300,
5304,5305,5307,5308,5419,5420,5425,5426,7268,11786,12741);

-- --------------------------------------------------------------------------------------
-- -- Add the new profiles
-- --------------------------------------------------------------------------------------
DELETE FROM `skinning_loot_template` WHERE `entry` BETWEEN @var AND @var+15;
REPLACE INTO `skinning_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Var (Light Leather)
(@var,2318,90,1,1,1,1), -- Ruined Leather Scraps
(@var,2934,10,1,1,1,1), -- Light Leather
-- Var+1 (Light Leather) -- 
(@var+1,2934,80,1,1,1,1), -- Light Leather
(@var+1, 783,20,1,1,1,1), -- Light Hide
-- Var+2 (Light Leather
(@var+2,2934,60,1,1,1,1), -- Ruined Leather Scraps
(@var+2,2318,40,1,1,1,1), -- Light Leather
-- Var+3 (Light Leather)
(@var+3,2318,60,1,1,1,1), -- Light Leather
(@var+3,2934,35,1,1,1,1), --  Ruined Leather Scraps
(@var+3, 783, 5,1,1,1,1), --  Light Hide
-- Var+4 (Light/Medium Leather
(@var+4,2318,72,1,1,1,2), -- Light Leather
(@var+4,2319,20,1,1,1,1), -- Medium Leather
(@var+4, 783, 5,1,1,1,1), -- Light Hide
(@var+4,4232, 3,1,1,1,1), -- Medium Hide
-- Var+5 (Light/Medium Leather
(@var+5,2319,50,1,1,1,1), -- Medium Leather
(@var+5,2318,42,1,1,1,2), -- Light Leather
(@var+5, 783, 5,1,1,1,1), -- Light Hide
(@var+5,4232, 3,1,1,1,1), -- Medium Hide
-- Var+6 (Light/Medium Leather2)
(@var+6,2318,65,1,1,1,2), -- Light Leather
(@var+6,2319,25,1,1,1,2), -- Medium Leather
(@var+6, 783, 7,1,1,1,1), -- Light Hide
(@var+6,4232, 3,1,1,1,1), -- Medium Hide
-- Var+7 (Light/Medium Leather2)
(@var+7,2318,55,1,1,1,2), -- Light Leather
(@var+7,2319,35,1,1,1,2), -- Medium Leather
(@var+7, 783, 7,1,1,1,1), -- Light Hide
(@var+7,4232, 3,1,1,1,1), -- Medium Hide
-- Var+8 (Red Whelp Scale Dragons)
(@var+8,2318,37,1,1,1,2), -- Light Leather
(@var+8,2319,45,1,1,1,1), -- Medium Leather
(@var+8, 783, 3,1,1,1,1), -- Light Hide
(@var+8,4232, 5,1,1,1,1), -- Medium Hide
(@var+8,7287,10,1,1,1,1), -- Red Whelp Scale
-- Var+9 (Deviate Scales)
(@var+9,2318,50,1,1,1,2), -- Light Leather
(@var+9,2319,25,1,1,1,2), -- Medium Leather
(@var+9,6470,10,1,1,1,1), -- Deviate Scale
(@var+9, 783, 7,1,1,1,1), -- Light Hide
(@var+9,6471, 5,1,1,1,1), -- Perfect Deviate Scale
(@var+9,4232, 3,1,1,1,1), -- Medium Hide
-- Var+10 (Medium Leather)
(@var+10,2319,73,1,1,1,1), -- Medium Leather
(@var+10,4234,20,1,1,1,1), -- Heavy Leather
(@var+10,4232, 5,1,1,1,1), -- Medium Hide
(@var+10,4235, 2,1,1,1,1), -- Heavy Hide
-- Var+11 (Medium Leather)
(@var+11,4234,51,1,1,1,1), -- Heavy Leather
(@var+11,2319,42,1,1,1,1), -- Medium Leather
(@var+11,4232, 4,1,1,1,1), -- Medium Hide
(@var+11,4235, 3,1,1,1,1), -- Heavy Hide
-- Var+12 (Medium Leather)
(@var+12,2319,64,1,1,1,2), -- Medium Leather
(@var+12,4234,27,1,1,1,2), -- Heavy Leather
(@var+12,4232, 6,1,1,1,1), -- Medium Hide
(@var+12,4235, 3,1,1,1,1), -- Heavy Hide
-- Var+13 (Heavy Leather)
(@var+13,4234,77,1,1,1,1), -- Heavy Leather
(@var+13,4304,20,1,1,1,1), -- Thick Leather
(@var+13,4235, 3,1,1,1,1), -- Heavy Hide
-- Var+14 (Heavy Leather)
(@var+14,4304,50,1,1,1,1), -- Thick Leather
(@var+14,4234,45,1,1,1,1), -- Heavy Leather
(@var+14,8169, 3,1,1,1,1), -- Thick Hide
(@var+14,4235, 2,1,1,1,1), -- Heavy Hide
-- Var+15 (Green Whelp Scale)
(@var+15,4234,40,1,1,1,1), -- Heavy Leather
(@var+15,2319,33,1,1,1,1), -- Medium Leather
(@var+15,7392,20,1,1,1,1), -- Green Whelp Scale
(@var+15,4232, 4,1,1,1,1), -- Medium Hide
(@var+15,4235, 3,1,1,1,1); -- Heavy Hide
DELETE FROM `creature_addon` WHERE `auras` LIKE '%46598%'; -- no need to specify GUID, these are unique
DELETE FROM `creature_addon` WHERE `auras` LIKE '%43671%'; -- no need to specify GUID, these are unique
DELETE FROM `creature_addon` WHERE `guid`=85236;
REPLACE INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(85236,0,22471,0,1,0,'63500 64718');
DELETE FROM `creature_addon` WHERE `guid` IN (132681,128620);
DELETE FROM `trinity_string` WHERE `entry` IN (749, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881);
REPLACE INTO `trinity_string` (`entry`, `content_default`) VALUES
(749,'│ OS: %s - Latency: %u ms'),
(872, 'Entered email is not equal to registration email, check input'),
(873, 'The new emails do not match'),
(874, 'The email was changed'),
(875, 'Your email can''t be longer than 64 characters, email not changed!'),
(876, 'Email not changed (unknown error)!'),
(877, 'Email change unnecessary, new email is equal to old email'),
(878, 'Your email is: %s'),
(879, '│ Registration Email: %s - Email: %s'),
(880, 'Security Level: %s'),
(881, 'You require an email to change your password.');

UPDATE `command` SET `help` = 'Syntax: .account password $old_password $new_password $new_password [$email]\r\n\r\nChange your account password. You may need to check the actual security mode to see if email input is necessary.' WHERE name = 'account password';
UPDATE `command` SET `help` = 'Syntax: .account\r\n\r\nDisplay the access level of your account and the email adress if you possess the necessary permissions.' WHERE name = 'account';

DELETE FROM `command` WHERE `name` = 'account email';
DELETE FROM `command` WHERE `name` = 'account set sec email';
DELETE FROM `command` WHERE `name` = 'account set sec regmail';

REPLACE INTO `command` (`name`, `permission`, `help`) VALUES
('account email', 263, 'Syntax: .account email $oldemail $currentpassword $newemail $newemailconfirmation\r\n\r\n Change your account email. You may need to check the actual security mode to see if email input is necessary for password change'),
('account set sec email', 265, 'Syntax: .account set sec email $accountname $email $emailconfirmation\r\n\r\nSet the email for entered player account.'),
('account set sec regmail', 266, 'Syntax: .account set sec regmail $account $regmail $regmailconfirmation\r\n\r\nSets the regmail for entered player account.');
UPDATE `smart_scripts` SET `target_type`=7 WHERE `entryorguid` IN (18818,21237,19009,21236) AND `source_type`=0 AND `id`=1;
/* cs_cheat.cpp */

SET @id = 291;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'cheat';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'cheat casttime';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'cheat cooldown';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'cheat explore';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'cheat god';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'cheat power';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'cheat status';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'cheat taxi';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'cheat waterwalk';
/* cs_debug.cpp */

SET @id = 300;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'debug';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'debug anim';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'debug areatriggers';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'debug arena';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'debug bg';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'debug entervehicle';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'debug getitemstate';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'debug getitemvalue';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'debug getvalue';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'debug hostil';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'debug itemexpire';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'debug lootrecipient';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'debug los';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'debug mod32value';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'debug moveflags';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'debug play';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'debug play cinematics';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'debug play movie';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'debug play sound';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'debug send';
UPDATE `command` SET `permission` = @id+20 WHERE `name` = 'debug send buyerror';
UPDATE `command` SET `permission` = @id+21 WHERE `name` = 'debug send channelnotify';
UPDATE `command` SET `permission` = @id+22 WHERE `name` = 'debug send chatmessage';
UPDATE `command` SET `permission` = @id+23 WHERE `name` = 'debug send equiperror';
UPDATE `command` SET `permission` = @id+24 WHERE `name` = 'debug send largepacket';
UPDATE `command` SET `permission` = @id+25 WHERE `name` = 'debug send opcode';
UPDATE `command` SET `permission` = @id+26 WHERE `name` = 'debug send qinvalidmsg';
UPDATE `command` SET `permission` = @id+27 WHERE `name` = 'debug send qpartymsg';
UPDATE `command` SET `permission` = @id+28 WHERE `name` = 'debug send sellerror';
UPDATE `command` SET `permission` = @id+29 WHERE `name` = 'debug send setphaseshift';
UPDATE `command` SET `permission` = @id+30 WHERE `name` = 'debug send spellfail';
UPDATE `command` SET `permission` = @id+31 WHERE `name` = 'debug setaurastate';
UPDATE `command` SET `permission` = @id+32 WHERE `name` = 'debug setbit';
UPDATE `command` SET `permission` = @id+33 WHERE `name` = 'debug setitemvalue';
UPDATE `command` SET `permission` = @id+34 WHERE `name` = 'debug setvalue';
UPDATE `command` SET `permission` = @id+35 WHERE `name` = 'debug setvid';
UPDATE `command` SET `permission` = @id+36 WHERE `name` = 'debug spawnvehicle';
UPDATE `command` SET `permission` = @id+37 WHERE `name` = 'debug threat';
UPDATE `command` SET `permission` = @id+38 WHERE `name` = 'debug update';
UPDATE `command` SET `permission` = @id+39 WHERE `name` = 'debug uws';
UPDATE `command` SET `permission` = @id+40 WHERE `name` = 'wpgps';
/* cs_deserter.cpp */

SET @id = 341;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'deserter';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'deserter bg';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'deserter bg add';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'deserter bg remove';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'deserter instance';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'deserter instance add';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'deserter instance remove';
/* cs_disable.cpp */

SET @id = 348;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'disable';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'disable add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'disable add achievement_criteria';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'disable add battleground';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'disable add map';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'disable add mmap';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'disable add outdoorpvp';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'disable add quest';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'disable add spell';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'disable add vmap';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'disable remove';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'disable remove achievement_criteria';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'disable remove battleground';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'disable remove map';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'disable remove mmap';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'disable remove outdoorpvp';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'disable remove quest';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'disable remove spell';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'disable remove vmap';
/* cs_event.cpp */

SET @id = 367;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'event';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'event activelist';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'event start';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'event stop';
/* cs_gm.cpp */

SET @id = 371;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'gm';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'gm chat';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'gm fly';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'gm ingame';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'gm list';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'gm visible';
/* cs_go.cpp */

SET @id = 371;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'go';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'go creature';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'go graveyard';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'go grid';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'go object';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'go taxinode';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'go ticket';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'go trigger';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'go xyz';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'go zonexy';
/* cs_gobject.cpp */

SET @id = 371;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'gobject';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'gobject activate';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'gobject add';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'gobject add temp';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'gobject delete';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'gobject info';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'gobject move';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'gobject near';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'gobject set';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'gobject set phase';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'gobject set state';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'gobject target';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'gobject turn';
/* cs_guild.cpp */

SET @id = 401;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'guild';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'guild create';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'guild delete';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'guild invite';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'guild uninvite';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'guild rank';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'guild rename';
/* cs_honor.cpp */

SET @id = 408;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'honor';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'honor add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'honor add kill';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'honor update';
/* cs_instance.cpp */

SET @id = 408;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'instance';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'instance listbinds';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'instance unbind';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'instance stats';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'instance savedata';
/* cs_learn.cpp */

SET @id = 417;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'learn';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'learn all';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'learn all my';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'learn all my class';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'learn all my pettalents';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'learn all my spells';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'learn all my talents';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'learn all gm';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'learn all crafts';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'learn all default';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'learn all lang';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'learn all recipes';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'unlearn';
/* cs_lfg.cpp */

SET @id = 430;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'lfg';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'lfg player';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'lfg group';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'lfg queue';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'lfg clean';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'lfg options';
/* cs_list.cpp */

SET @id = 436;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'list';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'list creature';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'list item';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'list object';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'list auras';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'list mail';
/* cs_lookup.cpp */

SET @id = 442;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'lookup';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'lookup area';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'lookup creature';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'lookup event';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'lookup faction';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'lookup item';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'lookup itemset';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'lookup object';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'lookup quest';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'lookup player';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'lookup player ip';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'lookup player account';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'lookup player email';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'lookup skill';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'lookup spell';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'lookup spell id';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'lookup taxinode';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'lookup tele';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'lookup title';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'lookup map';
/* cs_message.cpp */

SET @id = 462;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'announce';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'channel';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'channel set';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'channel set ownership';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'gmannounce';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'gmnameannounce';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'gmnotify';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'nameannounce';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'notify';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'whispers';
/* cs_cast.cpp */

SET @id = 263;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'cast';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'cast back';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'cast dist';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'cast self';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'cast target';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'cast dest';
/* cs_character.cpp */

SET @id = 273;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0  WHERE `name` = 'character';
UPDATE `command` SET `permission` = @id+1  WHERE `name` = 'character customize';
UPDATE `command` SET `permission` = @id+2  WHERE `name` = 'character changefaction';
UPDATE `command` SET `permission` = @id+3  WHERE `name` = 'character changerace';
UPDATE `command` SET `permission` = @id+4  WHERE `name` = 'character deleted';
UPDATE `command` SET `permission` = @id+5  WHERE `name` = 'character deleted delete';
UPDATE `command` SET `permission` = @id+6  WHERE `name` = 'character deleted list';
UPDATE `command` SET `permission` = @id+7  WHERE `name` = 'character deleted restore';
UPDATE `command` SET `permission` = @id+8  WHERE `name` = 'character deleted old';
UPDATE `command` SET `permission` = @id+9  WHERE `name` = 'character erase';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'character level';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'character rename';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'character reputation';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'character titles';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'levelup';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'pdump';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'pdump load';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'pdump write';
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (51849, 50840, 50834, 50830, 50831);
REPLACE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(51849, 51849, 59861),
(50840, 50840, 59848),
(50834, 50834, 59846),
(50830, 50830, 59844),
(50831, 50831, 59845);
-- Random comment
SET @QUEST              := 12470; -- Mystery of the Infinite (12470)
SET @NPC_HoE            := 27840; -- Hourglass of Eternity
SET @NPC_FU             := 27899; -- Future You
SET @NPC_ICM            := 27898; -- Infinite Chrono-Magus
SET @NPC_IA             := 27896; -- Infinite Assailant
SET @NPC_ID             := 27897; -- Infonite Destroyer
SET @NPC_IT             := 27900; -- Infinite Timerender
SET @SPELL_SUMMON_FU    := 49942; -- Mystery of the Infinite: Force Cast to Player of Summon Future You
SET @SPELL_CAST         := 49686; -- Mystery of the Infinite: Script Effect Player Cast Mirror Image
SET @SPELL_MIRROR       := 49889; -- Mystery of the Infinite: Future You's Mirror Image Aura
SET @SPELL_NEARBY       := 50867; -- Hourglass of Eternity Nearby
SET @AURA_VISUAL        := 50057; -- Mystery of the Infinite: Hourglass of Eternity Visual/Sound Aura
SET @AURA_CLASS         := 49925; -- Mystery of the Infinite: Future You's Mirror Class Aura
SET @FU_SAY_RAND        := 50037; -- Mystery of the Infinite: Future You's Whisper to Controller - Random
SET @FU_SAY_BYE         := 50023; -- Mystery of the Infinite: Future You's Whisper to Controller - Farewell
SET @FU_SAY_NOZD        := 50014; -- Mystery of the Infinite: Future You's Whisper to Controller - Nozdormu
SET @VIEW_INVISIBILITY  := 50020; -- Mystery of the Infinite: Hourglass cast See Invis on Master
SET @VIEW_INVISIBILITY1 := 50012; -- See Nozdormu Invisibility
SET @FU_DESPAWN_TIME    := 50022; -- Mystery of the Infinite: Future You's Despawn Timer
SET @SPELL_ASSAILANT    := 49900; -- Summon Infinite Assailant
SET @SPELL_DESTROYER    := 49901; -- Summon Infinite Destroyer
SET @SPELL_MAGUS        := 49902; -- Summon Infinite Chrono-Magus
SET @SPELL_TIMERENDER   := 49905; -- Summon Infinite Timerender

-- Hourglass of Eternity
UPDATE `creature` SET `orientation`=2.085232 WHERE `guid`=152260;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=27925;
UPDATE `creature_template` SET `AIName`='SmartAI',`RegenHealth`=0 WHERE `entry`=@NPC_HoE;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@NPC_HoE AND `source_type`=0) OR (`entryorguid`IN (@NPC_HoE*100,@NPC_HoE*100+1) AND `source_type`=9);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_HoE,0,0,1,54,0,100,1,0,0,0,0,85,@SPELL_SUMMON_FU,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On spawn - Invoker Cast'),
(@NPC_HoE,0,1,2,61,0,100,0,0,0,0,0,11,@SPELL_NEARBY,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On link - Cast Spell'),
(@NPC_HoE,0,2,3,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - Set passive - Self'),
(@NPC_HoE,0,3,6,61,0,100,0,0,0,0,0,80,@NPC_HoE*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On link - Start timed script'),
(@NPC_HoE,0,4,0,6,0,100,0,0,0,0,0,6,@QUEST,0,0,0,0,0,16,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On Death - Fail Quest'),
(@NPC_HoE,0,5,0,38,0,100,0,2,1,0,0,80,@NPC_HoE*100+1,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On Data Set  - Start timed script two'),
(@NPC_HoE,0,6,0,61,0,100,0,0,0,0,0,11,@AURA_VISUAL,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On link - Cast Spell'),

-- Wave 1 + Random speech
(@NPC_HoE*100,9,0,0,0,0,100,1,5000,5000,0,0,45,1,1,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,1,0,0,0,100,1,5000,5000,0,0,45,1,2,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,2,0,0,0,100,1,5000,5000,0,0,11,@SPELL_MAGUS,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
(@NPC_HoE*100,9,3,0,0,0,100,1,0,0,0,0,11,@SPELL_ASSAILANT,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
-- Wave 2 + Random speech
(@NPC_HoE*100,9,4,0,0,0,100,1,5000,5000,0,0,45,1,3,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,5,0,0,0,100,1,6000,6000,0,0,45,1,4,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,6,0,0,0,100,1,19000,19000,0,0,11,@SPELL_MAGUS,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
(@NPC_HoE*100,9,7,0,0,0,100,1,0,0,0,0,11,@SPELL_MAGUS,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
-- Wave 3 + Random speech
(@NPC_HoE*100,9,8,0,0,0,100,1,5000,5000,0,0,45,1,5,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,9,0,0,0,100,1,6000,6000,0,0,45,1,6,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,10,0,0,0,100,1,5000,5000,0,0,45,1,7,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,11,0,0,0,100,1,14000,14000,0,0,11,@SPELL_MAGUS,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
(@NPC_HoE*100,9,12,0,0,0,100,1,0,0,0,0,11,@SPELL_ASSAILANT,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
(@NPC_HoE*100,9,13,0,0,0,100,1,0,0,0,0,11,@SPELL_DESTROYER,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
-- Wave 4 + Random speech 
(@NPC_HoE*100,9,14,0,0,0,100,1,5000,5000,0,0,45,1,8,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,15,0,0,0,100,1,9000,9000,0,0,45,1,9,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,16,0,0,0,100,1,7000,7000,0,0,45,1,10,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,17,0,0,0,100,1,9000,9000,0,0,11,@SPELL_MAGUS,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100,9,18,0,0,0,100,1,0,0,0,0,11,@SPELL_ASSAILANT,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'OHourglass of Eternity - On update - Cast Spell on self'),
(@NPC_HoE*100,9,19,0,0,0,100,1,0,0,0,0,11,@SPELL_DESTROYER,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
-- Wave 5 final + Random speech
(@NPC_HoE*100,9,20,0,0,0,100,1,23000,23000,0,0,11,@SPELL_TIMERENDER,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Cast Spell on self'),
-- End Text Script
(@NPC_HoE*100+1,9,0,0,0,0,100,1,4000,4000,0,0,45,2,1,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100+1,9,1,0,0,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,21,10,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Give Quest Credit'),
(@NPC_HoE*100+1,9,2,0,0,0,100,1,8000,8000,0,0,45,2,2,0,0,0,0,19,@NPC_FU,20,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update - Set Data on Future You'),
(@NPC_HoE*100+1,9,3,0,0,0,100,1,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Hourglass of Eternity - On update -Despawn after timer');

-- Future You
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_FU AND `source_type`=0;
UPDATE `creature_template` SET `faction_A`=2141,`faction_H`=2141,`AIName`='SmartAI',`unit_flags`=0,`RegenHealth`=0 WHERE `entry`=@NPC_FU;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_FU,0,0,1,54,0,100,1,0,0,0,0,85,@SPELL_MIRROR,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spawn - Invoker Cast Spell - Self'),
(@NPC_FU,0,1,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,11,@NPC_HoE,10,0,0.0,0.0,0.0,0.0,'Future You - On link - Set Orientation'),
(@NPC_FU,0,2,3,38,0,100,0,1,1,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 1'),
(@NPC_FU,0,4,5,38,0,100,0,1,2,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 2'),
(@NPC_FU,0,6,7,38,0,100,0,1,3,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,7,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 3'),
(@NPC_FU,0,8,9,38,0,100,0,1,4,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,9,0,61,0,100,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 4'),
(@NPC_FU,0,10,11,38,0,100,0,1,5,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,11,0,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 5'),
(@NPC_FU,0,12,13,38,0,100,0,1,6,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,13,0,61,0,100,0,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 6'),
(@NPC_FU,0,14,15,38,0,100,0,1,7,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,15,0,61,0,100,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 7'),
(@NPC_FU,0,16,17,38,0,100,0,1,8,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,17,0,61,0,100,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 8'),
(@NPC_FU,0,18,19,38,0,100,0,1,9,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,19,0,61,0,100,0,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 9'),
(@NPC_FU,0,20,21,38,0,100,0,1,10,0,0,11,@FU_SAY_RAND,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,21,0,61,0,100,0,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 10'),
(@NPC_FU,0,22,23,38,0,100,0,2,1,0,0,11,@FU_SAY_NOZD,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Cast spell'),
(@NPC_FU,0,23,0,61,0,100,0,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On spellhit - Whisper 11'),
(@NPC_FU,0,24,25,38,0,100,0,2,2,0,0,1,12,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Data Set - Whisper 12'),
(@NPC_FU,0,25,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,11,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Link - Despawn after timer'),
(@NPC_FU,0,26,27,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Evade - Despawn after timer'),
(@NPC_FU,0,27,0,61,0,100,0,0,0,0,0,85,@SPELL_SUMMON_FU,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Future You - On Link - Cast Summon Clone');

-- Clone invoker weapons
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_MIRROR;
REPLACE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_MIRROR,41055,1,'Copy main weapon'),
(@SPELL_MIRROR,45206,1,'Copy off weapon');

-- Spell Area to see Nozdormu invis
DELETE FROM `spell_area` WHERE spell = @VIEW_INVISIBILITY1;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(@VIEW_INVISIBILITY1, 4175, 12470, 0, 0, 0, 2, 1, 2, 11);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_MIRROR;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,7,@SPELL_MIRROR,0,0,31,0,3,@NPC_FU,0,0,0,'','Spell target Future You');

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_HoE,@NPC_FU);
REPLACE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_HoE,0,0x0,0x1,''),
(@NPC_FU,0,0x0,0x1,'');

-- Future You's text
DELETE FROM `creature_text` WHERE `entry`=@NPC_FU;
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_FU,1,0,'Hey there, $N, don''t be alarmed. It''s me... you... from the future. I''m here to help.',15,0,100,396,0,0,'Future You'),
(@NPC_FU,2,0,'Head''s up... here they come. I''ll help as much as I can. Let''s just keep them off the hourglass!',15,0,100,396,0,0,'Future You'),
(@NPC_FU,3,0,'No matter what, you can''t die, because that would mean that I would cease to exist, right? I was here before when i was you. I''m so confused!',15,0,100,0,0,0,'Future You'),
(@NPC_FU,4,0,'I can''t believe that I used to wear that.',15,0,100,0,0,0,'Future You'),
(@NPC_FU,5,0,'Sorry, but Chromie said that I couldn''t reveal anything about your future to you. She said that if I did, I would cease to exist.',15,0,100,0,0,0,'Future You'),
(@NPC_FU,6,0,'Wow, I''d forgotten how inexperienced I used to be.',15,0,100,0,0,0,'Future You'),
(@NPC_FU,7,0,'Look at you fight; no wonder I turned to drinking.',15,0,100,0,0,0,'Future You'),
(@NPC_FU,8,0,'What? Am I here alone. We both have a stake at this, you know!',15,0,100,0,0,0,'Future You'),
(@NPC_FU,9,0,'Listen. I''m not supposed to tell you this, but there''s going to be this party that you''re invited to. Whatever you do, DO NOT DRINK THE PUNCH!',15,0,100,0,0,0,'Future You'),
(@NPC_FU,10,0,'Wish I could remember how many of the Infinite Dragonflight were going to try to stop you. This fight was so long ago.',15,0,100,0,0,0,'Future You'),
(@NPC_FU,11,0,'Look, $N, the hourglass has revealed Nozdormu!',15,0,100,25,0,0,'Future You'),
(@NPC_FU,12,0,'Farewell, $N, Keep us alive and get some better equipment!',15,0,100,0,0,0,'Future You');

UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=2111,`faction_H`=2111,`unit_flags`=559104 WHERE `entry` IN (@NPC_ICM,@NPC_IA,@NPC_ID,@NPC_IT);
-- Infinite Chrono-Magus
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_ICM;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ICM,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Set Phase 1 - On Aggro'),
(@NPC_ICM,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Stop Moving - On Aggro'),
(@NPC_ICM,0,2,0,4,1,100,1,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Cast bolt on Aggro'),
(@NPC_ICM,0,3,0,9,1,100,0,0,40,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Infinite Chrono-Magus -  Cast Bolt'),
(@NPC_ICM,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Start Moving - When not in bolt Range'),
(@NPC_ICM,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Stop Moving - 15 Yards'),
(@NPC_ICM,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Stop Moving - When in bolt Range'),
(@NPC_ICM,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Set Phase 2 - 15% Mana'),
(@NPC_ICM,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Start Moving - 15% Mana'),
(@NPC_ICM,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infinite Chrono-Magus - Set Phase 1 - When Mana is above 30%'),
(@NPC_ICM,0,10,0,0,1,100,0,8000,8000,12000,14000,11,38085,0,0,0,0,0,2,0,0,0,0,0,0,0,'Infinite Chrono-Magus - IC -Cast Shadow Blast');

-- Infinite Timerender
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_IT;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_IT,0,0,0,0,0,100,0,5000,6000,12000,17000,11,51020,0,0,0,0,0,2,0,0,0,0,0,0,0,'Infinite Timerender - IC - Cast Time Lapse'),
(@NPC_IT,0,1,0,6,0,100,0,0,0,0,0,45,2,1,0,0,0,0,19,@NPC_HoE,20,0,0,0,0,0,'Infinite Timerender - On Death - Set Data on HoE');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25310;

DELETE FROM `smart_scripts` WHERE `entryorguid`=25310 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25310, 0, 0, 0, 8, 0, 100, 1, 45414, 0, 0, 0, 33, 25310, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Borean - Westrift Cleftcliff Anomaly - On Spellhit "Calculate Seismic Readings" - Give Quest Credit');
-- Delete 2 incorrectly spawned mobs
DELETE FROM `creature` WHERE `guid` IN (66177,84663) AND `map` = 530;
UPDATE `creature_template` SET `spell1`=52497, `spell2`=52510 WHERE  `entry`=28843;
-- Disclosure (12710)
SET @MALMORTIS      := 28948;  -- Malmortis
SET @TRIGG_BUNNY    := 28617;  -- Drakuramas Teleport Bunny 01
SET @LOW_TRIG_B     := 114831; -- Lower Trigger Bunny Guid
SET @TRIGGER1       := 5080;   -- Lower Teleport Trigger
SET @UP_TRIG_B      := 114829; -- Upper Trigger Bunny guid
SET @TRIGGER2       := 5061;   -- Upper Teleport Trigger
SET @SCEPT_AURA     := 52678;  -- Teleporter Scepter Aura
SET @ESCORT_A       := 52839;  -- Summon Escort Aura
SET @T_SCRIPT       := 52676;  -- Drakuramas Teleport Script 03
SET @TELEPORT3      := 52677;  -- Drakuramas Teleport 03
SET @SUM_MAL        := 52775;  -- Summon Malmortis
SET @HEARTBEAT      := 61707;  -- Malmortis Heartbeat
SET @KILLCREDIT     := 53101;  -- Kill Credit
SET @T_SCRIPT2      := 52089;  -- Drakuramas Teleport Script 01
SET @TELEPORT1      := 52091;  -- Drakuramas Teleport 01

-- Drakuramas Teleport 03 position
DELETE FROM `spell_target_position` WHERE `id`=@TELEPORT3;
REPLACE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(@TELEPORT3,571,6252.58, -1965.86, 484.782, 3.7);

-- Drakuramas Teleport Script 01 position
DELETE FROM `spell_target_position` WHERE `id`=@TELEPORT1;
REPLACE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(@TELEPORT1,571,6165.262, -2001.812, 408.167, 2.2);

DELETE FROM `areatrigger_scripts` WHERE `entry` = @TRIGGER1;
REPLACE INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(@TRIGGER1,'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid` =@TRIGGER1 AND `source_type`=2;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TRIGGER1,2,0,0,46,0,100,0,@TRIGGER1,0,0,0,45,1,1,0,0,0,0,10,@LOW_TRIG_B,@TRIGG_BUNNY,0,0,0,0,0,'');

DELETE FROM `areatrigger_scripts` WHERE `entry` = @TRIGGER2;
REPLACE INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(@TRIGGER2,'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid` =@TRIGGER2 AND `source_type`=2;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TRIGGER2,2,0,0,46,0,100,0,@TRIGGER2,0,0,0,45,1,1,0,0,0,0,10,@UP_TRIG_B,@TRIGG_BUNNY,0,0,0,0,0,'');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-@LOW_TRIG_B,-@UP_TRIG_B) AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)VALUES
(-@LOW_TRIG_B,0,0,0,38,0,100,0,1,1,0,0,11,@T_SCRIPT2,0,0,0,0,0,21,5,0,0,0,0,0,0,'Drakuramas Teleport Bunny 01 - On Data Set - Tele Player'),
--
(-@UP_TRIG_B,0,0,0,38,0,100,0,1,1,0,0,11,@T_SCRIPT,0,0,0,0,0,21,5,0,0,0,0,0,0,'Drakuramas Teleport Bunny 01 - On Data Set - Tele Player');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@T_SCRIPT,@T_SCRIPT2,@ESCORT_A);
REPLACE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@ESCORT_A,@SUM_MAL,1,'Summon Malmortis'),
(@T_SCRIPT,@TELEPORT3,1,'Teleport'),
(@T_SCRIPT2,@TELEPORT1,1,'Teleport');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (@TRIGGER1,@TRIGGER2);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,1,@TRIGGER1,2,0,1,0,@SCEPT_AURA,0,0,0,0,'','SAI areatrigger triggers only if player has aura Teleporter Scepter Aura'),
(22,1,@TRIGGER2,2,0,1,0,@SCEPT_AURA,0,0,0,0,'','SAI areatrigger triggers only if player has aura Teleporter Scepter Aura');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@T_SCRIPT,@T_SCRIPT2);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, @T_SCRIPT, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Spell only hits player'),
(13, 1, @T_SCRIPT2, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Spell only hits player');

UPDATE `gameobject_template` SET `size`=2 WHERE `entry` IN (190948,190949); -- Musty Coffin
DELETE FROM `gameobject` WHERE `id` IN (190949,190948);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9253, 190949, 571, 1, 1, 6260.489, -1960.045, 484.7818, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- Musty Coffin (Area: Reliquary of Pain)
(9254, 190948, 571, 1, 1, 6260.482, -1960.039, 484.7818, 3.787367, 0, 0, 0, 1, 120, 255, 1); -- Musty Coffin (Area: Reliquary of Pain)

-- Template updates for creature 28948 (Malmortis)
UPDATE `creature_template` SET `minlevel`=85,`maxlevel`=85,`unit_flags`=`unit_flags`|264,`speed_walk`=2.4,`speed_run`=0 WHERE `entry`=@MALMORTIS; -- Malmortis
-- Model data 8055 (creature 28948 (Malmortis))
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=3,`gender`=0 WHERE `modelid`=8055; -- Malmortis
-- Addon data for creature 28948 (Malmortis)
DELETE FROM `creature_template_addon` WHERE `entry`=@MALMORTIS;
REPLACE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@MALMORTIS,0,0,1,0,''); -- Malmortis

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` IN (@MALMORTIS,@TRIGGER1,@TRIGGER2,@TRIGG_BUNNY);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@MALMORTIS,@MALMORTIS*100) AND `source_type`IN (0,9);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)VALUES
(@MALMORTIS,0,0,1,54,0,100,0,0,0,0,0,80,@MALMORTIS*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Respawn - Start Timed Action Script'),
(@MALMORTIS,0,1,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Malmortis - On Respawn - Set Orientation To Invoker'),
-- 47
(@MALMORTIS,0,2,0,40,0,100,1,8,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached - Say 3'),
(@MALMORTIS,0,3,0,40,0,100,1,18,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached- Say 4'),
(@MALMORTIS,0,4,5,40,0,100,1,47,0,0,0,1,5,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached - Say'),
(@MALMORTIS,0,5,0,61,0,100,0,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Pause WP'),
(@MALMORTIS,0,6,0,52,0,100,1,5,@MALMORTIS,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Text Over 5 - Say 6'),
-- 121
(@MALMORTIS,0,6,7,40,0,100,1,80,0,0,0,1,7,0,0,0,0,0,1,0,10,0,0,0,0,0,'Malmortis - On WP Reached - Say 7'),
(@MALMORTIS,0,7,0,61,0,100,0,0,0,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Pause WP'),
(@MALMORTIS,0,8,9,40,0,100,1,81,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached - Say 8'),
(@MALMORTIS,0,9,0,61,0,100,0,0,0,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Pause WP'),
-- 128
(@MALMORTIS,0,10,11,40,0,100,1,86,0,0,0,1,9,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached - Say 9'),
(@MALMORTIS,0,11,0,61,0,100,0,0,0,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Pause WP'),
(@MALMORTIS,0,12,0,52,0,100,1,9,@MALMORTIS,0,0,1,10,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Text Over 9 - Say 10'),
(@MALMORTIS,0,13,0,52,0,100,1,10,@MALMORTIS,0,0,1,11,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Text Over 10 - Say 11'),
(@MALMORTIS,0,14,0,52,0,100,1,11,@MALMORTIS,0,0,1,12,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Text Over 11 - Say 12'),
-- 137 
(@MALMORTIS,0,15,0,40,0,100,1,93,0,0,0,1,13,5000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On WP Reached - Say 13'),
(@MALMORTIS,0,16,17,52,0,100,1,13,@MALMORTIS,0,0,1,14,7000,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Text Over 13 - Say 14'),
(@MALMORTIS,0,17,18,61,0,100,0,0,0,0,0,11,@T_SCRIPT,2,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Cast on self'),
(@MALMORTIS,0,18,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Link - Despawn'),
-- 
(@MALMORTIS*100,9,0,0,0,0,100,0,3000,3000,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Script - Say 0'),
(@MALMORTIS*100,9,1,0,0,0,100,0,5000,5000,5000,5000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Script - Say 1'),
(@MALMORTIS*100,9,2,0,0,0,100,0,5000,5000,5000,5000,53,0,@MALMORTIS,0,0,0,0,1,0,0,0,0,0,0,0,'Malmortis - On Script - Start WP movement'),
-- It's weird that credit is given here, but hey, we're Blizzard, we can do it wherever we want.
(@MALMORTIS*100,9,3,0,0,0,100,0,1000,1000,1000,1000,11,@KILLCREDIT,2,0,0,0,0,7,0,0,0,0,0,0,0,'Malmortis - On Script - Cast Q Credit to Invoker');


DELETE FROM `creature_text` WHERE `entry`=28948;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(28948, 0, 0, 'Ahh... there you are. The master told us you''d be arriving soon.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 1, 0, 'Please, follow me, $N. There is much for you to see...', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 2, 0, 'Ever since his arrival from Drak''Tharon, the master has spoken of the time you would be joining him here.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 3, 0, 'You should feel honored. You are the first of the master''s prospects to be shown our operation.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 4, 0, 'The things I show you now must never be spoken of outside Voltarus. The world shall come to know our secret soon enough!', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 5, 0, 'Here lie our stores of blight crystal, without which our project would be impossible.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 6, 0, 'I understand that you are to thank for the bulk of our supply.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 7, 0, 'These trolls are among those you exposed on the battlefield. Masterfully done, indeed....', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 8, 0, 'We feel it best to position them here, where they might come in terms with their impending fate.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 9, 0, 'This is their destiny....', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 10, 0, 'The blight slowly seeps into their bodies, gradually preparing them for their conversion.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 11, 0, 'This special preparation grants them unique powers far greater than they would otherwise know.', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 12, 0, 'Soon, the master will grant them the dark gift, making them fit to server the Lich King for eternity!', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 13, 0, 'Stay for as long as you like, $N. Glory in the fruits of your labor!', 12, 0, 100, 0, 0, 0, 'Malmortis say'),
(28948, 14, 0, 'Your service has been invaluable in fulfilling the master''s plan. May you forever grow in power....', 12, 0, 100, 0, 0, 0, 'Malmortis say');


DELETE FROM `waypoints` WHERE entry = @MALMORTIS;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@MALMORTIS, 1,  6246.076, -1959.903, 484.7817, ''),
(@MALMORTIS, 2,  6239.468, -1963.94, 484.5479,  ''),
(@MALMORTIS, 3,  6235.218, -1964.69, 484.5479,  ''),
(@MALMORTIS, 4,  6232.341, -1965.397, 484.7817, ''),
(@MALMORTIS, 5,  6229.812, -1960.545, 484.832,  ''),
(@MALMORTIS, 6,  6229.805, -1960.542, 484.832,  ''),
(@MALMORTIS, 7,  6225.805, -1959.542, 484.832,  ''),
(@MALMORTIS, 8,  6218.658, -1962.031, 484.8823, ''), -- Say 3
(@MALMORTIS, 9,  6213.883, -1954.917, 484.6498, ''),
(@MALMORTIS, 10, 6211.883, -1951.667, 484.6498, ''),
(@MALMORTIS, 11, 6205.607, -1941.303, 484.9172, ''),
(@MALMORTIS, 12, 6192.572, -1931.705, 484.9854, ''),
(@MALMORTIS, 13, 6178.136, -1937.173, 484.6558, ''),
(@MALMORTIS, 14, 6175.831, -1938.89,  484.9104, ''),
(@MALMORTIS, 15, 6171.331, -1943.14,  484.6604, ''),
(@MALMORTIS, 16, 6163.581, -1951.14, 484.9104,  ''),
(@MALMORTIS, 17, 6157.331, -1952.89, 484.6604,  ''),
(@MALMORTIS, 18, 6156.749, -1953.028, 484.9022, ''), -- Say 4
(@MALMORTIS, 19, 6149.743, -1957.582, 484.655,  ''),
(@MALMORTIS, 20, 6147.993, -1958.832, 484.905,  ''),
(@MALMORTIS, 21, 6144.993, -1960.832, 484.905,  ''),
(@MALMORTIS, 22, 6140.993, -1963.332, 484.905,  ''),
(@MALMORTIS, 23, 6137.743, -1965.332, 484.905,  ''),
(@MALMORTIS, 24, 6132.743, -1968.582, 484.905,  ''), 
(@MALMORTIS, 25, 6128.993, -1970.832, 484.905,  ''), 
(@MALMORTIS, 26, 6125.993, -1972.832, 484.905,  ''),
(@MALMORTIS, 27, 6123.243, -1974.332, 484.655,  ''),
(@MALMORTIS, 28, 6119.237, -1976.635, 484.9079, ''),
(@MALMORTIS, 29, 6116.115, -1977.373, 484.6002,  ''),
(@MALMORTIS, 30, 6112.615, -1979.373, 484.6002,  ''),
(@MALMORTIS, 31, 6103.115, -1984.623, 484.6002,  ''),
(@MALMORTIS, 32, 6096.115, -1989.123, 484.6002,  ''),
(@MALMORTIS, 33, 6094.615, -1990.123, 484.8502,  ''),
(@MALMORTIS, 34, 6093.954, -1990.445, 484.918,  ''),
(@MALMORTIS, 35, 6089.347, -2014.297, 484.8763, ''),
(@MALMORTIS, 36, 6099.82, -2021.594, 484.9467,  ''),
(@MALMORTIS, 37, 6102.82, -2024.344, 484.9467,  ''),
(@MALMORTIS, 38, 6105.32, -2027.094, 484.9467,  ''),
(@MALMORTIS, 39, 6114.07, -2034.844, 484.9467,  ''),
(@MALMORTIS, 40, 6113.57, -2037.844, 484.9467,  ''),
(@MALMORTIS, 41, 6112.82, -2040.594, 484.6967,  ''),
(@MALMORTIS, 42, 6113.093, -2041.11, 484.8785,  ''),
(@MALMORTIS, 43, 6103.914, -2049.32, 484.8252,  ''),
(@MALMORTIS, 44, 6103.414, -2052.07, 484.8252,  ''),
(@MALMORTIS, 45, 6102.664, -2054.57, 484.5752,  ''),
(@MALMORTIS, 46, 6103.664, -2055.57, 484.5752,  ''),
(@MALMORTIS, 47, 6108.405, -2060.931, 484.7817, ''), -- say 5 & say 6
(@MALMORTIS, 48, 6111.582, -2063.279, 484.5828, ''),
(@MALMORTIS, 49, 6117.082, -2066.779, 484.5828, ''),
(@MALMORTIS, 50, 6118.082, -2067.279, 484.8328, ''),
(@MALMORTIS, 51, 6122.082, -2069.779, 484.8328, ''),
(@MALMORTIS, 52, 6127.582, -2073.529, 484.8328, ''), 
(@MALMORTIS, 53, 6129.582, -2074.779, 484.8328, ''), 
(@MALMORTIS, 54, 6136.759, -2078.627, 484.8839, ''),
(@MALMORTIS, 55, 6135.021, -2082.232, 484.9813, ''),
(@MALMORTIS, 56, 6137.021, -2085.232, 484.7313, ''),
(@MALMORTIS, 57, 6143.271, -2093.232, 484.9813, ''),
(@MALMORTIS, 58, 6145.771, -2097.232, 484.9813, ''),
(@MALMORTIS, 59, 6149.521, -2102.232, 484.9813, ''),
(@MALMORTIS, 60, 6152.771, -2104.482, 484.9813, ''),
(@MALMORTIS, 61, 6157.708, -2107.487, 485.1209, ''),
(@MALMORTIS, 62, 6152.734, -2117.464, 484.878, ''),
(@MALMORTIS, 63, 6155.484, -2121.714, 485.1281, ''),
(@MALMORTIS, 64, 6146.211, -2124.778, 485.1514, ''),
(@MALMORTIS, 65, 6145.211, -2124.778, 485.1514, ''),
(@MALMORTIS, 66, 6140.628, -2128.341, 485.3621, ''),
(@MALMORTIS, 67, 6126.711, -2123.778, 473.1514, ''),
(@MALMORTIS, 68, 6125.211, -2123.778, 473.1514, ''),
(@MALMORTIS, 69, 6119.711, -2123.278, 473.4014,  ''),
(@MALMORTIS, 70, 6118.48, -2123.076, 473.5551, ''),
(@MALMORTIS, 71, 6120.804, -2116.018, 473.4532, ''),
(@MALMORTIS, 72, 6121.228, -2108.079, 473.5628, ''),
(@MALMORTIS, 73, 6123.12, -2108.537, 473.5413, ''),
(@MALMORTIS, 74, 6124.12, -2108.537, 473.5413, ''),
(@MALMORTIS, 75, 6128.12, -2108.787, 473.2913, ''),
(@MALMORTIS, 76, 6137.730, -2111.003, 465.857, ''),
(@MALMORTIS, 77, 6143.918, -2112.493, 461.311, ''),
(@MALMORTIS, 78, 6152.609, -2110.294, 461.309, ''),
(@MALMORTIS, 79, 6156.999, -2110.611, 461.3106, ''),
(@MALMORTIS, 80, 6157.26, -2087.746, 461.0578,  ''), -- Say 7
(@MALMORTIS, 81, 6148.678, -2072.781, 461.3044, ''), -- Say 8 
(@MALMORTIS, 82, 6154.87, -2058.052, 461.2998,  ''),
(@MALMORTIS, 83, 6146.364, -2056.77, 460.8798,  ''),
(@MALMORTIS, 84, 6145.364, -2055.52, 460.8798,  ''),
(@MALMORTIS, 85, 6141.864, -2051.27, 460.8798,  ''),
(@MALMORTIS, 86, 6139.778, -2046.457, 461.3102, ''), -- say 9 & say 10 & say 11 & say 12
(@MALMORTIS, 87, 6143.079, -2043.717, 461.6264, ''),
(@MALMORTIS, 88, 6150.579, -2037.467, 461.6264, ''),
(@MALMORTIS, 89, 6156.329, -2032.717, 459.6264, ''),
(@MALMORTIS, 90, 6158.579, -2031.217, 458.8764, ''),
(@MALMORTIS, 91, 6161.379, -2028.978, 458.9426, ''),
(@MALMORTIS, 92, 6168.36, -2022.986, 454.9367,  ''),
(@MALMORTIS, 93, 6172.36, -2019.708, 455.1223,  ''); -- Say 13 & 14
DELETE FROM `smart_scripts` WHERE `entryorguid`= 24189 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24189, 0, 0, 0, 19, 0, 100, 0, 11288, 0, 0, 0, 85, 43202, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ares - On target quest accepted 11288 - Cast spell Shining Light'),
(24189, 0, 1, 0, 19, 0, 100, 0, 11289, 0, 0, 0, 85, 43228, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ares - On target quest accepted 11289 - Cast Guided by the Oathbound QC');
-- Putting Olakin Back Together Again (13220)
SET @QUEST               := 13220;
SET @NPC_OLAKIN          := 31235;  -- Crusader Olakin Sainrith
SET @GO_CLEAVER          := 193092; -- The Doctor's Cleaver
SET @GO_SPOOL            := 193091; -- Spool of Thread
SET @EVENT_SCRIPT        := 20269;  -- Event from 58856 Reanimate Crusader Olakin
SET @SPELL_FD            := 35356;  -- Feign Death
SET @SPELL_FAKE_BLOOD    := 37692;  -- Fake Blood Spurt
SET @SPELL_RESURRECTION  := 58854;  -- Resurrection

DELETE FROM `gameobject` WHERE `id` IN (@GO_CLEAVER,@GO_SPOOL);
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(16974,@GO_SPOOL,571,1,1,6668.17,3268.54,669.539,2.54818,0,0,0.956304,0.292373,120,255, 1),
(16976,@GO_CLEAVER,571,1,1,6601.1,3147.78,666.916,-2.77507,0,0,-0.983254,0.182238,120,255,1);

DELETE FROM `event_scripts` WHERE `id`=@EVENT_SCRIPT;
REPLACE INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(@EVENT_SCRIPT,0,10,@NPC_OLAKIN,60000,0,6636.792,3211.102,668.6439,0.8901179);

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_OLAKIN;
REPLACE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_OLAKIN,0,0x0,0x1,'35356'); -- 31235 - 35356

DELETE FROM `creature_text` WHERE `entry`=@NPC_OLAKIN;
REPLACE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_OLAKIN,0,0,'Thank the Light for granting me another chance. And thank you, $N.',12,0,100,1,0,0,'Crusader Olakin Sainrith'),
(@NPC_OLAKIN,1,0,'Without your help, I would''ve been doomed to a life of undeath among the Lich King''s gruesome creations.', 12,0,100,1,0,0,'Crusader Olakin Sainrith'),
(@NPC_OLAKIN,2,0,'There will be time for a proper thanks later, but there is still a battle to be fought!', 12,0,100,25,0,0,'Crusader Olakin Sainrith');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_OLAKIN;
DELETE FROM `smart_scripts` WHERE (`source_type`=0 AND `entryorguid`=@NPC_OLAKIN) OR (`source_type`=9 AND `entryorguid`=@NPC_OLAKIN*100);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_OLAKIN,0,0,0,54,0,100,0,0,0,0,0,80,@NPC_OLAKIN*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Just summoned - Run Script'),
(@NPC_OLAKIN,0,1,0,40,0,100,0,3,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On WP Reached - Despawn'),
-- 17,26
(@NPC_OLAKIN*100,9,0,0,0,0,100,0,2000,2000,0,0,11,@SPELL_FAKE_BLOOD,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Cast Spell'),
(@NPC_OLAKIN*100,9,1,0,0,0,100,0,2000,2000,0,0,11,@SPELL_RESURRECTION,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Cast Spell'),
(@NPC_OLAKIN*100,9,2,0,0,0,100,0,0,0,0,0,28,@SPELL_FD,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Remove Aura'),
(@NPC_OLAKIN*100,9,3,0,0,0,100,0,0,0,0,0,96,32,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Remove dynamic flag'),
(@NPC_OLAKIN*100,9,4,0,0,0,100,0,1000,1000,0,0,19,1,1,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Remove Unit Flag_2 1 {dead)'),
(@NPC_OLAKIN*100,9,5,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Say 0'),
(@NPC_OLAKIN*100,9,6,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Say 1'),
(@NPC_OLAKIN*100,9,7,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Say 2'),
(@NPC_OLAKIN*100,9,8,0,0,0,100,0,3000,3000,0,0,33,@NPC_OLAKIN,0,0,0,0,0,17,0,30,0,0,0,0,0,'Crusader Olakin Sainrith - On Script - Quest Credit'),
(@NPC_OLAKIN*100,9,9,0,0,0,100,0,0,0,0,0,53,1,@NPC_OLAKIN,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Olakin Sainrith - On Script -Start WP movement');

DELETE FROM `waypoints` WHERE entry =@NPC_OLAKIN;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@NPC_OLAKIN, 1, 6632.227, 3223.6350, 666.7750,'Olakin'),
(@NPC_OLAKIN, 2, 6624.2558, 3230.2343, 666.857, 'Olakin'),
(@NPC_OLAKIN, 3, 6608.985, 3234.5588, 668.779, 'Olakin');

-- A Cleansing Song (12735)
SET @KOOSU        := 29034;
SET @HA_KHALAN    := 29018;
SET @ATHA         := 29033;

-- Spirit of Koosu
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@KOOSU;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@KOOSU;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KOOSU,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu - Set Phase 1 - on Aggro'),
(@KOOSU,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu -  Stop Moving - on Aggro'),
(@KOOSU,0,2,0,4,1,100,1,0,0,0,0,11,21971,0,0,0,0,0,2,0,0,0,0,0,0,0,'Spirit of Koosu - Cast bolt - on Aggro'),
(@KOOSU,0,3,0,9,1,100,0,5,30,3500,4100,11,21971,0,0,0,0,0,2,0,0,0,0,0,0,0,'Spirit of Koosu - Cast bolt - In Range'),
(@KOOSU,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu -  Start Moving - When not in bolt Range'),
(@KOOSU,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu - Stop Moving - 15 Yards'),
(@KOOSU,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu - Start Moving - when not in bolt Range'),
(@KOOSU,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Koosu - Stop Moving - when in bolt Range');

-- Spirit of Ha-Khalan
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@HA_KHALAN;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@HA_KHALAN;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HA_KHALAN,0,0,0,0,0,100,0,1000,1000,125000,125000,11,50502,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Ha-Khalan - IC - Cast Thick Hide'),
(@HA_KHALAN,0,1,0,0,0,100,0,5000,10000,12000,16000,11,34370,0,0,0,0,0,2,0,0,0,0,0,0,0,'Spirit of Ha-Khalan - IC - Cast Jagged Tooth Snap'),
(@HA_KHALAN,0,2,0,0,0,100,0,3000,5000,7000,11000,11,48287,0,0,0,0,0,2,0,0,0,0,0,0,0,'Spirit of Ha-Khalan - IC - Cast Powerful Bite');

-- Spirit of Atha
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ATHA;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ATHA;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ATHA,0,0,0,0,0,100,0,8000,13000,12000,16000,11,21790,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Atha - IC - Cast Aqua Jet'),
(@ATHA,0,1,0,0,0,100,0,2000,4000,5000,7000,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,'Spirit of Atha - IC - Cast Thrash');

UPDATE `creature_template` SET `unit_flags`=`unit_flags`|8 WHERE `entry`=29018; -- Spirit of Ha-Khalan
-- Addon data for creature 29018 (Spirit of Ha-Khalan)
DELETE FROM `creature_template_addon` WHERE `entry`=29018;
REPLACE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(29018,0,0,1,0,''); -- Spirit of Ha-Khalan
-- Corpulen Horror spawns in area The Fleshwerks
SET @CGUID = 127272;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=30696;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30696;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30696,0,0,0,9,0,100,0,8,40,3500,4100,11,50335,0,0,0,0,0,2,0,0,0,0,0,0,0,'Corpulent Horror - Cast Scourge Hook - In Range');

DELETE FROM `creature_template_addon` WHERE `entry`=30696;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(30696, 0, 0x0, 0x1, ''); -- Corpulent Horror

UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102, `speed_walk`=1.142857, `speed_run`=1, `rangeattacktime`=2000, `unit_flags`=32768, `dynamicflags`=0 WHERE `entry`=30696; -- Corpulent Horror
DELETE FROM `creature` WHERE `id` = 30696;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@CGUID+0, 30696, 571, 1, 1, 0, 0, 6975.386, 3462.006, 710.9403, 6.126106, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+1, 30696, 571, 1, 1, 0, 0, 6982.377, 3478.588, 710.9403, 5.811946, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+2, 30696, 571, 1, 1, 0, 0, 6920.697, 3446.544, 710.2005, 3.097477, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks) 
(@CGUID+3, 30696, 571, 1, 1, 0, 0, 6932.927, 3502.471, 705.0461, 3.281219, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+4, 30696, 571, 1, 1, 0, 0, 6903.668, 3478.428, 700.0414, 3.093731, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+5, 30696, 571, 1, 1, 0, 0, 6895.87, 3460.794, 700.7824, 1.592374, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks) 
(@CGUID+6, 30696, 571, 1, 1, 0, 0, 6868.874, 3435.562, 705.6059, 1.542484, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+7, 30696, 571, 1, 1, 0, 0, 6869.054, 3493.792, 695.7783, 5.440073, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+8, 30696, 571, 1, 1, 0, 0, 6875.154, 3513.065, 698.8162, 3.944444, 120, 0, 0, 0,  0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+9, 30696, 571, 1, 1, 0, 0, 6836.296, 3505.824, 690.3577, 0.5061455, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+10, 30696, 571, 1, 1, 0, 0, 6823.636, 3484.259, 688.4615, 6.278303, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+11, 30696, 571, 1, 1, 0, 0, 6729.185, 3433.822, 682.3103, 2.64319, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+12, 30696, 571, 1, 1, 0, 0, 6676.063, 3349.062, 704.616, 2.582512, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+13, 30696, 571, 1, 1, 0, 0, 6699.958, 3422.957, 679.4948, 3.363122, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+14, 30696, 571, 1, 1, 0, 0, 6548.099, 3309.558, 665.8171, 2.951326, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+15, 30696, 571, 1, 1, 0, 0, 6535.431, 3322.088, 664.9422, 5.877358, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+16, 30696, 571, 1, 1, 0, 0, 6530.748, 3296.081, 664.9409, 3.446935, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+17, 30696, 571, 1, 1, 0, 0, 6534.971, 3260.271, 666.9742, 0.2021571, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+18, 30696, 571, 1, 1, 0, 0, 6477.204, 3257.901, 643.6331, 3.804818, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+19, 30696, 571, 1, 1, 0, 0, 6488.242, 3194.719, 652.9039, 1.48353, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks)
(@CGUID+20, 30696, 571, 1, 1, 0, 0, 6412.273, 3236.912, 640.3326, 0.7460284, 120, 0, 0, 0, 0, 0, 0, 0, 0), -- Corpulent Horror (Area: The Fleshwerks
(@CGUID+21, 30696, 571, 1, 1, 0, 0, 6413.427, 3218.029, 638.4678, 0.122173, 120, 0, 0, 0, 0, 0, 0, 0, 0); -- Corpulent Horror (Area: The Fleshwerks)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (66548,66549,66550,66551);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (66550,66551);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,66550,0,0,31,0,3,22515,0,0,0,0,'','Isle of Conquest - Teleport Fortress Out'),
(13,1,66550,0,0,35,0,1,10,1,0,0,0,'','Isle of Conquest - Teleport Fortress Out'),
(13,1,66551,0,0,31,0,3,22515,0,0,0,0,'','Isle of Conquest - Teleport Fortress In'),
(13,1,66551,0,0,35,0,1,10,1,0,0,0,'','Isle of Conquest - Teleport Fortress In');

SET @CGUID := 90179;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+13;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 22515, 628, 3, 1, 392.4965, -859.4583, 48.99871, 3.036873, 7200, 0, 0), -- A IN
(@CGUID+1, 22515, 628, 3, 1, 313.2344, -918.0452, 48.85597, 4.869469, 7200, 0, 0), -- A OUT
(@CGUID+2, 22515, 628, 3, 1, 279.8698, -832.8073, 51.55094, 0, 7200, 0, 0), -- A CENTER
(@CGUID+3, 22515, 628, 3, 1, 323.4965, -883.8021, 48.99959, 1.466077, 7200, 0, 0), -- A IN
(@CGUID+4, 22515, 628, 3, 1, 430.6007, -857.0052, 48.31177, 0.1396263, 7200, 0, 0), -- A OUT
(@CGUID+5, 22515, 628, 3, 1, 325.9167, -781.8993, 49.00521, 4.590216, 7200, 0, 0), -- A IN
(@CGUID+6, 22515, 628, 3, 1, 326.2135, -744.0243, 49.43576, 1.308997, 7200, 0, 0), -- A OUT
(@CGUID+7, 22515, 628, 3, 1, 1139.498, -779.4739, 48.73496, 3.001966, 7200, 0, 0), -- H OUT
(@CGUID+8, 22515, 628, 3, 1, 1162.913, -745.908, 48.71506, 0.1396263, 7200, 0, 0), -- H IN
(@CGUID+9, 22515, 628, 3, 1, 1234.304, -688.2986, 49.22296, 4.677482, 7200, 0, 0), -- H IN
(@CGUID+10, 22515, 628, 3, 1, 1232.524, -666.3246, 48.13402, 2.303835, 7200, 0, 0), -- H OUT
(@CGUID+11, 22515, 628, 3, 1, 1233.106, -838.316, 48.99958, 1.466077, 7200, 0, 0), -- H IN
(@CGUID+12, 22515, 628, 3, 1, 1232.387, -861.0243, 48.99959, 3.560472, 7200, 0, 0), -- H OUT
(@CGUID+13, 22515, 628, 3, 1, 1296.526, -766.1823, 50.70293, 3.089233, 7200, 0, 0); -- H CENTER
-- Fix few startup errors
UPDATE `smart_scripts` SET `event_param3`=12555 WHERE `entryorguid`=27727 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `creature_addon` WHERE `guid`=66177;
DELETE FROM `waypoint_data` WHERE `id`=661770;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28481 AND `source_type`=0;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=28481;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (51769,51770,58941);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(51769,'spell_q12619_emblazon_runeblade'),
(51770,'spell_q12619_emblazon_runeblade_effect'),
(58941,'spell_archavon_rock_shards');

DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (58695,58696);
REPLACE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES 
(58695,58695,60883),
(58696,58696,60884);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=28481;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28481 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28481, 0, 0, 0, 8, 0, 100, 0, 51769, 0, 0, 0, 11, 51738, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Runeforge (SE) - On Spellhit Emblazon Runeblade - Cast Shadow Storm');
-- Scourge Tactics
UPDATE `smart_scripts` SET `link`=1 WHERE `entryorguid`=30273 AND `id`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=30273 AND `id`=1;
-- Abjurist Belmara & Conjurer Luminrath 
UPDATE `smart_scripts` SET `target_type`=7 WHERE `entryorguid`=19546 AND `id`=2;
UPDATE `smart_scripts` SET `target_type`=7, `target_param1`=0 WHERE `entryorguid`=19580 AND `id`=2;
-- Do not delete query id 0
DELETE FROM `smart_scripts` WHERE `entryorguid` =21797 AND `source_type`=0 AND `id`>0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(21797, 0, 1, 0, 19, 0, 100, 0, 10645, 0, 0, 0, 80, 2179700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ancient Shadowmoon Spirit - On Quest Accept - Run Script');
-- Trapping the Light Fantastic (10674) & Gather the Orbs (10859)
SET @GOB_TRAP           := 185011;	-- Multi-Spectrum Light Trap
SET @NPC_BUNNY          := 21926;   -- Multi-Spectrum Light Trap Bunny
SET @ORB_TOTEM          := 22333;   -- Orb Collecting Totem
SET @NPC_CREDIT         := 21929;   -- Trapping the Light Kill Credit Trigger
SET @NPC_ORB1           := 20635;   -- Razaani Light Orb
SET @NPC_ORB2           := 20771;   -- Razaani Light Orb - Mini
SET @SPELL_PULL         := 28337;   -- Magnetic Pull
SET @ARC_EXPLOSION      := 35426;   -- Arcane Explosion

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_ORB1,@NPC_ORB2);
REPLACE INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(20635,0,0,0,4097,0,'32566'),
(20771,0,0,0,4097,0,'32566');

UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=unit_flags|0x02000000,`flags_extra`=130,`ScriptName`='' WHERE `entry` IN (@NPC_ORB1,@NPC_ORB2);
UPDATE `creature` SET `MovementType`=0 WHERE `id`=@NPC_ORB1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ORB1,@NPC_ORB1*100,@NPC_ORB1*101,@NPC_ORB2,@NPC_ORB2*100,@NPC_ORB2*101) AND `source_type` IN (0,9);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Alliance Version
(@NPC_ORB1,0,0,0,8,0,100,0,@SPELL_PULL,0,0,0,80,@NPC_ORB1*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Spellhit - Start Action Script'),
(@NPC_ORB1*100,9,0,0,0,0,100,0,1000,1000,0,0,11,@ARC_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Script - Cast Arcane Explosion'),
(@NPC_ORB1*100,9,1,0,0,0,100,0,500,500,0,0,45,1,1,0,0,0,0,19,@NPC_BUNNY,5,0,0,0,0,0, 'Orb Bunny - On Script - Cast Arcane Explosion'),
(@NPC_ORB1*100,9,2,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Script - Despawn'),
-- Horde Version
(@NPC_ORB1,0,1,0,38,0,100,0,0,1,30000,30000,69,1,0,0,0,0,0,19,@ORB_TOTEM,20,0,0,0,0,0, 'Light Orb - On Data Set 0 1 - Move to totem'),
(@NPC_ORB1,0,2,3,34,0,100,1,8,1,0,0,11,@ARC_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On point 1 reached - Cast arcane explosion'),
(@NPC_ORB1,0,3,4,61,0,100,0,0,0,0,0,33,@NPC_CREDIT,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Light Orb - On Link - Call kill credit'),
(@NPC_ORB1,0,4,0,61,0,100,0,0,0,0,0,80,@NPC_ORB1*101,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On Link - Start action list to display arcase explosion'),
(@NPC_ORB1*101,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 0 - Set unseen'),
(@NPC_ORB1*101,9,1,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 1 - Despawn in 100 ms'),
-- Alliance Version
(@NPC_ORB2,0,0,0,8,0,100,0,@SPELL_PULL,0,0,0,80,@NPC_ORB2*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Spellhit - Start Action Script'),
(@NPC_ORB2*100,9,0,0,0,0,100,0,1000,1000,0,0,11,@ARC_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Script - Cast Arcane Explosion'),
(@NPC_ORB2*100,9,1,0,0,0,100,0,500,500,0,0,45,1,1,0,0,0,0,19,@NPC_BUNNY,5,0,0,0,0,0, 'Orb Bunny - On Script - Cast Arcane Explosion'),
(@NPC_ORB2*100,9,2,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orb Bunny - On Script - Despawn'),
-- Horde Version
(@NPC_ORB2,0,1,0,38,0,100,0,1,1,30000,30000,69,1,0,0,0,0,0,19,@ORB_TOTEM,20,0,0,0,0,0, 'Light Orb - On Data Set 0 1 - Move to totem'),
(@NPC_ORB2,0,2,3,34,0,100,1,8,1,0,0,11,@ARC_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On point 1 reached - Cast arcane explosion'),
(@NPC_ORB2,0,3,4,61,0,100,0,0,0,0,0,33,@NPC_CREDIT,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Light Orb - On Link - Call kill credit'),
(@NPC_ORB2,0,4,0,61,0,100,0,0,0,0,0,80,@NPC_ORB2*101,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On Link - Start action list to display arcase explosion'),
(@NPC_ORB2*101,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 0 - Set unseen'),
(@NPC_ORB2*101,9,1,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 1 - Despawn in 100 ms');

-- Alliance Multi-Spectrum Light Trap
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=130,`ScriptName`='' WHERE `entry`=@NPC_BUNNY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_BUNNY;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_BUNNY,0,0,0,54,0,100,1,0,0,0,0,50,@GOB_TRAP,30000,0,0,0,0,1,0,0,0,0,0,0,0, 'Multi-Spectrum Light Trap - On spawn - Summon gob'),
(@NPC_BUNNY,0,1,0,1,0,100,1,0,0,0,0,9,0,0,0,0,0,0,15,@GOB_TRAP,0,0,0,0,0,0, 'Multi-Spectrum Light Trap - OOC - Activate gob'),
--
(@NPC_BUNNY,0,2,0,1,0,100,1,3000,3000,3000,3000,11,@SPELL_PULL,0,0,0,0,0,19,@NPC_ORB1,20,0,0,0,0,0, 'Multi-Spectrum Light Trap - OOC 3 sec - Pull Razaani Light Orb'),
(@NPC_BUNNY,0,3,0,1,0,100,1,3000,3000,3000,3000,11,@SPELL_PULL,0,0,0,0,0,19,@NPC_ORB2,20,0,0,0,0,0, 'Multi-Spectrum Light Trap - OOC 3 sec - Pull Razaani Light Orb - Mini'),
(@NPC_BUNNY,0,4,5,38,0,100,1,1,1,0,0,33,@NPC_CREDIT,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Multi-Spectrum Light Trap - On Data Set - Give Quest Credit'),
(@NPC_BUNNY,0,5,0,61,0,100,1,0,0,0,0,9,0,0,0,0,0,0,15,@GOB_TRAP,0,0,0,0,0,0, 'Link - Activate gob - Gob');

-- Horde Totem
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=0,`ScriptName`='' WHERE `entry`=@ORB_TOTEM;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ORB_TOTEM;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ORB_TOTEM,0,0,1,54,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@NPC_ORB1,20,0,0,0,0,0, 'Orb collecting totem - On spawned - Set Data 0 1'),
(@ORB_TOTEM,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orb collecting totem - On Link - Store invoker'),
(@ORB_TOTEM,0,2,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@NPC_ORB1,20,0,0,0,0,0, 'Orb collecting totem - On Link - Send stored target list 1'),
--
(@ORB_TOTEM,0,3,4,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@NPC_ORB2,20,0,0,0,0,0, 'Orb collecting totem - On spawned - Set Data 0 1'),
(@ORB_TOTEM,0,4,5,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orb collecting totem - On Link - Store invoker'),
(@ORB_TOTEM,0,5,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@NPC_ORB2,20,0,0,0,0,0, 'Orb collecting totem - On Link - Send stored target list 1');
-- -.- >.> <.< -_- ._. 
UPDATE `creature` SET `spawndist`=0 WHERE`id`=20635;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (30135,30144,29974);
DELETE FROM `smart_scripts` WHERE entryorguid IN (30135,30144,29974);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Niffelem Forefather
(29974, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 8000, 13000, 11, 57454, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Niffelem Forefather - IC - Cast Ice Spike'),
(29974, 0, 1, 2, 8, 0, 100, 0, 55983, 0, 0, 0, 33, 30138, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Niffelem Forefather - On Spellhit - Give Kill Credit'),
(29974, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Niffelem Forefather - Linked with Previous Event Despawn'),
-- Restless Frostborn Warrior
(30135, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 8000, 13000, 11, 57456, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Warrior - IC - Cast Frostbite'),
(30135, 0, 1, 2, 8, 0, 100, 0, 55983, 0, 0, 0, 33, 30139, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Warrior - On Spellhit - Give Kill Credit'),
(30135, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Warrior - Linked with Previous Event Despawn'),
-- Restless Frostborn Ghost
(30144, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 8000, 13000, 11, 57456, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Ghost - IC - Cast Frostbite'),
(30144, 0, 1, 2, 8, 0, 100, 0, 55983, 0, 0, 0, 33, 30139, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Ghost - On Spellhit - Give Kill Credit'),
(30144, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Restless Frostborn Ghost - Linked with Previous Event Despawn');
/* cs_modify.cpp & cs_debug.cpp only 4.3.4 */

SET @id = 775;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'modify currency';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'debug phase';
DELETE FROM `conditions` WHERE `SourceEntry` = 55983;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 55983, 0, 0, 31, 1, 3, 29974, 0, 0, 0, 0, '', 'Blow Hodir''s Horn can hit Niffelem Forefather'),
(17, 0, 55983, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Blow Hodir''s Horn can only hit dead Niffelem Forefather'),
(17, 0, 55983, 0, 1, 31, 1, 3, 30144, 0, 0, 0, 0, '', 'Blow Hodir''s Horn can hit Restless Frostborn Ghost'),
(17, 0, 55983, 0, 1, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Blow Hodir''s Horn can only hit dead Restless Frostborn Ghost'),
(17, 0, 55983, 0, 2, 31, 1, 3, 30135, 0, 0, 0, 0, '', 'Blow Hodir''s Horn can hit Restless Frostborn Warrior'),
(17, 0, 55983, 0, 2, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Blow Hodir''s Horn can only hit dead Restless Frostborn Warrior');
/* cs_group.cpp */

SET @id = 472;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0  WHERE `name` = 'group';
UPDATE `command` SET `permission` = @id+1  WHERE `name` = 'group leader';
UPDATE `command` SET `permission` = @id+2  WHERE `name` = 'group disband';
UPDATE `command` SET `permission` = @id+3  WHERE `name` = 'group remove';
UPDATE `command` SET `permission` = @id+4  WHERE `name` = 'group join';
UPDATE `command` SET `permission` = @id+5  WHERE `name` = 'group list';

UPDATE `command` SET `permission` = @id+6, `name` = 'group summon', `help` =
'Syntax: .group summon [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.'
WHERE `name` = 'groupsummon';
/* cs_pet.cpp */

SET @id = 479;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0  WHERE `name` = 'pet';
UPDATE `command` SET `permission` = @id+1  WHERE `name` = 'pet create';
UPDATE `command` SET `permission` = @id+2  WHERE `name` = 'pet learn';
UPDATE `command` SET `permission` = @id+3  WHERE `name` = 'pet unlearn';
-- Test Flight Quests
-- 10557 - The Zephyrium Capacitorium(part 1)
-- 10710 - The Singing Ridge(part 2)
-- 10711 - Razaan's Landing
-- 10712 - Ruuan Weald
SET @ENTRY              := 21461; -- Rally Zapnabber
SET @ENTRY2             := 21393; -- Cannon Channeler Dummy npc
SET @BEAM               := 36795; -- Cannon Channel(dnd) - Visual cannon beam
SET @MENUID             := 8304;  -- Gossip
SET @A_MENU             := 8454;  -- Action Gossip
SET @A_MENU2            := 8455;  -- Action Gossip 2
SET @OPTION             := 0;
SET @SPEACH             := 10360; -- Text 1
SET @SPEACH2            := 10561; -- Text 2

-- Disable obsolete quest
DELETE FROM `disables` WHERE `entry`=10716;
REPLACE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(1,10716,0,'','','Deprecated quest Test Flight: Raven''s Wood');
-- Make Canon Channeler float & Update position to match cannon
UPDATE `creature_template` SET `InhabitType`=4, `modelid1`= 11686 ,`modelid2`=0 WHERE `entry`=@ENTRY2;
UPDATE `creature` SET `position_x`=1924.6457, `position_y`= 5575.660, `position_z`=272.1429 WHERE  `guid`=74872;-- Gossip & menus  1924.1457, 5575.647, 272.1429

UPDATE `creature_template` SET `gossip_menu_id`=@MENUID, `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY2;
DELETE FROM `gossip_menu` WHERE `entry` IN (@MENUID,@A_MENU);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@MENUID,@SPEACH),
(@A_MENU,@SPEACH2);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@MENUID,@A_MENU2,@A_MENU);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@MENUID,@OPTION+0,0,'I''m ready for my test flight!',1,1,0,0,0,0,''), -- Test Flight: The Zephyrium Capacitorium
(@MENUID,@OPTION+1,0,'Take me to Singing Ridge!',1,1,@A_MENU,0,0,0,''), -- Test Flight: The Singing Ridge
(@MENUID,@OPTION+2,0,'Take me to Razaan''s Landing!',1,1,0,0,0,0,''), -- Test Flight: Razaan's Landing
(@MENUID,@OPTION+3,0,'Take me to Ruuan Weald!',1,1,0,0,0,0,''), -- Test Flight: Ruuan Weald
(@MENUID,@OPTION+4,0,'I want to fly to an old location!',1,1,@A_MENU2,0,0,0,''), -- Old locations from completed quests
(@A_MENU2,@OPTION+1,0,'Take me to Singing Ridge.',1,1,0,0,0,0,''),
(@A_MENU2,@OPTION+2,0,'Take me to Razaan''s Landing.',1,1,0,0,0,0,''),
(@A_MENU2,@OPTION+3,0,'Take me to Ruuan Weald.',1,1,0,0,0,0,''),
(@A_MENU,@OPTION+0,0,'I have the signed Waiver! Fire me into The Singing Ridge!',1,1,0,0,0,0,'');

-- Fix teleport spell position
DELETE FROM `spell_target_position` WHERE `Id` IN(37908,24831);
REPLACE INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(24831, 0, 530, 1920.07, 5582.04, 269.222, 5.1846);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 37908;
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(37908, 24831, 0, 'Aura Visual Teleport - teleport');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*101,@ENTRY*102,@ENTRY*103,@ENTRY2);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@MENUID,@OPTION+0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
(@ENTRY,0,2,3,62,0,100,0,@A_MENU,@OPTION+0,0,0,80,@ENTRY*101,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
(@ENTRY,0,4,5,62,0,100,0,@MENUID,@OPTION+2,0,0,80,@ENTRY*102,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
(@ENTRY,0,6,7,62,0,100,0,@MENUID,@OPTION+3,0,0,80,@ENTRY*103,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),

(@ENTRY,0,8,9,62,0,100,0,@A_MENU2,@OPTION+1,0,0,80,@ENTRY*101,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
(@ENTRY,0,10,11,62,0,100,0,@A_MENU2,@OPTION+2,0,0,80,@ENTRY*102,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
(@ENTRY,0,12,13,62,0,100,0,@A_MENU2,@OPTION+3,0,0,80,@ENTRY*103,0,0,0,0,0,1,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Run script'),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip'),
--
(@ENTRY*100,9,0,0,1,0,100,0,2000,2000,2000,2000,85,37908,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - After 2 seconds - Port visual'),
(@ENTRY*100,9,1,0,1,0,100,0,2000,2000,2000,2000,45,1,1,0,0,0,0,10,74872,@ENTRY2,0,0,0,0,0,'The Zephyrium Capacitorium - After 2 seconds - Port visual'),
(@ENTRY*100,9,2,0,1,0,100,0,3000,3000,3000,3000,85,36790,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - OOC Update - Invoker,cast charge state 2'),
(@ENTRY*100,9,3,0,1,0,100,0,3000,3000,3000,3000,85,36792,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - OOC Update - Invoker,cast charge state 3'),
(@ENTRY*100,9,4,0,1,0,100,0,3000,3000,3000,3000,85,36800,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - OOC Update - Invoker,cast charge state 4'),
(@ENTRY*100,9,5,0,1,0,100,0,3000,3000,3000,3000,85,37910,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - OOC Update - Invoker,cast Soar&Credit'),
(@ENTRY*100,9,6,0,1,0,100,0,0,0,0,0,85,37108,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Zephyrium Capacitorium - OOC Update - Invoker,cast Debuff'),
--
(@ENTRY*101,9,0,0,1,0,100,0,2000,2000,2000,2000,85,37908,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - After 2 seconds - Port visual'),
(@ENTRY*101,9,1,0,1,0,100,0,2000,2000,2000,2000,45,1,1,0,0,0,0,10,74872,@ENTRY2,0,0,0,0,0,'The Zephyrium Capacitorium - After 2 seconds - Set Data on Channeler'),
(@ENTRY*101,9,2,0,1,0,100,0,3000,3000,3000,3000,85,36790,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - OOC Update - Invoker,cast charge state 2'),
(@ENTRY*101,9,3,0,1,0,100,0,3000,3000,3000,3000,85,36792,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - OOC Update - Invoker,cast charge state 3'),
(@ENTRY*101,9,4,0,1,0,100,0,3000,3000,3000,3000,85,36800,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - OOC Update - Invoker,cast charge state 4'),
(@ENTRY*101,9,5,0,1,0,100,0,3000,3000,3000,3000,85,37962,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - OOC Update - Invoker,cast Soar&Credit'),
(@ENTRY*101,9,6,0,1,0,100,0,0,0,0,0,85,37108,0,0,0,0,0,7,0,0,0,0,0,0,0,'The Singing Ridge - OOC Update - Invoker,cast Debuff'),
--
(@ENTRY*102,9,0,0,1,0,100,0,2000,2000,2000,2000,85,37908,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - After 2 seconds - Port visual'),
(@ENTRY*102,9,1,0,1,0,100,0,2000,2000,2000,2000,45,1,1,0,0,0,0,10,74872,@ENTRY2,0,0,0,0,0,'The Zephyrium Capacitorium - After 2 seconds - Set Data on Channeler'),
(@ENTRY*102,9,2,0,1,0,100,0,3000,3000,3000,3000,85,36790,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - OOC Update - Invoker,cast charge state 2'),
(@ENTRY*102,9,3,0,1,0,100,0,3000,3000,3000,3000,85,36792,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - OOC Update - Invoker,cast charge state 3'),
(@ENTRY*102,9,4,0,1,0,100,0,3000,3000,3000,3000,85,36800,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - OOC Update - Invoker,cast charge state 4'),
(@ENTRY*102,9,5,0,1,0,100,0,3000,3000,3000,3000,85,36812,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - OOC Update - Invoker,cast Soar&Credit'),
(@ENTRY*102,9,6,0,1,0,100,0,0,0,0,0,85,37108,0,0,0,0,0,7,0,0,0,0,0,0,0,'Razaan''s Landing - OOC Update - Invoker,cast Debuff'),
--
(@ENTRY*103,9,0,0,1,0,100,0,2000,2000,2000,2000,85,37908,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - After 2 seconds - Port visual'),
(@ENTRY*103,9,1,0,1,0,100,0,2000,2000,2000,2000,45,1,1,0,0,0,0,10,74872,@ENTRY2,0,0,0,0,0,'The Zephyrium Capacitorium - After 2 seconds - Set Data on Channeler'),
(@ENTRY*103,9,2,0,1,0,100,0,3000,3000,3000,3000,85,36790,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - OOC Update - Invoker,cast charge state 2'),
(@ENTRY*103,9,3,0,1,0,100,0,3000,3000,3000,3000,85,36792,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - OOC Update - Invoker,cast charge state 3'),
(@ENTRY*103,9,4,0,1,0,100,0,3000,3000,3000,3000,85,36800,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - OOC Update - Invoker,cast charge state 4'),
(@ENTRY*103,9,5,0,1,0,100,0,3000,3000,3000,3000,85,37968,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - OOC Update - Invoker,cast Soar&Credit'),
(@ENTRY*103,9,6,0,1,0,100,0,0,0,0,0,85,37108,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ruuan Weald - OOC Update - Invoker,cast Debuff'),
--
(@ENTRY2,0,0,0,38,0,100,0,1,1,0,0,11,36795,0,0,0,0,0,1,0,0,0,0,0,0,0,'Beam Channel Bunny - On Data Set - Cast Cannon Beam');

DELETE FROM `conditions` WHERE `SourceEntry`=@BEAM OR `SourceGroup` IN (@MENUID,@A_MENU2,@A_MENU);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @A_MENU2, 3, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 3 if player does not have aura Zephyrium Charged'),
(15, @A_MENU2, 3, 0, 0, 8, 0, 10712, 0, 0, 0, 0, 0, '', 'Show gossip option 3 if player has quest Ruuan Weald marked as rewarded'),
(15, @A_MENU2, 2, 0, 0, 8, 0, 10711, 0, 0, 0, 0, 0, '', 'Show gossip option 2 if player has quest Razaan''s Landing marked as rewarded'),
(15, @A_MENU2, 2, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 2 if player does not have aura Zephyrium Charged'),
(15, @A_MENU2, 1, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 1 if player does not have aura Zephyrium Charged'),
(15, @A_MENU2, 1, 0, 0, 8, 0, 10710, 0, 0, 0, 0, 0, '', 'Show gossip option 1 if player has quest The Singing Ridge marked as rewarded'),
(15, @A_MENU2, 4, 0, 0, 8, 0, 10557, 0, 0, 0, 0, 0, '', 'Show gossip option 4 if player has quest The Zephyrium Capacitorium marked as rewarded'),
(15, @A_MENU, 0, 0, 0, 2, 0, 30539, 1, 0, 0, 0, 0, '', 'Show gossip option 0 if player has item Tally''s Waiver (Signed)'),
(15, @MENUID, 3, 0, 0, 9, 0, 10712, 0, 0, 0, 0, 0, '', 'Show gossip option 3 if player has quest Ruuan Weald marked as taken'),
(15, @MENUID, 3, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 3 if player does not have aura Zephyrium Charged'),
(15, @MENUID, 2, 0, 0, 9, 0, 10711, 0, 0, 0, 0, 0, '', 'Show gossip option 2 if player has quest Razaan''s Landing marked as taken'),
(15, @MENUID, 2, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 2 if player does not have aura Zephyrium Charged'),
(15, @MENUID, 1, 0, 0, 9, 0, 10710, 0, 0, 0, 0, 0, '', 'Show gossip option 1 if player has quest The Singing Ridge marked as taken'),
(15, @MENUID, 1, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 1 if player does not have aura Zephyrium Charged'),
(15, @MENUID, 0, 0, 0, 9, 0, 10557, 0, 0, 0, 0, 0, '', 'Show gossip option 0 if player has quest The Zephyrium Capacitorium marked as taken'),
(15, @MENUID, 0, 0, 0, 1, 0, 37108, 0, 0, 1, 0, 0, '', 'Show gossip option 0 if player does not have aura Zephyrium Charged'),
--
(13, 1, 36795, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Spell Cannon Channel(dnd) target player');

-- SAI for Rally (Questgiver)
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=21460;
DELETE FROM `smart_scripts` WHERE `entryorguid`=21460;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(21460,0,0,1,62,0,100,0,8303,0,0,0,56,30540,1,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Give Item '),
(21460,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rally Zapnabber - On gossip option select - Close gossip');

DELETE FROM `conditions` WHERE `SourceGroup` = 8303;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 8303, 0, 0, 0, 2, 0, 30540, 1, 1, 1, 0, 0, '', 'Only allow gossip option to be visible if player doesn''t have item'),
(15, 8303, 0, 0, 0, 9, 0, 10710, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken');
/* cs_send.cpp */

SET @id = 483;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0  WHERE `name` = 'send';
UPDATE `command` SET `permission` = @id+1  WHERE `name` = 'send items';
UPDATE `command` SET `permission` = @id+2  WHERE `name` = 'send mail';
UPDATE `command` SET `permission` = @id+3  WHERE `name` = 'send message';
UPDATE `command` SET `permission` = @id+4  WHERE `name` = 'send money';
/* cs_misc.cpp */

SET @id = 488;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'additem';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'additemset';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'appear';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'aura';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'bank';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'bindsight';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'combatstop';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'cometome';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'commands';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'cooldown';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'damage';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'dev';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'die';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'dismount';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'distance';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'flusharenapoints';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'freeze';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'gps';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'guid';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'help';
UPDATE `command` SET `permission` = @id+20 WHERE `name` = 'hidearea';
UPDATE `command` SET `permission` = @id+21 WHERE `name` = 'itemmove';
UPDATE `command` SET `permission` = @id+22 WHERE `name` = 'kick';
UPDATE `command` SET `permission` = @id+23 WHERE `name` = 'linkgrave';
UPDATE `command` SET `permission` = @id+24 WHERE `name` = 'listfreeze';
UPDATE `command` SET `permission` = @id+25 WHERE `name` = 'maxskill';
UPDATE `command` SET `permission` = @id+26 WHERE `name` = 'movegens';
UPDATE `command` SET `permission` = @id+27 WHERE `name` = 'mute';
UPDATE `command` SET `permission` = @id+28 WHERE `name` = 'neargrave';
UPDATE `command` SET `permission` = @id+29 WHERE `name` = 'pinfo';
UPDATE `command` SET `permission` = @id+30 WHERE `name` = 'playall';
UPDATE `command` SET `permission` = @id+31 WHERE `name` = 'possess';
UPDATE `command` SET `permission` = @id+32 WHERE `name` = 'recall';
UPDATE `command` SET `permission` = @id+33 WHERE `name` = 'repairitems';
UPDATE `command` SET `permission` = @id+34 WHERE `name` = 'respawn';
UPDATE `command` SET `permission` = @id+35 WHERE `name` = 'revive';
UPDATE `command` SET `permission` = @id+36 WHERE `name` = 'saveall';
UPDATE `command` SET `permission` = @id+37 WHERE `name` = 'save';
UPDATE `command` SET `permission` = @id+38 WHERE `name` = 'setskill';
UPDATE `command` SET `permission` = @id+39 WHERE `name` = 'showarea';
UPDATE `command` SET `permission` = @id+40 WHERE `name` = 'summon';
UPDATE `command` SET `permission` = @id+41 WHERE `name` = 'unaura';
UPDATE `command` SET `permission` = @id+42 WHERE `name` = 'unbindsight';
UPDATE `command` SET `permission` = @id+43 WHERE `name` = 'unfreeze';
UPDATE `command` SET `permission` = @id+44 WHERE `name` = 'unmute';
UPDATE `command` SET `permission` = @id+45 WHERE `name` = 'unpossess';
UPDATE `command` SET `permission` = @id+46 WHERE `name` = 'unstuck';
UPDATE `command` SET `permission` = @id+47 WHERE `name` = 'wchange';
/* cs_mmaps.cpp */

SET @id = 536;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'mmap';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'mmap loadedtiles';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'mmap loc';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'mmap path';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'mmap stats';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'mmap testarea';
/* cs_modify.cpp */

SET @id = 542;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'morph';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'demorph';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'modify';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'modify arenapoints';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'modify bit';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'modify drunk';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'modify energy';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'modify faction';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'modify gender';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'modify honor';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'modify hp';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'modify mana';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'modify money';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'modify mount';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'modify phase';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'modify rage';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'modify reputation';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'modify runicpower';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'modify scale';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'modify speed';
UPDATE `command` SET `permission` = @id+20 WHERE `name` = 'modify speed all';
UPDATE `command` SET `permission` = @id+21 WHERE `name` = 'modify speed backwalk';
UPDATE `command` SET `permission` = @id+22 WHERE `name` = 'modify speed fly';
UPDATE `command` SET `permission` = @id+23 WHERE `name` = 'modify speed walk';
UPDATE `command` SET `permission` = @id+24 WHERE `name` = 'modify speed swim';
UPDATE `command` SET `permission` = @id+25 WHERE `name` = 'modify spell';
UPDATE `command` SET `permission` = @id+26 WHERE `name` = 'modify standstate';
UPDATE `command` SET `permission` = @id+27 WHERE `name` = 'modify talentpoints';
/* cs_npc.cpp */

SET @id = 570;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'npc';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'npc add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'npc add formation';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'npc add item';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'npc add move';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'npc add temp';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'npc add delete';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'npc add delete item';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'npc add follow';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'npc add follow stop';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'npc set';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'npc set allowmove';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'npc set entry';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'npc set factionid';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'npc set flag';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'npc set level';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'npc set link';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'npc set model';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'npc set movetype';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'npc set phase';
UPDATE `command` SET `permission` = @id+20 WHERE `name` = 'npc set spawndist';
UPDATE `command` SET `permission` = @id+21 WHERE `name` = 'npc set spawntime';
UPDATE `command` SET `permission` = @id+22 WHERE `name` = 'npc set data';
UPDATE `command` SET `permission` = @id+23 WHERE `name` = 'npc info';
UPDATE `command` SET `permission` = @id+24 WHERE `name` = 'npc near';
UPDATE `command` SET `permission` = @id+25 WHERE `name` = 'npc move';
UPDATE `command` SET `permission` = @id+26 WHERE `name` = 'npc playemote';
UPDATE `command` SET `permission` = @id+27 WHERE `name` = 'npc say';
UPDATE `command` SET `permission` = @id+28 WHERE `name` = 'npc textemote';
UPDATE `command` SET `permission` = @id+29 WHERE `name` = 'npc whisper';
UPDATE `command` SET `permission` = @id+30 WHERE `name` = 'npc yell';
UPDATE `command` SET `permission` = @id+31 WHERE `name` = 'npc tame';
/* cs_quest.cpp */

SET @id = 602;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'quest';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'quest add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'quest complete';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'quest remove';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'quest reward';
/* cs_reload.cpp */

SET @id = 607;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'reload';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'reload access_requirement';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'reload achievement_criteria_data';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'reload achievement_reward';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'reload all';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'reload all achievement';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'reload all area';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'reload all eventai';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'reload all gossips';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'reload all item';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'reload all locales';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'reload all loot';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'reload all npc';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'reload all quest';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'reload all scripts';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'reload all spell';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'reload areatrigger_involvedrelation';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'reload areatrigger_tavern';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'reload areatrigger_teleport';
UPDATE `command` SET `permission` = @id+19 WHERE `name` = 'reload auctions';
UPDATE `command` SET `permission` = @id+20 WHERE `name` = 'reload autobroadcast';
UPDATE `command` SET `permission` = @id+21 WHERE `name` = 'reload command';
UPDATE `command` SET `permission` = @id+22 WHERE `name` = 'reload conditions';
UPDATE `command` SET `permission` = @id+23 WHERE `name` = 'reload config';
UPDATE `command` SET `permission` = @id+24 WHERE `name` = 'reload creature_text';
UPDATE `command` SET `permission` = @id+25 WHERE `name` = 'reload creature_ai_scripts';
UPDATE `command` SET `permission` = @id+26 WHERE `name` = 'reload creature_ai_texts';
UPDATE `command` SET `permission` = @id+27 WHERE `name` = 'reload creature_questender';
UPDATE `command` SET `permission` = @id+28 WHERE `name` = 'reload creature_linked_respawn';
UPDATE `command` SET `permission` = @id+29 WHERE `name` = 'reload creature_loot_template';
UPDATE `command` SET `permission` = @id+30 WHERE `name` = 'reload creature_onkill_reputation';
UPDATE `command` SET `permission` = @id+31 WHERE `name` = 'reload creature_queststarter';
UPDATE `command` SET `permission` = @id+32 WHERE `name` = 'reload creature_summon_groups';
UPDATE `command` SET `permission` = @id+33 WHERE `name` = 'reload creature_template';
UPDATE `command` SET `permission` = @id+34 WHERE `name` = 'reload disables';
UPDATE `command` SET `permission` = @id+35 WHERE `name` = 'reload disenchant_loot_template';
UPDATE `command` SET `permission` = @id+36 WHERE `name` = 'reload event_scripts';
UPDATE `command` SET `permission` = @id+37 WHERE `name` = 'reload fishing_loot_template';
UPDATE `command` SET `permission` = @id+38 WHERE `name` = 'reload game_graveyard_zone';
UPDATE `command` SET `permission` = @id+39 WHERE `name` = 'reload game_tele';
UPDATE `command` SET `permission` = @id+40 WHERE `name` = 'reload gameobject_questender';
UPDATE `command` SET `permission` = @id+41 WHERE `name` = 'reload gameobject_loot_template';
UPDATE `command` SET `permission` = @id+42 WHERE `name` = 'reload gameobject_queststarter';
UPDATE `command` SET `permission` = @id+43 WHERE `name` = 'reload gm_tickets';
UPDATE `command` SET `permission` = @id+44 WHERE `name` = 'reload gossip_menu';
UPDATE `command` SET `permission` = @id+45 WHERE `name` = 'reload gossip_menu_option';
UPDATE `command` SET `permission` = @id+46 WHERE `name` = 'reload item_enchantment_template';
UPDATE `command` SET `permission` = @id+47 WHERE `name` = 'reload item_loot_template';
UPDATE `command` SET `permission` = @id+48 WHERE `name` = 'reload item_set_names';
UPDATE `command` SET `permission` = @id+49 WHERE `name` = 'reload lfg_dungeon_rewards';
UPDATE `command` SET `permission` = @id+50 WHERE `name` = 'reload locales_achievement_reward';
UPDATE `command` SET `permission` = @id+51 WHERE `name` = 'reload locales_creature';
UPDATE `command` SET `permission` = @id+52 WHERE `name` = 'reload locales_creature_text';
UPDATE `command` SET `permission` = @id+53 WHERE `name` = 'reload locales_gameobject';
UPDATE `command` SET `permission` = @id+54 WHERE `name` = 'reload locales_gossip_menu_option';
UPDATE `command` SET `permission` = @id+55 WHERE `name` = 'reload locales_item';
UPDATE `command` SET `permission` = @id+56 WHERE `name` = 'reload locales_item_set_name';
UPDATE `command` SET `permission` = @id+57 WHERE `name` = 'reload locales_npc_text';
UPDATE `command` SET `permission` = @id+58 WHERE `name` = 'reload locales_page_text';
UPDATE `command` SET `permission` = @id+59 WHERE `name` = 'reload locales_points_of_interest';
UPDATE `command` SET `permission` = @id+60 WHERE `name` = 'reload locales_quest';
UPDATE `command` SET `permission` = @id+61 WHERE `name` = 'reload mail_level_reward';
UPDATE `command` SET `permission` = @id+62 WHERE `name` = 'reload mail_loot_template';
UPDATE `command` SET `permission` = @id+63 WHERE `name` = 'reload milling_loot_template';
UPDATE `command` SET `permission` = @id+64 WHERE `name` = 'reload npc_spellclick_spells';
UPDATE `command` SET `permission` = @id+65 WHERE `name` = 'reload npc_trainer';
UPDATE `command` SET `permission` = @id+66 WHERE `name` = 'reload npc_vendor';
UPDATE `command` SET `permission` = @id+67 WHERE `name` = 'reload page_text';
UPDATE `command` SET `permission` = @id+68 WHERE `name` = 'reload pickpocketing_loot_template';
UPDATE `command` SET `permission` = @id+69 WHERE `name` = 'reload points_of_interest';
UPDATE `command` SET `permission` = @id+70 WHERE `name` = 'reload prospecting_loot_template';
UPDATE `command` SET `permission` = @id+71 WHERE `name` = 'reload quest_poi';
UPDATE `command` SET `permission` = @id+72 WHERE `name` = 'reload quest_template';
UPDATE `command` SET `permission` = @id+73 WHERE `name` = 'reload rbac';
UPDATE `command` SET `permission` = @id+74 WHERE `name` = 'reload reference_loot_template';
UPDATE `command` SET `permission` = @id+75 WHERE `name` = 'reload reserved_name';
UPDATE `command` SET `permission` = @id+76 WHERE `name` = 'reload reputation_reward_rate';
UPDATE `command` SET `permission` = @id+77 WHERE `name` = 'reload reputation_spillover_template';
UPDATE `command` SET `permission` = @id+78 WHERE `name` = 'reload skill_discovery_template';
UPDATE `command` SET `permission` = @id+79 WHERE `name` = 'reload skill_extra_item_template';
UPDATE `command` SET `permission` = @id+80 WHERE `name` = 'reload skill_fishing_base_level';
UPDATE `command` SET `permission` = @id+81 WHERE `name` = 'reload skinning_loot_template';
UPDATE `command` SET `permission` = @id+82 WHERE `name` = 'reload smart_scripts';
UPDATE `command` SET `permission` = @id+83 WHERE `name` = 'reload spell_required';
UPDATE `command` SET `permission` = @id+84 WHERE `name` = 'reload spell_area';
UPDATE `command` SET `permission` = @id+85 WHERE `name` = 'reload spell_bonus_data';
UPDATE `command` SET `permission` = @id+86 WHERE `name` = 'reload spell_group';
UPDATE `command` SET `permission` = @id+87 WHERE `name` = 'reload spell_learn_spell';
UPDATE `command` SET `permission` = @id+88 WHERE `name` = 'reload spell_loot_template';
UPDATE `command` SET `permission` = @id+89 WHERE `name` = 'reload spell_linked_spell';
UPDATE `command` SET `permission` = @id+90 WHERE `name` = 'reload spell_pet_auras';
UPDATE `command` SET `permission` = @id+91 WHERE `name` = 'reload spell_proc_event';
UPDATE `command` SET `permission` = @id+92 WHERE `name` = 'reload spell_proc';
UPDATE `command` SET `permission` = @id+93 WHERE `name` = 'reload spell_scripts';
UPDATE `command` SET `permission` = @id+94 WHERE `name` = 'reload spell_target_position';
UPDATE `command` SET `permission` = @id+95 WHERE `name` = 'reload spell_threats';
UPDATE `command` SET `permission` = @id+96 WHERE `name` = 'reload spell_group_stack_rules';
UPDATE `command` SET `permission` = @id+97 WHERE `name` = 'reload trinity_string';
UPDATE `command` SET `permission` = @id+98 WHERE `name` = 'reload warden_action';
UPDATE `command` SET `permission` = @id+99 WHERE `name` = 'reload waypoint_scripts';
UPDATE `command` SET `permission` = @id+100 WHERE `name` = 'reload waypoint_data';
UPDATE `command` SET `permission` = @id+101 WHERE `name` = 'reload vehicle_accessory';
UPDATE `command` SET `permission` = @id+102 WHERE `name` = 'reload vehicle_template_accessory';
/* cs_reset.cpp */

SET @id = 710;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'reset';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'reset achievements';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'reset honor';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'reset level';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'reset spells';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'reset stats';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'reset talents';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'reset all';
/* cs_server.cpp */

SET @id = 718;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'server';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'server corpses';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'server exit';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'server idlerestart';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'server idlerestart cancel';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'server idleshutdown';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'server idleshutdown cancel';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'server info';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'server plimit';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'server restart';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'server restart cancel';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'server set';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'server set closed';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'server set difftime';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'server set loglevel';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'server set motd';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'server shutdown';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'server shutdown cancel';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'server motd';
/* cs_tele.cpp */

SET @id = 737;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'tele';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'tele add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'tele del';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'tele name';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'tele group';
/* cs_ticket.cpp */

SET @id = 742;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'ticket';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'ticket assign';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'ticket close';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'ticket closedlist';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'ticket comment';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'ticket complete';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'ticket delete';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'ticket escalate';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'ticket escalatedlist';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'ticket list';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'ticket onlinelist';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'ticket reset';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'ticket response';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'ticket response append';
UPDATE `command` SET `permission` = @id+14 WHERE `name` = 'ticket response appendln';
UPDATE `command` SET `permission` = @id+15 WHERE `name` = 'ticket togglesystem';
UPDATE `command` SET `permission` = @id+16 WHERE `name` = 'ticket unassign';
UPDATE `command` SET `permission` = @id+17 WHERE `name` = 'ticket viewid';
UPDATE `command` SET `permission` = @id+18 WHERE `name` = 'ticket viewname';
/* cs_titles.cpp & cs_wp.cpp */

SET @id = 761;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'titles';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'titles add';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'titles current';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'titles remove';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'titles set';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'titles set mask';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'wp';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'wp add';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'wp event';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'wp load';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'wp modify';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'wp unload';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'wp reload';
UPDATE `command` SET `permission` = @id+13 WHERE `name` = 'wp show';
-- Update command table and remove obsolete permissions (0 = non existent permission)
UPDATE `command` SET `permission` = 0 WHERE `permission` IN (7, 8, 9, 10, 12);
-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = 201 WHERE `name` = 'rbac account';
UPDATE `command` SET `permission` = 202 WHERE `name` = 'rbac account group';
UPDATE `command` SET `permission` = 203 WHERE `name` = 'rbac account group add';
UPDATE `command` SET `permission` = 204 WHERE `name` = 'rbac account group remove';
UPDATE `command` SET `permission` = 205 WHERE `name` = 'rbac account role';
UPDATE `command` SET `permission` = 206 WHERE `name` = 'rbac account role grant';
UPDATE `command` SET `permission` = 207 WHERE `name` = 'rbac account role deny';
UPDATE `command` SET `permission` = 208 WHERE `name` = 'rbac account role revoke';
UPDATE `command` SET `permission` = 209 WHERE `name` = 'rbac account permission';
UPDATE `command` SET `permission` = 210 WHERE `name` = 'rbac account permission grant';
UPDATE `command` SET `permission` = 211 WHERE `name` = 'rbac account permission deny';
UPDATE `command` SET `permission` = 212 WHERE `name` = 'rbac account permission revoke';
UPDATE `command` SET `permission` = 214 WHERE `name` = 'rbac account list groups';
UPDATE `command` SET `permission` = 215 WHERE `name` = 'rbac account list roles';
UPDATE `command` SET `permission` = 216 WHERE `name` = 'rbac account list permissions';
UPDATE `command` SET `permission`=214 WHERE `name`='rbac list groups';
UPDATE `command` SET `permission`=215 WHERE `name`='rbac list roles';
UPDATE `command` SET `permission`=216 WHERE `name`='rbac list permissions';
UPDATE `command` SET `permission`=262 WHERE `name`='bf enable';
UPDATE `command` SET `permission`=576 WHERE `name`='npc delete';
UPDATE `command` SET `permission`=577 WHERE `name`='npc delete item';
UPDATE `command` SET `permission`=578 WHERE `name`='npc follow';
UPDATE `command` SET `permission`=579 WHERE `name`='npc follow stop';
UPDATE `command` SET `permission`=316 WHERE `name`='debug play cinematic';
DELETE FROM `command` WHERE `name` = 'account email';
DELETE FROM `command` WHERE `name` = 'account set sec email';
DELETE FROM `command` WHERE `name` = 'account set sec regmail';

REPLACE INTO `command` (`name`, `permission`, `help`) VALUES
('account email', 263, 'Syntax: .account email $oldemail $currentpassword $newemail $newemailconfirmation\r\n\r\n Change your account email. You may need to check the actual security mode to see if email input is necessary for password change'),
('account set sec email', 265, 'Syntax: .account set sec email $accountname $email $emailconfirmation\r\n\r\nSet the email for entered player account.'),
('account set sec regmail', 266, 'Syntax: .account set sec regmail $account $regmail $regmailconfirmation\r\n\r\nSets the regmail for entered player account.');

/* cs_cast.cpp */

SET @id = 267;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'cast';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'cast back';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'cast dist';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'cast self';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'cast target';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'cast dest';

/* cs_go.cpp */

SET @id = 377;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'go';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'go creature';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'go graveyard';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'go grid';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'go object';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'go taxinode';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'go ticket';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'go trigger';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'go xyz';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'go zonexy';

/* cs_gobject.cpp */

SET @id = 387;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'gobject';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'gobject activate';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'gobject add';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'gobject add temp';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'gobject delete';
UPDATE `command` SET `permission` = @id+5 WHERE `name` = 'gobject info';
UPDATE `command` SET `permission` = @id+6 WHERE `name` = 'gobject move';
UPDATE `command` SET `permission` = @id+7 WHERE `name` = 'gobject near';
UPDATE `command` SET `permission` = @id+8 WHERE `name` = 'gobject set';
UPDATE `command` SET `permission` = @id+9 WHERE `name` = 'gobject set phase';
UPDATE `command` SET `permission` = @id+10 WHERE `name` = 'gobject set state';
UPDATE `command` SET `permission` = @id+11 WHERE `name` = 'gobject target';
UPDATE `command` SET `permission` = @id+12 WHERE `name` = 'gobject turn';

/* cs_instance.cpp */

SET @id = 412;

-- Update command table with new RBAC permissions
UPDATE `command` SET `permission` = @id+0 WHERE `name` = 'instance';
UPDATE `command` SET `permission` = @id+1 WHERE `name` = 'instance listbinds';
UPDATE `command` SET `permission` = @id+2 WHERE `name` = 'instance unbind';
UPDATE `command` SET `permission` = @id+3 WHERE `name` = 'instance stats';
UPDATE `command` SET `permission` = @id+4 WHERE `name` = 'instance savedata';
UPDATE `creature_template` SET `modelid1`=1126,`modelid2`=16925 WHERE `entry`=21393;
-- Update for Forgotten npcs to award credit.
UPDATE `smart_scripts` SET `action_type`=85 WHERE  `entryorguid`=27224 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `action_type`=85 WHERE  `entryorguid`=27225 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `action_type`=85 WHERE  `entryorguid`=27229 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `action_type`=85 WHERE  `entryorguid`=27226 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Forced model for Channel Bunny... should've used that earlier.
UPDATE `creature` SET `modelid`=16925, `position_x`=1924.63, `position_y`=5574.76, `position_z`=273.122 WHERE `guid`=74872;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8455 AND `SourceEntry`=4;
UPDATE `creature_template` SET`AIName`='SmartAI' WHERE `entry`=26321;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26321;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26321,0,0,0,8,0,100,1,47530,0,0,0,33,26321,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lothalor Ancient - On Spellhit - Give Credit to Invoker');
-- [QUEST] War Is Hell
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id` IN (24009,24010);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (24009,24010);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24009,24010) AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- Alliance Corpse
(24009, 0, 0, 1, 8, 0, 100, 1, 42793, 0, 0, 0, 11, 43297, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Alliance Corpse - SMART_EVENT_SPELLHIT - SMART_ACTION_CAST'),
(24009, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alliance Corpse - SMART_EVENT_LINK - SMART_ACTION_FORCE_DESPAWN'),
-- Forsaken Corpse
(24010, 0, 0, 1, 8, 0, 100, 1, 42793, 0, 0, 0, 11, 43297, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Corpse - SMART_EVENT_SPELLHIT - SMART_ACTION_CAST'),
(24010, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forsaken Corpse - SMART_EVENT_LINK - SMART_ACTION_FORCE_DESPAWN');

DELETE FROM `conditions` WHERE `SourceEntry`=42793 AND `SourceTypeOrReferenceId`=17;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 42793, 0, 0, 31, 1, 3, 24009, 0, 0, 0, 0, '', ''),
(17, 0, 42793, 0, 1, 31, 1, 3, 24010, 0, 0, 0, 0, '', '');
UPDATE `conditions` SET `ElseGroup`=2 WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=75509;
UPDATE `smart_scripts` SET `target_type`=24 WHERE  `entryorguid`=2935200 AND `source_type`=9 AND `id`=0 AND `link`=0;
DELETE FROM `gameobject` WHERE `id`= 15885;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(99849, 15885, 1, 1, 1, 7853.95, -2212.3, 456.397, 0, 0, 0, 0, 0, 0, 0, 1);
