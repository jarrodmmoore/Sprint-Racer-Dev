#yellow is neutral
execute if block ~ ~ ~ minecraft:yellow_wool run scoreboard players set @s recDirection 0

execute if block ~ ~ ~ minecraft:lime_wool run scoreboard players set @s recDirection 1
execute if block ~ ~ ~ minecraft:light_blue_wool run scoreboard players set @s recDirection 3
execute if block ~ ~ ~ minecraft:green_wool run scoreboard players set @s recDirection 5
execute if block ~ ~ ~ minecraft:blue_wool run scoreboard players set @s recDirection 7

#red wool means off-course
execute if block ~ ~ ~ minecraft:red_wool run scoreboard players set @s recDirection 10

#light gray wool means missed checkpoint
execute if block ~ ~ ~ minecraft:light_gray_wool run scoreboard players set @s recDirection 11

#black wool is an instant reset
execute if block ~ ~ ~ minecraft:black_wool run scoreboard players set @s recDirection 12