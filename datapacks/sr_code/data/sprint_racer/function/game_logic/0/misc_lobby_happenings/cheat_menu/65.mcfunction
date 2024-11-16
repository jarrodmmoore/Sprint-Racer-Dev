execute if entity @e[tag=cheats,tag=65] run function sprint_racer_language:_dlc_6/lobby/cheat_room/floating_text/stepup
execute if entity @e[tag=cheats,tag=65] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=65] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 65

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/66
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/64