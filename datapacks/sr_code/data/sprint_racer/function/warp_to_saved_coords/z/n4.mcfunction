scoreboard players add @s[scores={dummy_z=..-8}] dummy_z 8

execute unless score @s dummy_z matches ..-4 run function sprint_racer:warp_to_saved_coords/z/n2
execute if score @s dummy_z matches ..-4 positioned ~ ~ ~-4 run function sprint_racer:warp_to_saved_coords/z/n2