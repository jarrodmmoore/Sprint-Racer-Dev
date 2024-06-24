playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players remove @e[tag=focusT] BGMtrack 1
scoreboard players set @e[tag=focusT,scores={BGMtrack=..-2}] BGMtrack 35

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_battle