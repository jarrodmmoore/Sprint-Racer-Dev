execute if entity @e[tag=cheats,tag=35] run function sprint_racer_language:_dlc_2/lobby/cheat_room/floating_text/samedayshipping
execute if entity @e[tag=cheats,tag=35] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=35] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 35

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/36
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/34