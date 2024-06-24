execute if entity @e[tag=w,tag=taNoItems] run tag @e[tag=w,type=armor_stand] add toggleOn

execute if entity @e[tag=w,tag=toggleOn] run tag @e[tag=w,type=armor_stand] remove taNoItems
execute if entity @e[tag=w,tag=toggleOn] run execute as @a at @s run playsound minecraft:block.chest.open master @s ~ 1000000 ~ 1000000 1

execute if entity @e[tag=w,tag=!toggleOn] run tag @e[tag=w,type=armor_stand] add taNoItems
execute if entity @e[tag=w,tag=!toggleOn] run execute as @a at @s run playsound minecraft:block.chest.close master @s ~ 1000000 ~ 1000000 1

scoreboard players set @s inputCooldown 15

tag @e[tag=w,type=armor_stand] remove toggleOn