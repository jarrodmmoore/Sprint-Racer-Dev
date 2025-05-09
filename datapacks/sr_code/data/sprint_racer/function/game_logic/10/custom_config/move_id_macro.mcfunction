tag @e[type=armor_stand,tag=ctQueried] remove ctQueried

#give us the requested ID
$execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players set @e[tag=focusT] customTrackID $(new_id)
$execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players set @e[tag=focusT] customTrackBID $(new_id)

#scoot over all tracks that have an ID >= than the value we've chosen
#(avoids ambiguity that could result in the selected track's final ID being off by one after sorting)
$execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players add @e[type=armor_stand,tag=customrace,tag=!focusT,scores={customTrackID=$(new_id)..}] customTrackID 1
$execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players add @e[type=armor_stand,tag=customrace,tag=!focusT,scores={customTrackBID=$(new_id)..}] customTrackBID 1

#sort all custom tracks
scoreboard players set #ctQueryID value 1
scoreboard players add @e[type=armor_stand,tag=customrace] customTrackID 0
scoreboard players add @e[type=armor_stand,tag=custombattle] customTrackBID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] if entity @e[type=armor_stand,tag=customrace,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_race_ids_recursive
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] if entity @e[type=armor_stand,tag=custombattle,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_battle_ids_recursive

#focus armor stand is the current track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum = @e[type=armor_stand,tag=focusT] customTrackID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum = @e[type=armor_stand,tag=focusT] customTrackBID

#feedback
playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_3

#need to update the display, too...
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display