tag @e[tag=cheats] add checkbackward

execute if entity @e[tag=cheats,tag=foundacheat] run scoreboard players remove @e[tag=cheats] aiHoldingItem 1

function sprint_racer_language:_dlc_1/lobby/track_selector_buttons/previous

function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu