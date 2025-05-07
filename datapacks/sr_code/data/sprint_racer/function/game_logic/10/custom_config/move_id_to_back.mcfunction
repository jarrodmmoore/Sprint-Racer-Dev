tag @e[type=armor_stand,tag=ctQueried] remove ctQueried

#set ID to the highest possible value so the sorty algorithm puts us at the end
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players set @e[tag=focusT] customTrackID 2147483647
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players set @e[tag=focusT] customTrackBID 2147483647

#sort all custom tracks and assign IDs
scoreboard players set #ctQueryID value 1
scoreboard players add @e[type=armor_stand,tag=customrace] customTrackID 0
scoreboard players add @e[type=armor_stand,tag=custombattle] customTrackBID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] if entity @e[type=armor_stand,tag=customrace,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_race_ids_recursive
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] if entity @e[type=armor_stand,tag=custombattle,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_battle_ids_recursive

#focus armor stand is the current track
scoreboard players remove #ctQueryID value 1
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum = #ctQueryID value

#feedback
playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_3