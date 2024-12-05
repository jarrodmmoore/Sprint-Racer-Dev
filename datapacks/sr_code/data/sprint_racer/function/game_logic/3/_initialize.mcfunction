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
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetB] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gamemodePresetB = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber

function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

#halftick mode in realms when we have 6 or more players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick,scores={playerCount=6..}] add halftick
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick,scores={playerCount=..5}] remove halftick

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm
weather clear

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] remove needAnnounce

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

function sprint_racer:items/item_presets/_index_battle
#resource control, set item preset to capsules only so Trapped Chests can at least slightly convincing
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=3}] run function sprint_racer:items/item_presets/capsules_only

#boiler-plate stuff for starting a battle
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime -50
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] oTimer 0

scoreboard players reset @a enderman
scoreboard players reset @a anvil
scoreboard players reset @a burn
scoreboard players reset @a blindtime
scoreboard players reset @a battPosDisplay

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1
function sprint_racer:items/reset_global_cooldowns

#tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add allowPVP

team modify player seeFriendlyInvisibles false
team modify player color red
team modify playerCyan color dark_aqua
team modify playerOrange color gold
team join player @a[tag=playing]
team join spectator @a[tag=forcespectate]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run team modify playerFinished color yellow
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run team modify playerFinished color dark_gray

#TEAMS
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run function sprint_racer:teams/assemble_teams

scoreboard players set @a actionbarState 1
scoreboard players set @a actionbarState2 0
scoreboard players set @a KOs 0
scoreboard players set @a KOgoal 3
scoreboard players set @a subtitleDelay 0
scoreboard players set @a itemCooldown 0
scoreboard players set @a itemBlockState 0
scoreboard players reset @a death
scoreboard players reset @a death2
scoreboard players set @a scriptMove 0
scoreboard players set @a boundaryTimer 10

#player lives (3 default)
scoreboard players set @a playerLives 3

#execute as @a run function parkour_grand_prix:game_logic/3/self_scoreboard_setup
#wow, i was surprised to see a reference to parkour_grand_prix still here in 2024. i thought i removed them all half a decade ago

#clear bossbars!
function sprint_racer:clear_bossbars

bossbar set minecraft:timeremaining style progress

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove ignoreCalc
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcStart
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcRunning
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcEnd
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove suddenDeath
tag @e[tag=finallap] remove finallap
tag @e[tag=finished] remove finished
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeOut 0
tag @a add noInventory
tag @e[tag=noInventory2] remove noInventory2

#players get points depending on how many other players they beat out
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 1
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountB
scoreboard players set @a givePoints 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints2 1

scoreboard players reset * KOs2
scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy

tag @a add firstplace
tag @a add firstplace2
scoreboard players set @s battPosDisplay 1

#why does this keep turning purple? this is the only mention of "control_sneakheal color" in all my datapacks. i don't even
bossbar set minecraft:control_sneakheal color blue

#use HUD! :)
scoreboard players set #bbPersonalize value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!classicHUD] run function sprint_racer:game_logic/1/lap_bossbar/use_custom_hud
scoreboard players set #hudMode value 4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run scoreboard players set #hudMode value 5
#default timer values for HUD
scoreboard players set #hudCountdownMin10 value 0
scoreboard players set #hudCountdownMin value 4
scoreboard players set #hudCountdownSec10 value 0
scoreboard players set #hudCountdownSec2 value 0
scoreboard players set #hudCountdownSec value 0
#re-calculate this please :)
scoreboard players set #hudAliveAtStart value 0

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
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=BAIautocount] optBAIcount 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 5008
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] timeRemaining 7408
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] countTimeMin 6
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeSec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMsec 9
bossbar set timeremaining max 4800
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run bossbar set timeremaining max 7200
gamerule doDaylightCycle false
gamerule fallDamage true
tag @a remove darkHUD
tag @a remove eliminated
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove hideLaps
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noCharity

#the chosen track will run its special initialization function
execute as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/3/_initialize_index

#reduce number of AI in certain circumstances (CUT)
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms,tag=optBAIalways,tag=!noAItrack] run function sprint_racer:game_logic/3/ai_count_reduce

#======================================

#if no chosen track exists, this function failed and we'll go back to the lobby (game logic 0)
execute unless entity @e[tag=chosenTrack,tag=trackStandB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add initFailed

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
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run schedule function sprint_racer:game_logic/3/check_for_lone_player 1t