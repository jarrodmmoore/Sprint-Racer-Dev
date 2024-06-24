tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest6,distance=..3] add chestTarget
execute as @e[tag=chestTarget] at @s run playsound minecraft:block.wool.break master @a ~ ~ ~ 2 1.25
execute as @e[tag=chestTarget] at @s run playsound minecraft:block.wool.break master @a ~ ~ ~ 2 .75
execute as @e[tag=chestTarget] at @s run particle block{block_state:"minecraft:yellow_wool"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
kill @e[tag=chestTarget]

function sprint_racer:items/pick_item/defense/_main
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,type=armor_stand,tag=15a] run function sprint_racer:items/pick_item/defense/_main

scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0