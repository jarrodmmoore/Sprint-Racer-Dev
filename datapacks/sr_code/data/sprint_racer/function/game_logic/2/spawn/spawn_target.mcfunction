execute as @e[limit=1,type=chicken,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","tatarget","showing"]}
kill @e[limit=1,type=chicken,tag=killme]
execute if entity @s[tag=targetImpossible] run tag @e[limit=1,tag=node,tag=setup,tag=tatarget] add targetImpossible
execute as @e[limit=1,tag=node,tag=setup,tag=tatarget] run function sprint_racer_language:_dlc_1/editor_mode/name/name_target
tag @e[limit=1,tag=node,tag=setup,tag=tatarget] remove setup