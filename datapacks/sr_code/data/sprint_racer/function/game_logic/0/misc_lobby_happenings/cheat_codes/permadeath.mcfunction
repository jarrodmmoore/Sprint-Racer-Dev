#announce
tellraw @a ["",{"text":" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_5/lobby/cheat_room/cheat_found/permadeath
tellraw @a ["",{"text":" "}]

#stuff
tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] add foundacheat
tag @e[tag=cheats,x=1550,y=148,z=406,distance=..1] add 61

#set display
scoreboard players set @e[tag=cheats,x=1550,y=148,z=406,distance=..1] aiHoldingItem 61
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu