function sprint_racer:give_ids

scoreboard players set @a storedHudNode -1

######
#MUSIC
tag @e[type=armor_stand,tag=setBGM] remove setBGM
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
function sprint_racer:music/global/stop_music
######

scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 0
scoreboard players set global loadAttempts 0
scoreboard players set global resetAttempts 0

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#sent from lobby (gamestate 0), adopt whatever item setting was defined in the lobby
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=return2lobby,tag=!optItems] add taNoItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=return2lobby,tag=optItems] remove taNoItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=return2lobby,tag=optItemsB] remove taNoItems

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove taValidFinish

scoreboard objectives remove dropSVoid
scoreboard objectives add dropSVoid minecraft.dropped:minecraft.structure_void

function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

#halftick mode in realms when we have 6 or more players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick] add halftick

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm
weather clear

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] remove needAnnounce

scoreboard objectives remove targetData
scoreboard objectives add targetData dummy

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

function sprint_racer:items/item_presets/_index_battle

#boiler-plate stuff for starting a battle (TIME ATTACK)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 8
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime -50
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] oTimer 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] checkCalc 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lapCalc 0

team modify player seeFriendlyInvisibles false
team modify player color yellow

scoreboard players set @a actionbarState 1
scoreboard players set @a actionbarState2 0
scoreboard players set @a lap 1
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

#clear bossbars!
function sprint_racer:clear_bossbars

bossbar set minecraft:timeremaining style progress

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove ignoreCalc
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcStart
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcRunning
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcEnd
tag @e[tag=finallap] remove finallap
tag @e[tag=finished] remove finished
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeOut 0
tag @a add noInventory
tag @e[tag=noInventory2] remove noInventory2

#players get points depending on how many other players they beat out
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountB
scoreboard players set @a addPoints 0

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

#DEFAULTS, these can be overwritten by a specific track's initialization function
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noAItrack
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=RAIautocount] optRAIcount 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 5009
gamerule doDaylightCycle false
tag @a remove darkHUD
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove hideLaps
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noCharity
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noRapidStart

#the chosen track will run its special initialization function
execute as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/3/_initialize_index

#initialize bossbar lap display based on the set amt of laps
scoreboard players set #bbPersonalize value 2
scoreboard players set #hudMode value 6
function sprint_racer:game_logic/1/lap_bossbar/setup_alt

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
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=initFailed] run function sprint_racer:game_logic/6/_initialize