#run by the CP that the ender pearl entered the hitbox of

scoreboard players operation #testCheckValue value = @s check
scoreboard players operation #testCheckValue value -= #pearlCheck value

#don't have a proper y range? get one.
execute unless entity @s[tag=checkHasYRange] run function sprint_racer:game_logic/2/checkpoint_menu_edit/get_default_y_range

#must be in the proper coordinate range
execute store result score #y_check_min value run data get entity @s Pos[1] 10000
scoreboard players set #10000 value 10000
scoreboard players operation #math value = @s check_y_max
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_max value = #y_check_min value
scoreboard players operation #y_check_max value += #math value
scoreboard players operation #math value = @s check_y_min
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_min value += #math value
execute if score #pearl_coord_y value > #y_check_max value run scoreboard players set #testCheckValue value 0
execute if score #pearl_coord_y value < #y_check_min value run scoreboard players set #testCheckValue value 0

execute if score #testCheckValue value matches 1 run scoreboard players set #goNextCP value 1