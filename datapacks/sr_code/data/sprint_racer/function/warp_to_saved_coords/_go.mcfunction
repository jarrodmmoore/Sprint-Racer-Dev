#dummy values for tp
scoreboard players operation @s dummy_x = @s checkpoint_x
scoreboard players operation @s dummy_y = @s checkpoint_y
scoreboard players operation @s dummy_z = @s checkpoint_z

execute positioned 0 0 0 run function sprint_racer:warp_to_saved_coords/x/_pos_or_neg