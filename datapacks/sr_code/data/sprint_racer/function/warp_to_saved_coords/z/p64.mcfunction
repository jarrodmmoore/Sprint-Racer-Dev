scoreboard players remove @s[scores={dummy_z=128..}] dummy_z 128

execute unless score @s dummy_z matches 64.. run function sprint_racer:warp_to_saved_coords/z/p32
execute if score @s dummy_z matches 64.. positioned ~ ~ ~64 run function sprint_racer:warp_to_saved_coords/z/p32