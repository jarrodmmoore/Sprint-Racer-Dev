scoreboard players remove @s[scores={dummy_y=8..}] dummy_y 8

execute unless score @s dummy_y matches 4.. run function sprint_racer:warp_to_saved_coords/y/p2
execute if score @s dummy_y matches 4.. positioned ~ ~4 ~ run function sprint_racer:warp_to_saved_coords/y/p2