scoreboard players add @s[scores={dummy_y=..-512}] dummy_y 512

execute unless score @s dummy_y matches ..-256 run function sprint_racer:warp_to_saved_coords/y/n128
execute if score @s dummy_y matches ..-256 positioned ~ ~-256 ~ run function sprint_racer:warp_to_saved_coords/y/n128