execute if entity @e[tag=focusT,scores={timeRemaining=..2}] as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8

execute if entity @e[tag=focusT,scores={timeRemaining=3..}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000
execute if entity @e[tag=focusT,scores={timeRemaining=3..}] run scoreboard players remove @e[tag=focusT] timeRemaining 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle