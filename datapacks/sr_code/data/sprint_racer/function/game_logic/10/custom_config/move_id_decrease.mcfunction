tag @e[type=armor_stand,tag=ctQueried] remove ctQueried

#give us the requested ID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players remove @e[tag=focusT] customTrackID 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players remove @e[tag=focusT] customTrackBID 1

#scoot over the other track that's in our way
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] as @e[type=armor_stand,tag=customrace,tag=!focusT] if score @s customTrackID = @e[limit=1,type=armor_stand,tag=focusT] customTrackID run scoreboard players add @s customTrackID 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] as @e[type=armor_stand,tag=custombattle,tag=!focusT] if score @s customTrackBID = @e[limit=1,type=armor_stand,tag=focusT] customTrackBID run scoreboard players add @s customTrackBID 1

#sort all custom tracks and assign IDs
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