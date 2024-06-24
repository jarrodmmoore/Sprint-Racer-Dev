scoreboard players remove @s[scores={dummy_y=64..}] dummy_y 64

execute unless score @s dummy_y matches 32.. run function sprint_racer:warp_to_saved_coords/y/p16
execute if score @s dummy_y matches 32.. positioned ~ ~32 ~ run function sprint_racer:warp_to_saved_coords/y/p16