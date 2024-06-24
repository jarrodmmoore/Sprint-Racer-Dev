#announce
tellraw @a ["",{"text":" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_2/lobby/cheat_room/cheat_found/sticks
tellraw @a ["",{"text":" "}]

#stuff
tag @e[tag=cheats] add foundacheat
tag @e[tag=cheats] add 36

#set display
scoreboard players set @e[tag=cheats] aiHoldingItem 36
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu