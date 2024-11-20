execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=taNoItems] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add toggleOn

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=toggleOn] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove taNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=toggleOn] run execute as @a at @s run playsound minecraft:block.chest.open master @s ~ 1000000 ~ 1000000 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!toggleOn] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add taNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!toggleOn] run execute as @a at @s run playsound minecraft:block.chest.close master @s ~ 1000000 ~ 1000000 1

scoreboard players set @s inputCooldown 15

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove toggleOn