#we're just gonna multiply each of the vector components by a number ;)
scoreboard players set #100 value 100
scoreboard players set #multiplier value 115

scoreboard players operation @s mvmt_coord_dx *= #multiplier value
scoreboard players operation @s mvmt_coord_dx /= #100 value
scoreboard players operation @s mvmt_coord_dy *= #multiplier value
scoreboard players operation @s mvmt_coord_dy /= #100 value
scoreboard players operation @s mvmt_coord_dz *= #multiplier value
scoreboard players operation @s mvmt_coord_dz /= #100 value