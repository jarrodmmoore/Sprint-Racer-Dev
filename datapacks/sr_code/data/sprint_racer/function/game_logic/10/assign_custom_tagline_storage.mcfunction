#assign an arbitrary unique number to link us to storage
scoreboard players set #customTagLine value 0
#take the lowest number that isn't actively being used by a track
function sprint_racer:game_logic/10/assign_custom_tagline_find_recursive
scoreboard players operation @s customTagLine = #customTagLine value

#unrelated, but old custom tracks need a default value for start countdown
scoreboard players add @s startType 0

#generate a stored string as placeholder
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
function sprint_racer:game_logic/10/assign_custom_tagline_storage_macro with storage sprint_racer:func_args