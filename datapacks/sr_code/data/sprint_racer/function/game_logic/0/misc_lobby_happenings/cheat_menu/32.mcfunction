execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=32] run function sprint_racer_language:_dlc_2/lobby/cheat_room/floating_text/itemrain
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=32] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkforward
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=32] run tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] remove checkbackward

scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 32

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/33
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/31