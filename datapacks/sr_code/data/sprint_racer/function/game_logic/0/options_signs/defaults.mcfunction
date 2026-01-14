tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] as @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer_language:_dlc_2/lobby/options/defaults

execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] if entity @s[tag=admin] as @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer_language:_dlc_2/lobby/options/defaults
execute if entity @s[tag=clickSign] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

tag @s remove clickSign