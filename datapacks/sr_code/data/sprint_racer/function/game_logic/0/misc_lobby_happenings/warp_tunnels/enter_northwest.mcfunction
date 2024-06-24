execute as @s store result score @s checkpoint_x run data get entity @s Pos[0] 1
scoreboard players remove @s checkpoint_x 6
scoreboard players set @s[scores={checkpoint_x=1555..}] checkpoint_x 1554
scoreboard players set @s[scores={checkpoint_x=..1545}] checkpoint_x 1546

execute as @s store result score @s checkpoint_y run data get entity @s Pos[1] 1
scoreboard players remove @s checkpoint_y 69

scoreboard players set @s checkpoint_z 456

tag @s add keep_rotation
execute if entity @s[scores={rot_yaw=90..270}] rotated ~ ~ run function sprint_racer:warp_to_saved_coords/_go
execute unless entity @s[scores={rot_yaw=90..270}] rotated ~180 ~ run function sprint_racer:warp_to_saved_coords/_go