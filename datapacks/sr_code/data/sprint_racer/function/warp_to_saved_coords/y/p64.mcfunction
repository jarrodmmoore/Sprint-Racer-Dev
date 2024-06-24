scoreboard players remove @s[scores={dummy_y=128..}] dummy_y 128

execute unless score @s dummy_y matches 64.. run function sprint_racer:warp_to_saved_coords/y/p32
execute if score @s dummy_y matches 64.. positioned ~ ~64 ~ run function sprint_racer:warp_to_saved_coords/y/p32