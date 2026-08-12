#temporary save state is requested? try to activate it
execute if score #requestSaveState value matches 1.. run function sprint_racer:game_logic/0/save_state/handle_state_request


function sprint_racer:give_ids
scoreboard players set @a storedHudNode -1
scoreboard players set #hudNode value 1

#stop ambient noise
stopsound @a ambient

######
#MUSIC
tag @e[type=armor_stand,tag=setBGM] remove setBGM
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
function sprint_racer:music/global/stop_music
######

#clear any old forceloaded chunks
forceload remove all
function sprint_racer:_force_load_chunks

effect clear @a
scoreboard objectives remove specJoin
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] specJoinTime 0
scoreboard players set global loadAttempts 0
scoreboard players set global resetAttempts 0

scoreboard objectives remove specJoin
scoreboard objectives add specJoin trigger
scoreboard objectives remove specJoinTime
scoreboard objectives add specJoinTime dummy
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] specJoinTime 700

function sprint_racer:mid_game_vote/disable

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#random gamemode preset, pick one at random
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetA] run scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gamemodePresetA = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber

function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

#halftick mode with [AUTO] performance when we have 6 or more players
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerCount 1
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick,scores={playerCount=..5}] remove halftick
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick,scores={playerCount=6..}] add halftick

scoreboard players reset @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] storm
weather clear

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=needAnnounce] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=needAnnounce] as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=needAnnounce] remove needAnnounce

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

#boiler-plate stuff for starting a race
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameState 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameTime -50
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeMin 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeSec 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTime 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeMsec 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] oTimer 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] finishPos 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] checkCalc 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lapCalc 0
scoreboard players set #nextItemIsAnvil value 0
scoreboard players set #1stPlaceLead value -99999
scoreboard players set #anvilLeadCheck value 850

team modify player seeFriendlyInvisibles false
team modify player color aqua
team modify playerCyan color dark_aqua
team modify playerOrange color gold
team join player @a[tag=playing]
team join spectator @a[tag=forcespectate]
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run team modify playerFinished color yellow
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run team modify playerFinished color dark_gray

scoreboard players set @a actionbarState 1
scoreboard players set @a actionbarState2 0
scoreboard players set @a lap 1
scoreboard players set @a lapFake 1
scoreboard players set @a check 0
scoreboard players set @a lapAnimation 0
scoreboard players set @a subtitleDelay 0
scoreboard players set @a itemCooldown 0
scoreboard players set @a itemBlockState 0
scoreboard players reset @a death
scoreboard players set @a scriptMove 0
scoreboard players set @a lastTeleport 0
scoreboard players set @a navDirection 0
scoreboard players set @a navDirection2 0
scoreboard players set @a inputCooldown 0
scoreboard players set @a offCourseBuffer 0
scoreboard players set @a wrongWayBuffer 0

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1
function sprint_racer:items/reset_global_cooldowns

scoreboard players reset @a enderman
scoreboard players reset @a anvil
scoreboard players reset @a burn
scoreboard players reset @a blindtime

scoreboard players set @a bestSplit1 0
scoreboard players set @a bestSplit2 0
scoreboard players set @a bestSplit3 0
scoreboard players set @a bestSplit4 0
scoreboard players set @a bestSplit5 0
scoreboard players set @a bestSplit6 0
scoreboard players set @a bestSplit7 0
scoreboard players set @a bestSplit8 0
scoreboard players set @a bestSplit9 0
scoreboard players set @a bestSplit10 0
scoreboard players set @a bestSplit11 0
scoreboard players set @a bestSplit12 0
scoreboard players set @a bestSplit13 0
scoreboard players set @a bestSplit14 0
scoreboard players set @a bestSplit15 0
scoreboard players set @a bestSplit16 0
scoreboard players set @a bestSplit17 0
scoreboard players set @a bestSplit18 0
scoreboard players set @a bestSplit19 0
scoreboard players set @a bestSplit20 0
scoreboard players set @a bestSplit21 0
scoreboard players set @a bestSplit22 0
scoreboard players set @a bestSplit23 0
scoreboard players set @a bestSplit24 0
scoreboard players set @a bestSplit25 0
scoreboard players set @a bestTime 0
scoreboard players set @a bestTimeMin 0
scoreboard players set @a bestTimeSec 0
scoreboard players set @a bestTimeMsec 0

scoreboard players set check1 lap 0
scoreboard players set check2 lap 0
scoreboard players set check3 lap 0
scoreboard players set check4 lap 0
scoreboard players set check5 lap 0
scoreboard players set check6 lap 0
scoreboard players set check7 lap 0
scoreboard players set check8 lap 0
scoreboard players set check9 lap 0
scoreboard players set check10 lap 0
scoreboard players set check11 lap 0
scoreboard players set check12 lap 0
scoreboard players set check13 lap 0
scoreboard players set check14 lap 0
scoreboard players set check15 lap 0
scoreboard players set check16 lap 0
scoreboard players set check17 lap 0
scoreboard players set check18 lap 0
scoreboard players set check19 lap 0
scoreboard players set check20 lap 0
scoreboard players set check21 lap 0
scoreboard players set check22 lap 0
scoreboard players set check23 lap 0
scoreboard players set check24 lap 0
scoreboard players set check25 lap 0
scoreboard players set finishLine lap 0

#clear bossbars!
function sprint_racer:clear_bossbars

bossbar set minecraft:timeremaining style progress
bossbar set minecraft:timeremaining max 1200

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove ignoreCalc
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove calcStart
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove calcRunning
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove calcEnd
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove allowPVP
tag @e[tag=finallap] remove finallap
tag @e[tag=finished] remove finished
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeOut 0
tag @a add noInventory
tag @e[tag=noInventory2] remove noInventory2

#players get points depending on how many other players they beat out
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerCountB 1
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] addPoints = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerCountB
scoreboard players set @a addPoints 0

scoreboard players reset * racePosDisplay
scoreboard players reset * racePosDisplay2
scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy


tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove initFailed
bossbar set minecraft:menutimer players
title @a times 0 45 5
title @a subtitle [""]
title @a title [""]
title @a actionbar [""]
clear @a
function sprint_racer:reset_speeds
effect clear @a night_vision
scoreboard objectives setdisplay sidebar
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=showroundnum] run function sprint_racer:game_logic/0/sidebar/__index_main
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=showroundnum] remove showroundnum

#======================================
#DEFAULTS, these can be overwritten by a specific track's initialization function
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove noAItrack
data modify storage sprint_racer:func_args active_namespace set value "_"
data modify storage sprint_racer:func_args active_path set value "_"
#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=RAIautocount] optRAIcount 4
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] startType 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lap 3
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] check 3
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining 5009
bossbar set gauntlettime max 11980
scoreboard players set #gauntletTimeMins value 10
gamerule advance_time false
gamerule fall_damage true
function sprint_racer:speedometer/enable_xp_bar
tag @a remove darkHUD
tag @a remove eliminated
tag @a[tag=enchanted_something_custom] remove enchanted_something_custom
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove hideLaps
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove noCharity
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove gauntletTrack
scoreboard players set #useFastCalc value 1
scoreboard players set #lastRacePosCalc value 1

#the chosen track will run its special initialization function
execute as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/1/_initialize_index

#cheat that offsets lap count
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=55a] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:cheats/offset_lap_count

#grand prix lap modifier, if applicable
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,scores={gpModifier=1..}] run function sprint_racer:game_logic/1/apply_gp_lap_modifier

#cheat that allows 1 checkpoint skip
execute if entity @e[type=armor_stand,tag=50a,tag=cheats,x=1548,y=148,z=422,distance=..1] run tag @a add skip_available

#cheat that doubles lap count
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=39a] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:cheats/double_lap_count

#reduce number of AI in certain circumstances (CUT)
#execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=realms,tag=optRAIalways,tag=!noAItrack] run function sprint_racer:game_logic/1/ai_count_reduce

#======================================

#TEAMS
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run function sprint_racer:teams/assemble_teams

#item presets
function sprint_racer:items/item_presets/_index_race

#elimination mode, max lap count always starts at 1, adjusts as the game proceeds
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] lap 3
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeUntilElim 800
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run bossbar set minecraft:timeremaining max 800
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] addPoints2 1

#number of players at the start is used for certain item chests that may or may not spawn
scoreboard players set global playerRequire 0
scoreboard players operation global playerRequire += @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerCountB
scoreboard players operation global playerCountM = global playerRequire
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noExtraChest] run scoreboard players set global playerRequire -9999

#initialize bossbar lap display based on the set amt of laps
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!classicHUD] run function sprint_racer:game_logic/1/lap_bossbar/use_custom_hud
scoreboard players set #hudMode value 1
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run scoreboard players set #hudMode value 2
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run function sprint_racer:game_logic/1/lap_bossbar/setup
#default timer values for HUD
scoreboard players set #hudCountdownMin10 value 1
scoreboard players set #hudCountdownMin value 0
scoreboard players set #hudCountdownSec10 value 0
scoreboard players set #hudCountdownSec2 value 0
scoreboard players set #hudCountdownSec value 0
#re-calculate this please :)
scoreboard players set #hudAliveAtStart value 0

#if no chosen track exists, this function failed and we'll go back to the lobby (game logic 0)
execute unless entity @e[tag=chosenTrack,tag=trackStandR] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add initFailed

execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a blindness 30 1 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a slow_falling 7 1 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a invisibility 30 1 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a resistance 30 255 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a weakness 30 20 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run gamemode spectator @a

#failed to load a valid track? back to lobby
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noskip2next
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run function sprint_racer:game_logic/0/_initialize

#test for lone player, send to time attack if alone
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run schedule function sprint_racer:game_logic/1/check_for_lone_player 1t