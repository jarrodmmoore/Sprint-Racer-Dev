#this needs to be executed by the custom track we want to go to!

scoreboard players operation @a checkpoint_x = @s coord_x
scoreboard players operation @a checkpoint_y = @s coord_y
scoreboard players operation @a checkpoint_z = @s coord_z

#safeguard, prevent curious players from tping themselves
#scoreboard players set @s[type=player] checkpoint_x 1638
#scoreboard players set @s[type=player] checkpoint_y 90
#scoreboard players set @s[type=player] checkpoint_z 432
#execute if entity @s[type=player] run tellraw @a ["",{"text":"Silly goose, this function isn't supposed to be run by players!"}]


tag @a remove takeItFromHere

effect give @a resistance 10 100 true

execute as @a[tag=!dontWarp] at @s run function sprint_racer:warp_to_saved_coords/_go