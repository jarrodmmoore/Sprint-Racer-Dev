playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players add @e[tag=focusT] customTrackTime 1000
scoreboard players remove @e[tag=focusT,scores={customTrackTime=24000..}] customTrackTime 24000

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2