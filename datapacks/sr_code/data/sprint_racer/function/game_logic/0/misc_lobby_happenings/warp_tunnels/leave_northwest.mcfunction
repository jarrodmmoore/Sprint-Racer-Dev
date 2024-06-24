execute as @s store result score @s checkpoint_x run data get entity @s Pos[0] 1
scoreboard players add @s checkpoint_x 6

execute as @s store result score @s checkpoint_y run data get entity @s Pos[1] 1
scoreboard players add @s checkpoint_y 69

scoreboard players set @s checkpoint_z 445

function sprint_racer:warp_to_saved_coords/_go

effect clear @s night_vision