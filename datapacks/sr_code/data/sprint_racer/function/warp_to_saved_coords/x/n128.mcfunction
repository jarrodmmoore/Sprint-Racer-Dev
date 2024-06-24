scoreboard players add @s[scores={dummy_x=..-256}] dummy_x 256

execute unless score @s dummy_x matches ..-128 run function sprint_racer:warp_to_saved_coords/x/n64
execute if score @s dummy_x matches ..-128 positioned ~-128 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n64