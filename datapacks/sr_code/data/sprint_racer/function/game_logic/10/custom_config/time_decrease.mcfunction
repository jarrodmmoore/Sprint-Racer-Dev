playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players remove @e[tag=focusT] customTrackTime 100
scoreboard players add @e[tag=focusT,scores={customTrackTime=..-1}] customTrackTime 24000

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2