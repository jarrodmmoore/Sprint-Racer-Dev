tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest11,distance=..3] add chestTarget
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run particle block{block_state:"minecraft:cake"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
kill @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest]

execute unless entity @s[tag=ai] run function sprint_racer:items/container_types/cake_eat
execute if entity @s[tag=ai] run function sprint_racer:items/container_types/cake_eat_ai

scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0