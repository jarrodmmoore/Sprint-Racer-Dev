summon armor_stand 1635 90 443 {CustomName:{translate:"sr.cheats.cheats_library",color:"light_purple",bold:false,italic:true},Tags:["lobbyprop","cheattext","cheattext1"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,CustomNameVisible:1b}

summon armor_stand 1635 89.5 443 {CustomName:{text:"???",color:"white",bold:true,italic:false},Tags:["lobbyprop","cheattext","cheattext2"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,CustomNameVisible:1b}

summon armor_stand 1635 89.2 443 {CustomName:{text:"--",color:"white",bold:false,italic:false},Tags:["lobbyprop","cheattext","cheattext3"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,CustomNameVisible:false}

summon armor_stand 1635 88.7 443 {CustomName:{text:"--",color:"white",bold:false,italic:false},Tags:["lobbyprop","cheattext","cheattext4"],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,CustomNameVisible:false}

scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 0
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=foundacheat] add checkforward
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=foundacheat] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu