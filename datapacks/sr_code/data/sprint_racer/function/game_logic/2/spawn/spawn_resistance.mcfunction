execute as @e[limit=1,type=spider,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","resistance","showing"]}
kill @e[limit=1,type=spider,tag=killme]
execute if entity @s[tag=resLong] run tag @e[limit=1,tag=node,tag=setup,tag=resistance] add resLong
execute as @e[limit=1,tag=node,tag=setup,tag=resistance] run function sprint_racer_language:editor_mode/name/name_resistance
tag @e[limit=1,tag=node,tag=setup,tag=resistance] remove setup