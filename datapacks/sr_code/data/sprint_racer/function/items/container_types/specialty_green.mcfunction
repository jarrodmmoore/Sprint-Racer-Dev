tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest8,distance=..3] add chestTarget
execute as @e[tag=chestTarget,distance=..3] at @s run playsound minecraft:block.wool.break master @a ~ ~ ~ 2 1.25
execute as @e[tag=chestTarget,distance=..3] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 2 .75
execute as @e[tag=chestTarget,distance=..3] at @s run particle block{block_state:"minecraft:lime_wool"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,distance=..3,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
kill @e[tag=chestTarget,distance=..3]

function sprint_racer:items/pick_item/trap/_main
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] run function sprint_racer:items/pick_item/trap/_main

scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0