scoreboard players add @s[scores={dummy_x=..-64}] dummy_x 64

execute unless score @s dummy_x matches ..-32 run function sprint_racer:warp_to_saved_coords/x/n16
execute if score @s dummy_x matches ..-32 positioned ~-32 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n16