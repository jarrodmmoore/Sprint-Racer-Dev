#refund hp
execute store result score @s math run data get entity @s Health
scoreboard players operation @s math += @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,limit=1,scores={rNumber=1}] rNumber
execute store result entity @s Health double 1 run scoreboard players get @s math