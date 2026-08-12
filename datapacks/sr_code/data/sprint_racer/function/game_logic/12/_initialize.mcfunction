function sprint_racer:give_ids

scoreboard players set @a storedHudNode -1

######
#MUSIC
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
function sprint_racer:music/global/stop_music
######

#clear any old forceloaded chunks
forceload remove all
function sprint_racer:_force_load_chunks

#always play in 20Hz mode no matter what! otherwise the camera will look jerky
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick] remove halftick

scoreboard players set global loadAttempts 0

scoreboard objectives remove creditsSeq1
scoreboard objectives remove creditsSeq2
scoreboard objectives add creditsSeq1 dummy
scoreboard objectives add creditsSeq2 dummy
scoreboard players set global cameraMode 11
scoreboard players set global cameraTime 100

scoreboard objectives remove specJoin
scoreboard objectives remove specJoinTime

function sprint_racer:mid_game_vote/disable

function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

scoreboard players reset @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] storm
weather clear

tag @e[tag=chosenTrack] remove chosenTrack
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add chosenTrack

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove choosingTrack

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

function sprint_racer:items/item_presets/buffet

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

team modify player seeFriendlyInvisibles false
team modify player color aqua
team modify playerCyan color aqua
team modify playerOrange color aqua
team join player @a

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
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerCountB -999
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
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lap 5
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] check 3
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining 10009
gamerule advance_time false
gamerule fall_damage true
tag @a remove darkHUD
tag @a remove eliminated
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove hideLaps
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove noCharity
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove gauntletTrack
scoreboard players set #useFastCalc value 1
scoreboard players set #lastRacePosCalc value 1

#the chosen track will run its special initialization function
function sprint_racer:game_logic/12/_initialize_track

#======================================

#TEAMS
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run function sprint_racer:teams/assemble_teams

#number of players at the start is used for certain item chests that may or may not spawn
scoreboard players set global playerRequire 0

#initialize bossbar lap display based on the set amt of laps
scoreboard players set #hudMode value 1
function sprint_racer:game_logic/1/lap_bossbar/setup

#if no chosen track exists, this function failed and we'll go back to the lobby (game logic 0)
execute unless entity @e[tag=chosenTrack,tag=trackStandR] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add initFailed

execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a blindness 30 1 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a invisibility 30 1 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a resistance 30 255 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run effect give @a weakness 30 20 true
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run gamemode spectator @a

#failed to load a valid track? back to lobby
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noskip2next
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] run function sprint_racer:game_logic/0/_initialize

#test for lone player, send to time attack if alone
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=initFailed] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameState 12