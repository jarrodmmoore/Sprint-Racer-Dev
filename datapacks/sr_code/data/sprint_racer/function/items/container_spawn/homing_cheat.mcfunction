execute store result score global math2 run random value 1..3
execute if score global math2 matches 3 run tag @e[tag=cSETME,type=armor_stand] add homer
execute if score global math2 matches 3 run scoreboard players set @s[tag=node] itemBlockState 1000