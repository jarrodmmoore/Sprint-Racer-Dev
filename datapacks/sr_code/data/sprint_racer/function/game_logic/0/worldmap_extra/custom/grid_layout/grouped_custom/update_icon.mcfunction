#store returned state on this variable
scoreboard players set #trackGridFetchMap value 404

#try to grab the ID from the data pile (-1 means we didn't find anything)
scoreboard players set #trackGridFetchID value -1
execute store result storage sprint_racer:func_args i int 1 run scoreboard players get #trackGridIterate value
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon_get_id with storage sprint_racer:func_args

#look up data for what we should display
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #trackGridFetchID value run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_lookup
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #trackGridFetchID value run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_lookup
execute store result storage sprint_racer:func_args map_id int 1 run scoreboard players get #trackGridFetchMap value
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_macro with storage sprint_racer:func_args

#this entity stores the returned id on itself
scoreboard players operation @s customDummyID = #trackGridFetchID value

#move track iterator forward
scoreboard players add #trackGridIterate value 1