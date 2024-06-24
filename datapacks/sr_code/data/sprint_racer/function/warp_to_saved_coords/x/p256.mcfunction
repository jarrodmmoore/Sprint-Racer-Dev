scoreboard players remove @s[scores={dummy_x=512..}] dummy_x 512

execute unless score @s dummy_x matches 256.. run function sprint_racer:warp_to_saved_coords/x/p128
execute if score @s dummy_x matches 256.. positioned ~256 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p128