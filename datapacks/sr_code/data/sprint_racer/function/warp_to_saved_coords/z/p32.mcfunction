scoreboard players remove @s[scores={dummy_z=64..}] dummy_z 64

execute unless score @s dummy_z matches 32.. run function sprint_racer:warp_to_saved_coords/z/p16
execute if score @s dummy_z matches 32.. positioned ~ ~ ~32 run function sprint_racer:warp_to_saved_coords/z/p16