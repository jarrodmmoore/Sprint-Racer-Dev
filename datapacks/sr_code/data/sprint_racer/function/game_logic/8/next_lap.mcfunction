scoreboard players operation @s storedTimeMin = @e[tag=w,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,type=armor_stand] currentTimeMsec
scoreboard players set @s actionbarState 2
scoreboard players set @s actionbarState2 20

#starts the lap animation, happens in another function
scoreboard players set @s lapAnimation 1