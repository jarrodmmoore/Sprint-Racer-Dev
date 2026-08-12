scoreboard players operation @s storedTimeMin = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] currentTimeMsec
scoreboard players set @s actionbarState 2
scoreboard players set @s actionbarState2 20

#starts the lap animation, happens in another function
scoreboard players set @s lapAnimation 1