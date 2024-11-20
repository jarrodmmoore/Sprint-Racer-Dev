kill @e[tag=cRaceGM]

execute positioned 1615 84 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=1}] positioned 1615 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/race_1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=2}] positioned 1615 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/race_2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=3}] positioned 1615 83.6 371 run function sprint_racer_language:_dlc_3/lobby/gamemode_preset_names/race_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetA] positioned 1615 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/race_random

tag @e[tag=setme] add cRaceGM
tag @e[tag=setme] add cDisplay2
tag @e[tag=setme] remove setme