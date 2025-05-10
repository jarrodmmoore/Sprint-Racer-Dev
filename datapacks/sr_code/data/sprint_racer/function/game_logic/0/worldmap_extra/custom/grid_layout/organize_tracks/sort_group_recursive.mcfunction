#find the lowest sort number, pick that track next
scoreboard players set #min value 2147483647
scoreboard players operation #min value < @e[type=armor_stand,tag=groupMatched,tag=customtrack] customTrackSortNumber
#using an arbitrary sort for consistent results
execute as @e[type=armor_stand,tag=groupMatched,tag=customtrack,sort=arbitrary] if score @s customTrackSortNumber <= #min value run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/sort_group_add_track_macro with storage sprint_racer:func_args

#keep going if there's more tracks
execute if entity @e[type=armor_stand,tag=groupMatched,tag=customtrack,limit=1] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/sort_group_recursive