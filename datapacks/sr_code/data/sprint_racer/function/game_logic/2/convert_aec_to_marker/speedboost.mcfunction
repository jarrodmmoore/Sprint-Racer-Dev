summon marker ~ ~ ~ {Tags:["setup","node","speedboost","showing"]}

#carry over scoreboard stuff
execute if entity @s[tag=superSpeed] run tag @e[tag=setup] add superSpeed

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_speedboost

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s