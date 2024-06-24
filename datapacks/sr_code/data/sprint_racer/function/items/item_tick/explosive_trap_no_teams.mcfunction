tag @e[type=armor_stand,limit=1,sort=nearest,distance=..10,tag=itemcontainer,scores={itemBlockState=10}] add kaboom
scoreboard players operation @s attackerID = @e[tag=kaboom,limit=1,distance=..10] playerID
scoreboard players set @s attackTime 100
tag @a remove kaboom

execute as @e[tag=kaboom,distance=..10,limit=1] at @s positioned ~ ~1.1 ~ run kill @e[type=item,distance=..2,tag=itemcontainer]
execute as @e[tag=kaboom,distance=..10,limit=1] at @s positioned ~ ~1.1 ~ run kill @e[distance=..2,tag=itemcontainer,tag=!kaboom,scores={itemBlockState=10}]
execute as @e[tag=kaboom,tag=land_mine,distance=..10,limit=1] at @s positioned ~ ~2.2 ~ run function sprint_racer:explode
execute as @e[tag=kaboom,distance=..10,limit=1] at @s positioned ~ ~1.1 ~ run function sprint_racer:explode
kill @e[tag=kaboom,distance=..15]

scoreboard players set @s itemBlockState 0