#each iteration of this function we populate one of the lists containing all the tracks that belong to a specific group

#store the string we want to compare to
$data modify storage sprint_racer:func_args compare_group set from storage sprint_racer:custom_track_list groups[$(i)][0]

#all custom tracks must check if their group string matches the compare string. if so, they get "tag=groupMatched"
execute if score #trackGridMode value matches 1 as @e[tag=customrace,type=armor_stand,tag=!groupSorted] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_check_string_match
execute if score #trackGridMode value matches 2 as @e[tag=custombattle,type=armor_stand,tag=!groupSorted] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_check_string_match

#sort all the custom tracks and then add them into this list
execute if entity @e[type=armor_stand,tag=groupMatched,limit=1] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/sort_group_recursive

#exit out if there are no more group bins beyond this one
$execute unless data storage sprint_racer:custom_track_list groups[$(i_next)] run return 0
#=====

#there's still more data? recursion to read the next entry
data modify storage sprint_racer:func_args i set from storage sprint_racer:func_args i_next
execute store result score #math value run data get storage sprint_racer:func_args i 1
scoreboard players add #math value 1
execute store result storage sprint_racer:func_args i_next int 1 run scoreboard players get #math value
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/group_iterate with storage sprint_racer:func_args