execute if entity @s[scores={checkpoint_z=1..}] run function sprint_racer:warp_to_saved_coords/z/p8192
execute if entity @s[scores={checkpoint_z=0}] run function sprint_racer:warp_to_saved_coords/found_location
execute if entity @s[scores={checkpoint_z=..-1}] run function sprint_racer:warp_to_saved_coords/z/n8192