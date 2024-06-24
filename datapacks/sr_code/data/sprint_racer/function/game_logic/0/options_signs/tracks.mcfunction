tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,tag=requireAdmin] run tag @e[tag=w,type=armor_stand] add noskip2next
execute if entity @s[tag=clickSign] unless entity @e[tag=w,tag=requireAdmin] run function sprint_racer_language:_dlc_2/lobby/options/tracks

execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] if entity @s[tag=admin] run tag @e[tag=w,type=armor_stand] add noskip2next
execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] if entity @s[tag=admin] run function sprint_racer_language:_dlc_2/lobby/options/tracks
execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign

tag @e[tag=w,type=armor_stand] remove noskip2next