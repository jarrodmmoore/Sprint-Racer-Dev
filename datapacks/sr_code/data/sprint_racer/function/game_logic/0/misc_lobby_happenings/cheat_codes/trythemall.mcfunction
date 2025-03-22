#announce
tellraw @a ["",{text:" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/_cheat_found
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/trythemall
tellraw @a ["",{text:" "}]

#stuff
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add foundacheat
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 00

#set display
scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] aiHoldingItem 0
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu

#slot limit is 1 by default
execute unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=57] run scoreboard players set #cheatSlotLimit value 1

#un-ban the underworld track right away now that we've discovered it
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] remove btBlacklist

#activation effect: all cheats are found
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 01
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 02
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 03
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 04
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 05
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 06
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 07
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 08
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 09
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 10
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 11
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 12
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 13
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 14
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 15
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 16
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 17
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 18
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 19
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 20
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 21
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 22
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 23
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 24
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 25
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 26
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 27
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 28
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 29
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 30
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 31
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 32
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 33
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 34
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 35
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 36
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 37
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 38
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 39
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 40
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 41
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 42
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 43
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 44
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 45
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 46
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 47
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 48
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 49
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 50
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 51
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 52
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 53
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 54
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 55
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 56
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 57
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 58
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 59
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 60
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 61
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 62
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 63
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 64
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 65
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] add 66