execute as @e[limit=1,type=vex,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","activator","showing"]}
kill @e[limit=1,type=vex,tag=killme]
execute as @e[limit=1,tag=node,tag=setup,tag=activator] run function sprint_racer_language:editor_mode/name/name_activator
tag @e[limit=1,tag=node,tag=setup,tag=activator] remove setup