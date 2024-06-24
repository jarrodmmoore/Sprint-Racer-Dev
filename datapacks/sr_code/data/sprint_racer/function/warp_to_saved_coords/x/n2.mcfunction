scoreboard players add @s[scores={dummy_x=..-4}] dummy_x 4

execute unless score @s dummy_x matches ..-2 run function sprint_racer:warp_to_saved_coords/x/n1
execute if score @s dummy_x matches ..-2 positioned ~-2 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n1