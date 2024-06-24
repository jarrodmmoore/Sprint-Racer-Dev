scoreboard players add @s[scores={dummy_x=..-1024}] dummy_x 1024

execute unless score @s dummy_x matches ..-512 run function sprint_racer:warp_to_saved_coords/x/n256
execute if score @s dummy_x matches ..-512 positioned ~-512 ~ ~ run function sprint_racer:warp_to_saved_coords/x/n256