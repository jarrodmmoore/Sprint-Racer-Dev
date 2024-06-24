scoreboard players remove @s[scores={dummy_z=8192..}] dummy_z 8192

execute unless score @s dummy_z matches 4096.. run function sprint_racer:warp_to_saved_coords/z/p2048
execute if score @s dummy_z matches 4096.. positioned ~ ~ ~4096 run function sprint_racer:warp_to_saved_coords/z/p2048