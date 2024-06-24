execute as @e[limit=1,type=bat,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","elytrajump","showing"]}
kill @e[limit=1,type=bat,tag=killme]
execute if entity @s[tag=elytraShort] run tag @e[limit=1,tag=node,tag=setup,tag=elytrajump] add elytraShort
execute if entity @s[tag=elytraMed] run tag @e[limit=1,tag=node,tag=setup,tag=elytrajump] add elytraMed
execute if entity @s[tag=elytraHigh] run tag @e[limit=1,tag=node,tag=setup,tag=elytrajump] add elytraHigh
execute if entity @s[tag=auto_elytra] run tag @e[limit=1,tag=node,tag=setup,tag=elytrajump] add auto_elytra
execute as @e[limit=1,tag=node,tag=setup,tag=elytrajump] run function sprint_racer_language:editor_mode/name/name_elytrajump
tag @e[limit=1,tag=node,tag=setup,tag=elytrajump] remove setup