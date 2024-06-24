execute if entity @e[tag=focusT,scores={check=25..}] as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8

execute if entity @e[tag=focusT,scores={check=..24}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000
execute if entity @e[tag=focusT,scores={check=..24}] run scoreboard players add @e[tag=focusT] check 1

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_battle