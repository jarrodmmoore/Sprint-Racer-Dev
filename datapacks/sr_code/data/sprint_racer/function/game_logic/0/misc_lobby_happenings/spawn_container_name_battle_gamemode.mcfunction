kill @e[tag=cBattleGM]

execute positioned 1611 84 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/battle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!randomPresetB,scores={gamemodePresetB=1}] positioned 1611 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/battle_1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!randomPresetB,scores={gamemodePresetB=2}] positioned 1611 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/battle_2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!randomPresetB,scores={gamemodePresetB=3}] positioned 1611 83.6 371 run function sprint_racer_language:_dlc_3/lobby/gamemode_preset_names/battle_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetB] positioned 1611 83.6 371 run function sprint_racer_language:_dlc_1/lobby/gamemode_preset_names/battle_random

tag @e[tag=setme] add cBattleGM
tag @e[tag=setme] add cDisplay2
tag @e[tag=setme] remove setme