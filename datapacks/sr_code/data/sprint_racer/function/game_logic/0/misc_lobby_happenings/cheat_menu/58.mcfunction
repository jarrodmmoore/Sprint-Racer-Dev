execute if entity @e[tag=cheats,tag=58] run function sprint_racer_language:_dlc_5/lobby/cheat_room/floating_text/cars
execute if entity @e[tag=cheats,tag=58] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=58] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 58

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/59
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/57