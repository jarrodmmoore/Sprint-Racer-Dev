tag @e[tag=activeplayer,dx=9,dy=255,dz=9] add checkTarget

scoreboard players operation @e[tag=checkTarget] nCheck = @s check
execute as @e[tag=checkTarget] run scoreboard players operation @s nCheck -= @s check
tag @e[tag=checkTarget,scores={nCheck=1}] add checkIncrement

execute if entity @s[tag=checkWarn] run tag @a[tag=checkTarget,scores={nCheck=2..}] add checkWarn
execute if entity @s[tag=checkWrongWay] run tag @a[tag=checkTarget,scores={nCheck=..-1}] add checkWrongWay
execute if entity @s[tag=checkText] run tag @a[tag=checkTarget,tag=checkIncrement] add checkText
execute if entity @s[tag=checkSound] run tag @a[tag=checkTarget,tag=checkIncrement] add checkSound

execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players operation @s storedTimeMin = @s taLapMin
execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players operation @s storedTimeSec = @s taLapSec
execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players operation @s storedTimeMsec = @s taLapMsec
execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players operation @s taStoredLap = @s lap
execute as @a[tag=checkTarget,tag=checkIncrement,tag=checkSound] run scoreboard players set @s[scores={actionbarState=..2}] actionbarState 2
execute as @a[tag=checkTarget,tag=checkIncrement,tag=checkText] run scoreboard players set @s[scores={actionbarState=..2}] actionbarState 2
execute as @a[tag=checkTarget,tag=checkIncrement] run scoreboard players set @s actionbarState2 20

execute as @a[tag=checkTarget,tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 8
execute as @a[tag=checkTarget,tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState2 40

execute as @a[tag=checkTarget,tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute as @a[tag=checkTarget,tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40

tag @e[tag=checkTarget] remove checkTarget