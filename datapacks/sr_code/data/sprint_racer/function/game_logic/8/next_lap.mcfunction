scoreboard players operation @s storedTimeMin = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec
scoreboard players set @s actionbarState 2
scoreboard players set @s actionbarState2 20

#starts the lap animation, happens in another function
scoreboard players set @s lapAnimation 1