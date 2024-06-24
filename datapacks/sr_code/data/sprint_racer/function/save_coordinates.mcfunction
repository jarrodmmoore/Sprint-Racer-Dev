#record the coordinates of the checkpoint to teleport back later if needed
execute as @s store result score @s checkpoint_x run data get entity @s Pos[0] 1
execute as @s store result score @s checkpoint_y run data get entity @s Pos[1] 1
execute as @s store result score @s checkpoint_z run data get entity @s Pos[2] 1