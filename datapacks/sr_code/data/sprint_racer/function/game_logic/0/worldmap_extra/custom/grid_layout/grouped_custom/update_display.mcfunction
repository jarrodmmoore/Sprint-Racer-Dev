#if the item frames don't exist, spawn them
execute if loaded 2482 100 265 unless entity 00000071-0000-0079-0000-00d300000001 positioned 2482 100 265 rotated 270 0 run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/setup_item_frames {facing:4}

#relevant stuff:
# #trackGridStart value
# #trackGridEnd value
# #trackGridPage value

scoreboard players operation #trackGridMode value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomMode
#scoreboard players operation #trackGridSelected value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomNum

#start trying to render previews at the grid start index
scoreboard players operation #trackGridIterate value = #trackGridStartCustom value

#background color
execute if score #trackGridMode value matches 1 run fill 2483 99 264 2483 103 271 light_blue_concrete
execute if score #trackGridMode value matches 2 run fill 2483 99 264 2483 103 271 red_concrete

#particles based on mode
execute if score #trackGridMode value matches 1 positioned 2482 101 267 positioned ~ ~.5 ~.5 run particle dust{color:[0.6,0.6,1.0],scale:2} ~ ~ ~ 0 1 2 1 20
execute if score #trackGridMode value matches 2 positioned 2482 101 267 positioned ~ ~.5 ~.5 run particle dust{color:[1.0,0.3,0.3],scale:2} ~ ~ ~ 0 1 2 1 20

#store what page we're on. we'll need that
execute store result storage sprint_racer:func_args track_group int 1 run scoreboard players get #trackGridPage value

#update the text for what page we're on
execute positioned 2480 99 267 positioned ~2.4 ~.6 ~.5 run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_group_text with storage sprint_racer:func_args

#run through all rows in order
execute as 00000071-0000-0079-0000-00d300000001 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000002 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000003 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000004 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000005 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000006 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon

execute as 00000071-0000-0079-0000-00d300000007 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000008 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000009 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d30000000a at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d30000000b at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d30000000c at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon

execute as 00000071-0000-0079-0000-00d30000000d at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d30000000e at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d30000000f at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000010 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000011 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
execute as 00000071-0000-0079-0000-00d300000012 at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_icon
