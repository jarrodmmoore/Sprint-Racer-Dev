execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=38] run function sprint_racer_language:_dlc_3/lobby/cheat_room/floating_text/cottonvoid
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=38] run tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] remove checkforward
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=38] run tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] remove checkbackward

scoreboard players set @e[tag=cheats,x=1550,y=148,z=406,distance=..1] aiHoldingItem 38

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/39
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/37