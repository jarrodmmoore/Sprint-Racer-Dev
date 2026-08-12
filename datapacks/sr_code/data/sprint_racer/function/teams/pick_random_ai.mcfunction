scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math 0
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..2}] rNumber

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..1}] run tag @s add playerOrange
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..1}] run tag @s add playerCyan