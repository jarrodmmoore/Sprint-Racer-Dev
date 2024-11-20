tag @s add clickSign

#anyPlayerLoadsSave

execute if entity @s[tag=clickSign] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin,tag=!anyPlayerLoadsSave] run function sprint_racer_language:_dlc_4/lobby/options/save_state_load

execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin,tag=!anyPlayerLoadsSave] if entity @s[tag=admin] run function sprint_racer_language:_dlc_4/lobby/options/save_state_load
execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin,tag=!anyPlayerLoadsSave] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign