#we're just gonna multiply each of the vector components by a number ;)
scoreboard players set #10 value 10
scoreboard players set #multiplier value 10
execute if score #speedoSpeed value matches 0 run scoreboard players set #multiplier value 15
execute if score #speedoSpeed value matches 1 run scoreboard players set #multiplier value 16
execute if score #speedoSpeed value matches 2 run scoreboard players set #multiplier value 17
execute if score #speedoSpeed value matches 3 run scoreboard players set #multiplier value 18
execute if score #speedoSpeed value matches 4 run scoreboard players set #multiplier value 19
execute if score #speedoSpeed value matches 5 run scoreboard players set #multiplier value 20
execute if score #speedoSpeed value matches 6 run scoreboard players set #multiplier value 7
execute if score #speedoSpeed value matches 7 run scoreboard players set #multiplier value 8
execute if score #speedoSpeed value matches 8 run scoreboard players set #multiplier value 9
execute if score #speedoSpeed value matches 9 run scoreboard players set #multiplier value 11
execute if score #speedoSpeed value matches 10 run scoreboard players set #multiplier value 12
execute if score #speedoSpeed value matches 11 run scoreboard players set #multiplier value 13
execute if score #speedoSpeed value matches 12.. run scoreboard players set #multiplier value 14

scoreboard players operation @s mvmt_coord_dx *= #multiplier value
scoreboard players operation @s mvmt_coord_dx /= #10 value
scoreboard players operation @s mvmt_coord_dy *= #multiplier value
scoreboard players operation @s mvmt_coord_dy /= #10 value
scoreboard players operation @s mvmt_coord_dz *= #multiplier value
scoreboard players operation @s mvmt_coord_dz /= #10 value