kill @e[tag=roundDisplay]

#new data-driven thing
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix] run function sprint_racer:game_logic/0/round_sequence/spawn_round_numbers


#endless mode text override
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix,tag=endlessMode] run function sprint_racer_language:_dlc_3/lobby/round_display/endless_mode

#grand prix
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run function sprint_racer_language:_dlc_3/lobby/round_display/grandprix