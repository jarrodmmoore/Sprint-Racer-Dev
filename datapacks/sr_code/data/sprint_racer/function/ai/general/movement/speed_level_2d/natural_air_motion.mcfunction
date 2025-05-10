#if we were instructed to jump at next ledge, do that
execute if entity @s[tag=jump_at_next_ledge,tag=!jump_at_next_ledge_deep] if block ~ ~-.7 ~ #sprint_racer:ai_not_solid run function sprint_racer:ai/general/jump/_index
execute if entity @s[tag=jump_at_next_ledge,tag=jump_at_next_ledge_deep] if block ~ ~-1.7 ~ #sprint_racer:ai_not_solid run function sprint_racer:ai/general/jump/_index

#instead of setting velocity directly, let's try adding to it to mimic minecraft air acceleration
#(note: lower scale on the data get Motion[X] means bot will have higher air mobility)
#x
scoreboard players set #test3 value 0
execute store result score #test value run data get entity @s Motion[0] 2500
execute if score #test value matches 5.. if score @s mvmt_coord_dx matches ..-1 run scoreboard players set #test3 value 1
execute if score #test value matches ..-5 if score @s mvmt_coord_dx matches 1.. run scoreboard players set #test3 value 1
scoreboard players operation #test value += @s mvmt_coord_dx
execute if score #test3 value matches 1 run scoreboard players set #test value 0
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
scoreboard players set #test3 value 0
execute store result score #test2 value run data get entity @s Motion[2] 2500
execute if score #test2 value matches 5.. if score @s mvmt_coord_dz matches ..-1 run scoreboard players set #test3 value 1
execute if score #test2 value matches ..-5 if score @s mvmt_coord_dz matches 1.. run scoreboard players set #test3 value 1
scoreboard players operation #test2 value += @s mvmt_coord_dz
execute if score #test3 value matches 1 run scoreboard players set #test2 value 0
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test2 value

#do we have motion in the opposite of the direction we want to move in? cancel it outright