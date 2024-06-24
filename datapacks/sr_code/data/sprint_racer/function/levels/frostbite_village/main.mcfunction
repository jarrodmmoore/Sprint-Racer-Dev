function sprint_racer:levels/frostbite_village/map

tag @e[tag=darkHUD] remove darkHUD
execute as @a at @s if block ~ ~ ~ snow run tag @s add darkHUD
execute as @a at @s if block ~ ~-1 ~ snow run tag @s add darkHUD
execute as @a at @s if block ~ ~-1 ~ snow_block run tag @s add darkHUD
execute as @a at @s if block ~ ~-2 ~ snow_block run tag @s add darkHUD