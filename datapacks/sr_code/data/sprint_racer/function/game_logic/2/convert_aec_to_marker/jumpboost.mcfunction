summon marker ~ ~ ~ {Tags:["setup","node","jumpboost","showing"]}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] jump = @s jump

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_jumpboost

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s