#navigation arrow cannot change instantly, instead must change incrementally until the correct orientation is reached

scoreboard players operation @s[tag=gotDirection] navCompare = @s navDirection
scoreboard players operation @s[tag=gotDirection] navCompare -= @s navDirection2
execute if entity @s[tag=gotDirection,scores={navCompare=-3..-1}] run scoreboard players remove @s navDirection2 1
execute if entity @s[tag=gotDirection,scores={navCompare=..-4}] run scoreboard players add @s navDirection2 1
execute if entity @s[tag=gotDirection,scores={navCompare=1..3}] run scoreboard players add @s navDirection2 1
execute if entity @s[tag=gotDirection,scores={navCompare=4..}] run scoreboard players remove @s navDirection2 1
scoreboard players add @s[scores={navDirection2=..-1}] navDirection2 8
scoreboard players remove @s[scores={navDirection2=8..}] navDirection2 8