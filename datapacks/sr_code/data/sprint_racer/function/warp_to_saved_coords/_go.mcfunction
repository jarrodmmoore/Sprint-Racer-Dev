execute store result storage sprint_racer:func_args teleport_x int 1 run scoreboard players get @s checkpoint_x
execute store result storage sprint_racer:func_args teleport_y int 1 run scoreboard players get @s checkpoint_y
execute store result storage sprint_racer:func_args teleport_z int 1 run scoreboard players get @s checkpoint_z
function sprint_racer:warp_to_saved_coords/go_macro with storage sprint_racer:func_args