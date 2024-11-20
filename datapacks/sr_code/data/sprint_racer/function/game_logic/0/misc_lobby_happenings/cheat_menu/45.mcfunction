execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=45] run function sprint_racer_language:_dlc_3/lobby/cheat_room/floating_text/devrace
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=45] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkforward
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=45] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkbackward

scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 45

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/46
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/44