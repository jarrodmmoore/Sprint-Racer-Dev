#this is run ONCE upon startup (or /reload)

team modify spectator seeFriendlyInvisibles false

difficulty normal

function sprint_racer_language:control_tips/hold_button_to_sprint
function sprint_racer_language:control_tips/open_your_wings_dummy
function sprint_racer_language:control_tips/dagger_attack
function sprint_racer_language:_dlc_3/control_tips/sneak_to_heal
function sprint_racer_language:scoreboard_objectives
function sprint_racer_language:_dlc_2/scoreboard_objectives
scoreboard objectives remove teamPoints
scoreboard objectives add teamPoints dummy

scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={randomCooldown=1..}] randomCooldown 0

#verify language folder version
function sprint_racer:_check_lang_folder_version

##################################
#FROM CONFIG FILES

function sprint_racer_config:realms_mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={realmsMode=1..}] run setblock 1550 83 406 redstone_block
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={realmsMode=1..}] run setblock 1550 83 406 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={realmsMode=1..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] adminMode 0

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={realmsMode=1..}] run function sprint_racer_config:admin_mode
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={realmsMode=..0,adminMode=1..}] add requireAdmin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={adminMode=1..}] run function sprint_racer_config:admin_player_list

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={COPPA=1}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add COPPA
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={COPPA=1}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove COPPA

#this one is now a setting in the lobby
#function sprint_racer_config:difficulty_ramp

function sprint_racer_config:secret_lobby
##################################

#add some objectives if they aren't here
scoreboard objectives add gameState dummy
scoreboard objectives add value dummy
scoreboard objectives add loadAttempts dummy
scoreboard objectives add resetAttempts dummy
scoreboard objectives add itemSplitTime dummy
scoreboard objectives add timeThreshold2 dummy
scoreboard objectives add timeThreshold3 dummy
scoreboard objectives add timeThreshold4 dummy
scoreboard objectives add timeThreshold5 dummy
scoreboard objectives add timeThreshold6 dummy
function sprint_racer_config:item_balance_time_thresholds
scoreboard objectives add checkpointID dummy
scoreboard objectives add visualXoffset dummy
scoreboard objectives add visualYoffset dummy
scoreboard objectives add visualZoffset dummy
scoreboard objectives add visualYaw dummy
scoreboard objectives add visualPitch dummy
scoreboard objectives add visualLength dummy
#v1.5...
scoreboard objectives add rSortValue dummy
scoreboard objectives add rSortDifficulty dummy
scoreboard objectives add rSortAlphabet dummy
scoreboard objectives add rSortRecent dummy
scoreboard objectives add rSortPopular dummy
scoreboard objectives add rSortRandom dummy
scoreboard objectives add bSortValue dummy
scoreboard objectives add bSortSize dummy
scoreboard objectives add bSortAlphabet dummy
scoreboard objectives add bSortRecent dummy
scoreboard objectives add bSortPopular dummy
scoreboard objectives add bSortRandom dummy
scoreboard objectives add qsTrackWarp dummy
scoreboard objectives add qsRaceX dummy
scoreboard objectives add qsRaceZ dummy
scoreboard objectives add qsBattleX dummy
scoreboard objectives add qsBattleZ dummy
scoreboard objectives add itemSlotCount dummy
scoreboard objectives add usePractice minecraft.dropped:minecraft.chain_command_block
scoreboard objectives add cStatType dummy
scoreboard objectives add cStatAccel dummy
scoreboard objectives add cStatTopS dummy
scoreboard objectives add cStatJump dummy
scoreboard objectives add cStatLuck dummy
scoreboard objectives add cStatHP dummy
scoreboard objectives add cStatHeal dummy
scoreboard objectives add cStatHitstun dummy
scoreboard objectives add cStatCPHeal dummy
scoreboard objectives add cStatRequest dummy
scoreboard objectives add KOgoal dummy
scoreboard objectives add speedBState dummy
scoreboard objectives add dSpeedBState dummy
#scoreboard objectives add useCustomSoundtrack trigger
#v1.5.1
scoreboard objectives add dropMap minecraft.dropped:minecraft.filled_map
scoreboard objectives add bbLapDisplay dummy
#v1.5.2
scoreboard objectives add hudNode dummy
scoreboard objectives add flashSplitTime dummy
bossbar add minecraft:blankspace [""]
bossbar add minecraft:sr_node1 [""]
bossbar add minecraft:sr_node2 [""]
bossbar add minecraft:sr_node3 [""]
bossbar add minecraft:sr_node4 [""]
bossbar add minecraft:sr_node5 [""]
bossbar add minecraft:sr_node6 [""]
bossbar add minecraft:sr_node7 [""]
bossbar add minecraft:sr_node8 [""]
bossbar add minecraft:sr_node9 [""]
bossbar add minecraft:sr_node10 [""]
bossbar add minecraft:sr_node11 [""]
bossbar add minecraft:sr_node12 [""]
bossbar add minecraft:sr_node13 [""]
bossbar add minecraft:sr_node14 [""]
bossbar add minecraft:sr_node15 [""]
bossbar add minecraft:sr_node16 [""]
bossbar add minecraft:sr_node17 [""]
bossbar add minecraft:sr_node18 [""]
bossbar add minecraft:sr_node19 [""]
bossbar add minecraft:sr_node20 [""]
bossbar add minecraft:sr_node21 [""]
bossbar add minecraft:sr_node22 [""]
bossbar add minecraft:sr_node23 [""]
bossbar add minecraft:sr_node24 [""]
bossbar add minecraft:sr_node25 [""]
bossbar add minecraft:sr_node26 [""]
bossbar add minecraft:sr_node27 [""]
bossbar add minecraft:sr_node28 [""]
bossbar add minecraft:sr_node29 [""]
bossbar add minecraft:sr_node30 [""]
bossbar add minecraft:sr_node31 [""]
bossbar add minecraft:sr_node32 [""]
bossbar set minecraft:sr_node1 color pink
bossbar set minecraft:sr_node2 color pink
bossbar set minecraft:sr_node3 color pink
bossbar set minecraft:sr_node4 color pink
bossbar set minecraft:sr_node5 color pink
bossbar set minecraft:sr_node6 color pink
bossbar set minecraft:sr_node7 color pink
bossbar set minecraft:sr_node8 color pink
bossbar set minecraft:sr_node9 color pink
bossbar set minecraft:sr_node10 color pink
bossbar set minecraft:sr_node11 color pink
bossbar set minecraft:sr_node12 color pink
bossbar set minecraft:sr_node13 color pink
bossbar set minecraft:sr_node14 color pink
bossbar set minecraft:sr_node15 color pink
bossbar set minecraft:sr_node16 color pink
bossbar set minecraft:sr_node17 color pink
bossbar set minecraft:sr_node18 color pink
bossbar set minecraft:sr_node19 color pink
bossbar set minecraft:sr_node20 color pink
bossbar set minecraft:sr_node21 color pink
bossbar set minecraft:sr_node22 color pink
bossbar set minecraft:sr_node23 color pink
bossbar set minecraft:sr_node24 color pink
bossbar set minecraft:sr_node25 color pink
bossbar set minecraft:sr_node26 color pink
bossbar set minecraft:sr_node27 color pink
bossbar set minecraft:sr_node28 color pink
bossbar set minecraft:sr_node29 color pink
bossbar set minecraft:sr_node30 color pink
bossbar set minecraft:sr_node31 color pink
bossbar set minecraft:sr_node32 color pink
#v1.5.4
scoreboard objectives add rot_yaw100 dummy
scoreboard objectives add rot_pitch100 dummy
scoreboard objectives add check_y_min dummy
scoreboard objectives add check_y_max dummy
scoreboard objectives add fin_y_min dummy
scoreboard objectives add fin_y_max dummy
scoreboard objectives add storedHudNode dummy
scoreboard objectives add recoverAttempts dummy
scoreboard objectives add roamLookTime dummy
scoreboard objectives add roamLookBias dummy
scoreboard objectives add lastCatPicked dummy
scoreboard objectives add customCodePath dummy
#v1.5.5
scoreboard objectives add taTimeMin dummy
scoreboard objectives add taTimeSec dummy
scoreboard objectives add taTimeMsec dummy
#v1.5.6
scoreboard players set #speedoSpeed value -1
scoreboard objectives add mapVersion dummy
#v1.5.9
scoreboard objectives add trans_x dummy
scoreboard objectives add trans_y dummy
scoreboard objectives add trans_z dummy
scoreboard objectives add bounceCount dummy
#v1.5.10
scoreboard objectives add COPPA dummy
#v1.6.0
scoreboard objectives add customTagLine dummy
scoreboard objectives add optRAIdiff dummy
scoreboard objectives add optBAIdiff dummy
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optRAIdiff 0
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIdiff 0
scoreboard objectives add aiBattleBasherDurability dummy
scoreboard objectives add aiFaceDirTime dummy
scoreboard objectives add aiFaceDirYaw dummy
scoreboard objectives add aiFaceDirPitch dummy
scoreboard players set #vel10 value 10
#v1.6.7
scoreboard objectives add customTrackSortNumber dummy
#v1.6.8 (the boq update)
scoreboard objectives add tOption trigger
scoreboard objectives add tEditor trigger
scoreboard objectives add tTrackEditor trigger


#make sure command blocks are enabled
setblock 1555 78 406 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"setblock ~1 ~ ~ air",LastExecution:113428853L,SuccessCount:1,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b}
setblock 1554 78 406 minecraft:chain_command_block[conditional=false,facing=west]{Command:"scoreboard players set #commandBlockCheck value 1",LastExecution:113428853L,SuccessCount:1,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
scoreboard players set #commandBlockCheck value 0
setblock 1556 78 406 redstone_block
schedule function sprint_racer:verify_command_blocks_enabled 5t

#some insane scoreboard stuff
#each array has 26 entries to keep track of what checkpoints are relevant. index [25] is the finish line
data modify storage sprint_racer:pos_calc check_array_1 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_2 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_3 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_4 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_5 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_6 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_7 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_8 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_9 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_10 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_11 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_12 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_13 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_14 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_15 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_16 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_17 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_18 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_19 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage sprint_racer:pos_calc check_array_20 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

#some gamerules?
gamerule doVinesSpread false
gamerule spawnChunkRadius 10
gamerule disablePlayerMovementCheck true
gamerule locatorBar false

#constants
scoreboard players set #100 value 100
scoreboard players set #-1 value -1
scoreboard players set #9000 value 9000

#item cooldowns needs to be non-null
scoreboard players add #squidCooldown value 0
scoreboard players add #lightningCooldown value 0

#make sure cheats armor stand is updated to use tags
tag @e[type=armor_stand,name="cheats",tag=!cheats] add cheats

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] difficultyRamp 0

execute if block 1550 83 406 redstone_block run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add realms
execute unless block 1550 83 406 redstone_block run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove realms

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove taNoItems

#realms and options signs
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer:bootup_realms
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer_language:_dlc_4/lobby/options/restore_options_signs

#custom tracks from old versions need to be kept up to date with some stuff
execute as @e[type=armor_stand,tag=customtrack] run function sprint_racer:game_logic/10/track_version_upkeep/_check

#make sure dlc 6 options signs exist
function sprint_racer_language:_dlc_6/lobby/options/restore_options_signs

#in compliance with COPPA, "Casino Chase" track is banned on Minecraft Realms!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=COPPA] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=46}] add rtBlacklist

worldborder set 20000000 0