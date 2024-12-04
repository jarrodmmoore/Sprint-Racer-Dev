#instead of setting velocity directly, let's try adding to it to mimic minecraft air acceleration
#(note: lower scale on the data get Motion[X] means bot will have higher air mobility)
#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += @s mvmt_coord_dx
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
execute store result score #test2 value run data get entity @s Motion[2] 2500
scoreboard players operation #test2 value += @s mvmt_coord_dz
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test2 value