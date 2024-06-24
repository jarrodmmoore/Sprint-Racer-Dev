scoreboard players remove @s[scores={dummy_x=8..}] dummy_x 8

execute unless score @s dummy_x matches 4.. run function sprint_racer:warp_to_saved_coords/x/p2
execute if score @s dummy_x matches 4.. positioned ~4 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p2