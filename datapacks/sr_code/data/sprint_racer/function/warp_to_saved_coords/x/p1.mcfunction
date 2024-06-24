scoreboard players remove @s[scores={dummy_x=2..}] dummy_x 2

execute unless score @s dummy_x matches 1.. run function sprint_racer:warp_to_saved_coords/y/_pos_or_neg
execute if score @s dummy_x matches 1.. positioned ~1 ~ ~ run function sprint_racer:warp_to_saved_coords/y/_pos_or_neg