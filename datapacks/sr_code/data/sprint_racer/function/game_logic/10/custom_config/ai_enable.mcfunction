playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

tag @e[tag=focusT] remove noAItrack

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_battle