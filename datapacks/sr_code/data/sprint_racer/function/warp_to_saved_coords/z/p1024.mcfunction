scoreboard players remove @s[scores={dummy_z=2048..}] dummy_z 2048

execute unless score @s dummy_z matches 1024.. run function sprint_racer:warp_to_saved_coords/z/p512
execute if score @s dummy_z matches 1024.. positioned ~ ~ ~1024 run function sprint_racer:warp_to_saved_coords/z/p512