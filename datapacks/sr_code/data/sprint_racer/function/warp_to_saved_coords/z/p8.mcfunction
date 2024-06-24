scoreboard players remove @s[scores={dummy_z=16..}] dummy_z 16

execute unless score @s dummy_z matches 8.. run function sprint_racer:warp_to_saved_coords/z/p4
execute if score @s dummy_z matches 8.. positioned ~ ~ ~8 run function sprint_racer:warp_to_saved_coords/z/p4