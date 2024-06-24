scoreboard players remove @s[scores={dummy_x=16..}] dummy_x 16

execute unless score @s dummy_x matches 8.. run function sprint_racer:warp_to_saved_coords/x/p4
execute if score @s dummy_x matches 8.. positioned ~8 ~ ~ run function sprint_racer:warp_to_saved_coords/x/p4