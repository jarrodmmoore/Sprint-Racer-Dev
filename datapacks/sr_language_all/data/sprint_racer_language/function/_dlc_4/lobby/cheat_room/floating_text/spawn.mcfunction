execute positioned 1593 101 444 positioned ~ ~2 ~.5 run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"sr.cheats.cheats_library","color":"light_purple","bold":false,"italic":true}',Tags:["lobbyprop","cheattext","cheattext1"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1,CustomNameVisible:1b}

execute positioned 1593 101 444 positioned ~ ~1.5 ~.5 run summon armor_stand ~ ~ ~ {CustomName:'{"text":"???","color":"white","bold":true,"italic":false}',Tags:["lobbyprop","cheattext","cheattext2"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1,CustomNameVisible:1b}

execute positioned 1593 101 444 positioned ~ ~1.2 ~.5 run summon armor_stand ~ ~ ~ {CustomName:'{"text":"--","color":"white","bold":false,"italic":false}',Tags:["lobbyprop","cheattext","cheattext3"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1,CustomNameVisible:0b}

execute positioned 1593 101 444 positioned ~ ~.7 ~.5 run summon armor_stand ~ ~ ~ {CustomName:'{"text":"--","color":"white","bold":false,"italic":false}',Tags:["lobbyprop","cheattext","cheattext4"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1,CustomNameVisible:0b}

scoreboard players set @e[tag=cheats] aiHoldingItem 0
tag @e[tag=cheats,tag=foundacheat] add checkforward
execute if entity @e[tag=cheats,tag=foundacheat] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu