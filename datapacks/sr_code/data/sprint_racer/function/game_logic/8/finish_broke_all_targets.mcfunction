tag @e[tag=w,type=armor_stand] add taValidFinish

#finish music
stopsound @a[tag=musicDef] record
scoreboard players set @a[tag=musicDef] BGMtrack 0
scoreboard players set @a[tag=musicDef] musicTime 40

#DEV, PRINT RAW TIME
execute if entity @a[tag=dev] run tellraw @a ["",{"text":"[ DEV ] Raw Time: "},{"score":{"name":"@e[tag=w,limit=1]","objective":"currentTime"}}]

scoreboard players operation @s storedTimeMin = @e[tag=w,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,type=armor_stand] currentTimeMsec

#show all previous lap times and total time (NOT USED IN TIME ATTACK DUE TO VISUAL CLUTTER)
#scoreboard players set @s lapShowDelay 2

tag @a add finished
gamemode spectator @a

scoreboard players set @a elytraTimer 0
scoreboard players set @a invisibility 0
scoreboard players set @a resistTime 0
scoreboard players set @a invulTime 0

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1

#everyone is forced to finish now
function sprint_racer_language:_dlc_1/gameplay/battle_finish_timeattack
team join playerFinished @a
scoreboard players set @a subtitleDelay 60

scoreboard players set @a actionbarState -1
scoreboard players set @e[tag=w,type=armor_stand] timeRemaining -1