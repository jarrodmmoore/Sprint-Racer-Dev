scoreboard players set @e[tag=focusT,tag=!customGauntlet] timeRemaining 4
scoreboard players set @e[tag=focusT,tag=customGauntlet] timeRemaining 10

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle