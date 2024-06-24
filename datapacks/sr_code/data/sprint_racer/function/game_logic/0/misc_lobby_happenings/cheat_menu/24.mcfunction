execute if entity @e[tag=cheats,tag=24] run function sprint_racer_language:_dlc_1/lobby/cheat_room/floating_text/enchanter
execute if entity @e[tag=cheats,tag=24] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=24] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 24

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/25
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/23