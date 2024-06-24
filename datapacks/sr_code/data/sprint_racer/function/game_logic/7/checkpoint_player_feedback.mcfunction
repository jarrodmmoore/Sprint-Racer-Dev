execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeMin = @e[limit=1,tag=w,type=armor_stand] currentTimeMin
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeSec = @e[limit=1,tag=w,type=armor_stand] currentTimeSec
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeMsec = @e[limit=1,tag=w,type=armor_stand] currentTimeMsec

execute if entity @s[tag=checkIncrement] run scoreboard players operation @s taTimeMin = @s taLapMin
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s taTimeSec = @s taLapSec
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s taTimeMsec = @s taLapMsec
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s taStoredLap = @s lap
#execute as @a[tag=checkTarget,tag=checkIncrement,tag=checkSound] run scoreboard players set @s[scores={actionbarState=..2}] actionbarState 2
#execute as @a[tag=checkTarget,tag=checkIncrement,tag=checkText] run scoreboard players set @s[scores={actionbarState=..2}] actionbarState 2
#execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players set @s actionbarState2 40

execute if entity @s[tag=checkTarget,tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 8
execute if entity @s[tag=checkTarget,tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState2 40

execute if entity @s[tag=checkTarget,tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute if entity @s[tag=checkTarget,tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40