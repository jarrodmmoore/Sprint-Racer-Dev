execute as @s store result score @s checkpoint_x run data get entity @s Pos[0] 1
scoreboard players remove @s checkpoint_x 26
scoreboard players set @s[scores={checkpoint_x=1615..}] checkpoint_x 1614
scoreboard players set @s[scores={checkpoint_x=..1605}] checkpoint_x 1606

execute as @s store result score @s checkpoint_y run data get entity @s Pos[1] 1
scoreboard players remove @s checkpoint_y 69

scoreboard players set @s checkpoint_z 356

tag @s add keep_rotation
execute if entity @s[scores={rot_yaw=90..270}] rotated ~180 ~ run function sprint_racer:warp_to_saved_coords/_go
execute unless entity @s[scores={rot_yaw=90..270}] rotated ~ ~ run function sprint_racer:warp_to_saved_coords/_go