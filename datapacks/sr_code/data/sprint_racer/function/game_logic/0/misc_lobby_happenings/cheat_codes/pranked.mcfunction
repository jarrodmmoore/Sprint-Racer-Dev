#announce
tellraw @a ["",{text:" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_3/lobby/cheat_room/cheat_found/pranked
tellraw @a ["",{text:" "}]

#stuff
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add foundacheat
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add 41

#set display
scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 41
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu