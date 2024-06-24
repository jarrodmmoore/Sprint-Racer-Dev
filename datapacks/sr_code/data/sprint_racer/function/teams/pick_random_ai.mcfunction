scoreboard players set @e[tag=w,type=armor_stand] math 0
scoreboard players operation @e[tag=w,type=armor_stand] math = @e[limit=1,sort=random,tag=random,scores={rNumber=1..2}] rNumber

execute if entity @e[tag=w,type=armor_stand,scores={math=..1}] run tag @s add playerOrange
execute unless entity @e[tag=w,type=armor_stand,scores={math=..1}] run tag @s add playerCyan