scoreboard players add @s[scores={dummy_z=..-2}] dummy_z 2

execute unless score @s dummy_z matches ..-1 run function sprint_racer:warp_to_saved_coords/found_location
execute if score @s dummy_z matches ..-1 positioned ~ ~ ~-1 run function sprint_racer:warp_to_saved_coords/found_location