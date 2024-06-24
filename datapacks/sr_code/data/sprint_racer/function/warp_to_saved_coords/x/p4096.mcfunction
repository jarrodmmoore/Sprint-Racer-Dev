scoreboard players remove @s[scores={dummy_x=8192..}] dummy_x 8192

execute unless score @s dummy_x matches 4096.. run function sprint_racer:warp_to_saved_coords/x/p2048
execute if score @s dummy_x matches 4096.. positioned ~4096 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p2048