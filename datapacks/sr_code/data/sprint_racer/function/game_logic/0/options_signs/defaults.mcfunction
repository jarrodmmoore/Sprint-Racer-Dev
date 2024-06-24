tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,tag=requireAdmin] run function sprint_racer_language:_dlc_2/lobby/options/defaults

execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] if entity @s[tag=admin] run function sprint_racer_language:_dlc_2/lobby/options/defaults
execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign