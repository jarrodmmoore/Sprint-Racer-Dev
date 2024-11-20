tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] run function sprint_racer:game_logic/0/save_state/change_icon

execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] if entity @s[tag=admin] run function sprint_racer:game_logic/0/save_state/change_icon
execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign

#quick button
clone 1609 87 463 1609 89 463 1609 87 460