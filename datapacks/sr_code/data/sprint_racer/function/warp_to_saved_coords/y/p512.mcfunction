scoreboard players remove @s[scores={dummy_y=1024..}] dummy_y 1024

execute unless score @s dummy_y matches 512.. run function sprint_racer:warp_to_saved_coords/y/p256
execute if score @s dummy_y matches 512.. positioned ~ ~512 ~ run function sprint_racer:warp_to_saved_coords/y/p256