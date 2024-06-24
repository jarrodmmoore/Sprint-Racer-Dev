scoreboard players remove @s[scores={dummy_z=512..}] dummy_z 512

execute unless score @s dummy_z matches 256.. run function sprint_racer:warp_to_saved_coords/z/p128
execute if score @s dummy_z matches 256.. positioned ~ ~ ~256 run function sprint_racer:warp_to_saved_coords/z/p128