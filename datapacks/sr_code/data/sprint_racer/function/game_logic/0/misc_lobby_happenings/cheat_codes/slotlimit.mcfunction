#announce
tellraw @a ["",{text:" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_5/lobby/cheat_room/cheat_found/slotlimit
tellraw @a ["",{text:" "}]

scoreboard players set #cheatSlotLimit value 1

#stuff
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add foundacheat
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add 57

#set display
scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 57
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu