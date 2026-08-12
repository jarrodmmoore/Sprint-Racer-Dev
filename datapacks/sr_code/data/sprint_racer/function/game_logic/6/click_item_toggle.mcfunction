execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=taNoItems] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add toggleOn

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=toggleOn] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove taNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=toggleOn] run execute as @a at @s run playsound minecraft:block.chest.open master @s ~ 1000000 ~ 1000000 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!toggleOn] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add taNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!toggleOn] run execute as @a at @s run playsound minecraft:block.chest.close master @s ~ 1000000 ~ 1000000 1

scoreboard players set @s inputCooldown 15

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove toggleOn