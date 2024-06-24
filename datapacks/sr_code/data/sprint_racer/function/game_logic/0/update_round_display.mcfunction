kill @e[tag=roundDisplay]
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optRnB,tag=!optChoose] run function sprint_racer_language:lobby/round_display/race_and_battle
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optRace,tag=!optChoose] run function sprint_racer_language:lobby/round_display/race
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optBattle,tag=!optChoose] run function sprint_racer_language:lobby/round_display/battle
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optChoose] run function sprint_racer_language:lobby/round_display/choice

#endless mode
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=endlessMode] run function sprint_racer_language:_dlc_3/lobby/round_display/endless_mode

#grand prix
execute if entity @e[tag=w,type=armor_stand,tag=grandprix] run function sprint_racer_language:_dlc_3/lobby/round_display/grandprix