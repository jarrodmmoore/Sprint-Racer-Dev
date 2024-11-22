scoreboard players operation @s storedTimeMin = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec

execute at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force

#show all previous lap times and total time
scoreboard players set @s lapShowDelay 60

tag @s add finished
execute unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=48a] run gamemode spectator @s
clear @s
scoreboard players set @s lap 999999
scoreboard players set @s check 0

scoreboard players set @s elytraTimer 0
scoreboard players set @s invisibility 0
scoreboard players set @s resistTime 0
scoreboard players set @s invulTime 0
scoreboard players set @s gAppleTime 0

effect clear @s blindness
effect clear @s darkness

#race will end 75 seconds after first finish
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=..1500}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 1500

#no more forced anvils
scoreboard players set #anvilLeadCheck value 9999999

tag @e[tag=latestFinish] remove latestFinish
tag @s add latestFinish
scoreboard players set @a[team=!spectator,scores={elytraTimer=..0,actionbarState=..5}] actionbarState 5
scoreboard players set @a[team=!spectator,scores={elytraTimer=..0,actionbarState=..5}] actionbarState2 35

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1

#get assigned a finish position value and increment it for the next player
scoreboard players operation @s finishPos = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] finishPos
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1

#update HUD if needed
scoreboard players operation @s racePosDisplay = @s finishPos
execute if score @s racePosDisplay2 matches 1..4 run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"\uE072","color":"white","bold":false}]
scoreboard players remove @s lapFake 1
execute if score #bbPersonalize value matches 2 if score @s hudNode matches 1.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!gauntletTrack] run function sprint_racer:custom_hud/_update_index_race
execute if score #bbPersonalize value matches 2 if score @s hudNode matches 1.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=gauntletTrack] run function sprint_racer:custom_hud/_update_index_race_gauntlet
scoreboard players add @s lapFake 1

#get assigned a "addPoints" value
#players get a minimum of 1 point for finishing
scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] addPoints
scoreboard players set @s[scores={addPoints=..0}] addPoints 1
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints 1

#finish music
stopsound @s[tag=musicDef] record
scoreboard players set @s[tag=musicDef] BGMtrack 15
scoreboard players set @s[tag=musicDef,scores={finishPos=1}] BGMtrack 16
scoreboard players set @s[tag=musicDef] musicTime 40

#crowd reaction
execute if entity @s[scores={finishPos=1}] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] at @s run function sprint_racer:grand_prix/crowd_cheer_big
execute if entity @s[scores={finishPos=2..4}] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] at @s run function sprint_racer:grand_prix/crowd_cheer
execute if entity @s[scores={finishPos=5..,itemPosition=1}] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] at @s run function sprint_racer:grand_prix/crowd_claps

#CUT due to imbalance
#bonuses are awarded for 1st and 2nd
#scoreboard players add @s[scores={finishPos=1}] addPoints 2
#scoreboard players add @s[scores={finishPos=2}] addPoints 1

function sprint_racer_language:gameplay/race_finish_text
function sprint_racer_language:gameplay/race_finish_text_spectator/_index
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run team join playerFinished @s
scoreboard players set @s subtitleDelay 60