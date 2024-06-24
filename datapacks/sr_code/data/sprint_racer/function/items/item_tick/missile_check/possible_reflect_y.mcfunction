execute store result score #rot_pitch value run data get entity @s Rotation[1] 100
scoreboard players operation #rot_pitch value *= #-1 value
execute unless score @s trans_y matches -1..1 store result entity @s Rotation[1] float 0.01 run scoreboard players get #rot_pitch value
function sprint_racer:items/item_tick/missile_check/possible_reflect_z