execute if entity @e[tag=focusT,scores={customTTargets=..1}] as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8

execute if entity @e[tag=focusT,scores={customTTargets=2..}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000
execute if entity @e[tag=focusT,scores={customTTargets=2..}] run scoreboard players remove @e[tag=focusT] customTTargets 1

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_battle