#refund hp
execute store result score @s math run data get entity @s Health
scoreboard players operation @s math += @e[tag=random,type=armor_stand,limit=1,scores={rNumber=1}] rNumber
execute store result entity @s Health double 1 run scoreboard players get @s math