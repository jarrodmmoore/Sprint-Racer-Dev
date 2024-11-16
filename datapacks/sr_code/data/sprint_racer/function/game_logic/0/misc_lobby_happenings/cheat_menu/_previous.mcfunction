tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] add checkbackward

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=foundacheat] run scoreboard players remove @e[tag=cheats,x=1550,y=148,z=406,distance=..1] aiHoldingItem 1

function sprint_racer_language:_dlc_1/lobby/track_selector_buttons/previous

function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu