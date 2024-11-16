execute if entity @e[tag=cheats,tag=63] run function sprint_racer_language:_dlc_6/lobby/cheat_room/floating_text/ittybitty
execute if entity @e[tag=cheats,tag=63] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=63] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 63

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/64
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/62