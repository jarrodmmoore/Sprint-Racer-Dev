#read round sequence data and do thing
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!grandprix] run function sprint_racer:game_logic/0/sidebar/show_round

#endless mode text override
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!grandprix,tag=endlessMode] run function sprint_racer_language:_dlc_3/lobby/sidebar/endless_mode

#grand prix
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] run function sprint_racer:game_logic/0/sidebar/_index_grand_prix