#announce
tellraw @a ["",{text:" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_4/lobby/cheat_room/cheat_found/underworld
tellraw @a ["",{text:" "}]

#stuff
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add foundacheat
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add 46

#un-ban the track right away now that we've discovered it
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] remove btBlacklist

#set display
scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 46
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu