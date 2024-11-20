execute if entity @e[tag=focusT,scores={lap=25..}] as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8

execute if entity @e[tag=focusT,scores={lap=..24}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000
execute if entity @e[tag=focusT,scores={lap=..24}] run scoreboard players add @e[tag=focusT] lap 1

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle