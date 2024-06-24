scoreboard players remove @s[scores={dummy_x=4096..}] dummy_x 4096

execute unless score @s dummy_x matches 2048.. run function sprint_racer:warp_to_saved_coords/x/p1024
execute if score @s dummy_x matches 2048.. positioned ~2048 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p1024