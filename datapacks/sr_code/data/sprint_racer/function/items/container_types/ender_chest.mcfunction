tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest4,distance=..3] add chestTarget
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 2 1
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 .75
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run particle block{block_state:"minecraft:ender_chest"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,tag=!homer,type=armor_stand,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
kill @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest]

function sprint_racer:items/pick_item/random_elite/_main
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] run function sprint_racer:items/pick_item/random_elite/_main


scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0