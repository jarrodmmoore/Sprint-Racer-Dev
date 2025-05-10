#store returned state on this variable
scoreboard players set #trackGridFetchMap value 404
scoreboard players set #trackGridFetchBanned value 0

#skip over missing or secret tracks
function sprint_racer:game_logic/9/grid_display/ungrouped_stock/skip_missing_tracks

#look up data for what we should display
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=trackStandR,tag=random] if score @s rNumber = #trackGridIterate value run function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_icon_lookup
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=trackStandB,tag=random] if score @s rNumber = #trackGridIterate value run function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_icon_lookup
execute store result storage sprint_racer:func_args map_id int 1 run scoreboard players get #trackGridFetchMap value
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_macro with storage sprint_racer:func_args
#^ we can just re-use the code from the custom track manager here.

#this item frame should save its id number on itself
scoreboard players operation @s customDummyID = #trackGridIterate value
execute if score #trackGridFetchMap value matches 404 run scoreboard players set @s customDummyID 404

#indicator for banned track
execute if score #trackGridFetchBanned value matches 1 on passengers if entity @s[tag=trackGridItemDisplay,type=item_display] run item replace entity @s container.0 with barrier


#move track iterator forward
scoreboard players add #trackGridIterate value 1