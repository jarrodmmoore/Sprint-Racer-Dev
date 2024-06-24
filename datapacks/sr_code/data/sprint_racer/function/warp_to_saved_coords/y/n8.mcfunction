scoreboard players add @s[scores={dummy_y=..-16}] dummy_y 16

execute unless score @s dummy_y matches ..-8 run function sprint_racer:warp_to_saved_coords/y/n4
execute if score @s dummy_y matches ..-8 positioned ~ ~-8 ~ run function sprint_racer:warp_to_saved_coords/y/n4