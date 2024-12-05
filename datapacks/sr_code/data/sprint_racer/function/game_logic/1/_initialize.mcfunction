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

effect clear @a
scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 0
scoreboard players set global loadAttempts 0
scoreboard players set global resetAttempts 0

scoreboard objectives remove specJoin
scoreboard objectives add specJoin trigger
scoreboard objectives remove specJoinTime
scoreboard objectives add specJoinTime dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 700

function sprint_racer:mid_game_vote/disable

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#random gamemode preset, pick one at random
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetA] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gamemodePresetA = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber

function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

#halftick mode with [AUTO] performance when we have 6 or more players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick,scores={playerCount=..5}] remove halftick
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick,scores={playerCount=6..}] add halftick

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm
weather clear

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] remove needAnnounce

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

function sprint_racer:items/item_presets/_index_race

#boiler-plate stuff for starting a race
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime -50
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] oTimer 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] checkCalc 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lapCalc 0
scoreboard players set #nextItemIsAnvil value 0
scoreboard players set #1stPlaceLead value -99999
scoreboard players set #anvilLeadCheck value 850

team modify player seeFriendlyInvisibles false
team modify player color aqua
team modify playerCyan color dark_aqua
team modify playerOrange color gold
team join player @a[tag=playing]
team join spectator @a[tag=forcespectate]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run team modify playerFinished color yellow
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run team modify playerFinished color dark_gray

#TEAMS
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run function sprint_racer:teams/assemble_teams

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

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove ignoreCalc
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcStart
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcRunning
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcEnd
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove allowPVP
tag @e[tag=finallap] remove finallap
tag @e[tag=finished] remove finished
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeOut 0
tag @a add noInventory
tag @e[tag=noInventory2] remove noInventory2

#players get points depending on how many other players they beat out
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 1
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountB
scoreboard players set @a addPoints 0

scoreboard players reset * racePosDisplay
scoreboard players reset * racePosDisplay2
scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy


tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove initFailed
bossbar set minecraft:menutimer players
title @a times 0 45 5
title @a subtitle [""]
title @a title [""]
title @a actionbar [""]
clear @a
function sprint_racer:reset_speeds
effect clear @a night_vision
scoreboard objectives setdisplay sidebar
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=showroundnum] run function sprint_racer:game_logic/0/sidebar/__index_main
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=showroundnum] remove showroundnum

#======================================
#DEFAULTS, these can be overwritten by a specific track's initialization function
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noAItrack
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=RAIautocount] optRAIcount 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 5009
bossbar set gauntlettime max 11980
scoreboard players set #gauntletTimeMins value 10
gamerule doDaylightCycle false
gamerule fallDamage true
tag @a remove darkHUD
tag @a remove eliminated
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove hideLaps
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noCharity
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gauntletTrack

#the chosen track will run its special initialization function
execute as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/1/_initialize_index

#cheat that offsets lap count
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=55a] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] unless entity @s[scores={gamemodePresetA=2}] run function sprint_racer:cheats/offset_lap_count

#grand prix lap modifier, if applicable
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix,scores={gpModifier=1..}] unless entity @s[scores={gamemodePresetA=2}] run function sprint_racer:game_logic/1/apply_gp_lap_modifier

#cheat that allows 1 checkpoint skip
execute if entity @e[type=armor_stand,tag=50a,tag=cheats,x=1548,y=148,z=422,distance=..1] run tag @a add skip_available

#cheat that doubles lap count
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=39a] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] unless entity @s[scores={gamemodePresetA=2}] run function sprint_racer:cheats/double_lap_count

#reduce number of AI in certain circumstances (CUT)
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms,tag=optRAIalways,tag=!noAItrack] run function sprint_racer:game_logic/1/ai_count_reduce

#======================================

#elimination mode, max lap count always starts at 1, adjusts as the game proceeds
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeUntilElim 800
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run bossbar set minecraft:timeremaining max 800
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints2 1

#number of players at the start is used for certain item chests that may or may not spawn
scoreboard players set global playerRequire 0
scoreboard players operation global playerRequire += @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountB
scoreboard players operation global playerCountM = global playerRequire
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noExtraChest] run scoreboard players set global playerRequire -9999

#initialize bossbar lap display based on the set amt of laps
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!classicHUD] run function sprint_racer:game_logic/1/lap_bossbar/use_custom_hud
scoreboard players set #hudMode value 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run scoreboard players set #hudMode value 2
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run function sprint_racer:game_logic/1/lap_bossbar/setup
#default timer values for HUD
scoreboard players set #hudCountdownMin10 value 1
scoreboard players set #hudCountdownMin value 0
scoreboard players set #hudCountdownSec10 value 0
scoreboard players set #hudCountdownSec2 value 0
scoreboard players set #hudCountdownSec value 0
#re-calculate this please :)
scoreboard players set #hudAliveAtStart value 0

#if no chosen track exists, this function failed and we'll go back to the lobby (game logic 0)
execute unless entity @e[tag=chosenTrack,tag=trackStandR] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add initFailed

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run effect give @a blindness 30 1 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run effect give @a slow_falling 7 1 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run effect give @a invisibility 30 1 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run effect give @a resistance 30 255 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run effect give @a weakness 30 20 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run gamemode spectator @a

#failed to load a valid track? back to lobby
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run function sprint_racer:game_logic/0/_initialize

#test for lone player, send to time attack if alone
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run schedule function sprint_racer:game_logic/1/check_for_lone_player 1t