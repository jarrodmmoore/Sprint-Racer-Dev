#announce
tellraw @a ["",{text:" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/trythemall
tellraw @a ["",{text:" "}]

#stuff
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add foundacheat
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 00

#set display
scoreboard players set @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 0
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu

#slot limit is 1 by default
execute unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=57] run scoreboard players set #cheatSlotLimit value 1

#un-ban the underworld track right away now that we've discovered it
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] remove btBlacklist

#activation effect: all cheats are found
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 01
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 02
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 03
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 04
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 05
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 06
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 07
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 08
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 09
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 10
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 11
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 12
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 13
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 14
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 15
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 16
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 17
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 18
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 19
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 20
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 21
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 22
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 23
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 24
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 25
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 26
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 27
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 28
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 29
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 30
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 31
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 32
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 33
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 34
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 35
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 36
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 37
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 38
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 39
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 40
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 41
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 42
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 43
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 44
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 45
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 46
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 47
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 48
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 49
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 50
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 51
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 52
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 53
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 54
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 55
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 56
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 57
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 58
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 59
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 60
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 61
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 62
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 63
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 64
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 65
tag @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] add 66