execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=02] run function sprint_racer_language:_dlc_1/lobby/cheat_room/floating_text/0to60
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=02] run tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] remove checkforward
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=02] run tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] remove checkbackward

scoreboard players set @e[tag=cheats,x=1550,y=148,z=406,distance=..1] aiHoldingItem 2

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/03
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/01