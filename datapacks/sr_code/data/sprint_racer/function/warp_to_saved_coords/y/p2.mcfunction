scoreboard players remove @s[scores={dummy_y=4..}] dummy_y 4

execute unless score @s dummy_y matches 2.. run function sprint_racer:warp_to_saved_coords/y/p1
execute if score @s dummy_y matches 2.. positioned ~ ~2 ~ run function sprint_racer:warp_to_saved_coords/y/p1