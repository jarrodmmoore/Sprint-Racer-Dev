#relevant stuff:
# #trackGridStart value 1
# @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolMode 1
# @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1

scoreboard players operation #trackGridMode value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolMode
scoreboard players operation #trackGridSelected value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum

#scroll the display so that the highlighted thing is always in the middle row
scoreboard players set #math value 6
scoreboard players operation #math2 value = #trackGridSelected value
scoreboard players remove #math2 value 1
scoreboard players operation #math2 value /= #math value
scoreboard players set #trackGridStart value 6
scoreboard players operation #trackGridStart value *= #math2 value
scoreboard players remove #trackGridStart value 5
execute if score #trackGridStart value matches ..0 run scoreboard players set #trackGridStart value 1
#i want to avoid making players worry that there's only 18 slots for custom tracks.
#there are unlimited custom track slots! the scrolling helps convey that

#start trying to render previews at the grid start index
scoreboard players operation #trackGridIterate value = #trackGridStart value

#background color
execute if score #trackGridMode value matches 1 run fill 1595 78 367 1595 82 374 light_blue_concrete
execute if score #trackGridMode value matches 2 run fill 1595 78 367 1595 82 374 red_concrete

#remove all previous banned track indicators
execute as @e[type=item_display,tag=trackGridItemDisplay] run item replace entity @s container.0 with air

#select the active track
tag @e[tag=focusT,type=armor_stand] remove focusT
execute if score #trackGridMode value matches 1 as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @s customTrackID
execute if score #trackGridMode value matches 1 as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= #trackGridSelected value
execute if score #trackGridMode value matches 1 run tag @e[limit=1,sort=random,tag=customtrack,tag=customrace,scores={customDummyID=0}] add focusT
execute if score #trackGridMode value matches 2 as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @s customTrackBID
execute if score #trackGridMode value matches 2 as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= #trackGridSelected value
execute if score #trackGridMode value matches 2 run tag @e[limit=1,sort=random,tag=customtrack,tag=custombattle,scores={customDummyBID=0}] add focusT

#run through all rows in order
execute as 00000070-0000-0079-0000-00d300000001 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000002 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000003 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000004 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000005 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000006 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon

execute as 00000070-0000-0079-0000-00d300000007 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000008 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000009 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d30000000a at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d30000000b at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d30000000c at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon

execute as 00000070-0000-0079-0000-00d30000000d at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d30000000e at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d30000000f at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000010 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000011 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
execute as 00000070-0000-0079-0000-00d300000012 at @s run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon
