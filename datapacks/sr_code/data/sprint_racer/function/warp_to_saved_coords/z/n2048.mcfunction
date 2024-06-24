scoreboard players add @s[scores={dummy_z=..-4096}] dummy_z 4096

execute unless score @s dummy_z matches ..-2048 run function sprint_racer:warp_to_saved_coords/z/n1024
execute if score @s dummy_z matches ..-2048 positioned ~ ~ ~-2048 run function sprint_racer:warp_to_saved_coords/z/n1024