execute as @e[limit=1,type=blaze,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","speedboost","showing"]}
kill @e[limit=1,type=blaze,tag=killme]
execute if entity @s[tag=superSpeed] run tag @e[limit=1,tag=node,tag=setup,tag=speedboost] add superSpeed
execute as @e[limit=1,tag=node,tag=setup,tag=speedboost] run function sprint_racer_language:editor_mode/name/name_speedboost
tag @e[limit=1,tag=node,tag=setup,tag=speedboost] remove setup