scoreboard players reset @s taLastChosen

scoreboard objectives remove taLastChosen
scoreboard objectives add taLastChosen dummy


#safeguard, prevent curious players from tping themselves
scoreboard players set @s[type=player] remember_x 1638
scoreboard players set @s[type=player] remember_z 432
execute if entity @s[type=player] run tellraw @a ["",{text:"Silly goose, this function isn't supposed to be run by players!"}]


#this needs to be executed by w

scoreboard players operation @a checkpoint_x = @s remember_x
scoreboard players set @a checkpoint_y 100
scoreboard players operation @a checkpoint_z = @s remember_z

tag @a remove takeItFromHere

effect give @a resistance 10 100 true

tag @a[limit=1] add gotome
execute as @a[tag=gotome] run function sprint_racer:warp_to_saved_coords/_go
tp @a[tag=!gotome] @a[limit=1,tag=gotome]

effect give @a slow_falling 2 1 true