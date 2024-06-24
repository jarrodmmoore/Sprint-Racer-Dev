scoreboard players remove @s[scores={dummy_x=2048..}] dummy_x 2048

execute unless score @s dummy_x matches 1024.. run function sprint_racer:warp_to_saved_coords/x/p512
execute if score @s dummy_x matches 1024.. positioned ~1024 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p512