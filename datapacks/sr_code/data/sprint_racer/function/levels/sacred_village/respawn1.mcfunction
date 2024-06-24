execute unless entity @e[type=marker,distance=..30,tag=sv_possible_rs] run tp @s -104 69.5 -1506 290 10
execute if entity @e[type=marker,distance=..30,tag=sv_possible_rs] at @s at @e[limit=1,sort=nearest,type=marker,distance=..30,tag=sv_possible_rs] rotated as @s run tp @s ~ ~.5 ~ ~ 10

effect give @s instant_damage 1 0 true