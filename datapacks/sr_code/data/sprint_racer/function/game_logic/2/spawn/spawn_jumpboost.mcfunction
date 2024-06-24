execute as @e[limit=1,type=witch,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","jumpboost","showing"]}
kill @e[limit=1,type=witch,tag=killme]
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=jumpboost] jump = @s jump
execute as @e[limit=1,tag=node,tag=setup,tag=jumpboost] run function sprint_racer_language:editor_mode/name/name_jumpboost
tag @e[limit=1,tag=node,tag=setup,tag=jumpboost] remove setup