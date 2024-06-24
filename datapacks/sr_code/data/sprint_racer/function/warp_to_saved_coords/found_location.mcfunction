execute unless entity @s[tag=keep_rotation] run tp @s ~ ~ ~
execute if entity @s[tag=keep_rotation] run tp @s ~ ~ ~ ~ ~

tag @s[tag=keep_rotation] remove keep_rotation

execute if entity @s[tag=takeItFromHere] run function sprint_racer:warp_to_saved_coords/go_to_nearest_checkpoint