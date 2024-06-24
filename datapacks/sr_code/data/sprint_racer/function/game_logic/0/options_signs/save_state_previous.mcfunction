tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,tag=requireAdmin,tag=!anyPlayerLoadsSave] run function sprint_racer_language:_dlc_4/lobby/options/save_state_previous

execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin,tag=!anyPlayerLoadsSave] if entity @s[tag=admin] run function sprint_racer_language:_dlc_4/lobby/options/save_state_previous
execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin,tag=!anyPlayerLoadsSave] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign