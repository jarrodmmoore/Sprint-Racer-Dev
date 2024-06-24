scoreboard players remove @s[scores={dummy_y=2..}] dummy_y 2

execute unless score @s dummy_y matches 1.. run function sprint_racer:warp_to_saved_coords/z/_pos_or_neg
execute if score @s dummy_y matches 1.. positioned ~ ~1 ~ run function sprint_racer:warp_to_saved_coords/z/_pos_or_neg