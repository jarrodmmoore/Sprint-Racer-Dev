playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

tag @e[tag=focusT,tag=customrace] add r_1_only
tag @e[tag=focusT,tag=custombattle] add b_1_only
tag @e[tag=focusT,tag=customrace] add r_rare_track
tag @e[tag=focusT,tag=custombattle] add b_rare_track
tag @e[tag=focusT,tag=customrace] remove rtBlacklist
tag @e[tag=focusT,tag=custombattle] remove btBlacklist

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_3

#need to update display
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display