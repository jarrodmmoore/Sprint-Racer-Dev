scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 0
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..2}] rNumber

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=..1}] run tag @s add playerOrange
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=..1}] run tag @s add playerCyan