#executed by a custom track armor stand

execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_log_group_macro with storage sprint_racer:func_args