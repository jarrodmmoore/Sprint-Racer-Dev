tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] run function sprint_racer_language:_dlc_5/lobby/options/in_game_hud

execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] if entity @s[tag=admin] run function sprint_racer_language:_dlc_5/lobby/options/in_game_hud
execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign