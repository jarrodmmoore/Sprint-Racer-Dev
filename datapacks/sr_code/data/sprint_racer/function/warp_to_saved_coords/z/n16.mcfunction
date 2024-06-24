scoreboard players add @s[scores={dummy_z=..-32}] dummy_z 32

execute unless score @s dummy_z matches ..-16 run function sprint_racer:warp_to_saved_coords/z/n8
execute if score @s dummy_z matches ..-16 positioned ~ ~ ~-16 run function sprint_racer:warp_to_saved_coords/z/n8