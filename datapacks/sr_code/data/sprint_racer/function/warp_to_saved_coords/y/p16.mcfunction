scoreboard players remove @s[scores={dummy_y=32..}] dummy_y 32

execute unless score @s dummy_y matches 16.. run function sprint_racer:warp_to_saved_coords/y/p8
execute if score @s dummy_y matches 16.. positioned ~ ~16 ~ run function sprint_racer:warp_to_saved_coords/y/p8