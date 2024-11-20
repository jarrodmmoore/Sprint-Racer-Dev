execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optRnB,tag=!grandprix,tag=!optChoose] run function sprint_racer:game_logic/0/sidebar/_index_rnb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optRace,tag=!grandprix,tag=!optChoose] run function sprint_racer:game_logic/0/sidebar/_index_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBattle,tag=!grandprix,tag=!optChoose] run function sprint_racer:game_logic/0/sidebar/_index_battle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix,tag=optChoose] run function sprint_racer:game_logic/0/sidebar/_index_choose

#endless mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix,tag=endlessMode] run function sprint_racer_language:_dlc_3/lobby/sidebar/endless_mode

#grand prix
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run function sprint_racer:game_logic/0/sidebar/_index_grand_prix