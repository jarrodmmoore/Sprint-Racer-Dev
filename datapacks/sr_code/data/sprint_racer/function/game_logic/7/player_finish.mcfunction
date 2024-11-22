tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add taValidFinish

execute at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force

#finish music
stopsound @a[tag=musicDef] record
scoreboard players set @a[tag=musicDef] BGMtrack 0
scoreboard players set @a[tag=musicDef] musicTime 40

#DEV, PRINT RAW TIME
execute if entity @a[tag=dev] run tellraw @a ["",{"text":"[ DEV ] Raw Time: "},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"currentTime"}}]

scoreboard players operation @s storedTimeMin = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec

#show all previous lap times and total time (NOT USED IN TIME ATTACK DUE TO VISUAL CLUTTER)
#scoreboard players set @s lapShowDelay 2

tag @a add finished
gamemode spectator @a
scoreboard players set @s lap 999999
scoreboard players set @s check 0

scoreboard players set @s elytraTimer 0
scoreboard players set @s invisibility 0
scoreboard players set @s resistTime 0
scoreboard players set @s invulTime 0
scoreboard players set @s gAppleTime 0

effect clear @s blindness
effect clear @s darkness

#update HUD if needed
#scoreboard players remove @s lapFake 1
#execute if score #bbPersonalize value matches 2 if score @s hudNode matches 1.. run function sprint_racer:custom_hud/_update_index_time
#scoreboard players add @s lapFake 1
scoreboard players set @s hudNode 99

tag @e[tag=latestFinish] remove latestFinish
tag @s add latestFinish

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1

#everyone is forced to finish now
function sprint_racer_language:_dlc_1/gameplay/race_finish_timeattack
team join playerFinished @a
scoreboard players set @a subtitleDelay 60

scoreboard players set @a actionbarState -1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining -1