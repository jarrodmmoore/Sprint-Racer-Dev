execute if block ~ 0 ~ minecraft:lime_wool run scoreboard players set @s recDirection 1
execute if block ~ 0 ~ minecraft:light_blue_wool run scoreboard players set @s recDirection 3
execute if block ~ 0 ~ minecraft:green_wool run scoreboard players set @s recDirection 5
execute if block ~ 0 ~ minecraft:blue_wool run scoreboard players set @s recDirection 7

#red wool means off-course
execute if block ~ 0 ~ minecraft:red_wool run scoreboard players set @s recDirection 10

#light gray wool means missed checkpoint
execute if block ~ 0 ~ minecraft:light_gray_wool run scoreboard players set @s recDirection 11

#black wool is an instant reset
execute if block ~ 0 ~ minecraft:black_wool run scoreboard players set @s recDirection 12


#checkpoint overrides...
execute if entity @s[scores={check=0}] positioned ~ 1 ~ run function sprint_racer:game_logic/1/nav/y_override
execute if entity @s[scores={check=1}] positioned ~ 2 ~ run function sprint_racer:game_logic/1/nav/y_override
execute if entity @s[scores={check=2}] positioned ~ 3 ~ run function sprint_racer:game_logic/1/nav/y_override
execute if entity @s[scores={check=3}] positioned ~ 4 ~ run function sprint_racer:game_logic/1/nav/y_override
execute if entity @s[scores={check=4}] positioned ~ 5 ~ run function sprint_racer:game_logic/1/nav/y_override
execute if entity @s[scores={check=5..}] run function sprint_racer:game_logic/1/nav/y_override_index