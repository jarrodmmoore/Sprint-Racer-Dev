#executed by a custom track
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_check_string_match_macro with storage sprint_racer:func_args

#now check if strings match for real
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_check_string_match_go_macro with storage sprint_racer:func_args