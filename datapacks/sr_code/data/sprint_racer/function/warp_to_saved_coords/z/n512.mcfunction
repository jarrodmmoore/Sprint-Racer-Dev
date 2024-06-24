scoreboard players add @s[scores={dummy_z=..-1024}] dummy_z 1024

execute unless score @s dummy_z matches ..-512 run function sprint_racer:warp_to_saved_coords/z/n256
execute if score @s dummy_z matches ..-512 positioned ~ ~ ~-512 run function sprint_racer:warp_to_saved_coords/z/n256