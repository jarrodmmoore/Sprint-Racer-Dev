execute if entity @e[tag=cheats,tag=64] run function sprint_racer_language:_dlc_6/lobby/cheat_room/floating_text/longarms
execute if entity @e[tag=cheats,tag=64] run tag @e[tag=cheats] remove checkforward
execute if entity @e[tag=cheats,tag=64] run tag @e[tag=cheats] remove checkbackward

scoreboard players set @e[tag=cheats] aiHoldingItem 64

execute if entity @e[tag=cheats,tag=checkforward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/65
execute if entity @e[tag=cheats,tag=checkbackward] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/63