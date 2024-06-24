execute if entity @e[tag=cheats,tag=21] run function sprint_racer_language:_dlc_1/lobby/cheat_room/floating_text/timeless
execute if entity @e[tag=cheats,tag=21] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=21] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 21

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/22
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/20