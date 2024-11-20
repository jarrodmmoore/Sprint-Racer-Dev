execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=56] run function sprint_racer_language:_dlc_5/lobby/cheat_room/floating_text/praiando
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=56] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkforward
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=56] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkbackward

scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 56

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/57
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/55