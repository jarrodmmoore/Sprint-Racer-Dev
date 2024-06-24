scoreboard players add @s[scores={dummy_y=..-256}] dummy_y 256

execute unless score @s dummy_y matches ..-128 run function sprint_racer:warp_to_saved_coords/y/n64
execute if score @s dummy_y matches ..-128 positioned ~ ~-128 ~ run function sprint_racer:warp_to_saved_coords/y/n64