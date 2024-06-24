#

execute unless score @s dummy_x matches ..-8192 run function sprint_racer:warp_to_saved_coords/x/n4096
execute if score @s dummy_x matches ..-8192 positioned ~-8192 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n4096