execute if entity @e[tag=cheats,tag=02] run function sprint_racer_language:_dlc_1/lobby/cheat_room/floating_text/0to60
execute if entity @e[tag=cheats,tag=02] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=02] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 2

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/03
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/01