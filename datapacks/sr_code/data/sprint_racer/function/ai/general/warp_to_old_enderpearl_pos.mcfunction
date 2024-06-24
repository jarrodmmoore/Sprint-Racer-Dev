execute as @e[tag=aiRpos] run scoreboard players operation @s dummyID = @s playerID
scoreboard players operation @e[tag=aiRpos] dummyID -= @s playerID

execute if entity @e[tag=aiRpos,scores={dummyID=0}] run tag @s add doTeleport

execute if entity @s[tag=doTeleport] run tp @s @e[limit=1,sort=nearest,tag=aiRpos,scores={dummyID=0}]
scoreboard players reset @s[tag=doTeleport] aiPearlTime
execute if entity @s[tag=doTeleport] run scoreboard players set @s aiDelayNewPath 3
tag @s remove doTeleport

tag @s add aiDontFace