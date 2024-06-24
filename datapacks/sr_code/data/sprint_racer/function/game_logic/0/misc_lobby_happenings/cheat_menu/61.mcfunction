execute if entity @e[tag=cheats,tag=61] run function sprint_racer_language:_dlc_5/lobby/cheat_room/floating_text/permadeath
execute if entity @e[tag=cheats,tag=61] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=61] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 61

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/62
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/60