playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players remove @e[tag=focusT] startType 1
scoreboard players set @e[tag=focusT,scores={startType=..-2}] startType -1

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2