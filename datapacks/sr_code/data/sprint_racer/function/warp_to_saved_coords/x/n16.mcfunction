scoreboard players add @s[scores={dummy_x=..-32}] dummy_x 32

execute unless score @s dummy_x matches ..-16 run function sprint_racer:warp_to_saved_coords/x/n8
execute if score @s dummy_x matches ..-16 positioned ~-16 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n8