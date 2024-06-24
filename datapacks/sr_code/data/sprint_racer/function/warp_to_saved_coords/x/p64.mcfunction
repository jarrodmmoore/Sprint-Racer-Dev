scoreboard players remove @s[scores={dummy_x=128..}] dummy_x 128

execute unless score @s dummy_x matches 64.. run function sprint_racer:warp_to_saved_coords/x/p32
execute if score @s dummy_x matches 64.. positioned ~64 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p32