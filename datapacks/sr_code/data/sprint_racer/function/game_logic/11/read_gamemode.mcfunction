execute if block ~ ~ ~ light_blue_wool run tag @s add read_race
execute if block ~ ~ ~ red_wool run tag @s add read_battle
execute if block ~ ~ ~ black_wool run tag @s add read_random

execute if block ~1 ~ ~ black_wool run tag @s add read_rtrack

execute if entity @s[tag=return_full] run function sprint_racer:game_logic/11/read_extra