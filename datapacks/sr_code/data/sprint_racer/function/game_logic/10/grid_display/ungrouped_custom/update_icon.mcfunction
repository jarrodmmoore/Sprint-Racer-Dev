#store returned state on this variable
scoreboard players set #trackGridFetchMap value 404
scoreboard players set #trackGridFetchBanned value 0

#look up data for what we should display
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #trackGridIterate value run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_lookup
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #trackGridIterate value run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_lookup
execute store result storage sprint_racer:func_args map_id int 1 run scoreboard players get #trackGridFetchMap value
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_macro with storage sprint_racer:func_args

#glowing if we're the selected index
data merge entity @s {Glowing:0b,Invisible:1b}
execute unless score #trackGridSelected value matches 0 if score #trackGridIterate value = #trackGridSelected value run data merge entity @s {Glowing:1b,Invisible:0b}

#indicator for banned track
execute if score #trackGridFetchBanned value matches 1 on passengers if entity @s[tag=trackGridItemDisplay,type=item_display] run item replace entity @s container.0 with barrier


#move track iterator forward
scoreboard players add #trackGridIterate value 1