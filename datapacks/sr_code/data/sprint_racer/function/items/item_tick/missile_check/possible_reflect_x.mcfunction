execute store result score #rot_yaw value run data get entity @s Rotation[0] 100
scoreboard players operation #rot_yaw value *= #-1 value
execute unless score @s trans_x matches -1..1 store result entity @s Rotation[0] float 0.01 run scoreboard players get #rot_yaw value
function sprint_racer:items/item_tick/missile_check/possible_reflect_y