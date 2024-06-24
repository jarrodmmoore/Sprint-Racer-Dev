#

execute unless score @s dummy_z matches ..-8192 run function sprint_racer:warp_to_saved_coords/z/n4096
execute if score @s dummy_z matches ..-8192 positioned ~ ~ ~-8192 run function sprint_racer:warp_to_saved_coords/z/n4096