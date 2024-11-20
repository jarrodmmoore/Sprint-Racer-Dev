playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players add @e[tag=focusT] customCodePath 1
scoreboard players set @e[tag=focusT,scores={customCodePath=101..}] customCodePath 0

tag @e[tag=focusT] remove usingMacroCodePath

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle